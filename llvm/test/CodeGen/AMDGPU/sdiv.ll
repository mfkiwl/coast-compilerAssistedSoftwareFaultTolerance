; RUN: llc -march=amdgcn < %s | FileCheck -check-prefix=SI -check-prefix=FUNC %s
; RUN: llc -march=amdgcn -mcpu=tonga < %s | FileCheck -check-prefix=SI -check-prefix=FUNC %s
; RUN: llc -march=r600 -mcpu=redwood < %s | FileCheck -check-prefix=EG -check-prefix=FUNC %s

; The code generated by sdiv is long and complex and may frequently change.
; The goal of this test is to make sure the ISel doesn't fail.
;
; This program was previously failing to compile when one of the selectcc
; opcodes generated by the sdiv lowering was being legalized and optimized to:
; selectcc Remainder -1, 0, -1, SETGT
; This was fixed by adding an additional pattern in R600Instructions.td to
; match this pattern with a CNDGE_INT.

; FUNC-LABEL: {{^}}sdiv_i32:
; EG: CF_END
define void @sdiv_i32(i32 addrspace(1)* %out, i32 addrspace(1)* %in) {
  %den_ptr = getelementptr i32, i32 addrspace(1)* %in, i32 1
  %num = load i32, i32 addrspace(1) * %in
  %den = load i32, i32 addrspace(1) * %den_ptr
  %result = sdiv i32 %num, %den
  store i32 %result, i32 addrspace(1)* %out
  ret void
}

; FUNC-LABEL: {{^}}sdiv_i32_4:
define void @sdiv_i32_4(i32 addrspace(1)* %out, i32 addrspace(1)* %in) {
  %num = load i32, i32 addrspace(1) * %in
  %result = sdiv i32 %num, 4
  store i32 %result, i32 addrspace(1)* %out
  ret void
}

; Multiply by a weird constant to make sure setIntDivIsCheap is
; working.

; FUNC-LABEL: {{^}}slow_sdiv_i32_3435:
; SI-DAG: buffer_load_dword [[VAL:v[0-9]+]],
; SI-DAG: v_mov_b32_e32 [[MAGIC:v[0-9]+]], 0x98a1930b
; SI: v_mul_hi_i32 [[TMP:v[0-9]+]], [[MAGIC]], [[VAL]]
; SI: v_add_i32
; SI: v_lshrrev_b32
; SI: v_ashrrev_i32
; SI: v_add_i32
; SI: buffer_store_dword
; SI: s_endpgm
define void @slow_sdiv_i32_3435(i32 addrspace(1)* %out, i32 addrspace(1)* %in) {
  %num = load i32, i32 addrspace(1) * %in
  %result = sdiv i32 %num, 3435
  store i32 %result, i32 addrspace(1)* %out
  ret void
}

define void @sdiv_v2i32(<2 x i32> addrspace(1)* %out, <2 x i32> addrspace(1)* %in) {
  %den_ptr = getelementptr <2 x i32>, <2 x i32> addrspace(1)* %in, i32 1
  %num = load <2 x i32>, <2 x i32> addrspace(1) * %in
  %den = load <2 x i32>, <2 x i32> addrspace(1) * %den_ptr
  %result = sdiv <2 x i32> %num, %den
  store <2 x i32> %result, <2 x i32> addrspace(1)* %out
  ret void
}

define void @sdiv_v2i32_4(<2 x i32> addrspace(1)* %out, <2 x i32> addrspace(1)* %in) {
  %num = load <2 x i32>, <2 x i32> addrspace(1) * %in
  %result = sdiv <2 x i32> %num, <i32 4, i32 4>
  store <2 x i32> %result, <2 x i32> addrspace(1)* %out
  ret void
}

define void @sdiv_v4i32(<4 x i32> addrspace(1)* %out, <4 x i32> addrspace(1)* %in) {
  %den_ptr = getelementptr <4 x i32>, <4 x i32> addrspace(1)* %in, i32 1
  %num = load <4 x i32>, <4 x i32> addrspace(1) * %in
  %den = load <4 x i32>, <4 x i32> addrspace(1) * %den_ptr
  %result = sdiv <4 x i32> %num, %den
  store <4 x i32> %result, <4 x i32> addrspace(1)* %out
  ret void
}

