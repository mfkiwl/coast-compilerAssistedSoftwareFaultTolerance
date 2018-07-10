// RUN: llvm-mc -arch=amdgcn -show-encoding %s | FileCheck %s --check-prefix=SICI
// RUN: llvm-mc -arch=amdgcn -mcpu=SI -show-encoding %s | FileCheck %s --check-prefix=SICI
// RUN: llvm-mc -arch=amdgcn -mcpu=fiji -show-encoding %s | FileCheck %s --check-prefix=VI

//===----------------------------------------------------------------------===//
// Trap Handler related - 32 bit registers
//===----------------------------------------------------------------------===//

s_add_u32     ttmp0, ttmp0, 4
// SICI: s_add_u32 ttmp0, ttmp0, 4       ; encoding: [0x70,0x84,0x70,0x80]
// VI:   s_add_u32 ttmp0, ttmp0, 4       ; encoding: [0x70,0x84,0x70,0x80]

s_add_u32     ttmp4, 8, ttmp4
// SICI: s_add_u32 ttmp4, 8, ttmp4       ; encoding: [0x88,0x74,0x74,0x80]
// VI:   s_add_u32 ttmp4, 8, ttmp4       ; encoding: [0x88,0x74,0x74,0x80]

s_add_u32     ttmp4, ttmp4, 0x00000100
// SICI: s_add_u32 ttmp4, ttmp4, 0x100   ; encoding: [0x74,0xff,0x74,0x80,0x00,0x01,0x00,0x00]
// VI:   s_add_u32 ttmp4, ttmp4, 0x100   ; encoding: [0x74,0xff,0x74,0x80,0x00,0x01,0x00,0x00]

s_add_u32     ttmp4, ttmp4, 4
// SICI: s_add_u32 ttmp4, ttmp4, 4       ; encoding: [0x74,0x84,0x74,0x80]
// VI:   s_add_u32 ttmp4, ttmp4, 4       ; encoding: [0x74,0x84,0x74,0x80]

s_add_u32     ttmp4, ttmp8, ttmp4
// SICI: s_add_u32 ttmp4, ttmp8, ttmp4   ; encoding: [0x78,0x74,0x74,0x80]
// VI:   s_add_u32 ttmp4, ttmp8, ttmp4   ; encoding: [0x78,0x74,0x74,0x80]

s_and_b32     ttmp10, ttmp8, 0x00000080
// SICI: s_and_b32 ttmp10, ttmp8, 0x80   ; encoding: [0x78,0xff,0x7a,0x87,0x80,0x00,0x00,0x00]
// VI:   s_and_b32 ttmp10, ttmp8, 0x80   ; encoding: [0x78,0xff,0x7a,0x86,0x80,0x00,0x00,0x00]

s_and_b32     ttmp9, tma_hi, 0x0000ffff
// SICI: s_and_b32 ttmp9, tma_hi, 0xffff ; encoding: [0x6f,0xff,0x79,0x87,0xff,0xff,0x00,0x00]
// VI:   s_and_b32 ttmp9, tma_hi, 0xffff ; encoding: [0x6f,0xff,0x79,0x86,0xff,0xff,0x00,0x00]

s_and_b32     ttmp9, ttmp9, 0x000001ff
// SICI: s_and_b32 ttmp9, ttmp9, 0x1ff   ; encoding: [0x79,0xff,0x79,0x87,0xff,0x01,0x00,0x00]
// VI:   s_and_b32 ttmp9, ttmp9, 0x1ff   ; encoding: [0x79,0xff,0x79,0x86,0xff,0x01,0x00,0x00]

s_and_b32     ttmp9, tma_lo, 0xffff0000
// SICI: s_and_b32 ttmp9, tma_lo, 0xffff0000 ; encoding: [0x6e,0xff,0x79,0x87,0x00,0x00,0xff,0xff]
// VI:   s_and_b32 ttmp9, tma_lo, 0xffff0000 ; encoding: [0x6e,0xff,0x79,0x86,0x00,0x00,0xff,0xff]

