; NOTE: Assertions have been autogenerated by update_llc_test_checks.py
; RUN: llc < %s -mtriple=x86_64 -enable-unsafe-fp-math -mattr=+avx512f | FileCheck %s --check-prefix=CHECK_UNSAFE --check-prefix=AVX512F_UNSAFE
; RUN: llc < %s -mtriple=x86_64 -mattr=+avx512f | FileCheck %s --check-prefix=CHECK --check-prefix=AVX512

define <16 x float> @test_max_v16f32(<16 x float> * %a_ptr, <16 x float> %b)  {
; CHECK_UNSAFE-LABEL: test_max_v16f32:
; CHECK_UNSAFE:       # BB#0:
; CHECK_UNSAFE-NEXT:    vmaxps (%rdi), %zmm0, %zmm0
; CHECK_UNSAFE-NEXT:    retq
;
; CHECK-LABEL: test_max_v16f32:
; CHECK:       # BB#0:
; CHECK-NEXT:    vmovaps (%rdi), %zmm1
; CHECK-NEXT:    vmaxps %zmm0, %zmm1, %zmm0
; CHECK-NEXT:    retq
  %a = load <16 x float>, <16 x float>* %a_ptr
  %tmp = fcmp fast ogt <16 x float> %a, %b
  %tmp4 = select <16 x i1> %tmp, <16 x float> %a, <16 x float> %b
  ret <16 x float> %tmp4;
}

define <16 x float> @test_min_v16f32(<16 x float>* %a_ptr, <16 x float> %b)  {
; CHECK_UNSAFE-LABEL: test_min_v16f32:
; CHECK_UNSAFE:       # BB#0:
; CHECK_UNSAFE-NEXT:    vminps (%rdi), %zmm0, %zmm0
; CHECK_UNSAFE-NEXT:    retq
;
; CHECK-LABEL: test_min_v16f32:
; CHECK:       # BB#0:
; CHECK-NEXT:    vmovaps (%rdi), %zmm1
; CHECK-NEXT:    vminps %zmm0, %zmm1, %zmm0
; CHECK-NEXT:    retq
  %a = load <16 x float>, <16 x float>* %a_ptr
  %tmp = fcmp fast olt <16 x float> %a, %b
  %tmp4 = select <16 x i1> %tmp, <16 x float> %a, <16 x float> %b
  ret <16 x float> %tmp4;
}

define <8 x double> @test_max_v8f64(<8 x double> * %a_ptr, <8 x double> %b)  {
; CHECK_UNSAFE-LABEL: test_max_v8f64:
; CHECK_UNSAFE:       # BB#0:
; CHECK_UNSAFE-NEXT:    vmaxpd (%rdi), %zmm0, %zmm0
; CHECK_UNSAFE-NEXT:    retq
;
; CHECK-LABEL: test_max_v8f64:
; CHECK:       # BB#0:
; CHECK-NEXT:    vmovapd (%rdi), %zmm1
; CHECK-NEXT:    vmaxpd %zmm0, %zmm1, %zmm0
; CHECK-NEXT:    retq
  %a = load <8 x double>, <8 x double>* %a_ptr
  %tmp = fcmp fast ogt <8 x double> %a, %b
  %tmp4 = select <8 x i1> %tmp, <8 x double> %a, <8 x double> %b
  ret <8 x double> %tmp4;
}

define <8 x double> @test_min_v8f64(<8 x double>* %a_ptr, <8 x double> %b)  {
; CHECK_UNSAFE-LABEL: test_min_v8f64:
; CHECK_UNSAFE:       # BB#0:
; CHECK_UNSAFE-NEXT:    vminpd (%rdi), %zmm0, %zmm0
; CHECK_UNSAFE-NEXT:    retq
;
; CHECK-LABEL: test_min_v8f64:
; CHECK:       # BB#0:
; CHECK-NEXT:    vmovapd (%rdi), %zmm1
; CHECK-NEXT:    vminpd %zmm0, %zmm1, %zmm0
; CHECK-NEXT:    retq
  %a = load <8 x double>, <8 x double>* %a_ptr
  %tmp = fcmp fast olt <8 x double> %a, %b
  %tmp4 = select <8 x i1> %tmp, <8 x double> %a, <8 x double> %b
  ret <8 x double> %tmp4;
}

define float @test_min_f32(float %a, float* %ptr) {
; CHECK_UNSAFE-LABEL: test_min_f32:
; CHECK_UNSAFE:       # BB#0: # %entry
; CHECK_UNSAFE-NEXT:    vminss (%rdi), %xmm0, %xmm0
; CHECK_UNSAFE-NEXT:    retq
;
; CHECK-LABEL: test_min_f32:
; CHECK:       # BB#0: # %entry
; CHECK-NEXT:    vmovss {{.*#+}} xmm1 = mem[0],zero,zero,zero
; CHECK-NEXT:    vminss %xmm0, %xmm1, %xmm0
; CHECK-NEXT:    retq
entry:
  %0 = load float, float* %ptr
  %1 = fcmp fast olt float %0, %a
  %2 = select i1 %1, float %0, float %a
  ret float %2
}

define double @test_max_f64(double %a, double* %ptr) {
; CHECK_UNSAFE-LABEL: test_max_f64:
; CHECK_UNSAFE:       # BB#0: # %entry
; CHECK_UNSAFE-NEXT:    vmaxsd (%rdi), %xmm0, %xmm0
; CHECK_UNSAFE-NEXT:    retq
;
; CHECK-LABEL: test_max_f64:
; CHECK:       # BB#0: # %entry
; CHECK-NEXT:    vmovsd {{.*#+}} xmm1 = mem[0],zero
; CHECK-NEXT:    vmaxsd %xmm0, %xmm1, %xmm0
; CHECK-NEXT:    retq
entry:
  %0 = load double, double* %ptr
  %1 = fcmp fast ogt double %0, %a
  %2 = select i1 %1, double %0, double %a
  ret double %2
}
