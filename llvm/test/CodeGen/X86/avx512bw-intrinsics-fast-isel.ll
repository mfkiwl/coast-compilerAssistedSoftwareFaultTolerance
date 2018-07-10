; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s -fast-isel -mtriple=i386-unknown-unknown -mattr=+avx512f,+avx512bw | FileCheck %s --check-prefix=ALL --check-prefix=X32
; RUN: llc < %s -fast-isel -mtriple=x86_64-unknown-unknown -mattr=+avx512f,+avx512bw | FileCheck %s --check-prefix=ALL --check-prefix=X64

; NOTE: This should use IR equivalent to what is generated by clang/test/CodeGen/avx512bw-builtins.c

define <8 x i64> @test_mm512_broadcastb_epi8(<2 x i64> %a0) {
; X32-LABEL: test_mm512_broadcastb_epi8:
; X32:       # BB#0:
; X32-NEXT:    vpbroadcastb %xmm0, %zmm0
; X32-NEXT:    retl
;
; X64-LABEL: test_mm512_broadcastb_epi8:
; X64:       # BB#0:
; X64-NEXT:    vpbroadcastb %xmm0, %zmm0
; X64-NEXT:    retq
  %arg0 = bitcast <2 x i64> %a0 to <16 x i8>
  %res0 = shufflevector <16 x i8> %arg0, <16 x i8> undef, <64 x i32> zeroinitializer
  %res1 = bitcast <64 x i8> %res0 to <8 x i64>
  ret <8 x i64> %res1
}

define <8 x i64> @test_mm512_mask_broadcastb_epi8(<8 x i64> %a0, i64* %a1, <2 x i64> %a2) {
; X32-LABEL: test_mm512_mask_broadcastb_epi8:
; X32:       # BB#0:
; X32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X32-NEXT:    kmovq (%eax), %k1
; X32-NEXT:    vpbroadcastb %xmm1, %zmm0 {%k1}
; X32-NEXT:    retl
;
; X64-LABEL: test_mm512_mask_broadcastb_epi8:
; X64:       # BB#0:
; X64-NEXT:    kmovq (%rdi), %k1
; X64-NEXT:    vpbroadcastb %xmm1, %zmm0 {%k1}
; X64-NEXT:    retq
  %arg0 = bitcast <8 x i64> %a0 to <64 x i8>
  %bc1 = bitcast i64* %a1 to <64 x i1>*
  %arg1 = load <64 x i1>, <64 x i1>* %bc1
  %arg2 = bitcast <2 x i64> %a2 to <16 x i8>
  %res0 = shufflevector <16 x i8> %arg2, <16 x i8> undef, <64 x i32> zeroinitializer
  %res1 = select <64 x i1> %arg1, <64 x i8> %res0, <64 x i8> %arg0
  %res2 = bitcast <64 x i8> %res1 to <8 x i64>
  ret <8 x i64> %res2
}

define <8 x i64> @test_mm512_maskz_broadcastb_epi8(i64* %a0, <2 x i64> %a1) {
; X32-LABEL: test_mm512_maskz_broadcastb_epi8:
; X32:       # BB#0:
; X32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X32-NEXT:    kmovq (%eax), %k1
; X32-NEXT:    vpbroadcastb %xmm0, %zmm0 {%k1} {z}
; X32-NEXT:    retl
;
; X64-LABEL: test_mm512_maskz_broadcastb_epi8:
; X64:       # BB#0:
; X64-NEXT:    kmovq (%rdi), %k1
; X64-NEXT:    vpbroadcastb %xmm0, %zmm0 {%k1} {z}
; X64-NEXT:    retq
  %bc0 = bitcast i64* %a0 to <64 x i1>*
  %arg0 = load <64 x i1>, <64 x i1>* %bc0
  %arg1 = bitcast <2 x i64> %a1 to <16 x i8>
  %res0 = shufflevector <16 x i8> %arg1, <16 x i8> undef, <64 x i32> zeroinitializer
  %res1 = select <64 x i1> %arg0, <64 x i8> %res0, <64 x i8> zeroinitializer
  %res2 = bitcast <64 x i8> %res1 to <8 x i64>
  ret <8 x i64> %res2
}

define <8 x i64> @test_mm512_broadcastw_epi16(<2 x i64> %a0) {
; X32-LABEL: test_mm512_broadcastw_epi16:
; X32:       # BB#0:
; X32-NEXT:    vpbroadcastw %xmm0, %zmm0
; X32-NEXT:    retl
;
; X64-LABEL: test_mm512_broadcastw_epi16:
; X64:       # BB#0:
; X64-NEXT:    vpbroadcastw %xmm0, %zmm0
; X64-NEXT:    retq
  %arg0 = bitcast <2 x i64> %a0 to <8 x i16>
  %res0 = shufflevector <8 x i16> %arg0, <8 x i16> undef, <32 x i32> zeroinitializer
  %res1 = bitcast <32 x i16> %res0 to <8 x i64>
  ret <8 x i64> %res1
}

define <8 x i64> @test_mm512_mask_broadcastw_epi16(<8 x i64> %a0, i32 %a1, <2 x i64> %a2) {
; X32-LABEL: test_mm512_mask_broadcastw_epi16:
; X32:       # BB#0:
; X32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X32-NEXT:    kmovd %eax, %k1
; X32-NEXT:    vpbroadcastw %xmm1, %zmm0 {%k1}
; X32-NEXT:    retl
;
; X64-LABEL: test_mm512_mask_broadcastw_epi16:
; X64:       # BB#0:
; X64-NEXT:    kmovd %edi, %k1
; X64-NEXT:    vpbroadcastw %xmm1, %zmm0 {%k1}
; X64-NEXT:    retq
  %arg0 = bitcast <8 x i64> %a0 to <32 x i16>
  %arg1 = bitcast i32 %a1 to <32 x i1>
  %arg2 = bitcast <2 x i64> %a2 to <8 x i16>
  %res0 = shufflevector <8 x i16> %arg2, <8 x i16> undef, <32 x i32> zeroinitializer
  %res1 = select <32 x i1> %arg1, <32 x i16> %res0, <32 x i16> %arg0
  %res2 = bitcast <32 x i16> %res1 to <8 x i64>
  ret <8 x i64> %res2
}

