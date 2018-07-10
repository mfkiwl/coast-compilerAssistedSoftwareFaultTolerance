; Test 32-bit rotates left.
;
; RUN: llc < %s -mtriple=s390x-linux-gnu | FileCheck %s

; Check the low end of the RLL range.
define i32 @f1(i32 %a) {
; CHECK-LABEL: f1:
; CHECK: rll %r2, %r2, 1
; CHECK: br %r14
  %parta = shl i32 %a, 1
  %partb = lshr i32 %a, 31
  %or = or i32 %parta, %partb
  ret i32 %or
}

; Check the high end of the defined RLL range.
define i32 @f2(i32 %a) {
; CHECK-LABEL: f2:
; CHECK: rll %r2, %r2, 31
; CHECK: br %r14
  %parta = shl i32 %a, 31
  %partb = lshr i32 %a, 1
  %or = or i32 %parta, %partb
  ret i32 %or
}

; We don't generate shifts by out-of-range values.
define i32 @f3(i32 %a) {
; CHECK-LABEL: f3:
; CHECK-NOT: rll
; CHECK: br %r14
  %parta = shl i32 %a, 32
  %partb = lshr i32 %a, 0
  %or = or i32 %parta, %partb
  ret i32 %or
}

; Check variable shifts.
define i32 @f4(i32 %a, i32 %amt) {
; CHECK-LABEL: f4:
; CHECK: rll %r2, %r2, 0(%r3)
; CHECK: br %r14
  %amtb = sub i32 32, %amt
  %parta = shl i32 %a, %amt
  %partb = lshr i32 %a, %amtb
  %or = or i32 %parta, %partb
  ret i32 %or
}

; Check shift amounts that have a constant term.
define i32 @f5(i32 %a, i32 %amt) {
; CHECK-LABEL: f5:
; CHECK: rll %r2, %r2, 10(%r3)
; CHECK: br %r14
  %add = add i32 %amt, 10
  %sub = sub i32 32, %add
  %parta = shl i32 %a, %add
  %partb = lshr i32 %a, %sub
  %or = or i32 %parta, %partb
  ret i32 %or
}

; ...and again with a truncated 64-bit shift amount.
define i32 @f6(i32 %a, i64 %amt) {
; CHECK-LABEL: f6:
; CHECK: rll %r2, %r2, 10(%r3)
; CHECK: br %r14
  %add = add i64 %amt, 10
  %addtrunc = trunc i64 %add to i32
  %sub = sub i32 32, %addtrunc
  %parta = shl i32 %a, %addtrunc
  %partb = lshr i32 %a, %sub
  %or = or i32 %parta, %partb
  ret i32 %or
}

; ...and again with a different truncation representation.
define i32 @f7(i32 %a, i64 %amt) {
; CHECK-LABEL: f7:
; CHECK: rll %r2, %r2, 10(%r3)
; CHECK: br %r14
  %add = add i64 %amt, 10
  %sub = sub i64 32, %add
  %addtrunc = trunc i64 %add to i32
  %subtrunc = trunc i64 %sub to i32
  %parta = shl i32 %a, %addtrunc
  %partb = lshr i32 %a, %subtrunc
  %or = or i32 %parta, %partb
  ret i32 %or
}

; Check shift amounts that have the largest in-range constant term.  We could
; mask the amount instead.
define i32 @f8(i32 %a, i32 %amt) {
; CHECK-LABEL: f8:
; CHECK: rll %r2, %r2, 524287(%r3)
; CHECK: br %r14
  %add = add i32 %amt, 524287
  %sub = sub i32 32, %add
  %parta = shl i32 %a, %add
  %partb = lshr i32 %a, %sub
  %or = or i32 %parta, %partb
  ret i32 %or
}

; Check the next value up, which without masking must use a separate
; addition.
define i32 @f9(i32 %a, i32 %amt) {
; CHECK-LABEL: f9:
; CHECK: afi %r3, 524288
; CHECK: rll %r2, %r2, 0(%r3)
; CHECK: br %r14
  %add = add i32 %amt, 524288
  %sub = sub i32 32, %add
  %parta = shl i32 %a, %add
  %partb = lshr i32 %a, %sub
  %or = or i32 %parta, %partb
  ret i32 %or
}

; Check cases where 1 is subtracted from the shift amount.
define i32 @f10(i32 %a, i32 %amt) {
; CHECK-LABEL: f10:
; CHECK: rll %r2, %r2, -1(%r3)
; CHECK: br %r14
  %suba = sub i32 %amt, 1
  %subb = sub i32 32, %suba
  %parta = shl i32 %a, %suba
  %partb = lshr i32 %a, %subb
  %or = or i32 %parta, %partb
  ret i32 %or
}

; Check the lowest value that can be subtracted from the shift amount.
; Again, we could mask the shift amount instead.
define i32 @f11(i32 %a, i32 %amt) {
; CHECK-LABEL: f11:
; CHECK: rll %r2, %r2, -524288(%r3)
; CHECK: br %r14
  %suba = sub i32 %amt, 524288
  %subb = sub i32 32, %suba
  %parta = shl i32 %a, %suba
  %partb = lshr i32 %a, %subb
  %or = or i32 %parta, %partb
  ret i32 %or
}

