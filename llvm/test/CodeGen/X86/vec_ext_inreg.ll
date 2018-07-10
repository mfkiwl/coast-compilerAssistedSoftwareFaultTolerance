; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s -mtriple=x86_64-unknown -mattr=+sse2 | FileCheck %s --check-prefix=ALL --check-prefix=SSE --check-prefix=SSE2
; RUN: llc < %s -mtriple=x86_64-unknown -mattr=+avx  | FileCheck %s --check-prefix=ALL --check-prefix=AVX --check-prefix=AVX1
; RUN: llc < %s -mtriple=x86_64-unknown -mattr=+avx2 | FileCheck %s --check-prefix=ALL --check-prefix=AVX --check-prefix=AVX2

define <8 x i32> @a(<8 x i32> %a) nounwind {
; SSE-LABEL: a:
; SSE:       # BB#0:
; SSE-NEXT:    pslld $16, %xmm0
; SSE-NEXT:    psrad $16, %xmm0
; SSE-NEXT:    pslld $16, %xmm1
; SSE-NEXT:    psrad $16, %xmm1
; SSE-NEXT:    retq
;
; AVX1-LABEL: a:
; AVX1:       # BB#0:
; AVX1-NEXT:    vpslld $16, %xmm0, %xmm1
; AVX1-NEXT:    vpsrad $16, %xmm1, %xmm1
; AVX1-NEXT:    vextractf128 $1, %ymm0, %xmm0
; AVX1-NEXT:    vpslld $16, %xmm0, %xmm0
; AVX1-NEXT:    vpsrad $16, %xmm0, %xmm0
; AVX1-NEXT:    vinsertf128 $1, %xmm0, %ymm1, %ymm0
; AVX1-NEXT:    retq
;
; AVX2-LABEL: a:
; AVX2:       # BB#0:
; AVX2-NEXT:    vpslld $16, %ymm0, %ymm0
; AVX2-NEXT:    vpsrad $16, %ymm0, %ymm0
; AVX2-NEXT:    retq
  %b = trunc <8 x i32> %a to <8 x i16>
  %c = sext <8 x i16> %b to <8 x i32>
  ret <8 x i32> %c
}

define <3 x i32> @b(<3 x i32> %a) nounwind {
; SSE-LABEL: b:
; SSE:       # BB#0:
; SSE-NEXT:    pslld $16, %xmm0
; SSE-NEXT:    psrad $16, %xmm0
; SSE-NEXT:    retq
;
; AVX-LABEL: b:
; AVX:       # BB#0:
; AVX-NEXT:    vpslld $16, %xmm0, %xmm0
; AVX-NEXT:    vpsrad $16, %xmm0, %xmm0
; AVX-NEXT:    retq
  %b = trunc <3 x i32> %a to <3 x i16>
  %c = sext <3 x i16> %b to <3 x i32>
  ret <3 x i32> %c
}

define <1 x i32> @c(<1 x i32> %a) nounwind {
; ALL-LABEL: c:
; ALL:       # BB#0:
; ALL-NEXT:    movswl %di, %eax
; ALL-NEXT:    retq
  %b = trunc <1 x i32> %a to <1 x i16>
  %c = sext <1 x i16> %b to <1 x i32>
  ret <1 x i32> %c
}

define <8 x i32> @d(<8 x i32> %a) nounwind {
; SSE-LABEL: d:
; SSE:       # BB#0:
; SSE-NEXT:    movaps {{.*#+}} xmm2 = [65535,0,65535,0,65535,0,65535,0]
; SSE-NEXT:    andps %xmm2, %xmm0
; SSE-NEXT:    andps %xmm2, %xmm1
; SSE-NEXT:    retq
;
; AVX1-LABEL: d:
; AVX1:       # BB#0:
; AVX1-NEXT:    vandps {{.*}}(%rip), %ymm0, %ymm0
; AVX1-NEXT:    retq
;
; AVX2-LABEL: d:
; AVX2:       # BB#0:
; AVX2-NEXT:    vpxor %ymm1, %ymm1, %ymm1
; AVX2-NEXT:    vpblendw {{.*#+}} ymm0 = ymm0[0],ymm1[1],ymm0[2],ymm1[3],ymm0[4],ymm1[5],ymm0[6],ymm1[7],ymm0[8],ymm1[9],ymm0[10],ymm1[11],ymm0[12],ymm1[13],ymm0[14],ymm1[15]
; AVX2-NEXT:    retq
  %b = trunc <8 x i32> %a to <8 x i16>
  %c = zext <8 x i16> %b to <8 x i32>
  ret <8 x i32> %c
}

define <3 x i32> @e(<3 x i32> %a) nounwind {
; SSE-LABEL: e:
; SSE:       # BB#0:
; SSE-NEXT:    andps {{.*}}(%rip), %xmm0
; SSE-NEXT:    retq
;
; AVX-LABEL: e:
; AVX:       # BB#0:
; AVX-NEXT:    vpxor %xmm1, %xmm1, %xmm1
; AVX-NEXT:    vpblendw {{.*#+}} xmm0 = xmm0[0],xmm1[1],xmm0[2],xmm1[3],xmm0[4],xmm1[5],xmm0[6,7]
; AVX-NEXT:    retq
  %b = trunc <3 x i32> %a to <3 x i16>
  %c = zext <3 x i16> %b to <3 x i32>
  ret <3 x i32> %c
}

define <1 x i32> @f(<1 x i32> %a) nounwind {
; ALL-LABEL: f:
; ALL:       # BB#0:
; ALL-NEXT:    movzwl %di, %eax
; ALL-NEXT:    retq
  %b = trunc <1 x i32> %a to <1 x i16>
  %c = zext <1 x i16> %b to <1 x i32>
  ret <1 x i32> %c
}