s_and_b32     ttmp9, ttmp9, ttmp8
// SICI: s_and_b32 ttmp9, ttmp9, ttmp8   ; encoding: [0x79,0x78,0x79,0x87]
// VI:   s_and_b32 ttmp9, ttmp9, ttmp8   ; encoding: [0x79,0x78,0x79,0x86]

s_and_b32   ttmp8, ttmp1, 0x01000000
// SICI: s_and_b32 ttmp8, ttmp1, 0x1000000 ; encoding: [0x71,0xff,0x78,0x87,0x00,0x00,0x00,0x01]
// VI:   s_and_b32 ttmp8, ttmp1, 0x1000000 ; encoding: [0x71,0xff,0x78,0x86,0x00,0x00,0x00,0x01]

s_cmp_eq_i32  ttmp8, 0
// SICI: s_cmp_eq_i32 ttmp8, 0           ; encoding: [0x78,0x80,0x00,0xbf]
// VI:   s_cmp_eq_i32 ttmp8, 0           ; encoding: [0x78,0x80,0x00,0xbf]

s_cmp_eq_i32  ttmp8, 0x000000fe
// SICI: s_cmp_eq_i32 ttmp8, 0xfe        ; encoding: [0x78,0xff,0x00,0xbf,0xfe,0x00,0x00,0x00]
// VI:   s_cmp_eq_i32 ttmp8, 0xfe        ; encoding: [0x78,0xff,0x00,0xbf,0xfe,0x00,0x00,0x00]

s_lshr_b32    ttmp8, ttmp8, 12
// SICI: s_lshr_b32 ttmp8, ttmp8, 12     ; encoding: [0x78,0x8c,0x78,0x90]
// VI:   s_lshr_b32 ttmp8, ttmp8, 12     ; encoding: [0x78,0x8c,0x78,0x8f]

v_mov_b32     v1, ttmp8
// SICI: v_mov_b32_e32 v1, ttmp8         ; encoding: [0x78,0x02,0x02,0x7e]
// VI:   v_mov_b32_e32 v1, ttmp8         ; encoding: [0x78,0x02,0x02,0x7e]

s_mov_b32     m0, ttmp8
// SICI: s_mov_b32 m0, ttmp8             ; encoding: [0x78,0x03,0xfc,0xbe]
// VI:   s_mov_b32 m0, ttmp8             ; encoding: [0x78,0x00,0xfc,0xbe]

s_mov_b32     ttmp10, 0
// SICI: s_mov_b32 ttmp10, 0             ; encoding: [0x80,0x03,0xfa,0xbe]
// VI:   s_mov_b32 ttmp10, 0             ; encoding: [0x80,0x00,0xfa,0xbe]

s_mov_b32     ttmp11, 0x01024fac
// SICI: s_mov_b32 ttmp11, 0x1024fac     ; encoding: [0xff,0x03,0xfb,0xbe,0xac,0x4f,0x02,0x01]
// VI:   s_mov_b32 ttmp11, 0x1024fac     ; encoding: [0xff,0x00,0xfb,0xbe,0xac,0x4f,0x02,0x01]

s_mov_b32     ttmp8, m0
// SICI: s_mov_b32 ttmp8, m0             ; encoding: [0x7c,0x03,0xf8,0xbe]
// VI:   s_mov_b32 ttmp8, m0             ; encoding: [0x7c,0x00,0xf8,0xbe]

s_mov_b32     ttmp8, tma_lo
// SICI: s_mov_b32 ttmp8, tma_lo         ; encoding: [0x6e,0x03,0xf8,0xbe]
// VI:   s_mov_b32 ttmp8, tma_lo         ; encoding: [0x6e,0x00,0xf8,0xbe]

s_mul_i32     ttmp8, 0x00000324, ttmp8
// SICI: s_mul_i32 ttmp8, 0x324, ttmp8   ; encoding: [0xff,0x78,0x78,0x93,0x24,0x03,0x00,0x00]
// VI:   s_mul_i32 ttmp8, 0x324, ttmp8   ; encoding: [0xff,0x78,0x78,0x92,0x24,0x03,0x00,0x00]

