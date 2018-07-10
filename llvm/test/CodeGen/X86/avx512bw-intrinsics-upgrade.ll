; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s -mtriple=x86_64-apple-darwin -mcpu=knl -mattr=+avx512bw | FileCheck %s --check-prefix=ALL --check-prefix=AVX512BW
; RUN: llc < %s -mtriple=i386-unknown-linux-gnu -mcpu=knl -mattr=+avx512bw | FileCheck %s --check-prefix=ALL --check-prefix=AVX512F-32

declare void @llvm.x86.avx512.mask.storeu.b.512(i8*, <64 x i8>, i64)

define void@test_int_x86_avx512_mask_storeu_b_512(i8* %ptr1, i8* %ptr2, <64 x i8> %x1, i64 %x2) {
; AVX512BW-LABEL: test_int_x86_avx512_mask_storeu_b_512:
; AVX512BW:       ## BB#0:
; AVX512BW-NEXT:    kmovq %rdx, %k1
; AVX512BW-NEXT:    vmovdqu8 %zmm0, (%rdi) {%k1}
; AVX512BW-NEXT:    vmovdqu8 %zmm0, (%rsi)
; AVX512BW-NEXT:    retq
;
; AVX512F-32-LABEL: test_int_x86_avx512_mask_storeu_b_512:
; AVX512F-32:       # BB#0:
; AVX512F-32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; AVX512F-32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; AVX512F-32-NEXT:    kmovq {{[0-9]+}}(%esp), %k1
; AVX512F-32-NEXT:    vmovdqu8 %zmm0, (%ecx) {%k1}
; AVX512F-32-NEXT:    vmovdqu8 %zmm0, (%eax)
; AVX512F-32-NEXT:    retl
  call void @llvm.x86.avx512.mask.storeu.b.512(i8* %ptr1, <64 x i8> %x1, i64 %x2)
  call void @llvm.x86.avx512.mask.storeu.b.512(i8* %ptr2, <64 x i8> %x1, i64 -1)
  ret void
}

declare void @llvm.x86.avx512.mask.storeu.w.512(i8*, <32 x i16>, i32)

define void@test_int_x86_avx512_mask_storeu_w_512(i8* %ptr1, i8* %ptr2, <32 x i16> %x1, i32 %x2) {
; AVX512BW-LABEL: test_int_x86_avx512_mask_storeu_w_512:
; AVX512BW:       ## BB#0:
; AVX512BW-NEXT:    kmovd %edx, %k1
; AVX512BW-NEXT:    vmovdqu16 %zmm0, (%rdi) {%k1}
; AVX512BW-NEXT:    vmovdqu16 %zmm0, (%rsi)
; AVX512BW-NEXT:    retq
;
; AVX512F-32-LABEL: test_int_x86_avx512_mask_storeu_w_512:
; AVX512F-32:       # BB#0:
; AVX512F-32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; AVX512F-32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; AVX512F-32-NEXT:    kmovd {{[0-9]+}}(%esp), %k1
; AVX512F-32-NEXT:    vmovdqu16 %zmm0, (%ecx) {%k1}
; AVX512F-32-NEXT:    vmovdqu16 %zmm0, (%eax)
; AVX512F-32-NEXT:    retl
  call void @llvm.x86.avx512.mask.storeu.w.512(i8* %ptr1, <32 x i16> %x1, i32 %x2)
  call void @llvm.x86.avx512.mask.storeu.w.512(i8* %ptr2, <32 x i16> %x1, i32 -1)
  ret void
}

declare <32 x i16> @llvm.x86.avx512.mask.loadu.w.512(i8*, <32 x i16>, i32)

define <32 x i16>@test_int_x86_avx512_mask_loadu_w_512(i8* %ptr, i8* %ptr2, <32 x i16> %x1, i32 %mask) {
; AVX512BW-LABEL: test_int_x86_avx512_mask_loadu_w_512:
; AVX512BW:       ## BB#0:
; AVX512BW-NEXT:    vmovdqu16 (%rdi), %zmm0
; AVX512BW-NEXT:    kmovd %edx, %k1
; AVX512BW-NEXT:    vmovdqu16 (%rsi), %zmm0 {%k1}
; AVX512BW-NEXT:    vmovdqu16 (%rdi), %zmm1 {%k1} {z}
; AVX512BW-NEXT:    vpaddw %zmm1, %zmm0, %zmm0
; AVX512BW-NEXT:    retq
;
; AVX512F-32-LABEL: test_int_x86_avx512_mask_loadu_w_512:
; AVX512F-32:       # BB#0:
; AVX512F-32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; AVX512F-32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; AVX512F-32-NEXT:    vmovdqu16 (%ecx), %zmm0
; AVX512F-32-NEXT:    kmovd {{[0-9]+}}(%esp), %k1
; AVX512F-32-NEXT:    vmovdqu16 (%eax), %zmm0 {%k1}
; AVX512F-32-NEXT:    vmovdqu16 (%ecx), %zmm1 {%k1} {z}
; AVX512F-32-NEXT:    vpaddw %zmm1, %zmm0, %zmm0
; AVX512F-32-NEXT:    retl
  %res0 = call <32 x i16> @llvm.x86.avx512.mask.loadu.w.512(i8* %ptr, <32 x i16> %x1, i32 -1)
  %res = call <32 x i16> @llvm.x86.avx512.mask.loadu.w.512(i8* %ptr2, <32 x i16> %res0, i32 %mask)
  %res1 = call <32 x i16> @llvm.x86.avx512.mask.loadu.w.512(i8* %ptr, <32 x i16> zeroinitializer, i32 %mask)
  %res2 = add <32 x i16> %res, %res1
  ret <32 x i16> %res2
}

declare <64 x i8> @llvm.x86.avx512.mask.loadu.b.512(i8*, <64 x i8>, i64)

define <64 x i8>@test_int_x86_avx512_mask_loadu_b_512(i8* %ptr, i8* %ptr2, <64 x i8> %x1, i64 %mask) {
; AVX512BW-LABEL: test_int_x86_avx512_mask_loadu_b_512:
; AVX512BW:       ## BB#0:
; AVX512BW-NEXT:    vmovdqu8 (%rdi), %zmm0
; AVX512BW-NEXT:    kmovq %rdx, %k1
; AVX512BW-NEXT:    vmovdqu8 (%rsi), %zmm0 {%k1}
; AVX512BW-NEXT:    vmovdqu8 (%rdi), %zmm1 {%k1} {z}
; AVX512BW-NEXT:    vpaddb %zmm1, %zmm0, %zmm0
; AVX512BW-NEXT:    retq
;
; AVX512F-32-LABEL: test_int_x86_avx512_mask_loadu_b_512:
; AVX512F-32:       # BB#0:
; AVX512F-32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; AVX512F-32-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; AVX512F-32-NEXT:    vmovdqu8 (%ecx), %zmm0
; AVX512F-32-NEXT:    kmovq {{[0-9]+}}(%esp), %k1
; AVX512F-32-NEXT:    vmovdqu8 (%eax), %zmm0 {%k1}
; AVX512F-32-NEXT:    vmovdqu8 (%ecx), %zmm1 {%k1} {z}
; AVX512F-32-NEXT:    vpaddb %zmm1, %zmm0, %zmm0
; AVX512F-32-NEXT:    retl
  %res0 = call <64 x i8> @llvm.x86.avx512.mask.loadu.b.512(i8* %ptr, <64 x i8> %x1, i64 -1)
  %res = call <64 x i8> @llvm.x86.avx512.mask.loadu.b.512(i8* %ptr2, <64 x i8> %res0, i64 %mask)
  %res1 = call <64 x i8> @llvm.x86.avx512.mask.loadu.b.512(i8* %ptr, <64 x i8> zeroinitializer, i64 %mask)
  %res2 = add <64 x i8> %res, %res1
  ret <64 x i8> %res2
}