define <8 x i64> @test_mm512_maskz_broadcastw_epi16(i32 %a0, <2 x i64> %a1) {
; X32-LABEL: test_mm512_maskz_broadcastw_epi16:
; X32:       # BB#0:
; X32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X32-NEXT:    kmovd %eax, %k1
; X32-NEXT:    vpbroadcastw %xmm0, %zmm0 {%k1} {z}
; X32-NEXT:    retl
;
; X64-LABEL: test_mm512_maskz_broadcastw_epi16:
; X64:       # BB#0:
; X64-NEXT:    kmovd %edi, %k1
; X64-NEXT:    vpbroadcastw %xmm0, %zmm0 {%k1} {z}
; X64-NEXT:    retq
  %arg0 = bitcast i32 %a0 to <32 x i1>
  %arg1 = bitcast <2 x i64> %a1 to <8 x i16>
  %res0 = shufflevector <8 x i16> %arg1, <8 x i16> undef, <32 x i32> zeroinitializer
  %res1 = select <32 x i1> %arg0, <32 x i16> %res0, <32 x i16> zeroinitializer
  %res2 = bitcast <32 x i16> %res1 to <8 x i64>
  ret <8 x i64> %res2
}

define <8 x i64> @test_mm512_bslli_epi128(<8 x i64> %a0) {
; X32-LABEL: test_mm512_bslli_epi128:
; X32:       # BB#0:
; X32-NEXT:    vpsrldq {{.*#+}} zmm0 = zmm0[11,12,13,14,15],zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zmm0[27,28,29,30,31],zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zmm0[43,44,45,46,47],zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zmm0[59,60,61,62,63],zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero
; X32-NEXT:    retl
;
; X64-LABEL: test_mm512_bslli_epi128:
; X64:       # BB#0:
; X64-NEXT:    vpsrldq {{.*#+}} zmm0 = zmm0[11,12,13,14,15],zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zmm0[27,28,29,30,31],zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zmm0[43,44,45,46,47],zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zmm0[59,60,61,62,63],zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero
; X64-NEXT:    retq
  %arg0 = bitcast <8 x i64> %a0 to <64 x i8>
  %res0 = shufflevector <64 x i8> %arg0, <64 x i8> zeroinitializer, <64 x i32> <i32 11, i32 12, i32 13, i32 14, i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 27, i32 28, i32 29, i32 30, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 43, i32 44, i32 45, i32 46, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 59, i32 60, i32 61, i32 62, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122>
  %res1 = bitcast <64 x i8> %res0 to <8 x i64>
  ret <8 x i64> %res1
}

define <8 x i64> @test_mm512_bsrli_epi128(<8 x i64> %a0) {
; X32-LABEL: test_mm512_bsrli_epi128:
; X32:       # BB#0:
; X32-NEXT:    vpsrldq {{.*#+}} zmm0 = zmm0[5,6,7,8,9,10,11,12,13,14,15],zero,zero,zero,zero,zero,zmm0[21,22,23,24,25,26,27,28,29,30,31],zero,zero,zero,zero,zero,zmm0[37,38,39,40,41,42,43,44,45,46,47],zero,zero,zero,zero,zero,zmm0[53,54,55,56,57,58,59,60,61,62,63],zero,zero,zero,zero,zero
; X32-NEXT:    retl
;
; X64-LABEL: test_mm512_bsrli_epi128:
; X64:       # BB#0:
; X64-NEXT:    vpsrldq {{.*#+}} zmm0 = zmm0[5,6,7,8,9,10,11,12,13,14,15],zero,zero,zero,zero,zero,zmm0[21,22,23,24,25,26,27,28,29,30,31],zero,zero,zero,zero,zero,zmm0[37,38,39,40,41,42,43,44,45,46,47],zero,zero,zero,zero,zero,zmm0[53,54,55,56,57,58,59,60,61,62,63],zero,zero,zero,zero,zero
; X64-NEXT:    retq
  %arg0 = bitcast <8 x i64> %a0 to <64 x i8>
  %res0 = shufflevector <64 x i8> %arg0, <64 x i8> zeroinitializer, <64 x i32> <i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116>
  %res1 = bitcast <64 x i8> %res0 to <8 x i64>
  ret <8 x i64> %res1
}

define <8 x i64> @test_mm512_unpackhi_epi8(<8 x i64> %a0, <8 x i64> %a1) {
; X32-LABEL: test_mm512_unpackhi_epi8:
; X32:       # BB#0:
; X32-NEXT:    vpunpckhbw {{.*#+}} zmm0 = zmm0[8],zmm1[8],zmm0[9],zmm1[9],zmm0[10],zmm1[10],zmm0[11],zmm1[11],zmm0[12],zmm1[12],zmm0[13],zmm1[13],zmm0[14],zmm1[14],zmm0[15],zmm1[15],zmm0[24],zmm1[24],zmm0[25],zmm1[25],zmm0[26],zmm1[26],zmm0[27],zmm1[27],zmm0[28],zmm1[28],zmm0[29],zmm1[29],zmm0[30],zmm1[30],zmm0[31],zmm1[31],zmm0[40],zmm1[40],zmm0[41],zmm1[41],zmm0[42],zmm1[42],zmm0[43],zmm1[43],zmm0[44],zmm1[44],zmm0[45],zmm1[45],zmm0[46],zmm1[46],zmm0[47],zmm1[47],zmm0[56],zmm1[56],zmm0[57],zmm1[57],zmm0[58],zmm1[58],zmm0[59],zmm1[59],zmm0[60],zmm1[60],zmm0[61],zmm1[61],zmm0[62],zmm1[62],zmm0[63],zmm1[63]
; X32-NEXT:    retl
;
; X64-LABEL: test_mm512_unpackhi_epi8:
; X64:       # BB#0:
; X64-NEXT:    vpunpckhbw {{.*#+}} zmm0 = zmm0[8],zmm1[8],zmm0[9],zmm1[9],zmm0[10],zmm1[10],zmm0[11],zmm1[11],zmm0[12],zmm1[12],zmm0[13],zmm1[13],zmm0[14],zmm1[14],zmm0[15],zmm1[15],zmm0[24],zmm1[24],zmm0[25],zmm1[25],zmm0[26],zmm1[26],zmm0[27],zmm1[27],zmm0[28],zmm1[28],zmm0[29],zmm1[29],zmm0[30],zmm1[30],zmm0[31],zmm1[31],zmm0[40],zmm1[40],zmm0[41],zmm1[41],zmm0[42],zmm1[42],zmm0[43],zmm1[43],zmm0[44],zmm1[44],zmm0[45],zmm1[45],zmm0[46],zmm1[46],zmm0[47],zmm1[47],zmm0[56],zmm1[56],zmm0[57],zmm1[57],zmm0[58],zmm1[58],zmm0[59],zmm1[59],zmm0[60],zmm1[60],zmm0[61],zmm1[61],zmm0[62],zmm1[62],zmm0[63],zmm1[63]
; X64-NEXT:    retq
  %arg0 = bitcast <8 x i64> %a0 to <64 x i8>
  %arg1 = bitcast <8 x i64> %a1 to <64 x i8>
  %res0 = shufflevector <64 x i8> %arg0, <64 x i8> %arg1, <64 x i32> <i32 8, i32 72, i32 9, i32 73, i32 10, i32 74, i32 11, i32 75, i32 12, i32 76, i32 13, i32 77, i32 14, i32 78, i32 15, i32 79, i32 24, i32 88, i32 25, i32 89, i32 26, i32 90, i32 27, i32 91, i32 28, i32 92, i32 29, i32 93, i32 30, i32 94, i32 31, i32 95, i32 40, i32 104, i32 41, i32 105, i32 42, i32 106, i32 43, i32 107, i32 44, i32 108, i32 45, i32 109, i32 46, i32 110, i32 47, i32 111, i32 56, i32 120, i32 57, i32 121, i32 58, i32 122, i32 59, i32 123, i32 60, i32 124, i32 61, i32 125, i32 62, i32 126, i32 63, i32 127>
  %res1 = bitcast <64 x i8> %res0 to <8 x i64>
  ret <8 x i64> %res1
}

; TODO - improve support for i64 -> mmask64 on 32-bit targets
define <8 x i64> @test_mm512_mask_unpackhi_epi8(<8 x i64> %a0, i64* %a1, <8 x i64> %a2, <8 x i64> %a3) {
; X32-LABEL: test_mm512_mask_unpackhi_epi8:
; X32:       # BB#0:
; X32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X32-NEXT:    kmovq (%eax), %k1
; X32-NEXT:    vpunpckhbw {{.*#+}} zmm0 {%k1} = zmm1[8],zmm2[8],zmm1[9],zmm2[9],zmm1[10],zmm2[10],zmm1[11],zmm2[11],zmm1[12],zmm2[12],zmm1[13],zmm2[13],zmm1[14],zmm2[14],zmm1[15],zmm2[15],zmm1[24],zmm2[24],zmm1[25],zmm2[25],zmm1[26],zmm2[26],zmm1[27],zmm2[27],zmm1[28],zmm2[28],zmm1[29],zmm2[29],zmm1[30],zmm2[30],zmm1[31],zmm2[31],zmm1[40],zmm2[40],zmm1[41],zmm2[41],zmm1[42],zmm2[42],zmm1[43],zmm2[43],zmm1[44],zmm2[44],zmm1[45],zmm2[45],zmm1[46],zmm2[46],zmm1[47],zmm2[47],zmm1[56],zmm2[56],zmm1[57],zmm2[57],zmm1[58],zmm2[58],zmm1[59],zmm2[59],zmm1[60],zmm2[60],zmm1[61],zmm2[61],zmm1[62],zmm2[62],zmm1[63],zmm2[63]
; X32-NEXT:    retl
;
; X64-LABEL: test_mm512_mask_unpackhi_epi8:
; X64:       # BB#0:
; X64-NEXT:    kmovq (%rdi), %k1
; X64-NEXT:    vpunpckhbw {{.*#+}} zmm0 {%k1} = zmm1[8],zmm2[8],zmm1[9],zmm2[9],zmm1[10],zmm2[10],zmm1[11],zmm2[11],zmm1[12],zmm2[12],zmm1[13],zmm2[13],zmm1[14],zmm2[14],zmm1[15],zmm2[15],zmm1[24],zmm2[24],zmm1[25],zmm2[25],zmm1[26],zmm2[26],zmm1[27],zmm2[27],zmm1[28],zmm2[28],zmm1[29],zmm2[29],zmm1[30],zmm2[30],zmm1[31],zmm2[31],zmm1[40],zmm2[40],zmm1[41],zmm2[41],zmm1[42],zmm2[42],zmm1[43],zmm2[43],zmm1[44],zmm2[44],zmm1[45],zmm2[45],zmm1[46],zmm2[46],zmm1[47],zmm2[47],zmm1[56],zmm2[56],zmm1[57],zmm2[57],zmm1[58],zmm2[58],zmm1[59],zmm2[59],zmm1[60],zmm2[60],zmm1[61],zmm2[61],zmm1[62],zmm2[62],zmm1[63],zmm2[63]
; X64-NEXT:    retq
  %arg0 = bitcast <8 x i64> %a0 to <64 x i8>
  %arg1 = bitcast i64* %a1 to <64 x i1>*
  %sel1 = load <64 x i1>, <64 x i1>* %arg1
  %arg2 = bitcast <8 x i64> %a2 to <64 x i8>
  %arg3 = bitcast <8 x i64> %a3 to <64 x i8>
  %res0 = shufflevector <64 x i8> %arg2, <64 x i8> %arg3, <64 x i32> <i32 8, i32 72, i32 9, i32 73, i32 10, i32 74, i32 11, i32 75, i32 12, i32 76, i32 13, i32 77, i32 14, i32 78, i32 15, i32 79, i32 24, i32 88, i32 25, i32 89, i32 26, i32 90, i32 27, i32 91, i32 28, i32 92, i32 29, i32 93, i32 30, i32 94, i32 31, i32 95, i32 40, i32 104, i32 41, i32 105, i32 42, i32 106, i32 43, i32 107, i32 44, i32 108, i32 45, i32 109, i32 46, i32 110, i32 47, i32 111, i32 56, i32 120, i32 57, i32 121, i32 58, i32 122, i32 59, i32 123, i32 60, i32 124, i32 61, i32 125, i32 62, i32 126, i32 63, i32 127>
  %res1 = select <64 x i1> %sel1, <64 x i8> %res0, <64 x i8> %arg0
  %res2 = bitcast <64 x i8> %res1 to <8 x i64>
  ret <8 x i64> %res2
}

define <8 x i64> @test_mm512_maskz_unpackhi_epi8(i64* %a0, <8 x i64> %a1, <8 x i64> %a2) {
; X32-LABEL: test_mm512_maskz_unpackhi_epi8:
; X32:       # BB#0:
; X32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X32-NEXT:    kmovq (%eax), %k1
; X32-NEXT:    vpunpckhbw {{.*#+}} zmm0 {%k1} {z} = zmm0[8],zmm1[8],zmm0[9],zmm1[9],zmm0[10],zmm1[10],zmm0[11],zmm1[11],zmm0[12],zmm1[12],zmm0[13],zmm1[13],zmm0[14],zmm1[14],zmm0[15],zmm1[15],zmm0[24],zmm1[24],zmm0[25],zmm1[25],zmm0[26],zmm1[26],zmm0[27],zmm1[27],zmm0[28],zmm1[28],zmm0[29],zmm1[29],zmm0[30],zmm1[30],zmm0[31],zmm1[31],zmm0[40],zmm1[40],zmm0[41],zmm1[41],zmm0[42],zmm1[42],zmm0[43],zmm1[43],zmm0[44],zmm1[44],zmm0[45],zmm1[45],zmm0[46],zmm1[46],zmm0[47],zmm1[47],zmm0[56],zmm1[56],zmm0[57],zmm1[57],zmm0[58],zmm1[58],zmm0[59],zmm1[59],zmm0[60],zmm1[60],zmm0[61],zmm1[61],zmm0[62],zmm1[62],zmm0[63],zmm1[63]
; X32-NEXT:    retl
;
; X64-LABEL: test_mm512_maskz_unpackhi_epi8:
; X64:       # BB#0:
; X64-NEXT:    kmovq (%rdi), %k1
; X64-NEXT:    vpunpckhbw {{.*#+}} zmm0 {%k1} {z} = zmm0[8],zmm1[8],zmm0[9],zmm1[9],zmm0[10],zmm1[10],zmm0[11],zmm1[11],zmm0[12],zmm1[12],zmm0[13],zmm1[13],zmm0[14],zmm1[14],zmm0[15],zmm1[15],zmm0[24],zmm1[24],zmm0[25],zmm1[25],zmm0[26],zmm1[26],zmm0[27],zmm1[27],zmm0[28],zmm1[28],zmm0[29],zmm1[29],zmm0[30],zmm1[30],zmm0[31],zmm1[31],zmm0[40],zmm1[40],zmm0[41],zmm1[41],zmm0[42],zmm1[42],zmm0[43],zmm1[43],zmm0[44],zmm1[44],zmm0[45],zmm1[45],zmm0[46],zmm1[46],zmm0[47],zmm1[47],zmm0[56],zmm1[56],zmm0[57],zmm1[57],zmm0[58],zmm1[58],zmm0[59],zmm1[59],zmm0[60],zmm1[60],zmm0[61],zmm1[61],zmm0[62],zmm1[62],zmm0[63],zmm1[63]
; X64-NEXT:    retq
  %arg0 = bitcast i64* %a0 to <64 x i1>*
  %sel0 = load <64 x i1>, <64 x i1>* %arg0
  %arg1 = bitcast <8 x i64> %a1 to <64 x i8>
  %arg2 = bitcast <8 x i64> %a2 to <64 x i8>
  %res0 = shufflevector <64 x i8> %arg1, <64 x i8> %arg2, <64 x i32> <i32 8, i32 72, i32 9, i32 73, i32 10, i32 74, i32 11, i32 75, i32 12, i32 76, i32 13, i32 77, i32 14, i32 78, i32 15, i32 79, i32 24, i32 88, i32 25, i32 89, i32 26, i32 90, i32 27, i32 91, i32 28, i32 92, i32 29, i32 93, i32 30, i32 94, i32 31, i32 95, i32 40, i32 104, i32 41, i32 105, i32 42, i32 106, i32 43, i32 107, i32 44, i32 108, i32 45, i32 109, i32 46, i32 110, i32 47, i32 111, i32 56, i32 120, i32 57, i32 121, i32 58, i32 122, i32 59, i32 123, i32 60, i32 124, i32 61, i32 125, i32 62, i32 126, i32 63, i32 127>
  %res1 = select <64 x i1> %sel0, <64 x i8> %res0, <64 x i8> zeroinitializer
  %res2 = bitcast <64 x i8> %res1 to <8 x i64>
  ret <8 x i64> %res2
}

define <8 x i64> @test_mm512_unpackhi_epi16(<8 x i64> %a0, <8 x i64> %a1) {
; X32-LABEL: test_mm512_unpackhi_epi16:
; X32:       # BB#0:
; X32-NEXT:    vpunpckhwd {{.*#+}} zmm0 = zmm0[4],zmm1[4],zmm0[5],zmm1[5],zmm0[6],zmm1[6],zmm0[7],zmm1[7],zmm0[12],zmm1[12],zmm0[13],zmm1[13],zmm0[14],zmm1[14],zmm0[15],zmm1[15],zmm0[20],zmm1[20],zmm0[21],zmm1[21],zmm0[22],zmm1[22],zmm0[23],zmm1[23],zmm0[28],zmm1[28],zmm0[29],zmm1[29],zmm0[30],zmm1[30],zmm0[31],zmm1[31]
; X32-NEXT:    retl
;
; X64-LABEL: test_mm512_unpackhi_epi16:
; X64:       # BB#0:
; X64-NEXT:    vpunpckhwd {{.*#+}} zmm0 = zmm0[4],zmm1[4],zmm0[5],zmm1[5],zmm0[6],zmm1[6],zmm0[7],zmm1[7],zmm0[12],zmm1[12],zmm0[13],zmm1[13],zmm0[14],zmm1[14],zmm0[15],zmm1[15],zmm0[20],zmm1[20],zmm0[21],zmm1[21],zmm0[22],zmm1[22],zmm0[23],zmm1[23],zmm0[28],zmm1[28],zmm0[29],zmm1[29],zmm0[30],zmm1[30],zmm0[31],zmm1[31]
; X64-NEXT:    retq
  %arg0 = bitcast <8 x i64> %a0 to <32 x i16>
  %arg1 = bitcast <8 x i64> %a1 to <32 x i16>
  %res0 = shufflevector <32 x i16> %arg0, <32 x i16> %arg1, <32 x i32> <i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  %res1 = bitcast <32 x i16> %res0 to <8 x i64>
  ret <8 x i64> %res1
}

define <8 x i64> @test_mm512_mask_unpackhi_epi16(<8 x i64> %a0, i32 %a1, <8 x i64> %a2, <8 x i64> %a3) {
; X32-LABEL: test_mm512_mask_unpackhi_epi16:
; X32:       # BB#0:
; X32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X32-NEXT:    kmovd %eax, %k1
; X32-NEXT:    vpunpckhwd {{.*#+}} zmm0 {%k1} = zmm1[4],zmm2[4],zmm1[5],zmm2[5],zmm1[6],zmm2[6],zmm1[7],zmm2[7],zmm1[12],zmm2[12],zmm1[13],zmm2[13],zmm1[14],zmm2[14],zmm1[15],zmm2[15],zmm1[20],zmm2[20],zmm1[21],zmm2[21],zmm1[22],zmm2[22],zmm1[23],zmm2[23],zmm1[28],zmm2[28],zmm1[29],zmm2[29],zmm1[30],zmm2[30],zmm1[31],zmm2[31]
; X32-NEXT:    retl
;
; X64-LABEL: test_mm512_mask_unpackhi_epi16:
; X64:       # BB#0:
; X64-NEXT:    kmovd %edi, %k1
; X64-NEXT:    vpunpckhwd {{.*#+}} zmm0 {%k1} = zmm1[4],zmm2[4],zmm1[5],zmm2[5],zmm1[6],zmm2[6],zmm1[7],zmm2[7],zmm1[12],zmm2[12],zmm1[13],zmm2[13],zmm1[14],zmm2[14],zmm1[15],zmm2[15],zmm1[20],zmm2[20],zmm1[21],zmm2[21],zmm1[22],zmm2[22],zmm1[23],zmm2[23],zmm1[28],zmm2[28],zmm1[29],zmm2[29],zmm1[30],zmm2[30],zmm1[31],zmm2[31]
; X64-NEXT:    retq
  %arg0 = bitcast <8 x i64> %a0 to <32 x i16>
  %arg1 = bitcast i32 %a1 to <32 x i1>
  %arg2 = bitcast <8 x i64> %a2 to <32 x i16>
  %arg3 = bitcast <8 x i64> %a3 to <32 x i16>
  %res0 = shufflevector <32 x i16> %arg2, <32 x i16> %arg3, <32 x i32> <i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  %res1 = select <32 x i1> %arg1, <32 x i16> %res0, <32 x i16> %arg0
  %res2 = bitcast <32 x i16> %res1 to <8 x i64>
  ret <8 x i64> %res2
}

define <8 x i64> @test_mm512_maskz_unpackhi_epi16(i32 %a0, <8 x i64> %a1, <8 x i64> %a2) {
; X32-LABEL: test_mm512_maskz_unpackhi_epi16:
; X32:       # BB#0:
; X32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X32-NEXT:    kmovd %eax, %k1
; X32-NEXT:    vpunpckhwd {{.*#+}} zmm0 {%k1} {z} = zmm0[4],zmm1[4],zmm0[5],zmm1[5],zmm0[6],zmm1[6],zmm0[7],zmm1[7],zmm0[12],zmm1[12],zmm0[13],zmm1[13],zmm0[14],zmm1[14],zmm0[15],zmm1[15],zmm0[20],zmm1[20],zmm0[21],zmm1[21],zmm0[22],zmm1[22],zmm0[23],zmm1[23],zmm0[28],zmm1[28],zmm0[29],zmm1[29],zmm0[30],zmm1[30],zmm0[31],zmm1[31]
; X32-NEXT:    retl
;
; X64-LABEL: test_mm512_maskz_unpackhi_epi16:
; X64:       # BB#0:
; X64-NEXT:    kmovd %edi, %k1
; X64-NEXT:    vpunpckhwd {{.*#+}} zmm0 {%k1} {z} = zmm0[4],zmm1[4],zmm0[5],zmm1[5],zmm0[6],zmm1[6],zmm0[7],zmm1[7],zmm0[12],zmm1[12],zmm0[13],zmm1[13],zmm0[14],zmm1[14],zmm0[15],zmm1[15],zmm0[20],zmm1[20],zmm0[21],zmm1[21],zmm0[22],zmm1[22],zmm0[23],zmm1[23],zmm0[28],zmm1[28],zmm0[29],zmm1[29],zmm0[30],zmm1[30],zmm0[31],zmm1[31]
; X64-NEXT:    retq
  %arg0 = bitcast i32 %a0 to <32 x i1>
  %arg1 = bitcast <8 x i64> %a1 to <32 x i16>
  %arg2 = bitcast <8 x i64> %a2 to <32 x i16>
  %res0 = shufflevector <32 x i16> %arg1, <32 x i16> %arg2, <32 x i32> <i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63>
  %res1 = select <32 x i1> %arg0, <32 x i16> %res0, <32 x i16> zeroinitializer
  %res2 = bitcast <32 x i16> %res1 to <8 x i64>
  ret <8 x i64> %res2
}

define <8 x i64> @test_mm512_unpacklo_epi8(<8 x i64> %a0, <8 x i64> %a1) {
; X32-LABEL: test_mm512_unpacklo_epi8:
; X32:       # BB#0:
; X32-NEXT:    vpunpcklbw {{.*#+}} zmm0 = zmm0[0],zmm1[0],zmm0[1],zmm1[1],zmm0[2],zmm1[2],zmm0[3],zmm1[3],zmm0[4],zmm1[4],zmm0[5],zmm1[5],zmm0[6],zmm1[6],zmm0[7],zmm1[7],zmm0[16],zmm1[16],zmm0[17],zmm1[17],zmm0[18],zmm1[18],zmm0[19],zmm1[19],zmm0[20],zmm1[20],zmm0[21],zmm1[21],zmm0[22],zmm1[22],zmm0[23],zmm1[23],zmm0[32],zmm1[32],zmm0[33],zmm1[33],zmm0[34],zmm1[34],zmm0[35],zmm1[35],zmm0[36],zmm1[36],zmm0[37],zmm1[37],zmm0[38],zmm1[38],zmm0[39],zmm1[39],zmm0[48],zmm1[48],zmm0[49],zmm1[49],zmm0[50],zmm1[50],zmm0[51],zmm1[51],zmm0[52],zmm1[52],zmm0[53],zmm1[53],zmm0[54],zmm1[54],zmm0[55],zmm1[55]
; X32-NEXT:    retl
;
; X64-LABEL: test_mm512_unpacklo_epi8:
; X64:       # BB#0:
; X64-NEXT:    vpunpcklbw {{.*#+}} zmm0 = zmm0[0],zmm1[0],zmm0[1],zmm1[1],zmm0[2],zmm1[2],zmm0[3],zmm1[3],zmm0[4],zmm1[4],zmm0[5],zmm1[5],zmm0[6],zmm1[6],zmm0[7],zmm1[7],zmm0[16],zmm1[16],zmm0[17],zmm1[17],zmm0[18],zmm1[18],zmm0[19],zmm1[19],zmm0[20],zmm1[20],zmm0[21],zmm1[21],zmm0[22],zmm1[22],zmm0[23],zmm1[23],zmm0[32],zmm1[32],zmm0[33],zmm1[33],zmm0[34],zmm1[34],zmm0[35],zmm1[35],zmm0[36],zmm1[36],zmm0[37],zmm1[37],zmm0[38],zmm1[38],zmm0[39],zmm1[39],zmm0[48],zmm1[48],zmm0[49],zmm1[49],zmm0[50],zmm1[50],zmm0[51],zmm1[51],zmm0[52],zmm1[52],zmm0[53],zmm1[53],zmm0[54],zmm1[54],zmm0[55],zmm1[55]
; X64-NEXT:    retq
  %arg0 = bitcast <8 x i64> %a0 to <64 x i8>
  %arg1 = bitcast <8 x i64> %a1 to <64 x i8>
  %res0 = shufflevector <64 x i8> %arg0, <64 x i8> %arg1, <64 x i32> <i32 0, i32 64, i32 1, i32 65, i32 2, i32 66, i32 3, i32 67, i32 4, i32 68, i32 5, i32 69, i32 6, i32 70, i32 7, i32 71, i32 16, i32 80, i32 17, i32 81, i32 18, i32 82, i32 19, i32 83, i32 20, i32 84, i32 21, i32 85, i32 22, i32 86, i32 23, i32 87, i32 32, i32 96, i32 33, i32 97, i32 34, i32 98, i32 35, i32 99, i32 36, i32 100, i32 37, i32 101, i32 38, i32 102, i32 39, i32 103, i32 48, i32 112, i32 49, i32 113, i32 50, i32 114, i32 51, i32 115, i32 52, i32 116, i32 53, i32 117, i32 54, i32 118, i32 55, i32 119>
  %res1 = bitcast <64 x i8> %res0 to <8 x i64>
  ret <8 x i64> %res1
}

define <8 x i64> @test_mm512_mask_unpacklo_epi8(<8 x i64> %a0, i64* %a1, <8 x i64> %a2, <8 x i64> %a3) {
; X32-LABEL: test_mm512_mask_unpacklo_epi8:
; X32:       # BB#0:
; X32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X32-NEXT:    kmovq (%eax), %k1
; X32-NEXT:    vpunpcklbw {{.*#+}} zmm0 {%k1} = zmm1[0],zmm2[0],zmm1[1],zmm2[1],zmm1[2],zmm2[2],zmm1[3],zmm2[3],zmm1[4],zmm2[4],zmm1[5],zmm2[5],zmm1[6],zmm2[6],zmm1[7],zmm2[7],zmm1[16],zmm2[16],zmm1[17],zmm2[17],zmm1[18],zmm2[18],zmm1[19],zmm2[19],zmm1[20],zmm2[20],zmm1[21],zmm2[21],zmm1[22],zmm2[22],zmm1[23],zmm2[23],zmm1[32],zmm2[32],zmm1[33],zmm2[33],zmm1[34],zmm2[34],zmm1[35],zmm2[35],zmm1[36],zmm2[36],zmm1[37],zmm2[37],zmm1[38],zmm2[38],zmm1[39],zmm2[39],zmm1[48],zmm2[48],zmm1[49],zmm2[49],zmm1[50],zmm2[50],zmm1[51],zmm2[51],zmm1[52],zmm2[52],zmm1[53],zmm2[53],zmm1[54],zmm2[54],zmm1[55],zmm2[55]
; X32-NEXT:    retl
;
; X64-LABEL: test_mm512_mask_unpacklo_epi8:
; X64:       # BB#0:
; X64-NEXT:    kmovq (%rdi), %k1
; X64-NEXT:    vpunpcklbw {{.*#+}} zmm0 {%k1} = zmm1[0],zmm2[0],zmm1[1],zmm2[1],zmm1[2],zmm2[2],zmm1[3],zmm2[3],zmm1[4],zmm2[4],zmm1[5],zmm2[5],zmm1[6],zmm2[6],zmm1[7],zmm2[7],zmm1[16],zmm2[16],zmm1[17],zmm2[17],zmm1[18],zmm2[18],zmm1[19],zmm2[19],zmm1[20],zmm2[20],zmm1[21],zmm2[21],zmm1[22],zmm2[22],zmm1[23],zmm2[23],zmm1[32],zmm2[32],zmm1[33],zmm2[33],zmm1[34],zmm2[34],zmm1[35],zmm2[35],zmm1[36],zmm2[36],zmm1[37],zmm2[37],zmm1[38],zmm2[38],zmm1[39],zmm2[39],zmm1[48],zmm2[48],zmm1[49],zmm2[49],zmm1[50],zmm2[50],zmm1[51],zmm2[51],zmm1[52],zmm2[52],zmm1[53],zmm2[53],zmm1[54],zmm2[54],zmm1[55],zmm2[55]
; X64-NEXT:    retq
  %arg0 = bitcast <8 x i64> %a0 to <64 x i8>
  %arg1 = bitcast i64* %a1 to <64 x i1>*
  %sel1 = load <64 x i1>, <64 x i1>* %arg1
  %arg2 = bitcast <8 x i64> %a2 to <64 x i8>
  %arg3 = bitcast <8 x i64> %a3 to <64 x i8>
  %res0 = shufflevector <64 x i8> %arg2, <64 x i8> %arg3, <64 x i32> <i32 0, i32 64, i32 1, i32 65, i32 2, i32 66, i32 3, i32 67, i32 4, i32 68, i32 5, i32 69, i32 6, i32 70, i32 7, i32 71, i32 16, i32 80, i32 17, i32 81, i32 18, i32 82, i32 19, i32 83, i32 20, i32 84, i32 21, i32 85, i32 22, i32 86, i32 23, i32 87, i32 32, i32 96, i32 33, i32 97, i32 34, i32 98, i32 35, i32 99, i32 36, i32 100, i32 37, i32 101, i32 38, i32 102, i32 39, i32 103, i32 48, i32 112, i32 49, i32 113, i32 50, i32 114, i32 51, i32 115, i32 52, i32 116, i32 53, i32 117, i32 54, i32 118, i32 55, i32 119>
  %res1 = select <64 x i1> %sel1, <64 x i8> %res0, <64 x i8> %arg0
  %res2 = bitcast <64 x i8> %res1 to <8 x i64>
  ret <8 x i64> %res2
}

define <8 x i64> @test_mm512_maskz_unpacklo_epi8(i64* %a0, <8 x i64> %a1, <8 x i64> %a2) {
; X32-LABEL: test_mm512_maskz_unpacklo_epi8:
; X32:       # BB#0:
; X32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X32-NEXT:    kmovq (%eax), %k1
; X32-NEXT:    vpunpcklbw {{.*#+}} zmm0 {%k1} {z} = zmm0[0],zmm1[0],zmm0[1],zmm1[1],zmm0[2],zmm1[2],zmm0[3],zmm1[3],zmm0[4],zmm1[4],zmm0[5],zmm1[5],zmm0[6],zmm1[6],zmm0[7],zmm1[7],zmm0[16],zmm1[16],zmm0[17],zmm1[17],zmm0[18],zmm1[18],zmm0[19],zmm1[19],zmm0[20],zmm1[20],zmm0[21],zmm1[21],zmm0[22],zmm1[22],zmm0[23],zmm1[23],zmm0[32],zmm1[32],zmm0[33],zmm1[33],zmm0[34],zmm1[34],zmm0[35],zmm1[35],zmm0[36],zmm1[36],zmm0[37],zmm1[37],zmm0[38],zmm1[38],zmm0[39],zmm1[39],zmm0[48],zmm1[48],zmm0[49],zmm1[49],zmm0[50],zmm1[50],zmm0[51],zmm1[51],zmm0[52],zmm1[52],zmm0[53],zmm1[53],zmm0[54],zmm1[54],zmm0[55],zmm1[55]
; X32-NEXT:    retl
;
; X64-LABEL: test_mm512_maskz_unpacklo_epi8:
; X64:       # BB#0:
; X64-NEXT:    kmovq (%rdi), %k1
; X64-NEXT:    vpunpcklbw {{.*#+}} zmm0 {%k1} {z} = zmm0[0],zmm1[0],zmm0[1],zmm1[1],zmm0[2],zmm1[2],zmm0[3],zmm1[3],zmm0[4],zmm1[4],zmm0[5],zmm1[5],zmm0[6],zmm1[6],zmm0[7],zmm1[7],zmm0[16],zmm1[16],zmm0[17],zmm1[17],zmm0[18],zmm1[18],zmm0[19],zmm1[19],zmm0[20],zmm1[20],zmm0[21],zmm1[21],zmm0[22],zmm1[22],zmm0[23],zmm1[23],zmm0[32],zmm1[32],zmm0[33],zmm1[33],zmm0[34],zmm1[34],zmm0[35],zmm1[35],zmm0[36],zmm1[36],zmm0[37],zmm1[37],zmm0[38],zmm1[38],zmm0[39],zmm1[39],zmm0[48],zmm1[48],zmm0[49],zmm1[49],zmm0[50],zmm1[50],zmm0[51],zmm1[51],zmm0[52],zmm1[52],zmm0[53],zmm1[53],zmm0[54],zmm1[54],zmm0[55],zmm1[55]
; X64-NEXT:    retq
  %arg0 = bitcast i64* %a0 to <64 x i1>*
  %sel0 = load <64 x i1>, <64 x i1>* %arg0
  %arg1 = bitcast <8 x i64> %a1 to <64 x i8>
  %arg2 = bitcast <8 x i64> %a2 to <64 x i8>
  %res0 = shufflevector <64 x i8> %arg1, <64 x i8> %arg2, <64 x i32> <i32 0, i32 64, i32 1, i32 65, i32 2, i32 66, i32 3, i32 67, i32 4, i32 68, i32 5, i32 69, i32 6, i32 70, i32 7, i32 71, i32 16, i32 80, i32 17, i32 81, i32 18, i32 82, i32 19, i32 83, i32 20, i32 84, i32 21, i32 85, i32 22, i32 86, i32 23, i32 87, i32 32, i32 96, i32 33, i32 97, i32 34, i32 98, i32 35, i32 99, i32 36, i32 100, i32 37, i32 101, i32 38, i32 102, i32 39, i32 103, i32 48, i32 112, i32 49, i32 113, i32 50, i32 114, i32 51, i32 115, i32 52, i32 116, i32 53, i32 117, i32 54, i32 118, i32 55, i32 119>
  %res1 = select <64 x i1> %sel0, <64 x i8> %res0, <64 x i8> zeroinitializer
  %res2 = bitcast <64 x i8> %res1 to <8 x i64>
  ret <8 x i64> %res2
}

define <8 x i64> @test_mm512_unpacklo_epi16(<8 x i64> %a0, <8 x i64> %a1) {
; X32-LABEL: test_mm512_unpacklo_epi16:
; X32:       # BB#0:
; X32-NEXT:    vpunpcklwd {{.*#+}} zmm0 = zmm0[0],zmm1[0],zmm0[1],zmm1[1],zmm0[2],zmm1[2],zmm0[3],zmm1[3],zmm0[8],zmm1[8],zmm0[9],zmm1[9],zmm0[10],zmm1[10],zmm0[11],zmm1[11],zmm0[16],zmm1[16],zmm0[17],zmm1[17],zmm0[18],zmm1[18],zmm0[19],zmm1[19],zmm0[24],zmm1[24],zmm0[25],zmm1[25],zmm0[26],zmm1[26],zmm0[27],zmm1[27]
; X32-NEXT:    retl
;
; X64-LABEL: test_mm512_unpacklo_epi16:
; X64:       # BB#0:
; X64-NEXT:    vpunpcklwd {{.*#+}} zmm0 = zmm0[0],zmm1[0],zmm0[1],zmm1[1],zmm0[2],zmm1[2],zmm0[3],zmm1[3],zmm0[8],zmm1[8],zmm0[9],zmm1[9],zmm0[10],zmm1[10],zmm0[11],zmm1[11],zmm0[16],zmm1[16],zmm0[17],zmm1[17],zmm0[18],zmm1[18],zmm0[19],zmm1[19],zmm0[24],zmm1[24],zmm0[25],zmm1[25],zmm0[26],zmm1[26],zmm0[27],zmm1[27]
; X64-NEXT:    retq
  %arg0 = bitcast <8 x i64> %a0 to <32 x i16>
  %arg1 = bitcast <8 x i64> %a1 to <32 x i16>
  %res0 = shufflevector <32 x i16> %arg0, <32 x i16> %arg1, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59>
  %res1 = bitcast <32 x i16> %res0 to <8 x i64>
  ret <8 x i64> %res1
}

define <8 x i64> @test_mm512_mask_unpacklo_epi16(<8 x i64> %a0, i32 %a1, <8 x i64> %a2, <8 x i64> %a3) {
; X32-LABEL: test_mm512_mask_unpacklo_epi16:
; X32:       # BB#0:
; X32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X32-NEXT:    kmovd %eax, %k1
; X32-NEXT:    vpunpcklwd {{.*#+}} zmm0 {%k1} = zmm1[0],zmm2[0],zmm1[1],zmm2[1],zmm1[2],zmm2[2],zmm1[3],zmm2[3],zmm1[8],zmm2[8],zmm1[9],zmm2[9],zmm1[10],zmm2[10],zmm1[11],zmm2[11],zmm1[16],zmm2[16],zmm1[17],zmm2[17],zmm1[18],zmm2[18],zmm1[19],zmm2[19],zmm1[24],zmm2[24],zmm1[25],zmm2[25],zmm1[26],zmm2[26],zmm1[27],zmm2[27]
; X32-NEXT:    retl
;
; X64-LABEL: test_mm512_mask_unpacklo_epi16:
; X64:       # BB#0:
; X64-NEXT:    kmovd %edi, %k1
; X64-NEXT:    vpunpcklwd {{.*#+}} zmm0 {%k1} = zmm1[0],zmm2[0],zmm1[1],zmm2[1],zmm1[2],zmm2[2],zmm1[3],zmm2[3],zmm1[8],zmm2[8],zmm1[9],zmm2[9],zmm1[10],zmm2[10],zmm1[11],zmm2[11],zmm1[16],zmm2[16],zmm1[17],zmm2[17],zmm1[18],zmm2[18],zmm1[19],zmm2[19],zmm1[24],zmm2[24],zmm1[25],zmm2[25],zmm1[26],zmm2[26],zmm1[27],zmm2[27]
; X64-NEXT:    retq
  %arg0 = bitcast <8 x i64> %a0 to <32 x i16>
  %arg1 = bitcast i32 %a1 to <32 x i1>
  %arg2 = bitcast <8 x i64> %a2 to <32 x i16>
  %arg3 = bitcast <8 x i64> %a3 to <32 x i16>
  %res0 = shufflevector <32 x i16> %arg2, <32 x i16> %arg3, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59>
  %res1 = select <32 x i1> %arg1, <32 x i16> %res0, <32 x i16> %arg0
  %res2 = bitcast <32 x i16> %res1 to <8 x i64>
  ret <8 x i64> %res2
}

define <8 x i64> @test_mm512_maskz_unpacklo_epi16(i32 %a0, <8 x i64> %a1, <8 x i64> %a2) {
; X32-LABEL: test_mm512_maskz_unpacklo_epi16:
; X32:       # BB#0:
; X32-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X32-NEXT:    kmovd %eax, %k1
; X32-NEXT:    vpunpcklwd {{.*#+}} zmm0 {%k1} {z} = zmm0[0],zmm1[0],zmm0[1],zmm1[1],zmm0[2],zmm1[2],zmm0[3],zmm1[3],zmm0[8],zmm1[8],zmm0[9],zmm1[9],zmm0[10],zmm1[10],zmm0[11],zmm1[11],zmm0[16],zmm1[16],zmm0[17],zmm1[17],zmm0[18],zmm1[18],zmm0[19],zmm1[19],zmm0[24],zmm1[24],zmm0[25],zmm1[25],zmm0[26],zmm1[26],zmm0[27],zmm1[27]
; X32-NEXT:    retl
;
; X64-LABEL: test_mm512_maskz_unpacklo_epi16:
; X64:       # BB#0:
; X64-NEXT:    kmovd %edi, %k1
; X64-NEXT:    vpunpcklwd {{.*#+}} zmm0 {%k1} {z} = zmm0[0],zmm1[0],zmm0[1],zmm1[1],zmm0[2],zmm1[2],zmm0[3],zmm1[3],zmm0[8],zmm1[8],zmm0[9],zmm1[9],zmm0[10],zmm1[10],zmm0[11],zmm1[11],zmm0[16],zmm1[16],zmm0[17],zmm1[17],zmm0[18],zmm1[18],zmm0[19],zmm1[19],zmm0[24],zmm1[24],zmm0[25],zmm1[25],zmm0[26],zmm1[26],zmm0[27],zmm1[27]
; X64-NEXT:    retq
  %arg0 = bitcast i32 %a0 to <32 x i1>
  %arg1 = bitcast <8 x i64> %a1 to <32 x i16>
  %arg2 = bitcast <8 x i64> %a2 to <32 x i16>
  %res0 = shufflevector <32 x i16> %arg1, <32 x i16> %arg2, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59>
  %res1 = select <32 x i1> %arg0, <32 x i16> %res0, <32 x i16> zeroinitializer
  %res2 = bitcast <32 x i16> %res1 to <8 x i64>
  ret <8 x i64> %res2
}

!0 = !{i32 1}

