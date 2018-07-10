; NOTE: Assertions have been autogenerated by utils/update_test_checks.py
; RUN: opt < %s -instcombine -S | FileCheck %s
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

; Verify that instcombine is able to fold identity shuffles.

define <8 x i32> @identity_test_vpermd(<8 x i32> %a0) {
; CHECK-LABEL: @identity_test_vpermd(
; CHECK-NEXT:    ret <8 x i32> %a0
;
  %a = tail call <8 x i32> @llvm.x86.avx2.permd(<8 x i32> %a0, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>)
  ret <8 x i32> %a
}

define <8 x float> @identity_test_vpermps(<8 x float> %a0) {
; CHECK-LABEL: @identity_test_vpermps(
; CHECK-NEXT:    ret <8 x float> %a0
;
  %a = tail call <8 x float> @llvm.x86.avx2.permps(<8 x float> %a0, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>)
  ret <8 x float> %a
}

; Instcombine should be able to fold the following shuffle to a builtin shufflevector
; with a shuffle mask of all zeroes.

define <8 x i32> @zero_test_vpermd(<8 x i32> %a0) {
; CHECK-LABEL: @zero_test_vpermd(
; CHECK-NEXT:    [[TMP1:%.*]] = shufflevector <8 x i32> %a0, <8 x i32> undef, <8 x i32> zeroinitializer
; CHECK-NEXT:    ret <8 x i32> [[TMP1]]
;
  %a = tail call <8 x i32> @llvm.x86.avx2.permd(<8 x i32> %a0, <8 x i32> zeroinitializer)
  ret <8 x i32> %a
}

define <8 x float> @zero_test_vpermps(<8 x float> %a0) {
; CHECK-LABEL: @zero_test_vpermps(
; CHECK-NEXT:    [[TMP1:%.*]] = shufflevector <8 x float> %a0, <8 x float> undef, <8 x i32> zeroinitializer
; CHECK-NEXT:    ret <8 x float> [[TMP1]]
;
  %a = tail call <8 x float> @llvm.x86.avx2.permps(<8 x float> %a0, <8 x i32> zeroinitializer)
  ret <8 x float> %a
}

; Verify that instcombine is able to fold constant shuffles.

define <8 x i32> @shuffle_test_vpermd(<8 x i32> %a0) {
; CHECK-LABEL: @shuffle_test_vpermd(
; CHECK-NEXT:    [[TMP1:%.*]] = shufflevector <8 x i32> %a0, <8 x i32> undef, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
; CHECK-NEXT:    ret <8 x i32> [[TMP1]]
;
  %a = tail call <8 x i32> @llvm.x86.avx2.permd(<8 x i32> %a0, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>)
  ret <8 x i32> %a
}

define <8 x float> @shuffle_test_vpermps(<8 x float> %a0) {
; CHECK-LABEL: @shuffle_test_vpermps(
; CHECK-NEXT:    [[TMP1:%.*]] = shufflevector <8 x float> %a0, <8 x float> undef, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
; CHECK-NEXT:    ret <8 x float> [[TMP1]]
;
  %a = tail call <8 x float> @llvm.x86.avx2.permps(<8 x float> %a0, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>)
  ret <8 x float> %a
}

; Verify that instcombine is able to fold constant shuffles with undef mask elements.

define <8 x i32> @undef_test_vpermd(<8 x i32> %a0) {
; CHECK-LABEL: @undef_test_vpermd(
; CHECK-NEXT:    [[TMP1:%.*]] = shufflevector <8 x i32> %a0, <8 x i32> undef, <8 x i32> <i32 undef, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
; CHECK-NEXT:    ret <8 x i32> [[TMP1]]
;
  %a = tail call <8 x i32> @llvm.x86.avx2.permd(<8 x i32> %a0, <8 x i32> <i32 undef, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>)
  ret <8 x i32> %a
}

define <8 x float> @undef_test_vpermps(<8 x float> %a0) {
; CHECK-LABEL: @undef_test_vpermps(
; CHECK-NEXT:    [[TMP1:%.*]] = shufflevector <8 x float> %a0, <8 x float> undef, <8 x i32> <i32 undef, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
; CHECK-NEXT:    ret <8 x float> [[TMP1]]
;
  %a = tail call <8 x float> @llvm.x86.avx2.permps(<8 x float> %a0, <8 x i32> <i32 undef, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>)
  ret <8 x float> %a
}

declare <8 x i32> @llvm.x86.avx2.permd(<8 x i32>, <8 x i32>)
declare <8 x float> @llvm.x86.avx2.permps(<8 x float>, <8 x i32>)
