; RUN: llc -march=amdgcn -mcpu=verde -verify-machineinstrs < %s | FileCheck -check-prefix=SI -check-prefix=FUNC %s
; RUN: llc -march=amdgcn -mcpu=tonga -verify-machineinstrs < %s | FileCheck -check-prefix=SI -check-prefix=FUNC %s
; RUN: llc -march=r600 -mcpu=redwood < %s | FileCheck -check-prefix=EG -check-prefix=FUNC %s

; FUNC-LABEL: {{^}}udiv_i32:
; EG-NOT: SETGE_INT
; EG: CF_END
define void @udiv_i32(i32 addrspace(1)* %out, i32 addrspace(1)* %in) {
  %b_ptr = getelementptr i32, i32 addrspace(1)* %in, i32 1
  %a = load i32, i32 addrspace(1) * %in
  %b = load i32, i32 addrspace(1) * %b_ptr
  %result = udiv i32 %a, %b
  store i32 %result, i32 addrspace(1)* %out
  ret void
}

; FUNC-LABEL: {{^}}s_udiv_i32:

define void @s_udiv_i32(i32 addrspace(1)* %out, i32 %a, i32 %b) {
  %result = udiv i32 %a, %b
  store i32 %result, i32 addrspace(1)* %out
  ret void
}


; The code generated by udiv is long and complex and may frequently
; change. The goal of this test is to make sure the ISel doesn't fail
; when it gets a v4i32 udiv

; FUNC-LABEL: {{^}}udiv_v2i32:
; EG: CF_END

; SI: s_endpgm
define void @udiv_v2i32(<2 x i32> addrspace(1)* %out, <2 x i32> addrspace(1)* %in) {
  %b_ptr = getelementptr <2 x i32>, <2 x i32> addrspace(1)* %in, i32 1
  %a = load <2 x i32>, <2 x i32> addrspace(1) * %in
  %b = load <2 x i32>, <2 x i32> addrspace(1) * %b_ptr
  %result = udiv <2 x i32> %a, %b
  store <2 x i32> %result, <2 x i32> addrspace(1)* %out
  ret void
}

; FUNC-LABEL: {{^}}udiv_v4i32:
; EG: CF_END
; SI: s_endpgm
define void @udiv_v4i32(<4 x i32> addrspace(1)* %out, <4 x i32> addrspace(1)* %in) {
  %b_ptr = getelementptr <4 x i32>, <4 x i32> addrspace(1)* %in, i32 1
  %a = load <4 x i32>, <4 x i32> addrspace(1) * %in
  %b = load <4 x i32>, <4 x i32> addrspace(1) * %b_ptr
  %result = udiv <4 x i32> %a, %b
  store <4 x i32> %result, <4 x i32> addrspace(1)* %out
  ret void
}

; FUNC-LABEL: {{^}}udiv_i32_div_pow2:
; SI: buffer_load_dword [[VAL:v[0-9]+]]
; SI: v_lshrrev_b32_e32 [[RESULT:v[0-9]+]], 4, [[VAL]]
; SI: buffer_store_dword [[RESULT]]
define void @udiv_i32_div_pow2(i32 addrspace(1)* %out, i32 addrspace(1)* %in) {
  %b_ptr = getelementptr i32, i32 addrspace(1)* %in, i32 1
  %a = load i32, i32 addrspace(1)* %in
  %result = udiv i32 %a, 16
  store i32 %result, i32 addrspace(1)* %out
  ret void
}

; FUNC-LABEL: {{^}}udiv_i32_div_k_even:
; SI-DAG: buffer_load_dword [[VAL:v[0-9]+]]
; SI-DAG: v_mov_b32_e32 [[K:v[0-9]+]], 0xfabbd9c1
; SI: v_mul_hi_u32 [[MULHI:v[0-9]+]], [[K]], [[VAL]]
; SI: v_lshrrev_b32_e32 [[RESULT:v[0-9]+]], 25, [[MULHI]]
; SI: buffer_store_dword [[RESULT]]
define void @udiv_i32_div_k_even(i32 addrspace(1)* %out, i32 addrspace(1)* %in) {
  %b_ptr = getelementptr i32, i32 addrspace(1)* %in, i32 1
  %a = load i32, i32 addrspace(1)* %in
  %result = udiv i32 %a, 34259182
  store i32 %result, i32 addrspace(1)* %out
  ret void
}

