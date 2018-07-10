; NOTE: Assertions have been autogenerated by utils/update_test_checks.py
; RUN: opt < %s -instcombine -S | FileCheck %s

; PR22723: Recognize De Morgan's Laws when obfuscated by zexts.

define i32 @demorgan_or(i1 %X, i1 %Y) {
; CHECK-LABEL: @demorgan_or(
; CHECK-NEXT:    [[OR_DEMORGAN:%.*]] = and i1 %X, %Y
; CHECK-NEXT:    [[TMP1:%.*]] = zext i1 [[OR_DEMORGAN]] to i32
; CHECK-NEXT:    [[OR:%.*]] = xor i32 [[TMP1]], 1
; CHECK-NEXT:    ret i32 [[OR]]
;
  %zextX = zext i1 %X to i32
  %zextY = zext i1 %Y to i32
  %notX  = xor i32 %zextX, 1
  %notY  = xor i32 %zextY, 1
  %or    = or i32 %notX, %notY
  ret i32 %or
}

define i32 @demorgan_and(i1 %X, i1 %Y) {
; CHECK-LABEL: @demorgan_and(
; CHECK-NEXT:    [[AND_DEMORGAN:%.*]] = or i1 %X, %Y
; CHECK-NEXT:    [[TMP1:%.*]] = zext i1 [[AND_DEMORGAN]] to i32
; CHECK-NEXT:    [[AND:%.*]] = xor i32 [[TMP1]], 1
; CHECK-NEXT:    ret i32 [[AND]]
;
  %zextX = zext i1 %X to i32
  %zextY = zext i1 %Y to i32
  %notX  = xor i32 %zextX, 1
  %notY  = xor i32 %zextY, 1
  %and   = and i32 %notX, %notY
  ret i32 %and
}

; FIXME: Vectors should get the same transform.

define <2 x i32> @demorgan_or_vec(<2 x i1> %X, <2 x i1> %Y) {
; CHECK-LABEL: @demorgan_or_vec(
; CHECK-NEXT:    [[ZEXTX:%.*]] = zext <2 x i1> %X to <2 x i32>
; CHECK-NEXT:    [[ZEXTY:%.*]] = zext <2 x i1> %Y to <2 x i32>
; CHECK-NEXT:    [[NOTX:%.*]] = xor <2 x i32> [[ZEXTX]], <i32 1, i32 1>
; CHECK-NEXT:    [[NOTY:%.*]] = xor <2 x i32> [[ZEXTY]], <i32 1, i32 1>
; CHECK-NEXT:    [[OR:%.*]] = or <2 x i32> [[NOTX]], [[NOTY]]
; CHECK-NEXT:    ret <2 x i32> [[OR]]
;
  %zextX = zext <2 x i1> %X to <2 x i32>
  %zextY = zext <2 x i1> %Y to <2 x i32>
  %notX  = xor <2 x i32> %zextX, <i32 1, i32 1>
  %notY  = xor <2 x i32> %zextY, <i32 1, i32 1>
  %or    = or <2 x i32> %notX, %notY
  ret <2 x i32> %or
}

define <2 x i32> @demorgan_and_vec(<2 x i1> %X, <2 x i1> %Y) {
; CHECK-LABEL: @demorgan_and_vec(
; CHECK-NEXT:    [[ZEXTX:%.*]] = zext <2 x i1> %X to <2 x i32>
; CHECK-NEXT:    [[ZEXTY:%.*]] = zext <2 x i1> %Y to <2 x i32>
; CHECK-NEXT:    [[NOTX:%.*]] = xor <2 x i32> [[ZEXTX]], <i32 1, i32 1>
; CHECK-NEXT:    [[NOTY:%.*]] = xor <2 x i32> [[ZEXTY]], <i32 1, i32 1>
; CHECK-NEXT:    [[AND:%.*]] = and <2 x i32> [[NOTX]], [[NOTY]]
; CHECK-NEXT:    ret <2 x i32> [[AND]]
;
  %zextX = zext <2 x i1> %X to <2 x i32>
  %zextY = zext <2 x i1> %Y to <2 x i32>
  %notX  = xor <2 x i32> %zextX, <i32 1, i32 1>
  %notY  = xor <2 x i32> %zextY, <i32 1, i32 1>
  %and   = and <2 x i32> %notX, %notY
  ret <2 x i32> %and
}

; FIXME: If the xor was canonicalized to a 'not', then this would simplify.

define i32 @PR28476(i32 %x, i32 %y) {
; CHECK-LABEL: @PR28476(
; CHECK-NEXT:    [[CMP0:%.*]] = icmp ne i32 %x, 0
; CHECK-NEXT:    [[CMP1:%.*]] = icmp ne i32 %y, 0
; CHECK-NEXT:    [[AND:%.*]] = and i1 [[CMP0]], [[CMP1]]
; CHECK-NEXT:    [[ZEXT:%.*]] = zext i1 [[AND]] to i32
; CHECK-NEXT:    [[COND:%.*]] = xor i32 [[ZEXT]], 1
; CHECK-NEXT:    ret i32 [[COND]]
;
  %cmp0 = icmp ne i32 %x, 0
  %cmp1 = icmp ne i32 %y, 0
  %and = and i1 %cmp0, %cmp1
  %zext = zext i1 %and to i32
  %cond = xor i32 %zext, 1
  ret i32 %cond
}

