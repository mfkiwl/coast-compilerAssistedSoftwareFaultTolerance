; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s -mtriple=x86_64-apple-macosx10.9.0 -mattr=+avx | FileCheck %s

; Check that we properly upgrade the AVX vbroadcast intrinsics to IR.  The
; expectation is that we should still get the original instruction back that
; maps to the intrinsic.

target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"

define <4 x float> @test_mm_broadcast_ss(float* readonly %__a){
; CHECK-LABEL: test_mm_broadcast_ss:
; CHECK:       ## BB#0: ## %entry
; CHECK-NEXT:    vbroadcastss (%rdi), %xmm0
; CHECK-NEXT:    retq
entry:
  %0 = bitcast float* %__a to i8*
  %1 = tail call <4 x float> @llvm.x86.avx.vbroadcast.ss(i8* %0)
  ret <4 x float> %1
}
declare <8 x float> @llvm.x86.avx.vbroadcast.ss.256(i8*)

define <4 x double> @test_mm256_broadcast_sd(double* readonly %__a) {
; CHECK-LABEL: test_mm256_broadcast_sd:
; CHECK:       ## BB#0: ## %entry
; CHECK-NEXT:    vbroadcastsd (%rdi), %ymm0
; CHECK-NEXT:    retq
entry:
  %0 = bitcast double* %__a to i8*
  %1 = tail call <4 x double> @llvm.x86.avx.vbroadcast.sd.256(i8* %0)
  ret <4 x double> %1
}
declare <4 x double> @llvm.x86.avx.vbroadcast.sd.256(i8*)

define <8 x float> @test_mm256_broadcast_ss(float* readonly %__a) {
; CHECK-LABEL: test_mm256_broadcast_ss:
; CHECK:       ## BB#0: ## %entry
; CHECK-NEXT:    vbroadcastss (%rdi), %ymm0
; CHECK-NEXT:    retq
entry:
  %0 = bitcast float* %__a to i8*
  %1 = tail call <8 x float> @llvm.x86.avx.vbroadcast.ss.256(i8* %0)
  ret <8 x float> %1
}
declare <4 x float> @llvm.x86.avx.vbroadcast.ss(i8*)