define void @sdiv_v4i32_4(<4 x i32> addrspace(1)* %out, <4 x i32> addrspace(1)* %in) {
  %num = load <4 x i32>, <4 x i32> addrspace(1) * %in
  %result = sdiv <4 x i32> %num, <i32 4, i32 4, i32 4, i32 4>
  store <4 x i32> %result, <4 x i32> addrspace(1)* %out
  ret void
}

; FUNC-LABEL: {{^}}v_sdiv_i8:
; SI: v_rcp_f32
; SI: v_bfe_i32 [[BFE:v[0-9]+]], v{{[0-9]+}}, 0, 8
; SI: buffer_store_dword [[BFE]]
define void @v_sdiv_i8(i32 addrspace(1)* %out, i8 addrspace(1)* %in) {
  %den_ptr = getelementptr i8, i8 addrspace(1)* %in, i8 1
  %num = load i8, i8 addrspace(1) * %in
  %den = load i8, i8 addrspace(1) * %den_ptr
  %result = sdiv i8 %num, %den
  %result.ext = sext i8 %result to i32
  store i32 %result.ext, i32 addrspace(1)* %out
  ret void
}

; FUNC-LABEL: {{^}}v_sdiv_i23:
; SI: v_rcp_f32
; SI: v_bfe_i32 [[BFE:v[0-9]+]], v{{[0-9]+}}, 0, 23
; SI: buffer_store_dword [[BFE]]
define void @v_sdiv_i23(i32 addrspace(1)* %out, i23 addrspace(1)* %in) {
  %den_ptr = getelementptr i23, i23 addrspace(1)* %in, i23 1
  %num = load i23, i23 addrspace(1) * %in
  %den = load i23, i23 addrspace(1) * %den_ptr
  %result = sdiv i23 %num, %den
  %result.ext = sext i23 %result to i32
  store i32 %result.ext, i32 addrspace(1)* %out
  ret void
}

; FUNC-LABEL: {{^}}v_sdiv_i24:
; SI: v_rcp_f32
; SI: v_bfe_i32 [[BFE:v[0-9]+]], v{{[0-9]+}}, 0, 24
; SI: buffer_store_dword [[BFE]]
define void @v_sdiv_i24(i32 addrspace(1)* %out, i24 addrspace(1)* %in) {
  %den_ptr = getelementptr i24, i24 addrspace(1)* %in, i24 1
  %num = load i24, i24 addrspace(1) * %in
  %den = load i24, i24 addrspace(1) * %den_ptr
  %result = sdiv i24 %num, %den
  %result.ext = sext i24 %result to i32
  store i32 %result.ext, i32 addrspace(1)* %out
  ret void
}

; FUNC-LABEL: {{^}}v_sdiv_i25:
; SI-NOT: v_rcp_f32
define void @v_sdiv_i25(i32 addrspace(1)* %out, i25 addrspace(1)* %in) {
  %den_ptr = getelementptr i25, i25 addrspace(1)* %in, i25 1
  %num = load i25, i25 addrspace(1) * %in
  %den = load i25, i25 addrspace(1) * %den_ptr
  %result = sdiv i25 %num, %den
  %result.ext = sext i25 %result to i32
  store i32 %result.ext, i32 addrspace(1)* %out
  ret void
}

; Tests for 64-bit divide bypass.
; define void @test_get_quotient(i64 addrspace(1)* %out, i64 %a, i64 %b) nounwind {
;   %result = sdiv i64 %a, %b
;   store i64 %result, i64 addrspace(1)* %out, align 8
;   ret void
; }

; define void @test_get_remainder(i64 addrspace(1)* %out, i64 %a, i64 %b) nounwind {
;   %result = srem i64 %a, %b
;   store i64 %result, i64 addrspace(1)* %out, align 8
;   ret void
; }

; define void @test_get_quotient_and_remainder(i64 addrspace(1)* %out, i64 %a, i64 %b) nounwind {
;   %resultdiv = sdiv i64 %a, %b
;   %resultrem = srem i64 %a, %b
;   %result = add i64 %resultdiv, %resultrem
;   store i64 %result, i64 addrspace(1)* %out, align 8
;   ret void
; }