s_or_b32      ttmp9, ttmp9, 0x00280000
// SICI: s_or_b32 ttmp9, ttmp9, 0x280000 ; encoding: [0x79,0xff,0x79,0x88,0x00,0x00,0x28,0x00]
// VI:   s_or_b32 ttmp9, ttmp9, 0x280000 ; encoding: [0x79,0xff,0x79,0x87,0x00,0x00,0x28,0x00]

//===----------------------------------------------------------------------===//
// Trap Handler related - Pairs and quadruples of registers
//===----------------------------------------------------------------------===//

s_mov_b64     ttmp[4:5], exec
// SICI: s_mov_b64 ttmp[4:5], exec       ; encoding: [0x7e,0x04,0xf4,0xbe]
// VI:   s_mov_b64 ttmp[4:5], exec       ; encoding: [0x7e,0x01,0xf4,0xbe]

s_mov_b64     [ttmp4,ttmp5], exec
// SICI: s_mov_b64 ttmp[4:5], exec       ; encoding: [0x7e,0x04,0xf4,0xbe]
// VI:   s_mov_b64 ttmp[4:5], exec       ; encoding: [0x7e,0x01,0xf4,0xbe]

s_mov_b64     exec, [ttmp4,ttmp5]
// SICI: s_mov_b64 exec, ttmp[4:5]       ; encoding: [0x74,0x04,0xfe,0xbe]
// VI:   s_mov_b64 exec, ttmp[4:5]       ; encoding: [0x74,0x01,0xfe,0xbe]

s_mov_b64     tba, ttmp[4:5]
// SICI: s_mov_b64 tba, ttmp[4:5]        ; encoding: [0x74,0x04,0xec,0xbe]
// VI:   s_mov_b64 tba, ttmp[4:5]        ; encoding: [0x74,0x01,0xec,0xbe]

s_mov_b64     ttmp[4:5], tba
// SICI: s_mov_b64 ttmp[4:5], tba        ; encoding: [0x6c,0x04,0xf4,0xbe]
// VI:   s_mov_b64 ttmp[4:5], tba        ; encoding: [0x6c,0x01,0xf4,0xbe]

s_mov_b64     tma, ttmp[4:5]
// SICI: s_mov_b64 tma, ttmp[4:5]        ; encoding: [0x74,0x04,0xee,0xbe]
// VI:   s_mov_b64 tma, ttmp[4:5]        ; encoding: [0x74,0x01,0xee,0xbe]

s_mov_b64     ttmp[4:5], tma
// SICI: s_mov_b64 ttmp[4:5], tma        ; encoding: [0x6e,0x04,0xf4,0xbe]
// VI:   s_mov_b64 ttmp[4:5], tma        ; encoding: [0x6e,0x01,0xf4,0xbe]


//===----------------------------------------------------------------------===//
// Trap Handler related - Some specific instructions
//===----------------------------------------------------------------------===//

s_setpc_b64   [ttmp2,ttmp3]
// SICI: s_setpc_b64 ttmp[2:3]           ; encoding: [0x72,0x20,0x80,0xbe]
// VI:   s_setpc_b64 ttmp[2:3]           ; encoding: [0x72,0x1d,0x80,0xbe]

v_readfirstlane_b32  ttmp8, v1
// SICI: v_readfirstlane_b32 ttmp8, v1   ; encoding: [0x01,0x05,0xf0,0x7e]
// VI:   v_readfirstlane_b32 ttmp8, v1   ; encoding: [0x01,0x05,0xf0,0x7e]

buffer_atomic_inc  v1, off, ttmp[8:11], 56 glc
// SICI: buffer_atomic_inc v1, off, ttmp[8:11], 56  glc ; encoding: [0x00,0x40,0xf0,0xe0,0x00,0x01,0x1e,0xb8]
// VI:   buffer_atomic_inc v1, off, ttmp[8:11], 56  glc ; encoding: [0x00,0x40,0x2c,0xe1,0x00,0x01,0x1e,0xb8]