; Check the next value down, which without masking must use a separate
; addition.
define i32 @f12(i32 %a, i32 %amt) {
; CHECK-LABEL: f12:
; CHECK: afi %r3, -524289
; CHECK: rll %r2, %r2, 0(%r3)
; CHECK: br %r14
  %suba = sub i32 %amt, 524289
  %subb = sub i32 32, %suba
  %parta = shl i32 %a, %suba
  %partb = lshr i32 %a, %subb
  %or = or i32 %parta, %partb
  ret i32 %or
}

; Check that we don't try to generate "indexed" shifts.
define i32 @f13(i32 %a, i32 %b, i32 %c) {
; CHECK-LABEL: f13:
; CHECK: ar {{%r3, %r4|%r4, %r3}}
; CHECK: rll %r2, %r2, 0({{%r[34]}})
; CHECK: br %r14
  %add = add i32 %b, %c
  %sub = sub i32 32, %add
  %parta = shl i32 %a, %add
  %partb = lshr i32 %a, %sub
  %or = or i32 %parta, %partb
  ret i32 %or
}

; Check that the shift amount uses an address register.  It cannot be in %r0.
define i32 @f14(i32 %a, i32 *%ptr) {
; CHECK-LABEL: f14:
; CHECK: l %r1, 0(%r3)
; CHECK: rll %r2, %r2, 0(%r1)
; CHECK: br %r14
  %amt = load i32 , i32 *%ptr
  %amtb = sub i32 32, %amt
  %parta = shl i32 %a, %amt
  %partb = lshr i32 %a, %amtb
  %or = or i32 %parta, %partb
  ret i32 %or
}

; Check another form of f5, which is the one produced by running f5 through
; instcombine.
define i32 @f15(i32 %a, i32 %amt) {
; CHECK-LABEL: f15:
; CHECK: rll %r2, %r2, 10(%r3)
; CHECK: br %r14
  %add = add i32 %amt, 10
  %sub = sub i32 22, %amt
  %parta = shl i32 %a, %add
  %partb = lshr i32 %a, %sub
  %or = or i32 %parta, %partb
  ret i32 %or
}

; Likewise for f7.
define i32 @f16(i32 %a, i64 %amt) {
; CHECK-LABEL: f16:
; CHECK: rll %r2, %r2, 10(%r3)
; CHECK: br %r14
  %add = add i64 %amt, 10
  %sub = sub i64 22, %amt
  %addtrunc = trunc i64 %add to i32
  %subtrunc = trunc i64 %sub to i32
  %parta = shl i32 %a, %addtrunc
  %partb = lshr i32 %a, %subtrunc
  %or = or i32 %parta, %partb
  ret i32 %or
}

; Check cases where (-x & 31) is used instead of 32 - x.
define i32 @f17(i32 %x, i32 %y) {
; CHECK-LABEL: f17:
; CHECK: rll %r2, %r2, 0(%r3)
; CHECK: br %r14
entry:
  %shl = shl i32 %x, %y
  %sub = sub i32 0, %y
  %and = and i32 %sub, 31
  %shr = lshr i32 %x, %and
  %or = or i32 %shr, %shl
  ret i32 %or
}

; ...and again with ((32 - x) & 31).
define i32 @f18(i32 %x, i32 %y) {
; CHECK-LABEL: f18:
; CHECK: rll %r2, %r2, 0(%r3)
; CHECK: br %r14
entry:
  %shl = shl i32 %x, %y
  %sub = sub i32 32, %y
  %and = and i32 %sub, 31
  %shr = lshr i32 %x, %and
  %or = or i32 %shr, %shl
  ret i32 %or
}

; This is not a rotation.
define i32 @f19(i32 %x, i32 %y) {
; CHECK-LABEL: f19:
; CHECK-NOT: rll
; CHECK: br %r14
entry:
  %shl = shl i32 %x, %y
  %sub = sub i32 16, %y
  %and = and i32 %sub, 31
  %shr = lshr i32 %x, %and
  %or = or i32 %shr, %shl
  ret i32 %or
}

; Repeat f17 with an addition on the shift count.
define i32 @f20(i32 %x, i32 %y) {
; CHECK-LABEL: f20:
; CHECK: rll %r2, %r2, 199(%r3)
; CHECK: br %r14
entry:
  %add = add i32 %y, 199
  %shl = shl i32 %x, %add
  %sub = sub i32 0, %add
  %and = and i32 %sub, 31
  %shr = lshr i32 %x, %and
  %or = or i32 %shr, %shl
  ret i32 %or
}

; ...and again with the InstCombine version.
define i32 @f21(i32 %x, i32 %y) {
; CHECK-LABEL: f21:
; CHECK: rll %r2, %r2, 199(%r3)
; CHECK: br %r14
entry:
  %add = add i32 %y, 199
  %shl = shl i32 %x, %add
  %sub = sub i32 -199, %y
  %and = and i32 %sub, 31
  %shr = lshr i32 %x, %and
  %or = or i32 %shr, %shl
  ret i32 %or
}