declare <8 x i64> @llvm.x86.avx512.psll.dq.512(<8 x i64>, i32)

define <8 x i64>@test_int_x86_avx512_psll_dq_512(<8 x i64> %x0) {
; AVX512BW-LABEL: test_int_x86_avx512_psll_dq_512:
; AVX512BW:       ## BB#0:
; AVX512BW-NEXT:    vpslldq {{.*#+}} zmm1 = zero,zero,zero,zero,zero,zero,zero,zero,zmm0[0,1,2,3,4,5,6,7],zero,zero,zero,zero,zero,zero,zero,zero,zmm0[16,17,18,19,20,21,22,23],zero,zero,zero,zero,zero,zero,zero,zero,zmm0[32,33,34,35,36,37,38,39],zero,zero,zero,zero,zero,zero,zero,zero,zmm0[48,49,50,51,52,53,54,55]
; AVX512BW-NEXT:    vpslldq {{.*#+}} zmm0 = zero,zero,zero,zero,zmm0[0,1,2,3,4,5,6,7,8,9,10,11],zero,zero,zero,zero,zmm0[16,17,18,19,20,21,22,23,24,25,26,27],zero,zero,zero,zero,zmm0[32,33,34,35,36,37,38,39,40,41,42,43],zero,zero,zero,zero,zmm0[48,49,50,51,52,53,54,55,56,57,58,59]
; AVX512BW-NEXT:    vpaddq %zmm0, %zmm1, %zmm0
; AVX512BW-NEXT:    retq
;
; AVX512F-32-LABEL: test_int_x86_avx512_psll_dq_512:
; AVX512F-32:       # BB#0:
; AVX512F-32-NEXT:    vpslldq {{.*#+}} zmm1 = zero,zero,zero,zero,zero,zero,zero,zero,zmm0[0,1,2,3,4,5,6,7],zero,zero,zero,zero,zero,zero,zero,zero,zmm0[16,17,18,19,20,21,22,23],zero,zero,zero,zero,zero,zero,zero,zero,zmm0[32,33,34,35,36,37,38,39],zero,zero,zero,zero,zero,zero,zero,zero,zmm0[48,49,50,51,52,53,54,55]
; AVX512F-32-NEXT:    vpslldq {{.*#+}} zmm0 = zero,zero,zero,zero,zmm0[0,1,2,3,4,5,6,7,8,9,10,11],zero,zero,zero,zero,zmm0[16,17,18,19,20,21,22,23,24,25,26,27],zero,zero,zero,zero,zmm0[32,33,34,35,36,37,38,39,40,41,42,43],zero,zero,zero,zero,zmm0[48,49,50,51,52,53,54,55,56,57,58,59]
; AVX512F-32-NEXT:    vpaddq %zmm0, %zmm1, %zmm0
; AVX512F-32-NEXT:    retl
  %res = call <8 x i64> @llvm.x86.avx512.psll.dq.512(<8 x i64> %x0, i32 8)
  %res1 = call <8 x i64> @llvm.x86.avx512.psll.dq.512(<8 x i64> %x0, i32 4)
  %res2 = add <8 x i64> %res, %res1
  ret <8 x i64> %res2
}

define <8 x i64>@test_int_x86_avx512_psll_load_dq_512(<8 x i64>* %p0) {
; AVX512BW-LABEL: test_int_x86_avx512_psll_load_dq_512:
; AVX512BW:       ## BB#0:
; AVX512BW-NEXT:    vpslldq {{.*#+}} zmm0 = zero,zero,zero,zero,mem[0,1,2,3,4,5,6,7,8,9,10,11],zero,zero,zero,zero,mem[16,17,18,19,20,21,22,23,24,25,26,27],zero,zero,zero,zero,mem[32,33,34,35,36,37,38,39,40,41,42,43],zero,zero,zero,zero,mem[48,49,50,51,52,53,54,55,56,57,58,59]
; AVX512BW-NEXT:    retq
;
; AVX512F-32-LABEL: test_int_x86_avx512_psll_load_dq_512:
; AVX512F-32:       # BB#0:
; AVX512F-32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; AVX512F-32-NEXT:    vpslldq {{.*#+}} zmm0 = zero,zero,zero,zero,mem[0,1,2,3,4,5,6,7,8,9,10,11],zero,zero,zero,zero,mem[16,17,18,19,20,21,22,23,24,25,26,27],zero,zero,zero,zero,mem[32,33,34,35,36,37,38,39,40,41,42,43],zero,zero,zero,zero,mem[48,49,50,51,52,53,54,55,56,57,58,59]
; AVX512F-32-NEXT:    retl
  %x0 = load <8 x i64>, <8 x i64> *%p0
  %res = call <8 x i64> @llvm.x86.avx512.psll.dq.512(<8 x i64> %x0, i32 4)
  ret <8 x i64> %res
}

declare <8 x i64> @llvm.x86.avx512.psrl.dq.512(<8 x i64>, i32)

define <8 x i64>@test_int_x86_avx512_psrl_dq_512(<8 x i64> %x0) {
; AVX512BW-LABEL: test_int_x86_avx512_psrl_dq_512:
; AVX512BW:       ## BB#0:
; AVX512BW-NEXT:    vpsrldq {{.*#+}} zmm1 = zmm0[8,9,10,11,12,13,14,15],zero,zero,zero,zero,zero,zero,zero,zero,zmm0[24,25,26,27,28,29,30,31],zero,zero,zero,zero,zero,zero,zero,zero,zmm0[40,41,42,43,44,45,46,47],zero,zero,zero,zero,zero,zero,zero,zero,zmm0[56,57,58,59,60,61,62,63],zero,zero,zero,zero,zero,zero,zero,zero
; AVX512BW-NEXT:    vpsrldq {{.*#+}} zmm0 = zmm0[4,5,6,7,8,9,10,11,12,13,14,15],zero,zero,zero,zero,zmm0[20,21,22,23,24,25,26,27,28,29,30,31],zero,zero,zero,zero,zmm0[36,37,38,39,40,41,42,43,44,45,46,47],zero,zero,zero,zero,zmm0[52,53,54,55,56,57,58,59,60,61,62,63],zero,zero,zero,zero
; AVX512BW-NEXT:    vpaddq %zmm0, %zmm1, %zmm0
; AVX512BW-NEXT:    retq
;
; AVX512F-32-LABEL: test_int_x86_avx512_psrl_dq_512:
; AVX512F-32:       # BB#0:
; AVX512F-32-NEXT:    vpsrldq {{.*#+}} zmm1 = zmm0[8,9,10,11,12,13,14,15],zero,zero,zero,zero,zero,zero,zero,zero,zmm0[24,25,26,27,28,29,30,31],zero,zero,zero,zero,zero,zero,zero,zero,zmm0[40,41,42,43,44,45,46,47],zero,zero,zero,zero,zero,zero,zero,zero,zmm0[56,57,58,59,60,61,62,63],zero,zero,zero,zero,zero,zero,zero,zero
; AVX512F-32-NEXT:    vpsrldq {{.*#+}} zmm0 = zmm0[4,5,6,7,8,9,10,11,12,13,14,15],zero,zero,zero,zero,zmm0[20,21,22,23,24,25,26,27,28,29,30,31],zero,zero,zero,zero,zmm0[36,37,38,39,40,41,42,43,44,45,46,47],zero,zero,zero,zero,zmm0[52,53,54,55,56,57,58,59,60,61,62,63],zero,zero,zero,zero
; AVX512F-32-NEXT:    vpaddq %zmm0, %zmm1, %zmm0
; AVX512F-32-NEXT:    retl
  %res = call <8 x i64> @llvm.x86.avx512.psrl.dq.512(<8 x i64> %x0, i32 8)
  %res1 = call <8 x i64> @llvm.x86.avx512.psrl.dq.512(<8 x i64> %x0, i32 4)
  %res2 = add <8 x i64> %res, %res1
  ret <8 x i64> %res2
}

define <8 x i64>@test_int_x86_avx512_psrl_load_dq_512(<8 x i64>* %p0) {
; AVX512BW-LABEL: test_int_x86_avx512_psrl_load_dq_512:
; AVX512BW:       ## BB#0:
; AVX512BW-NEXT:    vpsrldq {{.*#+}} zmm0 = mem[4,5,6,7,8,9,10,11,12,13,14,15],zero,zero,zero,zero,mem[20,21,22,23,24,25,26,27,28,29,30,31],zero,zero,zero,zero,mem[36,37,38,39,40,41,42,43,44,45,46,47],zero,zero,zero,zero,mem[52,53,54,55,56,57,58,59,60,61,62,63],zero,zero,zero,zero
; AVX512BW-NEXT:    retq
;
; AVX512F-32-LABEL: test_int_x86_avx512_psrl_load_dq_512:
; AVX512F-32:       # BB#0:
; AVX512F-32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; AVX512F-32-NEXT:    vpsrldq {{.*#+}} zmm0 = mem[4,5,6,7,8,9,10,11,12,13,14,15],zero,zero,zero,zero,mem[20,21,22,23,24,25,26,27,28,29,30,31],zero,zero,zero,zero,mem[36,37,38,39,40,41,42,43,44,45,46,47],zero,zero,zero,zero,mem[52,53,54,55,56,57,58,59,60,61,62,63],zero,zero,zero,zero
; AVX512F-32-NEXT:    retl
  %x0 = load <8 x i64>, <8 x i64> *%p0
  %res = call <8 x i64> @llvm.x86.avx512.psrl.dq.512(<8 x i64> %x0, i32 4)
  ret <8 x i64> %res
}

declare <64 x i8> @llvm.x86.avx512.mask.palignr.512(<64 x i8>, <64 x i8>, i32, <64 x i8>, i64)

define <64 x i8>@test_int_x86_avx512_mask_palignr_512(<64 x i8> %x0, <64 x i8> %x1, <64 x i8> %x3, i64 %x4) {
; AVX512BW-LABEL: test_int_x86_avx512_mask_palignr_512:
; AVX512BW:       ## BB#0:
; AVX512BW-NEXT:    vpalignr {{.*#+}} zmm3 = zmm1[2,3,4,5,6,7,8,9,10,11,12,13,14,15],zmm0[0,1],zmm1[18,19,20,21,22,23,24,25,26,27,28,29,30,31],zmm0[16,17],zmm1[34,35,36,37,38,39,40,41,42,43,44,45,46,47],zmm0[32,33],zmm1[50,51,52,53,54,55,56,57,58,59,60,61,62,63],zmm0[48,49]
; AVX512BW-NEXT:    kmovq %rdi, %k1
; AVX512BW-NEXT:    vpalignr {{.*#+}} zmm2 {%k1} = zmm1[2,3,4,5,6,7,8,9,10,11,12,13,14,15],zmm0[0,1],zmm1[18,19,20,21,22,23,24,25,26,27,28,29,30,31],zmm0[16,17],zmm1[34,35,36,37,38,39,40,41,42,43,44,45,46,47],zmm0[32,33],zmm1[50,51,52,53,54,55,56,57,58,59,60,61,62,63],zmm0[48,49]
; AVX512BW-NEXT:    vpalignr {{.*#+}} zmm0 {%k1} {z} = zmm1[2,3,4,5,6,7,8,9,10,11,12,13,14,15],zmm0[0,1],zmm1[18,19,20,21,22,23,24,25,26,27,28,29,30,31],zmm0[16,17],zmm1[34,35,36,37,38,39,40,41,42,43,44,45,46,47],zmm0[32,33],zmm1[50,51,52,53,54,55,56,57,58,59,60,61,62,63],zmm0[48,49]
; AVX512BW-NEXT:    vpaddb %zmm0, %zmm2, %zmm0
; AVX512BW-NEXT:    vpaddb %zmm3, %zmm0, %zmm0
; AVX512BW-NEXT:    retq
;
; AVX512F-32-LABEL: test_int_x86_avx512_mask_palignr_512:
; AVX512F-32:       # BB#0:
; AVX512F-32-NEXT:    vpalignr {{.*#+}} zmm3 = zmm1[2,3,4,5,6,7,8,9,10,11,12,13,14,15],zmm0[0,1],zmm1[18,19,20,21,22,23,24,25,26,27,28,29,30,31],zmm0[16,17],zmm1[34,35,36,37,38,39,40,41,42,43,44,45,46,47],zmm0[32,33],zmm1[50,51,52,53,54,55,56,57,58,59,60,61,62,63],zmm0[48,49]
; AVX512F-32-NEXT:    kmovq {{[0-9]+}}(%esp), %k1
; AVX512F-32-NEXT:    vpalignr {{.*#+}} zmm2 {%k1} = zmm1[2,3,4,5,6,7,8,9,10,11,12,13,14,15],zmm0[0,1],zmm1[18,19,20,21,22,23,24,25,26,27,28,29,30,31],zmm0[16,17],zmm1[34,35,36,37,38,39,40,41,42,43,44,45,46,47],zmm0[32,33],zmm1[50,51,52,53,54,55,56,57,58,59,60,61,62,63],zmm0[48,49]
; AVX512F-32-NEXT:    vpalignr {{.*#+}} zmm0 {%k1} {z} = zmm1[2,3,4,5,6,7,8,9,10,11,12,13,14,15],zmm0[0,1],zmm1[18,19,20,21,22,23,24,25,26,27,28,29,30,31],zmm0[16,17],zmm1[34,35,36,37,38,39,40,41,42,43,44,45,46,47],zmm0[32,33],zmm1[50,51,52,53,54,55,56,57,58,59,60,61,62,63],zmm0[48,49]
; AVX512F-32-NEXT:    vpaddb %zmm0, %zmm2, %zmm0
; AVX512F-32-NEXT:    vpaddb %zmm3, %zmm0, %zmm0
; AVX512F-32-NEXT:    retl
  %res = call <64 x i8> @llvm.x86.avx512.mask.palignr.512(<64 x i8> %x0, <64 x i8> %x1, i32 2, <64 x i8> %x3, i64 %x4)
  %res1 = call <64 x i8> @llvm.x86.avx512.mask.palignr.512(<64 x i8> %x0, <64 x i8> %x1, i32 2, <64 x i8> zeroinitializer, i64 %x4)
  %res2 = call <64 x i8> @llvm.x86.avx512.mask.palignr.512(<64 x i8> %x0, <64 x i8> %x1, i32 2, <64 x i8> %x3, i64 -1)
  %res3 = add <64 x i8> %res, %res1
  %res4 = add <64 x i8> %res3, %res2
  ret <64 x i8> %res4
}

declare <32 x i16> @llvm.x86.avx512.mask.pshufh.w.512(<32 x i16>, i32, <32 x i16>, i32)

define <32 x i16>@test_int_x86_avx512_mask_pshufh_w_512(<32 x i16> %x0, i32 %x1, <32 x i16> %x2, i32 %x3) {
; AVX512BW-LABEL: test_int_x86_avx512_mask_pshufh_w_512:
; AVX512BW:       ## BB#0:
; AVX512BW-NEXT:    vpshufhw {{.*#+}} zmm2 = zmm0[0,1,2,3,7,4,4,4,8,9,10,11,15,12,12,12,16,17,18,19,23,20,20,20,24,25,26,27,31,28,28,28]
; AVX512BW-NEXT:    kmovd %esi, %k1
; AVX512BW-NEXT:    vpshufhw {{.*#+}} zmm1 {%k1} = zmm0[0,1,2,3,7,4,4,4,8,9,10,11,15,12,12,12,16,17,18,19,23,20,20,20,24,25,26,27,31,28,28,28]
; AVX512BW-NEXT:    vpshufhw {{.*#+}} zmm0 {%k1} {z} = zmm0[0,1,2,3,7,4,4,4,8,9,10,11,15,12,12,12,16,17,18,19,23,20,20,20,24,25,26,27,31,28,28,28]
; AVX512BW-NEXT:    vpaddw %zmm0, %zmm1, %zmm0
; AVX512BW-NEXT:    vpaddw %zmm2, %zmm0, %zmm0
; AVX512BW-NEXT:    retq
;
; AVX512F-32-LABEL: test_int_x86_avx512_mask_pshufh_w_512:
; AVX512F-32:       # BB#0:
; AVX512F-32-NEXT:    vpshufhw {{.*#+}} zmm2 = zmm0[0,1,2,3,7,4,4,4,8,9,10,11,15,12,12,12,16,17,18,19,23,20,20,20,24,25,26,27,31,28,28,28]
; AVX512F-32-NEXT:    kmovd {{[0-9]+}}(%esp), %k1
; AVX512F-32-NEXT:    vpshufhw {{.*#+}} zmm1 {%k1} = zmm0[0,1,2,3,7,4,4,4,8,9,10,11,15,12,12,12,16,17,18,19,23,20,20,20,24,25,26,27,31,28,28,28]
; AVX512F-32-NEXT:    vpshufhw {{.*#+}} zmm0 {%k1} {z} = zmm0[0,1,2,3,7,4,4,4,8,9,10,11,15,12,12,12,16,17,18,19,23,20,20,20,24,25,26,27,31,28,28,28]
; AVX512F-32-NEXT:    vpaddw %zmm0, %zmm1, %zmm0
; AVX512F-32-NEXT:    vpaddw %zmm2, %zmm0, %zmm0
; AVX512F-32-NEXT:    retl
  %res = call <32 x i16> @llvm.x86.avx512.mask.pshufh.w.512(<32 x i16> %x0, i32 3, <32 x i16> %x2, i32 %x3)
  %res1 = call <32 x i16> @llvm.x86.avx512.mask.pshufh.w.512(<32 x i16> %x0, i32 3, <32 x i16> zeroinitializer, i32 %x3)
  %res2 = call <32 x i16> @llvm.x86.avx512.mask.pshufh.w.512(<32 x i16> %x0, i32 3, <32 x i16> %x2, i32 -1)
  %res3 = add <32 x i16> %res, %res1
  %res4 = add <32 x i16> %res3, %res2
  ret <32 x i16> %res4
}

declare <32 x i16> @llvm.x86.avx512.mask.pshufl.w.512(<32 x i16>, i32, <32 x i16>, i32)

define <32 x i16>@test_int_x86_avx512_mask_pshufl_w_512(<32 x i16> %x0, i32 %x1, <32 x i16> %x2, i32 %x3) {
; AVX512BW-LABEL: test_int_x86_avx512_mask_pshufl_w_512:
; AVX512BW:       ## BB#0:
; AVX512BW-NEXT:    vpshuflw {{.*#+}} zmm2 = zmm0[3,0,0,0,4,5,6,7,11,8,8,8,12,13,14,15,19,16,16,16,20,21,22,23,27,24,24,24,28,29,30,31]
; AVX512BW-NEXT:    kmovd %esi, %k1
; AVX512BW-NEXT:    vpshuflw {{.*#+}} zmm1 {%k1} = zmm0[3,0,0,0,4,5,6,7,11,8,8,8,12,13,14,15,19,16,16,16,20,21,22,23,27,24,24,24,28,29,30,31]
; AVX512BW-NEXT:    vpshuflw {{.*#+}} zmm0 {%k1} {z} = zmm0[3,0,0,0,4,5,6,7,11,8,8,8,12,13,14,15,19,16,16,16,20,21,22,23,27,24,24,24,28,29,30,31]
; AVX512BW-NEXT:    vpaddw %zmm0, %zmm1, %zmm0
; AVX512BW-NEXT:    vpaddw %zmm2, %zmm0, %zmm0
; AVX512BW-NEXT:    retq
;
; AVX512F-32-LABEL: test_int_x86_avx512_mask_pshufl_w_512:
; AVX512F-32:       # BB#0:
; AVX512F-32-NEXT:    vpshuflw {{.*#+}} zmm2 = zmm0[3,0,0,0,4,5,6,7,11,8,8,8,12,13,14,15,19,16,16,16,20,21,22,23,27,24,24,24,28,29,30,31]
; AVX512F-32-NEXT:    kmovd {{[0-9]+}}(%esp), %k1
; AVX512F-32-NEXT:    vpshuflw {{.*#+}} zmm1 {%k1} = zmm0[3,0,0,0,4,5,6,7,11,8,8,8,12,13,14,15,19,16,16,16,20,21,22,23,27,24,24,24,28,29,30,31]
; AVX512F-32-NEXT:    vpshuflw {{.*#+}} zmm0 {%k1} {z} = zmm0[3,0,0,0,4,5,6,7,11,8,8,8,12,13,14,15,19,16,16,16,20,21,22,23,27,24,24,24,28,29,30,31]
; AVX512F-32-NEXT:    vpaddw %zmm0, %zmm1, %zmm0
; AVX512F-32-NEXT:    vpaddw %zmm2, %zmm0, %zmm0
; AVX512F-32-NEXT:    retl
  %res = call <32 x i16> @llvm.x86.avx512.mask.pshufl.w.512(<32 x i16> %x0, i32 3, <32 x i16> %x2, i32 %x3)
  %res1 = call <32 x i16> @llvm.x86.avx512.mask.pshufl.w.512(<32 x i16> %x0, i32 3, <32 x i16> zeroinitializer, i32 %x3)
  %res2 = call <32 x i16> @llvm.x86.avx512.mask.pshufl.w.512(<32 x i16> %x0, i32 3, <32 x i16> %x2, i32 -1)
  %res3 = add <32 x i16> %res, %res1
  %res4 = add <32 x i16> %res3, %res2
  ret <32 x i16> %res4
}

define i64 @test_pcmpeq_b(<64 x i8> %a, <64 x i8> %b) {
; AVX512BW-LABEL: test_pcmpeq_b:
; AVX512BW:       ## BB#0:
; AVX512BW-NEXT:    vpcmpeqb %zmm1, %zmm0, %k0
; AVX512BW-NEXT:    kmovq %k0, %rax
; AVX512BW-NEXT:    retq
;
; AVX512F-32-LABEL: test_pcmpeq_b:
; AVX512F-32:       # BB#0:
; AVX512F-32-NEXT:    subl $12, %esp
; AVX512F-32-NEXT:  .Ltmp0:
; AVX512F-32-NEXT:    .cfi_def_cfa_offset 16
; AVX512F-32-NEXT:    vpcmpeqb %zmm1, %zmm0, %k0
; AVX512F-32-NEXT:    kmovq %k0, (%esp)
; AVX512F-32-NEXT:    movl (%esp), %eax
; AVX512F-32-NEXT:    movl {{[0-9]+}}(%esp), %edx
; AVX512F-32-NEXT:    addl $12, %esp
; AVX512F-32-NEXT:    retl
  %res = call i64 @llvm.x86.avx512.mask.pcmpeq.b.512(<64 x i8> %a, <64 x i8> %b, i64 -1)
  ret i64 %res
}

define i64 @test_mask_pcmpeq_b(<64 x i8> %a, <64 x i8> %b, i64 %mask) {
; AVX512BW-LABEL: test_mask_pcmpeq_b:
; AVX512BW:       ## BB#0:
; AVX512BW-NEXT:    kmovq %rdi, %k1
; AVX512BW-NEXT:    vpcmpeqb %zmm1, %zmm0, %k0 {%k1}
; AVX512BW-NEXT:    kmovq %k0, %rax
; AVX512BW-NEXT:    retq
;
; AVX512F-32-LABEL: test_mask_pcmpeq_b:
; AVX512F-32:       # BB#0:
; AVX512F-32-NEXT:    subl $12, %esp
; AVX512F-32-NEXT:  .Ltmp1:
; AVX512F-32-NEXT:    .cfi_def_cfa_offset 16
; AVX512F-32-NEXT:    kmovq {{[0-9]+}}(%esp), %k1
; AVX512F-32-NEXT:    vpcmpeqb %zmm1, %zmm0, %k0 {%k1}
; AVX512F-32-NEXT:    kmovq %k0, (%esp)
; AVX512F-32-NEXT:    movl (%esp), %eax
; AVX512F-32-NEXT:    movl {{[0-9]+}}(%esp), %edx
; AVX512F-32-NEXT:    addl $12, %esp
; AVX512F-32-NEXT:    retl
  %res = call i64 @llvm.x86.avx512.mask.pcmpeq.b.512(<64 x i8> %a, <64 x i8> %b, i64 %mask)
  ret i64 %res
}

declare i64 @llvm.x86.avx512.mask.pcmpeq.b.512(<64 x i8>, <64 x i8>, i64)

define i32 @test_pcmpeq_w(<32 x i16> %a, <32 x i16> %b) {
; AVX512BW-LABEL: test_pcmpeq_w:
; AVX512BW:       ## BB#0:
; AVX512BW-NEXT:    vpcmpeqw %zmm1, %zmm0, %k0
; AVX512BW-NEXT:    kmovd %k0, %eax
; AVX512BW-NEXT:    retq
;
; AVX512F-32-LABEL: test_pcmpeq_w:
; AVX512F-32:       # BB#0:
; AVX512F-32-NEXT:    vpcmpeqw %zmm1, %zmm0, %k0
; AVX512F-32-NEXT:    kmovd %k0, %eax
; AVX512F-32-NEXT:    retl
  %res = call i32 @llvm.x86.avx512.mask.pcmpeq.w.512(<32 x i16> %a, <32 x i16> %b, i32 -1)
  ret i32 %res
}

define i32 @test_mask_pcmpeq_w(<32 x i16> %a, <32 x i16> %b, i32 %mask) {
; AVX512BW-LABEL: test_mask_pcmpeq_w:
; AVX512BW:       ## BB#0:
; AVX512BW-NEXT:    kmovd %edi, %k1
; AVX512BW-NEXT:    vpcmpeqw %zmm1, %zmm0, %k0 {%k1}
; AVX512BW-NEXT:    kmovd %k0, %eax
; AVX512BW-NEXT:    retq
;
; AVX512F-32-LABEL: test_mask_pcmpeq_w:
; AVX512F-32:       # BB#0:
; AVX512F-32-NEXT:    kmovd {{[0-9]+}}(%esp), %k1
; AVX512F-32-NEXT:    vpcmpeqw %zmm1, %zmm0, %k0 {%k1}
; AVX512F-32-NEXT:    kmovd %k0, %eax
; AVX512F-32-NEXT:    retl
  %res = call i32 @llvm.x86.avx512.mask.pcmpeq.w.512(<32 x i16> %a, <32 x i16> %b, i32 %mask)
  ret i32 %res
}

declare i32 @llvm.x86.avx512.mask.pcmpeq.w.512(<32 x i16>, <32 x i16>, i32)

define i64 @test_pcmpgt_b(<64 x i8> %a, <64 x i8> %b) {
; AVX512BW-LABEL: test_pcmpgt_b:
; AVX512BW:       ## BB#0:
; AVX512BW-NEXT:    vpcmpgtb %zmm1, %zmm0, %k0
; AVX512BW-NEXT:    kmovq %k0, %rax
; AVX512BW-NEXT:    retq
;
; AVX512F-32-LABEL: test_pcmpgt_b:
; AVX512F-32:       # BB#0:
; AVX512F-32-NEXT:    subl $12, %esp
; AVX512F-32-NEXT:  .Ltmp2:
; AVX512F-32-NEXT:    .cfi_def_cfa_offset 16
; AVX512F-32-NEXT:    vpcmpgtb %zmm1, %zmm0, %k0
; AVX512F-32-NEXT:    kmovq %k0, (%esp)
; AVX512F-32-NEXT:    movl (%esp), %eax
; AVX512F-32-NEXT:    movl {{[0-9]+}}(%esp), %edx
; AVX512F-32-NEXT:    addl $12, %esp
; AVX512F-32-NEXT:    retl
  %res = call i64 @llvm.x86.avx512.mask.pcmpgt.b.512(<64 x i8> %a, <64 x i8> %b, i64 -1)
  ret i64 %res
}

define i64 @test_mask_pcmpgt_b(<64 x i8> %a, <64 x i8> %b, i64 %mask) {
; AVX512BW-LABEL: test_mask_pcmpgt_b:
; AVX512BW:       ## BB#0:
; AVX512BW-NEXT:    kmovq %rdi, %k1
; AVX512BW-NEXT:    vpcmpgtb %zmm1, %zmm0, %k0 {%k1}
; AVX512BW-NEXT:    kmovq %k0, %rax
; AVX512BW-NEXT:    retq
;
; AVX512F-32-LABEL: test_mask_pcmpgt_b:
; AVX512F-32:       # BB#0:
; AVX512F-32-NEXT:    subl $12, %esp
; AVX512F-32-NEXT:  .Ltmp3:
; AVX512F-32-NEXT:    .cfi_def_cfa_offset 16
; AVX512F-32-NEXT:    kmovq {{[0-9]+}}(%esp), %k1
; AVX512F-32-NEXT:    vpcmpgtb %zmm1, %zmm0, %k0 {%k1}
; AVX512F-32-NEXT:    kmovq %k0, (%esp)
; AVX512F-32-NEXT:    movl (%esp), %eax
; AVX512F-32-NEXT:    movl {{[0-9]+}}(%esp), %edx
; AVX512F-32-NEXT:    addl $12, %esp
; AVX512F-32-NEXT:    retl
  %res = call i64 @llvm.x86.avx512.mask.pcmpgt.b.512(<64 x i8> %a, <64 x i8> %b, i64 %mask)
  ret i64 %res
}

declare i64 @llvm.x86.avx512.mask.pcmpgt.b.512(<64 x i8>, <64 x i8>, i64)

define i32 @test_pcmpgt_w(<32 x i16> %a, <32 x i16> %b) {
; AVX512BW-LABEL: test_pcmpgt_w:
; AVX512BW:       ## BB#0:
; AVX512BW-NEXT:    vpcmpgtw %zmm1, %zmm0, %k0
; AVX512BW-NEXT:    kmovd %k0, %eax
; AVX512BW-NEXT:    retq
;
; AVX512F-32-LABEL: test_pcmpgt_w:
; AVX512F-32:       # BB#0:
; AVX512F-32-NEXT:    vpcmpgtw %zmm1, %zmm0, %k0
; AVX512F-32-NEXT:    kmovd %k0, %eax
; AVX512F-32-NEXT:    retl
  %res = call i32 @llvm.x86.avx512.mask.pcmpgt.w.512(<32 x i16> %a, <32 x i16> %b, i32 -1)
  ret i32 %res
}

define i32 @test_mask_pcmpgt_w(<32 x i16> %a, <32 x i16> %b, i32 %mask) {
; AVX512BW-LABEL: test_mask_pcmpgt_w:
; AVX512BW:       ## BB#0:
; AVX512BW-NEXT:    kmovd %edi, %k1
; AVX512BW-NEXT:    vpcmpgtw %zmm1, %zmm0, %k0 {%k1}
; AVX512BW-NEXT:    kmovd %k0, %eax
; AVX512BW-NEXT:    retq
;
; AVX512F-32-LABEL: test_mask_pcmpgt_w:
; AVX512F-32:       # BB#0:
; AVX512F-32-NEXT:    kmovd {{[0-9]+}}(%esp), %k1
; AVX512F-32-NEXT:    vpcmpgtw %zmm1, %zmm0, %k0 {%k1}
; AVX512F-32-NEXT:    kmovd %k0, %eax
; AVX512F-32-NEXT:    retl
  %res = call i32 @llvm.x86.avx512.mask.pcmpgt.w.512(<32 x i16> %a, <32 x i16> %b, i32 %mask)
  ret i32 %res
}

declare i32 @llvm.x86.avx512.mask.pcmpgt.w.512(<32 x i16>, <32 x i16>, i32)

declare <64 x i8> @llvm.x86.avx512.mask.punpckhb.w.512(<64 x i8>, <64 x i8>, <64 x i8>, i64)

define <64 x i8>@test_int_x86_avx512_mask_punpckhb_w_512(<64 x i8> %x0, <64 x i8> %x1, <64 x i8> %x2, i64 %x3) {
; AVX512BW-LABEL: test_int_x86_avx512_mask_punpckhb_w_512:
; AVX512BW:       ## BB#0:
; AVX512BW-NEXT:    vpunpckhbw {{.*#+}} zmm3 = zmm0[8],zmm1[8],zmm0[9],zmm1[9],zmm0[10],zmm1[10],zmm0[11],zmm1[11],zmm0[12],zmm1[12],zmm0[13],zmm1[13],zmm0[14],zmm1[14],zmm0[15],zmm1[15],zmm0[24],zmm1[24],zmm0[25],zmm1[25],zmm0[26],zmm1[26],zmm0[27],zmm1[27],zmm0[28],zmm1[28],zmm0[29],zmm1[29],zmm0[30],zmm1[30],zmm0[31],zmm1[31],zmm0[40],zmm1[40],zmm0[41],zmm1[41],zmm0[42],zmm1[42],zmm0[43],zmm1[43],zmm0[44],zmm1[44],zmm0[45],zmm1[45],zmm0[46],zmm1[46],zmm0[47],zmm1[47],zmm0[56],zmm1[56],zmm0[57],zmm1[57],zmm0[58],zmm1[58],zmm0[59],zmm1[59],zmm0[60],zmm1[60],zmm0[61],zmm1[61],zmm0[62],zmm1[62],zmm0[63],zmm1[63]
; AVX512BW-NEXT:    kmovq %rdi, %k1
; AVX512BW-NEXT:    vpunpckhbw {{.*#+}} zmm2 {%k1} = zmm0[8],zmm1[8],zmm0[9],zmm1[9],zmm0[10],zmm1[10],zmm0[11],zmm1[11],zmm0[12],zmm1[12],zmm0[13],zmm1[13],zmm0[14],zmm1[14],zmm0[15],zmm1[15],zmm0[24],zmm1[24],zmm0[25],zmm1[25],zmm0[26],zmm1[26],zmm0[27],zmm1[27],zmm0[28],zmm1[28],zmm0[29],zmm1[29],zmm0[30],zmm1[30],zmm0[31],zmm1[31],zmm0[40],zmm1[40],zmm0[41],zmm1[41],zmm0[42],zmm1[42],zmm0[43],zmm1[43],zmm0[44],zmm1[44],zmm0[45],zmm1[45],zmm0[46],zmm1[46],zmm0[47],zmm1[47],zmm0[56],zmm1[56],zmm0[57],zmm1[57],zmm0[58],zmm1[58],zmm0[59],zmm1[59],zmm0[60],zmm1[60],zmm0[61],zmm1[61],zmm0[62],zmm1[62],zmm0[63],zmm1[63]
; AVX512BW-NEXT:    vpaddb %zmm3, %zmm2, %zmm0
; AVX512BW-NEXT:    retq
;
; AVX512F-32-LABEL: test_int_x86_avx512_mask_punpckhb_w_512:
; AVX512F-32:       # BB#0:
; AVX512F-32-NEXT:    vpunpckhbw {{.*#+}} zmm3 = zmm0[8],zmm1[8],zmm0[9],zmm1[9],zmm0[10],zmm1[10],zmm0[11],zmm1[11],zmm0[12],zmm1[12],zmm0[13],zmm1[13],zmm0[14],zmm1[14],zmm0[15],zmm1[15],zmm0[24],zmm1[24],zmm0[25],zmm1[25],zmm0[26],zmm1[26],zmm0[27],zmm1[27],zmm0[28],zmm1[28],zmm0[29],zmm1[29],zmm0[30],zmm1[30],zmm0[31],zmm1[31],zmm0[40],zmm1[40],zmm0[41],zmm1[41],zmm0[42],zmm1[42],zmm0[43],zmm1[43],zmm0[44],zmm1[44],zmm0[45],zmm1[45],zmm0[46],zmm1[46],zmm0[47],zmm1[47],zmm0[56],zmm1[56],zmm0[57],zmm1[57],zmm0[58],zmm1[58],zmm0[59],zmm1[59],zmm0[60],zmm1[60],zmm0[61],zmm1[61],zmm0[62],zmm1[62],zmm0[63],zmm1[63]
; AVX512F-32-NEXT:    kmovq {{[0-9]+}}(%esp), %k1
; AVX512F-32-NEXT:    vpunpckhbw {{.*#+}} zmm2 {%k1} = zmm0[8],zmm1[8],zmm0[9],zmm1[9],zmm0[10],zmm1[10],zmm0[11],zmm1[11],zmm0[12],zmm1[12],zmm0[13],zmm1[13],zmm0[14],zmm1[14],zmm0[15],zmm1[15],zmm0[24],zmm1[24],zmm0[25],zmm1[25],zmm0[26],zmm1[26],zmm0[27],zmm1[27],zmm0[28],zmm1[28],zmm0[29],zmm1[29],zmm0[30],zmm1[30],zmm0[31],zmm1[31],zmm0[40],zmm1[40],zmm0[41],zmm1[41],zmm0[42],zmm1[42],zmm0[43],zmm1[43],zmm0[44],zmm1[44],zmm0[45],zmm1[45],zmm0[46],zmm1[46],zmm0[47],zmm1[47],zmm0[56],zmm1[56],zmm0[57],zmm1[57],zmm0[58],zmm1[58],zmm0[59],zmm1[59],zmm0[60],zmm1[60],zmm0[61],zmm1[61],zmm0[62],zmm1[62],zmm0[63],zmm1[63]
; AVX512F-32-NEXT:    vpaddb %zmm3, %zmm2, %zmm0
; AVX512F-32-NEXT:    retl
  %res = call <64 x i8> @llvm.x86.avx512.mask.punpckhb.w.512(<64 x i8> %x0, <64 x i8> %x1, <64 x i8> %x2, i64 %x3)
  %res1 = call <64 x i8> @llvm.x86.avx512.mask.punpckhb.w.512(<64 x i8> %x0, <64 x i8> %x1, <64 x i8> %x2, i64 -1)
  %res2 = add <64 x i8> %res, %res1
  ret <64 x i8> %res2
}

declare <64 x i8> @llvm.x86.avx512.mask.punpcklb.w.512(<64 x i8>, <64 x i8>, <64 x i8>, i64)

define <64 x i8>@test_int_x86_avx512_mask_punpcklb_w_512(<64 x i8> %x0, <64 x i8> %x1, <64 x i8> %x2, i64 %x3) {
; AVX512BW-LABEL: test_int_x86_avx512_mask_punpcklb_w_512:
; AVX512BW:       ## BB#0:
; AVX512BW-NEXT:    vpunpcklbw {{.*#+}} zmm3 = zmm0[0],zmm1[0],zmm0[1],zmm1[1],zmm0[2],zmm1[2],zmm0[3],zmm1[3],zmm0[4],zmm1[4],zmm0[5],zmm1[5],zmm0[6],zmm1[6],zmm0[7],zmm1[7],zmm0[16],zmm1[16],zmm0[17],zmm1[17],zmm0[18],zmm1[18],zmm0[19],zmm1[19],zmm0[20],zmm1[20],zmm0[21],zmm1[21],zmm0[22],zmm1[22],zmm0[23],zmm1[23],zmm0[32],zmm1[32],zmm0[33],zmm1[33],zmm0[34],zmm1[34],zmm0[35],zmm1[35],zmm0[36],zmm1[36],zmm0[37],zmm1[37],zmm0[38],zmm1[38],zmm0[39],zmm1[39],zmm0[48],zmm1[48],zmm0[49],zmm1[49],zmm0[50],zmm1[50],zmm0[51],zmm1[51],zmm0[52],zmm1[52],zmm0[53],zmm1[53],zmm0[54],zmm1[54],zmm0[55],zmm1[55]
; AVX512BW-NEXT:    kmovq %rdi, %k1
; AVX512BW-NEXT:    vpunpcklbw {{.*#+}} zmm2 {%k1} = zmm0[0],zmm1[0],zmm0[1],zmm1[1],zmm0[2],zmm1[2],zmm0[3],zmm1[3],zmm0[4],zmm1[4],zmm0[5],zmm1[5],zmm0[6],zmm1[6],zmm0[7],zmm1[7],zmm0[16],zmm1[16],zmm0[17],zmm1[17],zmm0[18],zmm1[18],zmm0[19],zmm1[19],zmm0[20],zmm1[20],zmm0[21],zmm1[21],zmm0[22],zmm1[22],zmm0[23],zmm1[23],zmm0[32],zmm1[32],zmm0[33],zmm1[33],zmm0[34],zmm1[34],zmm0[35],zmm1[35],zmm0[36],zmm1[36],zmm0[37],zmm1[37],zmm0[38],zmm1[38],zmm0[39],zmm1[39],zmm0[48],zmm1[48],zmm0[49],zmm1[49],zmm0[50],zmm1[50],zmm0[51],zmm1[51],zmm0[52],zmm1[52],zmm0[53],zmm1[53],zmm0[54],zmm1[54],zmm0[55],zmm1[55]
; AVX512BW-NEXT:    vpaddb %zmm3, %zmm2, %zmm0
; AVX512BW-NEXT:    retq
;
; AVX512F-32-LABEL: test_int_x86_avx512_mask_punpcklb_w_512:
; AVX512F-32:       # BB#0:
; AVX512F-32-NEXT:    vpunpcklbw {{.*#+}} zmm3 = zmm0[0],zmm1[0],zmm0[1],zmm1[1],zmm0[2],zmm1[2],zmm0[3],zmm1[3],zmm0[4],zmm1[4],zmm0[5],zmm1[5],zmm0[6],zmm1[6],zmm0[7],zmm1[7],zmm0[16],zmm1[16],zmm0[17],zmm1[17],zmm0[18],zmm1[18],zmm0[19],zmm1[19],zmm0[20],zmm1[20],zmm0[21],zmm1[21],zmm0[22],zmm1[22],zmm0[23],zmm1[23],zmm0[32],zmm1[32],zmm0[33],zmm1[33],zmm0[34],zmm1[34],zmm0[35],zmm1[35],zmm0[36],zmm1[36],zmm0[37],zmm1[37],zmm0[38],zmm1[38],zmm0[39],zmm1[39],zmm0[48],zmm1[48],zmm0[49],zmm1[49],zmm0[50],zmm1[50],zmm0[51],zmm1[51],zmm0[52],zmm1[52],zmm0[53],zmm1[53],zmm0[54],zmm1[54],zmm0[55],zmm1[55]
; AVX512F-32-NEXT:    kmovq {{[0-9]+}}(%esp), %k1
; AVX512F-32-NEXT:    vpunpcklbw {{.*#+}} zmm2 {%k1} = zmm0[0],zmm1[0],zmm0[1],zmm1[1],zmm0[2],zmm1[2],zmm0[3],zmm1[3],zmm0[4],zmm1[4],zmm0[5],zmm1[5],zmm0[6],zmm1[6],zmm0[7],zmm1[7],zmm0[16],zmm1[16],zmm0[17],zmm1[17],zmm0[18],zmm1[18],zmm0[19],zmm1[19],zmm0[20],zmm1[20],zmm0[21],zmm1[21],zmm0[22],zmm1[22],zmm0[23],zmm1[23],zmm0[32],zmm1[32],zmm0[33],zmm1[33],zmm0[34],zmm1[34],zmm0[35],zmm1[35],zmm0[36],zmm1[36],zmm0[37],zmm1[37],zmm0[38],zmm1[38],zmm0[39],zmm1[39],zmm0[48],zmm1[48],zmm0[49],zmm1[49],zmm0[50],zmm1[50],zmm0[51],zmm1[51],zmm0[52],zmm1[52],zmm0[53],zmm1[53],zmm0[54],zmm1[54],zmm0[55],zmm1[55]
; AVX512F-32-NEXT:    vpaddb %zmm3, %zmm2, %zmm0
; AVX512F-32-NEXT:    retl
  %res = call <64 x i8> @llvm.x86.avx512.mask.punpcklb.w.512(<64 x i8> %x0, <64 x i8> %x1, <64 x i8> %x2, i64 %x3)
  %res1 = call <64 x i8> @llvm.x86.avx512.mask.punpcklb.w.512(<64 x i8> %x0, <64 x i8> %x1, <64 x i8> %x2, i64 -1)
  %res2 = add <64 x i8> %res, %res1
  ret <64 x i8> %res2
}

declare <32 x i16> @llvm.x86.avx512.mask.punpckhw.d.512(<32 x i16>, <32 x i16>, <32 x i16>, i32)

define <32 x i16>@test_int_x86_avx512_mask_punpckhw_d_512(<32 x i16> %x0, <32 x i16> %x1, <32 x i16> %x2, i32 %x3) {
; AVX512BW-LABEL: test_int_x86_avx512_mask_punpckhw_d_512:
; AVX512BW:       ## BB#0:
; AVX512BW-NEXT:    vpunpckhwd {{.*#+}} zmm3 = zmm0[4],zmm1[4],zmm0[5],zmm1[5],zmm0[6],zmm1[6],zmm0[7],zmm1[7],zmm0[12],zmm1[12],zmm0[13],zmm1[13],zmm0[14],zmm1[14],zmm0[15],zmm1[15],zmm0[20],zmm1[20],zmm0[21],zmm1[21],zmm0[22],zmm1[22],zmm0[23],zmm1[23],zmm0[28],zmm1[28],zmm0[29],zmm1[29],zmm0[30],zmm1[30],zmm0[31],zmm1[31]
; AVX512BW-NEXT:    kmovd %edi, %k1
; AVX512BW-NEXT:    vpunpckhwd {{.*#+}} zmm2 {%k1} = zmm0[4],zmm1[4],zmm0[5],zmm1[5],zmm0[6],zmm1[6],zmm0[7],zmm1[7],zmm0[12],zmm1[12],zmm0[13],zmm1[13],zmm0[14],zmm1[14],zmm0[15],zmm1[15],zmm0[20],zmm1[20],zmm0[21],zmm1[21],zmm0[22],zmm1[22],zmm0[23],zmm1[23],zmm0[28],zmm1[28],zmm0[29],zmm1[29],zmm0[30],zmm1[30],zmm0[31],zmm1[31]
; AVX512BW-NEXT:    vpaddw %zmm3, %zmm2, %zmm0
; AVX512BW-NEXT:    retq
;
; AVX512F-32-LABEL: test_int_x86_avx512_mask_punpckhw_d_512:
; AVX512F-32:       # BB#0:
; AVX512F-32-NEXT:    vpunpckhwd {{.*#+}} zmm3 = zmm0[4],zmm1[4],zmm0[5],zmm1[5],zmm0[6],zmm1[6],zmm0[7],zmm1[7],zmm0[12],zmm1[12],zmm0[13],zmm1[13],zmm0[14],zmm1[14],zmm0[15],zmm1[15],zmm0[20],zmm1[20],zmm0[21],zmm1[21],zmm0[22],zmm1[22],zmm0[23],zmm1[23],zmm0[28],zmm1[28],zmm0[29],zmm1[29],zmm0[30],zmm1[30],zmm0[31],zmm1[31]
; AVX512F-32-NEXT:    kmovd {{[0-9]+}}(%esp), %k1
; AVX512F-32-NEXT:    vpunpckhwd {{.*#+}} zmm2 {%k1} = zmm0[4],zmm1[4],zmm0[5],zmm1[5],zmm0[6],zmm1[6],zmm0[7],zmm1[7],zmm0[12],zmm1[12],zmm0[13],zmm1[13],zmm0[14],zmm1[14],zmm0[15],zmm1[15],zmm0[20],zmm1[20],zmm0[21],zmm1[21],zmm0[22],zmm1[22],zmm0[23],zmm1[23],zmm0[28],zmm1[28],zmm0[29],zmm1[29],zmm0[30],zmm1[30],zmm0[31],zmm1[31]
; AVX512F-32-NEXT:    vpaddw %zmm3, %zmm2, %zmm0
; AVX512F-32-NEXT:    retl
  %res = call <32 x i16> @llvm.x86.avx512.mask.punpckhw.d.512(<32 x i16> %x0, <32 x i16> %x1, <32 x i16> %x2, i32 %x3)
  %res1 = call <32 x i16> @llvm.x86.avx512.mask.punpckhw.d.512(<32 x i16> %x0, <32 x i16> %x1, <32 x i16> %x2, i32 -1)
  %res2 = add <32 x i16> %res, %res1
  ret <32 x i16> %res2
}

declare <32 x i16> @llvm.x86.avx512.mask.punpcklw.d.512(<32 x i16>, <32 x i16>, <32 x i16>, i32)

define <32 x i16>@test_int_x86_avx512_mask_punpcklw_d_512(<32 x i16> %x0, <32 x i16> %x1, <32 x i16> %x2, i32 %x3) {
; AVX512BW-LABEL: test_int_x86_avx512_mask_punpcklw_d_512:
; AVX512BW:       ## BB#0:
; AVX512BW-NEXT:    vpunpcklwd {{.*#+}} zmm3 = zmm0[0],zmm1[0],zmm0[1],zmm1[1],zmm0[2],zmm1[2],zmm0[3],zmm1[3],zmm0[8],zmm1[8],zmm0[9],zmm1[9],zmm0[10],zmm1[10],zmm0[11],zmm1[11],zmm0[16],zmm1[16],zmm0[17],zmm1[17],zmm0[18],zmm1[18],zmm0[19],zmm1[19],zmm0[24],zmm1[24],zmm0[25],zmm1[25],zmm0[26],zmm1[26],zmm0[27],zmm1[27]
; AVX512BW-NEXT:    kmovd %edi, %k1
; AVX512BW-NEXT:    vpunpcklwd {{.*#+}} zmm2 {%k1} = zmm0[0],zmm1[0],zmm0[1],zmm1[1],zmm0[2],zmm1[2],zmm0[3],zmm1[3],zmm0[8],zmm1[8],zmm0[9],zmm1[9],zmm0[10],zmm1[10],zmm0[11],zmm1[11],zmm0[16],zmm1[16],zmm0[17],zmm1[17],zmm0[18],zmm1[18],zmm0[19],zmm1[19],zmm0[24],zmm1[24],zmm0[25],zmm1[25],zmm0[26],zmm1[26],zmm0[27],zmm1[27]
; AVX512BW-NEXT:    vpaddw %zmm3, %zmm2, %zmm0
; AVX512BW-NEXT:    retq
;
; AVX512F-32-LABEL: test_int_x86_avx512_mask_punpcklw_d_512:
; AVX512F-32:       # BB#0:
; AVX512F-32-NEXT:    vpunpcklwd {{.*#+}} zmm3 = zmm0[0],zmm1[0],zmm0[1],zmm1[1],zmm0[2],zmm1[2],zmm0[3],zmm1[3],zmm0[8],zmm1[8],zmm0[9],zmm1[9],zmm0[10],zmm1[10],zmm0[11],zmm1[11],zmm0[16],zmm1[16],zmm0[17],zmm1[17],zmm0[18],zmm1[18],zmm0[19],zmm1[19],zmm0[24],zmm1[24],zmm0[25],zmm1[25],zmm0[26],zmm1[26],zmm0[27],zmm1[27]
; AVX512F-32-NEXT:    kmovd {{[0-9]+}}(%esp), %k1
; AVX512F-32-NEXT:    vpunpcklwd {{.*#+}} zmm2 {%k1} = zmm0[0],zmm1[0],zmm0[1],zmm1[1],zmm0[2],zmm1[2],zmm0[3],zmm1[3],zmm0[8],zmm1[8],zmm0[9],zmm1[9],zmm0[10],zmm1[10],zmm0[11],zmm1[11],zmm0[16],zmm1[16],zmm0[17],zmm1[17],zmm0[18],zmm1[18],zmm0[19],zmm1[19],zmm0[24],zmm1[24],zmm0[25],zmm1[25],zmm0[26],zmm1[26],zmm0[27],zmm1[27]
; AVX512F-32-NEXT:    vpaddw %zmm3, %zmm2, %zmm0
; AVX512F-32-NEXT:    retl
  %res = call <32 x i16> @llvm.x86.avx512.mask.punpcklw.d.512(<32 x i16> %x0, <32 x i16> %x1, <32 x i16> %x2, i32 %x3)
  %res1 = call <32 x i16> @llvm.x86.avx512.mask.punpcklw.d.512(<32 x i16> %x0, <32 x i16> %x1, <32 x i16> %x2, i32 -1)
  %res2 = add <32 x i16> %res, %res1
  ret <32 x i16> %res2
}

