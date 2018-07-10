; RUN: llc < %s | FileCheck %s

; Test that basic 64-bit integer comparison operations assemble as expected.

target datalayout = "E-m:e-p:32:32-i64:64-a:0:32-n32-S64"
target triple = "lanai"

; CHECK-LABEL: eq_i64:
; CHECK: xor
; CHECK: xor
; CHECK: or.f
; CHECK-NEXT: seq
define i32 @eq_i64(i64 inreg %x, i64 inreg %y) {
  %a = icmp eq i64 %x, %y
  %b = zext i1 %a to i32
  ret i32 %b
}

; CHECK-LABEL: ne_i64:
; CHECK: xor
; CHECK: xor
; CHECK: or.f
; CHECK-NEXT: sne
define i32 @ne_i64(i64 inreg %x, i64 inreg %y) {
  %a = icmp ne i64 %x, %y
  %b = zext i1 %a to i32
  ret i32 %b
}

; CHECK-LABEL: slt_i64:
; CHECK: sub.f %r7, %r19, %r3
; CHECK: subb.f %r6, %r18, %r3
; CHECK-NEXT: slt
define i32 @slt_i64(i64 inreg %x, i64 inreg %y) {
  %a = icmp slt i64 %x, %y
  %b = zext i1 %a to i32
  ret i32 %b
}

; CHECK-LABEL: sle_i64:
; CHECK: sub.f %r19, %r7, %r3
; CHECK: subb.f %r18, %r6, %r3
; CHECK-NEXT: sge %rv
define i32 @sle_i64(i64 inreg %x, i64 inreg %y) {
  %a = icmp sle i64 %x, %y
  %b = zext i1 %a to i32
  ret i32 %b
}

; CHECK-LABEL: ult_i64:
; CHECK: sub.f %r7, %r19, %r3
; CHECK: subb.f %r6, %r18, %r3
; CHECK-NEXT: sult %rv
define i32 @ult_i64(i64 inreg %x, i64 inreg %y) {
  %a = icmp ult i64 %x, %y
  %b = zext i1 %a to i32
  ret i32 %b
}

; CHECK-LABEL: ule_i64:
; CHECK: sub.f %r19, %r7, %r3
; CHECK: subb.f %r18, %r6, %r3
; CHECK-NEXT: suge %rv
define i32 @ule_i64(i64 inreg %x, i64 inreg %y) {
  %a = icmp ule i64 %x, %y
  %b = zext i1 %a to i32
  ret i32 %b
}

; CHECK-LABEL: sgt_i64:
; CHECK: sub.f %r19, %r7, %r3
; CHECK: subb.f %r18, %r6, %r3
; CHECK-NEXT: slt %rv
define i32 @sgt_i64(i64 inreg %x, i64 inreg %y) {
  %a = icmp sgt i64 %x, %y
  %b = zext i1 %a to i32
  ret i32 %b
}

; CHECK-LABEL: sge_i64:
; CHECK: sub.f %r7, %r19, %r3
; CHECK: subb.f %r6, %r18, %r3
; CHECK-NEXT: sge %rv
define i32 @sge_i64(i64 inreg %x, i64 inreg %y) {
  %a = icmp sge i64 %x, %y
  %b = zext i1 %a to i32
  ret i32 %b
}

; CHECK-LABEL: ugt_i64:
; CHECK: sub.f %r19, %r7, %r3
; CHECK: subb.f %r18, %r6, %r3
; CHECK-NEXT: sult %rv
define i32 @ugt_i64(i64 inreg %x, i64 inreg %y) {
  %a = icmp ugt i64 %x, %y
  %b = zext i1 %a to i32
  ret i32 %b
}

; CHECK-LABEL: uge_i64:
; CHECK: sub.f %r7, %r19, %r3
; CHECK: subb.f %r6, %r18, %r3
; CHECK-NEXT: suge %rv
define i32 @uge_i64(i64 inreg %x, i64 inreg %y) {
  %a = icmp uge i64 %x, %y
  %b = zext i1 %a to i32
  ret i32 %b
}