; FUNC-LABEL: {{^}}udiv_i32_div_k_odd:
; SI-DAG: buffer_load_dword [[VAL:v[0-9]+]]
; SI-DAG: v_mov_b32_e32 [[K:v[0-9]+]], 0x7d5deca3
; SI: v_mul_hi_u32 [[MULHI:v[0-9]+]], [[K]], [[VAL]]
; SI: v_lshrrev_b32_e32 [[RESULT:v[0-9]+]], 24, [[MULHI]]
; SI: buffer_store_dword [[RESULT]]
define void @udiv_i32_div_k_odd(i32 addrspace(1)* %out, i32 addrspace(1)* %in) {
  %b_ptr = getelementptr i32, i32 addrspace(1)* %in, i32 1
  %a = load i32, i32 addrspace(1)* %in
  %result = udiv i32 %a, 34259183
  store i32 %result, i32 addrspace(1)* %out
  ret void
}

; FUNC-LABEL: {{^}}v_udiv_i8:
; SI: v_rcp_f32
; SI: v_and_b32_e32 [[TRUNC:v[0-9]+]], 0xff, v{{[0-9]+}}
; SI: buffer_store_dword [[TRUNC]]
define void @v_udiv_i8(i32 addrspace(1)* %out, i8 addrspace(1)* %in) {
  %den_ptr = getelementptr i8, i8 addrspace(1)* %in, i8 1
  %num = load i8, i8 addrspace(1) * %in
  %den = load i8, i8 addrspace(1) * %den_ptr
  %result = udiv i8 %num, %den
  %result.ext = zext i8 %result to i32
  store i32 %result.ext, i32 addrspace(1)* %out
  ret void
}

; FUNC-LABEL: {{^}}v_udiv_i16:
; SI: v_rcp_f32
; SI: v_and_b32_e32 [[TRUNC:v[0-9]+]], 0xffff, v{{[0-9]+}}
; SI: buffer_store_dword [[TRUNC]]
define void @v_udiv_i16(i32 addrspace(1)* %out, i16 addrspace(1)* %in) {
  %den_ptr = getelementptr i16, i16 addrspace(1)* %in, i16 1
  %num = load i16, i16 addrspace(1) * %in
  %den = load i16, i16 addrspace(1) * %den_ptr
  %result = udiv i16 %num, %den
  %result.ext = zext i16 %result to i32
  store i32 %result.ext, i32 addrspace(1)* %out
  ret void
}

; FUNC-LABEL: {{^}}v_udiv_i23:
; SI: v_rcp_f32
; SI: v_and_b32_e32 [[TRUNC:v[0-9]+]], 0x7fffff, v{{[0-9]+}}
; SI: buffer_store_dword [[TRUNC]]
define void @v_udiv_i23(i32 addrspace(1)* %out, i23 addrspace(1)* %in) {
  %den_ptr = getelementptr i23, i23 addrspace(1)* %in, i23 1
  %num = load i23, i23 addrspace(1) * %in
  %den = load i23, i23 addrspace(1) * %den_ptr
  %result = udiv i23 %num, %den
  %result.ext = zext i23 %result to i32
  store i32 %result.ext, i32 addrspace(1)* %out
  ret void
}

; FUNC-LABEL: {{^}}v_udiv_i24:
; SI-NOT: v_rcp_f32
define void @v_udiv_i24(i32 addrspace(1)* %out, i24 addrspace(1)* %in) {
  %den_ptr = getelementptr i24, i24 addrspace(1)* %in, i24 1
  %num = load i24, i24 addrspace(1) * %in
  %den = load i24, i24 addrspace(1) * %den_ptr
  %result = udiv i24 %num, %den
  %result.ext = zext i24 %result to i32
  store i32 %result.ext, i32 addrspace(1)* %out
  ret void
}
