// RUN: llvm-mc -triple x86_64-unknown-unknown -mcpu=knl -mattr=+avx512vl --show-encoding %s | FileCheck %s

// CHECK: vaddpd %xmm19, %xmm29, %xmm20
// CHECK:  encoding: [0x62,0xa1,0x95,0x00,0x58,0xe3]
          vaddpd %xmm19, %xmm29, %xmm20

// CHECK: vaddpd %xmm19, %xmm29, %xmm20 {%k7}
// CHECK:  encoding: [0x62,0xa1,0x95,0x07,0x58,0xe3]
          vaddpd %xmm19, %xmm29, %xmm20 {%k7}

// CHECK: vaddpd %xmm19, %xmm29, %xmm20 {%k7} {z}
// CHECK:  encoding: [0x62,0xa1,0x95,0x87,0x58,0xe3]
          vaddpd %xmm19, %xmm29, %xmm20 {%k7} {z}

// CHECK: vaddpd (%rcx), %xmm29, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x95,0x00,0x58,0x21]
          vaddpd (%rcx), %xmm29, %xmm20

// CHECK: vaddpd 291(%rax,%r14,8), %xmm29, %xmm20
// CHECK:  encoding: [0x62,0xa1,0x95,0x00,0x58,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vaddpd 291(%rax,%r14,8), %xmm29, %xmm20

// CHECK: vaddpd (%rcx){1to2}, %xmm29, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x95,0x10,0x58,0x21]
          vaddpd (%rcx){1to2}, %xmm29, %xmm20

// CHECK: vaddpd 2032(%rdx), %xmm29, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x95,0x00,0x58,0x62,0x7f]
          vaddpd 2032(%rdx), %xmm29, %xmm20

// CHECK: vaddpd 2048(%rdx), %xmm29, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x95,0x00,0x58,0xa2,0x00,0x08,0x00,0x00]
          vaddpd 2048(%rdx), %xmm29, %xmm20

// CHECK: vaddpd -2048(%rdx), %xmm29, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x95,0x00,0x58,0x62,0x80]
          vaddpd -2048(%rdx), %xmm29, %xmm20

// CHECK: vaddpd -2064(%rdx), %xmm29, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x95,0x00,0x58,0xa2,0xf0,0xf7,0xff,0xff]
          vaddpd -2064(%rdx), %xmm29, %xmm20

// CHECK: vaddpd 1016(%rdx){1to2}, %xmm29, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x95,0x10,0x58,0x62,0x7f]
          vaddpd 1016(%rdx){1to2}, %xmm29, %xmm20

// CHECK: vaddpd 1024(%rdx){1to2}, %xmm29, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x95,0x10,0x58,0xa2,0x00,0x04,0x00,0x00]
          vaddpd 1024(%rdx){1to2}, %xmm29, %xmm20

// CHECK: vaddpd -1024(%rdx){1to2}, %xmm29, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x95,0x10,0x58,0x62,0x80]
          vaddpd -1024(%rdx){1to2}, %xmm29, %xmm20

// CHECK: vaddpd -1032(%rdx){1to2}, %xmm29, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x95,0x10,0x58,0xa2,0xf8,0xfb,0xff,0xff]
          vaddpd -1032(%rdx){1to2}, %xmm29, %xmm20

// CHECK: vaddpd %ymm26, %ymm26, %ymm28
// CHECK:  encoding: [0x62,0x01,0xad,0x20,0x58,0xe2]
          vaddpd %ymm26, %ymm26, %ymm28

// CHECK: vaddpd %ymm26, %ymm26, %ymm28 {%k1}
// CHECK:  encoding: [0x62,0x01,0xad,0x21,0x58,0xe2]
          vaddpd %ymm26, %ymm26, %ymm28 {%k1}

// CHECK: vaddpd %ymm26, %ymm26, %ymm28 {%k1} {z}
// CHECK:  encoding: [0x62,0x01,0xad,0xa1,0x58,0xe2]
          vaddpd %ymm26, %ymm26, %ymm28 {%k1} {z}

// CHECK: vaddpd (%rcx), %ymm26, %ymm28
// CHECK:  encoding: [0x62,0x61,0xad,0x20,0x58,0x21]
          vaddpd (%rcx), %ymm26, %ymm28

// CHECK: vaddpd 291(%rax,%r14,8), %ymm26, %ymm28
// CHECK:  encoding: [0x62,0x21,0xad,0x20,0x58,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vaddpd 291(%rax,%r14,8), %ymm26, %ymm28

// CHECK: vaddpd (%rcx){1to4}, %ymm26, %ymm28
// CHECK:  encoding: [0x62,0x61,0xad,0x30,0x58,0x21]
          vaddpd (%rcx){1to4}, %ymm26, %ymm28

// CHECK: vaddpd 4064(%rdx), %ymm26, %ymm28
// CHECK:  encoding: [0x62,0x61,0xad,0x20,0x58,0x62,0x7f]
          vaddpd 4064(%rdx), %ymm26, %ymm28

// CHECK: vaddpd 4096(%rdx), %ymm26, %ymm28
// CHECK:  encoding: [0x62,0x61,0xad,0x20,0x58,0xa2,0x00,0x10,0x00,0x00]
          vaddpd 4096(%rdx), %ymm26, %ymm28

// CHECK: vaddpd -4096(%rdx), %ymm26, %ymm28
// CHECK:  encoding: [0x62,0x61,0xad,0x20,0x58,0x62,0x80]
          vaddpd -4096(%rdx), %ymm26, %ymm28

// CHECK: vaddpd -4128(%rdx), %ymm26, %ymm28
// CHECK:  encoding: [0x62,0x61,0xad,0x20,0x58,0xa2,0xe0,0xef,0xff,0xff]
          vaddpd -4128(%rdx), %ymm26, %ymm28

// CHECK: vaddpd 1016(%rdx){1to4}, %ymm26, %ymm28
// CHECK:  encoding: [0x62,0x61,0xad,0x30,0x58,0x62,0x7f]
          vaddpd 1016(%rdx){1to4}, %ymm26, %ymm28

// CHECK: vaddpd 1024(%rdx){1to4}, %ymm26, %ymm28
// CHECK:  encoding: [0x62,0x61,0xad,0x30,0x58,0xa2,0x00,0x04,0x00,0x00]
          vaddpd 1024(%rdx){1to4}, %ymm26, %ymm28

// CHECK: vaddpd -1024(%rdx){1to4}, %ymm26, %ymm28
// CHECK:  encoding: [0x62,0x61,0xad,0x30,0x58,0x62,0x80]
          vaddpd -1024(%rdx){1to4}, %ymm26, %ymm28

// CHECK: vaddpd -1032(%rdx){1to4}, %ymm26, %ymm28
// CHECK:  encoding: [0x62,0x61,0xad,0x30,0x58,0xa2,0xf8,0xfb,0xff,0xff]
          vaddpd -1032(%rdx){1to4}, %ymm26, %ymm28

// CHECK: vaddps %xmm27, %xmm19, %xmm24
// CHECK:  encoding: [0x62,0x01,0x64,0x00,0x58,0xc3]
          vaddps %xmm27, %xmm19, %xmm24

// CHECK: vaddps %xmm27, %xmm19, %xmm24 {%k4}
// CHECK:  encoding: [0x62,0x01,0x64,0x04,0x58,0xc3]
          vaddps %xmm27, %xmm19, %xmm24 {%k4}

// CHECK: vaddps %xmm27, %xmm19, %xmm24 {%k4} {z}
// CHECK:  encoding: [0x62,0x01,0x64,0x84,0x58,0xc3]
          vaddps %xmm27, %xmm19, %xmm24 {%k4} {z}

// CHECK: vaddps (%rcx), %xmm19, %xmm24
// CHECK:  encoding: [0x62,0x61,0x64,0x00,0x58,0x01]
          vaddps (%rcx), %xmm19, %xmm24

// CHECK: vaddps 291(%rax,%r14,8), %xmm19, %xmm24
// CHECK:  encoding: [0x62,0x21,0x64,0x00,0x58,0x84,0xf0,0x23,0x01,0x00,0x00]
          vaddps 291(%rax,%r14,8), %xmm19, %xmm24

// CHECK: vaddps (%rcx){1to4}, %xmm19, %xmm24
// CHECK:  encoding: [0x62,0x61,0x64,0x10,0x58,0x01]
          vaddps (%rcx){1to4}, %xmm19, %xmm24

// CHECK: vaddps 2032(%rdx), %xmm19, %xmm24
// CHECK:  encoding: [0x62,0x61,0x64,0x00,0x58,0x42,0x7f]
          vaddps 2032(%rdx), %xmm19, %xmm24

// CHECK: vaddps 2048(%rdx), %xmm19, %xmm24
// CHECK:  encoding: [0x62,0x61,0x64,0x00,0x58,0x82,0x00,0x08,0x00,0x00]
          vaddps 2048(%rdx), %xmm19, %xmm24

// CHECK: vaddps -2048(%rdx), %xmm19, %xmm24
// CHECK:  encoding: [0x62,0x61,0x64,0x00,0x58,0x42,0x80]
          vaddps -2048(%rdx), %xmm19, %xmm24

// CHECK: vaddps -2064(%rdx), %xmm19, %xmm24
// CHECK:  encoding: [0x62,0x61,0x64,0x00,0x58,0x82,0xf0,0xf7,0xff,0xff]
          vaddps -2064(%rdx), %xmm19, %xmm24

// CHECK: vaddps 508(%rdx){1to4}, %xmm19, %xmm24
// CHECK:  encoding: [0x62,0x61,0x64,0x10,0x58,0x42,0x7f]
          vaddps 508(%rdx){1to4}, %xmm19, %xmm24

// CHECK: vaddps 512(%rdx){1to4}, %xmm19, %xmm24
// CHECK:  encoding: [0x62,0x61,0x64,0x10,0x58,0x82,0x00,0x02,0x00,0x00]
          vaddps 512(%rdx){1to4}, %xmm19, %xmm24

// CHECK: vaddps -512(%rdx){1to4}, %xmm19, %xmm24
// CHECK:  encoding: [0x62,0x61,0x64,0x10,0x58,0x42,0x80]
          vaddps -512(%rdx){1to4}, %xmm19, %xmm24

// CHECK: vaddps -516(%rdx){1to4}, %xmm19, %xmm24
// CHECK:  encoding: [0x62,0x61,0x64,0x10,0x58,0x82,0xfc,0xfd,0xff,0xff]
          vaddps -516(%rdx){1to4}, %xmm19, %xmm24

// CHECK: vaddps %ymm20, %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x21,0x2c,0x20,0x58,0xcc]
          vaddps %ymm20, %ymm26, %ymm25

// CHECK: vaddps %ymm20, %ymm26, %ymm25 {%k4}
// CHECK:  encoding: [0x62,0x21,0x2c,0x24,0x58,0xcc]
          vaddps %ymm20, %ymm26, %ymm25 {%k4}

// CHECK: vaddps %ymm20, %ymm26, %ymm25 {%k4} {z}
// CHECK:  encoding: [0x62,0x21,0x2c,0xa4,0x58,0xcc]
          vaddps %ymm20, %ymm26, %ymm25 {%k4} {z}

// CHECK: vaddps (%rcx), %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x61,0x2c,0x20,0x58,0x09]
          vaddps (%rcx), %ymm26, %ymm25

// CHECK: vaddps 291(%rax,%r14,8), %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x21,0x2c,0x20,0x58,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vaddps 291(%rax,%r14,8), %ymm26, %ymm25

// CHECK: vaddps (%rcx){1to8}, %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x61,0x2c,0x30,0x58,0x09]
          vaddps (%rcx){1to8}, %ymm26, %ymm25

// CHECK: vaddps 4064(%rdx), %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x61,0x2c,0x20,0x58,0x4a,0x7f]
          vaddps 4064(%rdx), %ymm26, %ymm25

// CHECK: vaddps 4096(%rdx), %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x61,0x2c,0x20,0x58,0x8a,0x00,0x10,0x00,0x00]
          vaddps 4096(%rdx), %ymm26, %ymm25

// CHECK: vaddps -4096(%rdx), %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x61,0x2c,0x20,0x58,0x4a,0x80]
          vaddps -4096(%rdx), %ymm26, %ymm25

// CHECK: vaddps -4128(%rdx), %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x61,0x2c,0x20,0x58,0x8a,0xe0,0xef,0xff,0xff]
          vaddps -4128(%rdx), %ymm26, %ymm25

// CHECK: vaddps 508(%rdx){1to8}, %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x61,0x2c,0x30,0x58,0x4a,0x7f]
          vaddps 508(%rdx){1to8}, %ymm26, %ymm25

// CHECK: vaddps 512(%rdx){1to8}, %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x61,0x2c,0x30,0x58,0x8a,0x00,0x02,0x00,0x00]
          vaddps 512(%rdx){1to8}, %ymm26, %ymm25

// CHECK: vaddps -512(%rdx){1to8}, %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x61,0x2c,0x30,0x58,0x4a,0x80]
          vaddps -512(%rdx){1to8}, %ymm26, %ymm25

// CHECK: vaddps -516(%rdx){1to8}, %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x61,0x2c,0x30,0x58,0x8a,0xfc,0xfd,0xff,0xff]
          vaddps -516(%rdx){1to8}, %ymm26, %ymm25

// CHECK: vbroadcastsd (%rcx), %ymm22
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0x19,0x31]
          vbroadcastsd (%rcx), %ymm22

// CHECK: vbroadcastsd (%rcx), %ymm22 {%k5}
// CHECK:  encoding: [0x62,0xe2,0xfd,0x2d,0x19,0x31]
          vbroadcastsd (%rcx), %ymm22 {%k5}

// CHECK: vbroadcastsd (%rcx), %ymm22 {%k5} {z}
// CHECK:  encoding: [0x62,0xe2,0xfd,0xad,0x19,0x31]
          vbroadcastsd (%rcx), %ymm22 {%k5} {z}

// CHECK: vbroadcastsd 291(%rax,%r14,8), %ymm22
// CHECK:  encoding: [0x62,0xa2,0xfd,0x28,0x19,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vbroadcastsd 291(%rax,%r14,8), %ymm22

// CHECK: vbroadcastsd 1016(%rdx), %ymm22
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0x19,0x72,0x7f]
          vbroadcastsd 1016(%rdx), %ymm22

// CHECK: vbroadcastsd 1024(%rdx), %ymm22
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0x19,0xb2,0x00,0x04,0x00,0x00]
          vbroadcastsd 1024(%rdx), %ymm22

// CHECK: vbroadcastsd -1024(%rdx), %ymm22
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0x19,0x72,0x80]
          vbroadcastsd -1024(%rdx), %ymm22

// CHECK: vbroadcastsd -1032(%rdx), %ymm22
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0x19,0xb2,0xf8,0xfb,0xff,0xff]
          vbroadcastsd -1032(%rdx), %ymm22

// CHECK: vbroadcastsd %xmm17, %ymm19
// CHECK:  encoding: [0x62,0xa2,0xfd,0x28,0x19,0xd9]
          vbroadcastsd %xmm17, %ymm19

// CHECK: vbroadcastsd %xmm17, %ymm19 {%k6}
// CHECK:  encoding: [0x62,0xa2,0xfd,0x2e,0x19,0xd9]
          vbroadcastsd %xmm17, %ymm19 {%k6}

// CHECK: vbroadcastsd %xmm17, %ymm19 {%k6} {z}
// CHECK:  encoding: [0x62,0xa2,0xfd,0xae,0x19,0xd9]
          vbroadcastsd %xmm17, %ymm19 {%k6} {z}

// CHECK: vbroadcastss (%rcx), %xmm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x18,0x29]
          vbroadcastss (%rcx), %xmm21

// CHECK: vbroadcastss (%rcx), %xmm21 {%k2}
// CHECK:  encoding: [0x62,0xe2,0x7d,0x0a,0x18,0x29]
          vbroadcastss (%rcx), %xmm21 {%k2}

// CHECK: vbroadcastss (%rcx), %xmm21 {%k2} {z}
// CHECK:  encoding: [0x62,0xe2,0x7d,0x8a,0x18,0x29]
          vbroadcastss (%rcx), %xmm21 {%k2} {z}

// CHECK: vbroadcastss 291(%rax,%r14,8), %xmm21
// CHECK:  encoding: [0x62,0xa2,0x7d,0x08,0x18,0xac,0xf0,0x23,0x01,0x00,0x00]
          vbroadcastss 291(%rax,%r14,8), %xmm21

// CHECK: vbroadcastss 508(%rdx), %xmm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x18,0x6a,0x7f]
          vbroadcastss 508(%rdx), %xmm21

// CHECK: vbroadcastss 512(%rdx), %xmm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x18,0xaa,0x00,0x02,0x00,0x00]
          vbroadcastss 512(%rdx), %xmm21

// CHECK: vbroadcastss -512(%rdx), %xmm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x18,0x6a,0x80]
          vbroadcastss -512(%rdx), %xmm21

// CHECK: vbroadcastss -516(%rdx), %xmm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x18,0xaa,0xfc,0xfd,0xff,0xff]
          vbroadcastss -516(%rdx), %xmm21

// CHECK: vbroadcastss (%rcx), %ymm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x18,0x31]
          vbroadcastss (%rcx), %ymm30

// CHECK: vbroadcastss (%rcx), %ymm30 {%k1}
// CHECK:  encoding: [0x62,0x62,0x7d,0x29,0x18,0x31]
          vbroadcastss (%rcx), %ymm30 {%k1}

// CHECK: vbroadcastss (%rcx), %ymm30 {%k1} {z}
// CHECK:  encoding: [0x62,0x62,0x7d,0xa9,0x18,0x31]
          vbroadcastss (%rcx), %ymm30 {%k1} {z}

// CHECK: vbroadcastss 291(%rax,%r14,8), %ymm30
// CHECK:  encoding: [0x62,0x22,0x7d,0x28,0x18,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vbroadcastss 291(%rax,%r14,8), %ymm30

// CHECK: vbroadcastss 508(%rdx), %ymm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x18,0x72,0x7f]
          vbroadcastss 508(%rdx), %ymm30

// CHECK: vbroadcastss 512(%rdx), %ymm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x18,0xb2,0x00,0x02,0x00,0x00]
          vbroadcastss 512(%rdx), %ymm30

// CHECK: vbroadcastss -512(%rdx), %ymm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x18,0x72,0x80]
          vbroadcastss -512(%rdx), %ymm30

// CHECK: vbroadcastss -516(%rdx), %ymm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x18,0xb2,0xfc,0xfd,0xff,0xff]
          vbroadcastss -516(%rdx), %ymm30

// CHECK: vbroadcastss %xmm24, %xmm24
// CHECK:  encoding: [0x62,0x02,0x7d,0x08,0x18,0xc0]
          vbroadcastss %xmm24, %xmm24

// CHECK: vbroadcastss %xmm24, %xmm24 {%k2}
// CHECK:  encoding: [0x62,0x02,0x7d,0x0a,0x18,0xc0]
          vbroadcastss %xmm24, %xmm24 {%k2}

// CHECK: vbroadcastss %xmm24, %xmm24 {%k2} {z}
// CHECK:  encoding: [0x62,0x02,0x7d,0x8a,0x18,0xc0]
          vbroadcastss %xmm24, %xmm24 {%k2} {z}

// CHECK: vbroadcastss %xmm28, %ymm24
// CHECK:  encoding: [0x62,0x02,0x7d,0x28,0x18,0xc4]
          vbroadcastss %xmm28, %ymm24

// CHECK: vbroadcastss %xmm28, %ymm24 {%k6}
// CHECK:  encoding: [0x62,0x02,0x7d,0x2e,0x18,0xc4]
          vbroadcastss %xmm28, %ymm24 {%k6}

// CHECK: vbroadcastss %xmm28, %ymm24 {%k6} {z}
// CHECK:  encoding: [0x62,0x02,0x7d,0xae,0x18,0xc4]
          vbroadcastss %xmm28, %ymm24 {%k6} {z}

// CHECK: vdivpd %xmm27, %xmm18, %xmm19
// CHECK:  encoding: [0x62,0x81,0xed,0x00,0x5e,0xdb]
          vdivpd %xmm27, %xmm18, %xmm19

// CHECK: vdivpd %xmm27, %xmm18, %xmm19 {%k3}
// CHECK:  encoding: [0x62,0x81,0xed,0x03,0x5e,0xdb]
          vdivpd %xmm27, %xmm18, %xmm19 {%k3}

// CHECK: vdivpd %xmm27, %xmm18, %xmm19 {%k3} {z}
// CHECK:  encoding: [0x62,0x81,0xed,0x83,0x5e,0xdb]
          vdivpd %xmm27, %xmm18, %xmm19 {%k3} {z}

// CHECK: vdivpd (%rcx), %xmm18, %xmm19
// CHECK:  encoding: [0x62,0xe1,0xed,0x00,0x5e,0x19]
          vdivpd (%rcx), %xmm18, %xmm19

// CHECK: vdivpd 291(%rax,%r14,8), %xmm18, %xmm19
// CHECK:  encoding: [0x62,0xa1,0xed,0x00,0x5e,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vdivpd 291(%rax,%r14,8), %xmm18, %xmm19

// CHECK: vdivpd (%rcx){1to2}, %xmm18, %xmm19
// CHECK:  encoding: [0x62,0xe1,0xed,0x10,0x5e,0x19]
          vdivpd (%rcx){1to2}, %xmm18, %xmm19

// CHECK: vdivpd 2032(%rdx), %xmm18, %xmm19
// CHECK:  encoding: [0x62,0xe1,0xed,0x00,0x5e,0x5a,0x7f]
          vdivpd 2032(%rdx), %xmm18, %xmm19

// CHECK: vdivpd 2048(%rdx), %xmm18, %xmm19
// CHECK:  encoding: [0x62,0xe1,0xed,0x00,0x5e,0x9a,0x00,0x08,0x00,0x00]
          vdivpd 2048(%rdx), %xmm18, %xmm19

// CHECK: vdivpd -2048(%rdx), %xmm18, %xmm19
// CHECK:  encoding: [0x62,0xe1,0xed,0x00,0x5e,0x5a,0x80]
          vdivpd -2048(%rdx), %xmm18, %xmm19

// CHECK: vdivpd -2064(%rdx), %xmm18, %xmm19
// CHECK:  encoding: [0x62,0xe1,0xed,0x00,0x5e,0x9a,0xf0,0xf7,0xff,0xff]
          vdivpd -2064(%rdx), %xmm18, %xmm19

// CHECK: vdivpd 1016(%rdx){1to2}, %xmm18, %xmm19
// CHECK:  encoding: [0x62,0xe1,0xed,0x10,0x5e,0x5a,0x7f]
          vdivpd 1016(%rdx){1to2}, %xmm18, %xmm19

// CHECK: vdivpd 1024(%rdx){1to2}, %xmm18, %xmm19
// CHECK:  encoding: [0x62,0xe1,0xed,0x10,0x5e,0x9a,0x00,0x04,0x00,0x00]
          vdivpd 1024(%rdx){1to2}, %xmm18, %xmm19

// CHECK: vdivpd -1024(%rdx){1to2}, %xmm18, %xmm19
// CHECK:  encoding: [0x62,0xe1,0xed,0x10,0x5e,0x5a,0x80]
          vdivpd -1024(%rdx){1to2}, %xmm18, %xmm19

// CHECK: vdivpd -1032(%rdx){1to2}, %xmm18, %xmm19
// CHECK:  encoding: [0x62,0xe1,0xed,0x10,0x5e,0x9a,0xf8,0xfb,0xff,0xff]
          vdivpd -1032(%rdx){1to2}, %xmm18, %xmm19

// CHECK: vdivpd %ymm28, %ymm24, %ymm23
// CHECK:  encoding: [0x62,0x81,0xbd,0x20,0x5e,0xfc]
          vdivpd %ymm28, %ymm24, %ymm23

// CHECK: vdivpd %ymm28, %ymm24, %ymm23 {%k6}
// CHECK:  encoding: [0x62,0x81,0xbd,0x26,0x5e,0xfc]
          vdivpd %ymm28, %ymm24, %ymm23 {%k6}

// CHECK: vdivpd %ymm28, %ymm24, %ymm23 {%k6} {z}
// CHECK:  encoding: [0x62,0x81,0xbd,0xa6,0x5e,0xfc]
          vdivpd %ymm28, %ymm24, %ymm23 {%k6} {z}

// CHECK: vdivpd (%rcx), %ymm24, %ymm23
// CHECK:  encoding: [0x62,0xe1,0xbd,0x20,0x5e,0x39]
          vdivpd (%rcx), %ymm24, %ymm23

// CHECK: vdivpd 291(%rax,%r14,8), %ymm24, %ymm23
// CHECK:  encoding: [0x62,0xa1,0xbd,0x20,0x5e,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vdivpd 291(%rax,%r14,8), %ymm24, %ymm23

// CHECK: vdivpd (%rcx){1to4}, %ymm24, %ymm23
// CHECK:  encoding: [0x62,0xe1,0xbd,0x30,0x5e,0x39]
          vdivpd (%rcx){1to4}, %ymm24, %ymm23

// CHECK: vdivpd 4064(%rdx), %ymm24, %ymm23
// CHECK:  encoding: [0x62,0xe1,0xbd,0x20,0x5e,0x7a,0x7f]
          vdivpd 4064(%rdx), %ymm24, %ymm23

// CHECK: vdivpd 4096(%rdx), %ymm24, %ymm23
// CHECK:  encoding: [0x62,0xe1,0xbd,0x20,0x5e,0xba,0x00,0x10,0x00,0x00]
          vdivpd 4096(%rdx), %ymm24, %ymm23

// CHECK: vdivpd -4096(%rdx), %ymm24, %ymm23
// CHECK:  encoding: [0x62,0xe1,0xbd,0x20,0x5e,0x7a,0x80]
          vdivpd -4096(%rdx), %ymm24, %ymm23

// CHECK: vdivpd -4128(%rdx), %ymm24, %ymm23
// CHECK:  encoding: [0x62,0xe1,0xbd,0x20,0x5e,0xba,0xe0,0xef,0xff,0xff]
          vdivpd -4128(%rdx), %ymm24, %ymm23

// CHECK: vdivpd 1016(%rdx){1to4}, %ymm24, %ymm23
// CHECK:  encoding: [0x62,0xe1,0xbd,0x30,0x5e,0x7a,0x7f]
          vdivpd 1016(%rdx){1to4}, %ymm24, %ymm23

// CHECK: vdivpd 1024(%rdx){1to4}, %ymm24, %ymm23
// CHECK:  encoding: [0x62,0xe1,0xbd,0x30,0x5e,0xba,0x00,0x04,0x00,0x00]
          vdivpd 1024(%rdx){1to4}, %ymm24, %ymm23

// CHECK: vdivpd -1024(%rdx){1to4}, %ymm24, %ymm23
// CHECK:  encoding: [0x62,0xe1,0xbd,0x30,0x5e,0x7a,0x80]
          vdivpd -1024(%rdx){1to4}, %ymm24, %ymm23

// CHECK: vdivpd -1032(%rdx){1to4}, %ymm24, %ymm23
// CHECK:  encoding: [0x62,0xe1,0xbd,0x30,0x5e,0xba,0xf8,0xfb,0xff,0xff]
          vdivpd -1032(%rdx){1to4}, %ymm24, %ymm23

// CHECK: vdivps %xmm26, %xmm24, %xmm17
// CHECK:  encoding: [0x62,0x81,0x3c,0x00,0x5e,0xca]
          vdivps %xmm26, %xmm24, %xmm17

// CHECK: vdivps %xmm26, %xmm24, %xmm17 {%k2}
// CHECK:  encoding: [0x62,0x81,0x3c,0x02,0x5e,0xca]
          vdivps %xmm26, %xmm24, %xmm17 {%k2}

// CHECK: vdivps %xmm26, %xmm24, %xmm17 {%k2} {z}
// CHECK:  encoding: [0x62,0x81,0x3c,0x82,0x5e,0xca]
          vdivps %xmm26, %xmm24, %xmm17 {%k2} {z}

// CHECK: vdivps (%rcx), %xmm24, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x3c,0x00,0x5e,0x09]
          vdivps (%rcx), %xmm24, %xmm17

// CHECK: vdivps 291(%rax,%r14,8), %xmm24, %xmm17
// CHECK:  encoding: [0x62,0xa1,0x3c,0x00,0x5e,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vdivps 291(%rax,%r14,8), %xmm24, %xmm17

// CHECK: vdivps (%rcx){1to4}, %xmm24, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x3c,0x10,0x5e,0x09]
          vdivps (%rcx){1to4}, %xmm24, %xmm17

// CHECK: vdivps 2032(%rdx), %xmm24, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x3c,0x00,0x5e,0x4a,0x7f]
          vdivps 2032(%rdx), %xmm24, %xmm17

// CHECK: vdivps 2048(%rdx), %xmm24, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x3c,0x00,0x5e,0x8a,0x00,0x08,0x00,0x00]
          vdivps 2048(%rdx), %xmm24, %xmm17

// CHECK: vdivps -2048(%rdx), %xmm24, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x3c,0x00,0x5e,0x4a,0x80]
          vdivps -2048(%rdx), %xmm24, %xmm17

// CHECK: vdivps -2064(%rdx), %xmm24, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x3c,0x00,0x5e,0x8a,0xf0,0xf7,0xff,0xff]
          vdivps -2064(%rdx), %xmm24, %xmm17

// CHECK: vdivps 508(%rdx){1to4}, %xmm24, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x3c,0x10,0x5e,0x4a,0x7f]
          vdivps 508(%rdx){1to4}, %xmm24, %xmm17

// CHECK: vdivps 512(%rdx){1to4}, %xmm24, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x3c,0x10,0x5e,0x8a,0x00,0x02,0x00,0x00]
          vdivps 512(%rdx){1to4}, %xmm24, %xmm17

// CHECK: vdivps -512(%rdx){1to4}, %xmm24, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x3c,0x10,0x5e,0x4a,0x80]
          vdivps -512(%rdx){1to4}, %xmm24, %xmm17

// CHECK: vdivps -516(%rdx){1to4}, %xmm24, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x3c,0x10,0x5e,0x8a,0xfc,0xfd,0xff,0xff]
          vdivps -516(%rdx){1to4}, %xmm24, %xmm17

// CHECK: vdivps %ymm17, %ymm27, %ymm17
// CHECK:  encoding: [0x62,0xa1,0x24,0x20,0x5e,0xc9]
          vdivps %ymm17, %ymm27, %ymm17

// CHECK: vdivps %ymm17, %ymm27, %ymm17 {%k6}
// CHECK:  encoding: [0x62,0xa1,0x24,0x26,0x5e,0xc9]
          vdivps %ymm17, %ymm27, %ymm17 {%k6}

// CHECK: vdivps %ymm17, %ymm27, %ymm17 {%k6} {z}
// CHECK:  encoding: [0x62,0xa1,0x24,0xa6,0x5e,0xc9]
          vdivps %ymm17, %ymm27, %ymm17 {%k6} {z}

// CHECK: vdivps (%rcx), %ymm27, %ymm17
// CHECK:  encoding: [0x62,0xe1,0x24,0x20,0x5e,0x09]
          vdivps (%rcx), %ymm27, %ymm17

// CHECK: vdivps 291(%rax,%r14,8), %ymm27, %ymm17
// CHECK:  encoding: [0x62,0xa1,0x24,0x20,0x5e,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vdivps 291(%rax,%r14,8), %ymm27, %ymm17

// CHECK: vdivps (%rcx){1to8}, %ymm27, %ymm17
// CHECK:  encoding: [0x62,0xe1,0x24,0x30,0x5e,0x09]
          vdivps (%rcx){1to8}, %ymm27, %ymm17

// CHECK: vdivps 4064(%rdx), %ymm27, %ymm17
// CHECK:  encoding: [0x62,0xe1,0x24,0x20,0x5e,0x4a,0x7f]
          vdivps 4064(%rdx), %ymm27, %ymm17

// CHECK: vdivps 4096(%rdx), %ymm27, %ymm17
// CHECK:  encoding: [0x62,0xe1,0x24,0x20,0x5e,0x8a,0x00,0x10,0x00,0x00]
          vdivps 4096(%rdx), %ymm27, %ymm17

// CHECK: vdivps -4096(%rdx), %ymm27, %ymm17
// CHECK:  encoding: [0x62,0xe1,0x24,0x20,0x5e,0x4a,0x80]
          vdivps -4096(%rdx), %ymm27, %ymm17

// CHECK: vdivps -4128(%rdx), %ymm27, %ymm17
// CHECK:  encoding: [0x62,0xe1,0x24,0x20,0x5e,0x8a,0xe0,0xef,0xff,0xff]
          vdivps -4128(%rdx), %ymm27, %ymm17

// CHECK: vdivps 508(%rdx){1to8}, %ymm27, %ymm17
// CHECK:  encoding: [0x62,0xe1,0x24,0x30,0x5e,0x4a,0x7f]
          vdivps 508(%rdx){1to8}, %ymm27, %ymm17

// CHECK: vdivps 512(%rdx){1to8}, %ymm27, %ymm17
// CHECK:  encoding: [0x62,0xe1,0x24,0x30,0x5e,0x8a,0x00,0x02,0x00,0x00]
          vdivps 512(%rdx){1to8}, %ymm27, %ymm17

// CHECK: vdivps -512(%rdx){1to8}, %ymm27, %ymm17
// CHECK:  encoding: [0x62,0xe1,0x24,0x30,0x5e,0x4a,0x80]
          vdivps -512(%rdx){1to8}, %ymm27, %ymm17

// CHECK: vdivps -516(%rdx){1to8}, %ymm27, %ymm17
// CHECK:  encoding: [0x62,0xe1,0x24,0x30,0x5e,0x8a,0xfc,0xfd,0xff,0xff]
          vdivps -516(%rdx){1to8}, %ymm27, %ymm17

// CHECK: vmaxpd %xmm23, %xmm29, %xmm17
// CHECK:  encoding: [0x62,0xa1,0x95,0x00,0x5f,0xcf]
          vmaxpd %xmm23, %xmm29, %xmm17

// CHECK: vmaxpd %xmm23, %xmm29, %xmm17 {%k6}
// CHECK:  encoding: [0x62,0xa1,0x95,0x06,0x5f,0xcf]
          vmaxpd %xmm23, %xmm29, %xmm17 {%k6}

// CHECK: vmaxpd %xmm23, %xmm29, %xmm17 {%k6} {z}
// CHECK:  encoding: [0x62,0xa1,0x95,0x86,0x5f,0xcf]
          vmaxpd %xmm23, %xmm29, %xmm17 {%k6} {z}

// CHECK: vmaxpd (%rcx), %xmm29, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x95,0x00,0x5f,0x09]
          vmaxpd (%rcx), %xmm29, %xmm17

// CHECK: vmaxpd 291(%rax,%r14,8), %xmm29, %xmm17
// CHECK:  encoding: [0x62,0xa1,0x95,0x00,0x5f,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vmaxpd 291(%rax,%r14,8), %xmm29, %xmm17

// CHECK: vmaxpd (%rcx){1to2}, %xmm29, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x95,0x10,0x5f,0x09]
          vmaxpd (%rcx){1to2}, %xmm29, %xmm17

// CHECK: vmaxpd 2032(%rdx), %xmm29, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x95,0x00,0x5f,0x4a,0x7f]
          vmaxpd 2032(%rdx), %xmm29, %xmm17

// CHECK: vmaxpd 2048(%rdx), %xmm29, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x95,0x00,0x5f,0x8a,0x00,0x08,0x00,0x00]
          vmaxpd 2048(%rdx), %xmm29, %xmm17

// CHECK: vmaxpd -2048(%rdx), %xmm29, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x95,0x00,0x5f,0x4a,0x80]
          vmaxpd -2048(%rdx), %xmm29, %xmm17

// CHECK: vmaxpd -2064(%rdx), %xmm29, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x95,0x00,0x5f,0x8a,0xf0,0xf7,0xff,0xff]
          vmaxpd -2064(%rdx), %xmm29, %xmm17

// CHECK: vmaxpd 1016(%rdx){1to2}, %xmm29, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x95,0x10,0x5f,0x4a,0x7f]
          vmaxpd 1016(%rdx){1to2}, %xmm29, %xmm17

// CHECK: vmaxpd 1024(%rdx){1to2}, %xmm29, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x95,0x10,0x5f,0x8a,0x00,0x04,0x00,0x00]
          vmaxpd 1024(%rdx){1to2}, %xmm29, %xmm17

// CHECK: vmaxpd -1024(%rdx){1to2}, %xmm29, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x95,0x10,0x5f,0x4a,0x80]
          vmaxpd -1024(%rdx){1to2}, %xmm29, %xmm17

// CHECK: vmaxpd -1032(%rdx){1to2}, %xmm29, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x95,0x10,0x5f,0x8a,0xf8,0xfb,0xff,0xff]
          vmaxpd -1032(%rdx){1to2}, %xmm29, %xmm17

// CHECK: vmaxpd %ymm24, %ymm24, %ymm21
// CHECK:  encoding: [0x62,0x81,0xbd,0x20,0x5f,0xe8]
          vmaxpd %ymm24, %ymm24, %ymm21

// CHECK: vmaxpd %ymm24, %ymm24, %ymm21 {%k1}
// CHECK:  encoding: [0x62,0x81,0xbd,0x21,0x5f,0xe8]
          vmaxpd %ymm24, %ymm24, %ymm21 {%k1}

// CHECK: vmaxpd %ymm24, %ymm24, %ymm21 {%k1} {z}
// CHECK:  encoding: [0x62,0x81,0xbd,0xa1,0x5f,0xe8]
          vmaxpd %ymm24, %ymm24, %ymm21 {%k1} {z}

// CHECK: vmaxpd (%rcx), %ymm24, %ymm21
// CHECK:  encoding: [0x62,0xe1,0xbd,0x20,0x5f,0x29]
          vmaxpd (%rcx), %ymm24, %ymm21

// CHECK: vmaxpd 291(%rax,%r14,8), %ymm24, %ymm21
// CHECK:  encoding: [0x62,0xa1,0xbd,0x20,0x5f,0xac,0xf0,0x23,0x01,0x00,0x00]
          vmaxpd 291(%rax,%r14,8), %ymm24, %ymm21

// CHECK: vmaxpd (%rcx){1to4}, %ymm24, %ymm21
// CHECK:  encoding: [0x62,0xe1,0xbd,0x30,0x5f,0x29]
          vmaxpd (%rcx){1to4}, %ymm24, %ymm21

// CHECK: vmaxpd 4064(%rdx), %ymm24, %ymm21
// CHECK:  encoding: [0x62,0xe1,0xbd,0x20,0x5f,0x6a,0x7f]
          vmaxpd 4064(%rdx), %ymm24, %ymm21

// CHECK: vmaxpd 4096(%rdx), %ymm24, %ymm21
// CHECK:  encoding: [0x62,0xe1,0xbd,0x20,0x5f,0xaa,0x00,0x10,0x00,0x00]
          vmaxpd 4096(%rdx), %ymm24, %ymm21

// CHECK: vmaxpd -4096(%rdx), %ymm24, %ymm21
// CHECK:  encoding: [0x62,0xe1,0xbd,0x20,0x5f,0x6a,0x80]
          vmaxpd -4096(%rdx), %ymm24, %ymm21

// CHECK: vmaxpd -4128(%rdx), %ymm24, %ymm21
// CHECK:  encoding: [0x62,0xe1,0xbd,0x20,0x5f,0xaa,0xe0,0xef,0xff,0xff]
          vmaxpd -4128(%rdx), %ymm24, %ymm21

// CHECK: vmaxpd 1016(%rdx){1to4}, %ymm24, %ymm21
// CHECK:  encoding: [0x62,0xe1,0xbd,0x30,0x5f,0x6a,0x7f]
          vmaxpd 1016(%rdx){1to4}, %ymm24, %ymm21

// CHECK: vmaxpd 1024(%rdx){1to4}, %ymm24, %ymm21
// CHECK:  encoding: [0x62,0xe1,0xbd,0x30,0x5f,0xaa,0x00,0x04,0x00,0x00]
          vmaxpd 1024(%rdx){1to4}, %ymm24, %ymm21

// CHECK: vmaxpd -1024(%rdx){1to4}, %ymm24, %ymm21
// CHECK:  encoding: [0x62,0xe1,0xbd,0x30,0x5f,0x6a,0x80]
          vmaxpd -1024(%rdx){1to4}, %ymm24, %ymm21

// CHECK: vmaxpd -1032(%rdx){1to4}, %ymm24, %ymm21
// CHECK:  encoding: [0x62,0xe1,0xbd,0x30,0x5f,0xaa,0xf8,0xfb,0xff,0xff]
          vmaxpd -1032(%rdx){1to4}, %ymm24, %ymm21

// CHECK: vmaxps %xmm19, %xmm20, %xmm24
// CHECK:  encoding: [0x62,0x21,0x5c,0x00,0x5f,0xc3]
          vmaxps %xmm19, %xmm20, %xmm24

// CHECK: vmaxps %xmm19, %xmm20, %xmm24 {%k6}
// CHECK:  encoding: [0x62,0x21,0x5c,0x06,0x5f,0xc3]
          vmaxps %xmm19, %xmm20, %xmm24 {%k6}

// CHECK: vmaxps %xmm19, %xmm20, %xmm24 {%k6} {z}
// CHECK:  encoding: [0x62,0x21,0x5c,0x86,0x5f,0xc3]
          vmaxps %xmm19, %xmm20, %xmm24 {%k6} {z}

// CHECK: vmaxps (%rcx), %xmm20, %xmm24
// CHECK:  encoding: [0x62,0x61,0x5c,0x00,0x5f,0x01]
          vmaxps (%rcx), %xmm20, %xmm24

// CHECK: vmaxps 291(%rax,%r14,8), %xmm20, %xmm24
// CHECK:  encoding: [0x62,0x21,0x5c,0x00,0x5f,0x84,0xf0,0x23,0x01,0x00,0x00]
          vmaxps 291(%rax,%r14,8), %xmm20, %xmm24

// CHECK: vmaxps (%rcx){1to4}, %xmm20, %xmm24
// CHECK:  encoding: [0x62,0x61,0x5c,0x10,0x5f,0x01]
          vmaxps (%rcx){1to4}, %xmm20, %xmm24

// CHECK: vmaxps 2032(%rdx), %xmm20, %xmm24
// CHECK:  encoding: [0x62,0x61,0x5c,0x00,0x5f,0x42,0x7f]
          vmaxps 2032(%rdx), %xmm20, %xmm24

// CHECK: vmaxps 2048(%rdx), %xmm20, %xmm24
// CHECK:  encoding: [0x62,0x61,0x5c,0x00,0x5f,0x82,0x00,0x08,0x00,0x00]
          vmaxps 2048(%rdx), %xmm20, %xmm24

// CHECK: vmaxps -2048(%rdx), %xmm20, %xmm24
// CHECK:  encoding: [0x62,0x61,0x5c,0x00,0x5f,0x42,0x80]
          vmaxps -2048(%rdx), %xmm20, %xmm24

// CHECK: vmaxps -2064(%rdx), %xmm20, %xmm24
// CHECK:  encoding: [0x62,0x61,0x5c,0x00,0x5f,0x82,0xf0,0xf7,0xff,0xff]
          vmaxps -2064(%rdx), %xmm20, %xmm24

// CHECK: vmaxps 508(%rdx){1to4}, %xmm20, %xmm24
// CHECK:  encoding: [0x62,0x61,0x5c,0x10,0x5f,0x42,0x7f]
          vmaxps 508(%rdx){1to4}, %xmm20, %xmm24

// CHECK: vmaxps 512(%rdx){1to4}, %xmm20, %xmm24
// CHECK:  encoding: [0x62,0x61,0x5c,0x10,0x5f,0x82,0x00,0x02,0x00,0x00]
          vmaxps 512(%rdx){1to4}, %xmm20, %xmm24

// CHECK: vmaxps -512(%rdx){1to4}, %xmm20, %xmm24
// CHECK:  encoding: [0x62,0x61,0x5c,0x10,0x5f,0x42,0x80]
          vmaxps -512(%rdx){1to4}, %xmm20, %xmm24

// CHECK: vmaxps -516(%rdx){1to4}, %xmm20, %xmm24
// CHECK:  encoding: [0x62,0x61,0x5c,0x10,0x5f,0x82,0xfc,0xfd,0xff,0xff]
          vmaxps -516(%rdx){1to4}, %xmm20, %xmm24

// CHECK: vmaxps %ymm17, %ymm17, %ymm19
// CHECK:  encoding: [0x62,0xa1,0x74,0x20,0x5f,0xd9]
          vmaxps %ymm17, %ymm17, %ymm19

// CHECK: vmaxps %ymm17, %ymm17, %ymm19 {%k3}
// CHECK:  encoding: [0x62,0xa1,0x74,0x23,0x5f,0xd9]
          vmaxps %ymm17, %ymm17, %ymm19 {%k3}

// CHECK: vmaxps %ymm17, %ymm17, %ymm19 {%k3} {z}
// CHECK:  encoding: [0x62,0xa1,0x74,0xa3,0x5f,0xd9]
          vmaxps %ymm17, %ymm17, %ymm19 {%k3} {z}

// CHECK: vmaxps (%rcx), %ymm17, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x74,0x20,0x5f,0x19]
          vmaxps (%rcx), %ymm17, %ymm19

// CHECK: vmaxps 291(%rax,%r14,8), %ymm17, %ymm19
// CHECK:  encoding: [0x62,0xa1,0x74,0x20,0x5f,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vmaxps 291(%rax,%r14,8), %ymm17, %ymm19

// CHECK: vmaxps (%rcx){1to8}, %ymm17, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x74,0x30,0x5f,0x19]
          vmaxps (%rcx){1to8}, %ymm17, %ymm19

// CHECK: vmaxps 4064(%rdx), %ymm17, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x74,0x20,0x5f,0x5a,0x7f]
          vmaxps 4064(%rdx), %ymm17, %ymm19

// CHECK: vmaxps 4096(%rdx), %ymm17, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x74,0x20,0x5f,0x9a,0x00,0x10,0x00,0x00]
          vmaxps 4096(%rdx), %ymm17, %ymm19

// CHECK: vmaxps -4096(%rdx), %ymm17, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x74,0x20,0x5f,0x5a,0x80]
          vmaxps -4096(%rdx), %ymm17, %ymm19

// CHECK: vmaxps -4128(%rdx), %ymm17, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x74,0x20,0x5f,0x9a,0xe0,0xef,0xff,0xff]
          vmaxps -4128(%rdx), %ymm17, %ymm19

// CHECK: vmaxps 508(%rdx){1to8}, %ymm17, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x74,0x30,0x5f,0x5a,0x7f]
          vmaxps 508(%rdx){1to8}, %ymm17, %ymm19

// CHECK: vmaxps 512(%rdx){1to8}, %ymm17, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x74,0x30,0x5f,0x9a,0x00,0x02,0x00,0x00]
          vmaxps 512(%rdx){1to8}, %ymm17, %ymm19

// CHECK: vmaxps -512(%rdx){1to8}, %ymm17, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x74,0x30,0x5f,0x5a,0x80]
          vmaxps -512(%rdx){1to8}, %ymm17, %ymm19

// CHECK: vmaxps -516(%rdx){1to8}, %ymm17, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x74,0x30,0x5f,0x9a,0xfc,0xfd,0xff,0xff]
          vmaxps -516(%rdx){1to8}, %ymm17, %ymm19

// CHECK: vminpd %xmm19, %xmm19, %xmm27
// CHECK:  encoding: [0x62,0x21,0xe5,0x00,0x5d,0xdb]
          vminpd %xmm19, %xmm19, %xmm27

// CHECK: vminpd %xmm19, %xmm19, %xmm27 {%k6}
// CHECK:  encoding: [0x62,0x21,0xe5,0x06,0x5d,0xdb]
          vminpd %xmm19, %xmm19, %xmm27 {%k6}

// CHECK: vminpd %xmm19, %xmm19, %xmm27 {%k6} {z}
// CHECK:  encoding: [0x62,0x21,0xe5,0x86,0x5d,0xdb]
          vminpd %xmm19, %xmm19, %xmm27 {%k6} {z}

// CHECK: vminpd (%rcx), %xmm19, %xmm27
// CHECK:  encoding: [0x62,0x61,0xe5,0x00,0x5d,0x19]
          vminpd (%rcx), %xmm19, %xmm27

// CHECK: vminpd 291(%rax,%r14,8), %xmm19, %xmm27
// CHECK:  encoding: [0x62,0x21,0xe5,0x00,0x5d,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vminpd 291(%rax,%r14,8), %xmm19, %xmm27

// CHECK: vminpd (%rcx){1to2}, %xmm19, %xmm27
// CHECK:  encoding: [0x62,0x61,0xe5,0x10,0x5d,0x19]
          vminpd (%rcx){1to2}, %xmm19, %xmm27

// CHECK: vminpd 2032(%rdx), %xmm19, %xmm27
// CHECK:  encoding: [0x62,0x61,0xe5,0x00,0x5d,0x5a,0x7f]
          vminpd 2032(%rdx), %xmm19, %xmm27

// CHECK: vminpd 2048(%rdx), %xmm19, %xmm27
// CHECK:  encoding: [0x62,0x61,0xe5,0x00,0x5d,0x9a,0x00,0x08,0x00,0x00]
          vminpd 2048(%rdx), %xmm19, %xmm27

// CHECK: vminpd -2048(%rdx), %xmm19, %xmm27
// CHECK:  encoding: [0x62,0x61,0xe5,0x00,0x5d,0x5a,0x80]
          vminpd -2048(%rdx), %xmm19, %xmm27

// CHECK: vminpd -2064(%rdx), %xmm19, %xmm27
// CHECK:  encoding: [0x62,0x61,0xe5,0x00,0x5d,0x9a,0xf0,0xf7,0xff,0xff]
          vminpd -2064(%rdx), %xmm19, %xmm27

// CHECK: vminpd 1016(%rdx){1to2}, %xmm19, %xmm27
// CHECK:  encoding: [0x62,0x61,0xe5,0x10,0x5d,0x5a,0x7f]
          vminpd 1016(%rdx){1to2}, %xmm19, %xmm27

// CHECK: vminpd 1024(%rdx){1to2}, %xmm19, %xmm27
// CHECK:  encoding: [0x62,0x61,0xe5,0x10,0x5d,0x9a,0x00,0x04,0x00,0x00]
          vminpd 1024(%rdx){1to2}, %xmm19, %xmm27

// CHECK: vminpd -1024(%rdx){1to2}, %xmm19, %xmm27
// CHECK:  encoding: [0x62,0x61,0xe5,0x10,0x5d,0x5a,0x80]
          vminpd -1024(%rdx){1to2}, %xmm19, %xmm27

// CHECK: vminpd -1032(%rdx){1to2}, %xmm19, %xmm27
// CHECK:  encoding: [0x62,0x61,0xe5,0x10,0x5d,0x9a,0xf8,0xfb,0xff,0xff]
          vminpd -1032(%rdx){1to2}, %xmm19, %xmm27

// CHECK: vminpd %ymm23, %ymm29, %ymm24
// CHECK:  encoding: [0x62,0x21,0x95,0x20,0x5d,0xc7]
          vminpd %ymm23, %ymm29, %ymm24

// CHECK: vminpd %ymm23, %ymm29, %ymm24 {%k6}
// CHECK:  encoding: [0x62,0x21,0x95,0x26,0x5d,0xc7]
          vminpd %ymm23, %ymm29, %ymm24 {%k6}

// CHECK: vminpd %ymm23, %ymm29, %ymm24 {%k6} {z}
// CHECK:  encoding: [0x62,0x21,0x95,0xa6,0x5d,0xc7]
          vminpd %ymm23, %ymm29, %ymm24 {%k6} {z}

// CHECK: vminpd (%rcx), %ymm29, %ymm24
// CHECK:  encoding: [0x62,0x61,0x95,0x20,0x5d,0x01]
          vminpd (%rcx), %ymm29, %ymm24

// CHECK: vminpd 291(%rax,%r14,8), %ymm29, %ymm24
// CHECK:  encoding: [0x62,0x21,0x95,0x20,0x5d,0x84,0xf0,0x23,0x01,0x00,0x00]
          vminpd 291(%rax,%r14,8), %ymm29, %ymm24

// CHECK: vminpd (%rcx){1to4}, %ymm29, %ymm24
// CHECK:  encoding: [0x62,0x61,0x95,0x30,0x5d,0x01]
          vminpd (%rcx){1to4}, %ymm29, %ymm24

// CHECK: vminpd 4064(%rdx), %ymm29, %ymm24
// CHECK:  encoding: [0x62,0x61,0x95,0x20,0x5d,0x42,0x7f]
          vminpd 4064(%rdx), %ymm29, %ymm24

// CHECK: vminpd 4096(%rdx), %ymm29, %ymm24
// CHECK:  encoding: [0x62,0x61,0x95,0x20,0x5d,0x82,0x00,0x10,0x00,0x00]
          vminpd 4096(%rdx), %ymm29, %ymm24

// CHECK: vminpd -4096(%rdx), %ymm29, %ymm24
// CHECK:  encoding: [0x62,0x61,0x95,0x20,0x5d,0x42,0x80]
          vminpd -4096(%rdx), %ymm29, %ymm24

// CHECK: vminpd -4128(%rdx), %ymm29, %ymm24
// CHECK:  encoding: [0x62,0x61,0x95,0x20,0x5d,0x82,0xe0,0xef,0xff,0xff]
          vminpd -4128(%rdx), %ymm29, %ymm24

// CHECK: vminpd 1016(%rdx){1to4}, %ymm29, %ymm24
// CHECK:  encoding: [0x62,0x61,0x95,0x30,0x5d,0x42,0x7f]
          vminpd 1016(%rdx){1to4}, %ymm29, %ymm24

// CHECK: vminpd 1024(%rdx){1to4}, %ymm29, %ymm24
// CHECK:  encoding: [0x62,0x61,0x95,0x30,0x5d,0x82,0x00,0x04,0x00,0x00]
          vminpd 1024(%rdx){1to4}, %ymm29, %ymm24

// CHECK: vminpd -1024(%rdx){1to4}, %ymm29, %ymm24
// CHECK:  encoding: [0x62,0x61,0x95,0x30,0x5d,0x42,0x80]
          vminpd -1024(%rdx){1to4}, %ymm29, %ymm24

// CHECK: vminpd -1032(%rdx){1to4}, %ymm29, %ymm24
// CHECK:  encoding: [0x62,0x61,0x95,0x30,0x5d,0x82,0xf8,0xfb,0xff,0xff]
          vminpd -1032(%rdx){1to4}, %ymm29, %ymm24

// CHECK: vminps %xmm23, %xmm20, %xmm17
// CHECK:  encoding: [0x62,0xa1,0x5c,0x00,0x5d,0xcf]
          vminps %xmm23, %xmm20, %xmm17

// CHECK: vminps %xmm23, %xmm20, %xmm17 {%k1}
// CHECK:  encoding: [0x62,0xa1,0x5c,0x01,0x5d,0xcf]
          vminps %xmm23, %xmm20, %xmm17 {%k1}

// CHECK: vminps %xmm23, %xmm20, %xmm17 {%k1} {z}
// CHECK:  encoding: [0x62,0xa1,0x5c,0x81,0x5d,0xcf]
          vminps %xmm23, %xmm20, %xmm17 {%k1} {z}

// CHECK: vminps (%rcx), %xmm20, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x5c,0x00,0x5d,0x09]
          vminps (%rcx), %xmm20, %xmm17

// CHECK: vminps 291(%rax,%r14,8), %xmm20, %xmm17
// CHECK:  encoding: [0x62,0xa1,0x5c,0x00,0x5d,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vminps 291(%rax,%r14,8), %xmm20, %xmm17

// CHECK: vminps (%rcx){1to4}, %xmm20, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x5c,0x10,0x5d,0x09]
          vminps (%rcx){1to4}, %xmm20, %xmm17

// CHECK: vminps 2032(%rdx), %xmm20, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x5c,0x00,0x5d,0x4a,0x7f]
          vminps 2032(%rdx), %xmm20, %xmm17

// CHECK: vminps 2048(%rdx), %xmm20, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x5c,0x00,0x5d,0x8a,0x00,0x08,0x00,0x00]
          vminps 2048(%rdx), %xmm20, %xmm17

// CHECK: vminps -2048(%rdx), %xmm20, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x5c,0x00,0x5d,0x4a,0x80]
          vminps -2048(%rdx), %xmm20, %xmm17

// CHECK: vminps -2064(%rdx), %xmm20, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x5c,0x00,0x5d,0x8a,0xf0,0xf7,0xff,0xff]
          vminps -2064(%rdx), %xmm20, %xmm17

// CHECK: vminps 508(%rdx){1to4}, %xmm20, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x5c,0x10,0x5d,0x4a,0x7f]
          vminps 508(%rdx){1to4}, %xmm20, %xmm17

// CHECK: vminps 512(%rdx){1to4}, %xmm20, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x5c,0x10,0x5d,0x8a,0x00,0x02,0x00,0x00]
          vminps 512(%rdx){1to4}, %xmm20, %xmm17

// CHECK: vminps -512(%rdx){1to4}, %xmm20, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x5c,0x10,0x5d,0x4a,0x80]
          vminps -512(%rdx){1to4}, %xmm20, %xmm17

// CHECK: vminps -516(%rdx){1to4}, %xmm20, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x5c,0x10,0x5d,0x8a,0xfc,0xfd,0xff,0xff]
          vminps -516(%rdx){1to4}, %xmm20, %xmm17

// CHECK: vminps %ymm21, %ymm24, %ymm24
// CHECK:  encoding: [0x62,0x21,0x3c,0x20,0x5d,0xc5]
          vminps %ymm21, %ymm24, %ymm24

// CHECK: vminps %ymm21, %ymm24, %ymm24 {%k3}
// CHECK:  encoding: [0x62,0x21,0x3c,0x23,0x5d,0xc5]
          vminps %ymm21, %ymm24, %ymm24 {%k3}

// CHECK: vminps %ymm21, %ymm24, %ymm24 {%k3} {z}
// CHECK:  encoding: [0x62,0x21,0x3c,0xa3,0x5d,0xc5]
          vminps %ymm21, %ymm24, %ymm24 {%k3} {z}

// CHECK: vminps (%rcx), %ymm24, %ymm24
// CHECK:  encoding: [0x62,0x61,0x3c,0x20,0x5d,0x01]
          vminps (%rcx), %ymm24, %ymm24

// CHECK: vminps 291(%rax,%r14,8), %ymm24, %ymm24
// CHECK:  encoding: [0x62,0x21,0x3c,0x20,0x5d,0x84,0xf0,0x23,0x01,0x00,0x00]
          vminps 291(%rax,%r14,8), %ymm24, %ymm24

// CHECK: vminps (%rcx){1to8}, %ymm24, %ymm24
// CHECK:  encoding: [0x62,0x61,0x3c,0x30,0x5d,0x01]
          vminps (%rcx){1to8}, %ymm24, %ymm24

// CHECK: vminps 4064(%rdx), %ymm24, %ymm24
// CHECK:  encoding: [0x62,0x61,0x3c,0x20,0x5d,0x42,0x7f]
          vminps 4064(%rdx), %ymm24, %ymm24

// CHECK: vminps 4096(%rdx), %ymm24, %ymm24
// CHECK:  encoding: [0x62,0x61,0x3c,0x20,0x5d,0x82,0x00,0x10,0x00,0x00]
          vminps 4096(%rdx), %ymm24, %ymm24

// CHECK: vminps -4096(%rdx), %ymm24, %ymm24
// CHECK:  encoding: [0x62,0x61,0x3c,0x20,0x5d,0x42,0x80]
          vminps -4096(%rdx), %ymm24, %ymm24

// CHECK: vminps -4128(%rdx), %ymm24, %ymm24
// CHECK:  encoding: [0x62,0x61,0x3c,0x20,0x5d,0x82,0xe0,0xef,0xff,0xff]
          vminps -4128(%rdx), %ymm24, %ymm24

// CHECK: vminps 508(%rdx){1to8}, %ymm24, %ymm24
// CHECK:  encoding: [0x62,0x61,0x3c,0x30,0x5d,0x42,0x7f]
          vminps 508(%rdx){1to8}, %ymm24, %ymm24

// CHECK: vminps 512(%rdx){1to8}, %ymm24, %ymm24
// CHECK:  encoding: [0x62,0x61,0x3c,0x30,0x5d,0x82,0x00,0x02,0x00,0x00]
          vminps 512(%rdx){1to8}, %ymm24, %ymm24

// CHECK: vminps -512(%rdx){1to8}, %ymm24, %ymm24
// CHECK:  encoding: [0x62,0x61,0x3c,0x30,0x5d,0x42,0x80]
          vminps -512(%rdx){1to8}, %ymm24, %ymm24

// CHECK: vminps -516(%rdx){1to8}, %ymm24, %ymm24
// CHECK:  encoding: [0x62,0x61,0x3c,0x30,0x5d,0x82,0xfc,0xfd,0xff,0xff]
          vminps -516(%rdx){1to8}, %ymm24, %ymm24

// CHECK: vmovapd %xmm21, %xmm21
// CHECK:  encoding: [0x62,0xa1,0xfd,0x08,0x28,0xed]
          vmovapd %xmm21, %xmm21

// CHECK: vmovapd %xmm21, %xmm21 {%k3}
// CHECK:  encoding: [0x62,0xa1,0xfd,0x0b,0x28,0xed]
          vmovapd %xmm21, %xmm21 {%k3}

// CHECK: vmovapd %xmm21, %xmm21 {%k3} {z}
// CHECK:  encoding: [0x62,0xa1,0xfd,0x8b,0x28,0xed]
          vmovapd %xmm21, %xmm21 {%k3} {z}

// CHECK: vmovapd (%rcx), %xmm21
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x28,0x29]
          vmovapd (%rcx), %xmm21

// CHECK: vmovapd 291(%rax,%r14,8), %xmm21
// CHECK:  encoding: [0x62,0xa1,0xfd,0x08,0x28,0xac,0xf0,0x23,0x01,0x00,0x00]
          vmovapd 291(%rax,%r14,8), %xmm21

// CHECK: vmovapd 2032(%rdx), %xmm21
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x28,0x6a,0x7f]
          vmovapd 2032(%rdx), %xmm21

// CHECK: vmovapd 2048(%rdx), %xmm21
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x28,0xaa,0x00,0x08,0x00,0x00]
          vmovapd 2048(%rdx), %xmm21

// CHECK: vmovapd -2048(%rdx), %xmm21
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x28,0x6a,0x80]
          vmovapd -2048(%rdx), %xmm21

// CHECK: vmovapd -2064(%rdx), %xmm21
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x28,0xaa,0xf0,0xf7,0xff,0xff]
          vmovapd -2064(%rdx), %xmm21

// CHECK: vmovapd %ymm17, %ymm18
// CHECK:  encoding: [0x62,0xa1,0xfd,0x28,0x28,0xd1]
          vmovapd %ymm17, %ymm18

// CHECK: vmovapd %ymm17, %ymm18 {%k2}
// CHECK:  encoding: [0x62,0xa1,0xfd,0x2a,0x28,0xd1]
          vmovapd %ymm17, %ymm18 {%k2}

// CHECK: vmovapd %ymm17, %ymm18 {%k2} {z}
// CHECK:  encoding: [0x62,0xa1,0xfd,0xaa,0x28,0xd1]
          vmovapd %ymm17, %ymm18 {%k2} {z}

// CHECK: vmovapd (%rcx), %ymm18
// CHECK:  encoding: [0x62,0xe1,0xfd,0x28,0x28,0x11]
          vmovapd (%rcx), %ymm18

// CHECK: vmovapd 291(%rax,%r14,8), %ymm18
// CHECK:  encoding: [0x62,0xa1,0xfd,0x28,0x28,0x94,0xf0,0x23,0x01,0x00,0x00]
          vmovapd 291(%rax,%r14,8), %ymm18

// CHECK: vmovapd 4064(%rdx), %ymm18
// CHECK:  encoding: [0x62,0xe1,0xfd,0x28,0x28,0x52,0x7f]
          vmovapd 4064(%rdx), %ymm18

// CHECK: vmovapd 4096(%rdx), %ymm18
// CHECK:  encoding: [0x62,0xe1,0xfd,0x28,0x28,0x92,0x00,0x10,0x00,0x00]
          vmovapd 4096(%rdx), %ymm18

// CHECK: vmovapd -4096(%rdx), %ymm18
// CHECK:  encoding: [0x62,0xe1,0xfd,0x28,0x28,0x52,0x80]
          vmovapd -4096(%rdx), %ymm18

// CHECK: vmovapd -4128(%rdx), %ymm18
// CHECK:  encoding: [0x62,0xe1,0xfd,0x28,0x28,0x92,0xe0,0xef,0xff,0xff]
          vmovapd -4128(%rdx), %ymm18

// CHECK: vmovaps %xmm29, %xmm22
// CHECK:  encoding: [0x62,0x81,0x7c,0x08,0x28,0xf5]
          vmovaps %xmm29, %xmm22

// CHECK: vmovaps %xmm29, %xmm22 {%k1}
// CHECK:  encoding: [0x62,0x81,0x7c,0x09,0x28,0xf5]
          vmovaps %xmm29, %xmm22 {%k1}

// CHECK: vmovaps %xmm29, %xmm22 {%k1} {z}
// CHECK:  encoding: [0x62,0x81,0x7c,0x89,0x28,0xf5]
          vmovaps %xmm29, %xmm22 {%k1} {z}

// CHECK: vmovaps (%rcx), %xmm22
// CHECK:  encoding: [0x62,0xe1,0x7c,0x08,0x28,0x31]
          vmovaps (%rcx), %xmm22

// CHECK: vmovaps 291(%rax,%r14,8), %xmm22
// CHECK:  encoding: [0x62,0xa1,0x7c,0x08,0x28,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vmovaps 291(%rax,%r14,8), %xmm22

// CHECK: vmovaps 2032(%rdx), %xmm22
// CHECK:  encoding: [0x62,0xe1,0x7c,0x08,0x28,0x72,0x7f]
          vmovaps 2032(%rdx), %xmm22

// CHECK: vmovaps 2048(%rdx), %xmm22
// CHECK:  encoding: [0x62,0xe1,0x7c,0x08,0x28,0xb2,0x00,0x08,0x00,0x00]
          vmovaps 2048(%rdx), %xmm22

// CHECK: vmovaps -2048(%rdx), %xmm22
// CHECK:  encoding: [0x62,0xe1,0x7c,0x08,0x28,0x72,0x80]
          vmovaps -2048(%rdx), %xmm22

// CHECK: vmovaps -2064(%rdx), %xmm22
// CHECK:  encoding: [0x62,0xe1,0x7c,0x08,0x28,0xb2,0xf0,0xf7,0xff,0xff]
          vmovaps -2064(%rdx), %xmm22

// CHECK: vmovaps %ymm28, %ymm25
// CHECK:  encoding: [0x62,0x01,0x7c,0x28,0x28,0xcc]
          vmovaps %ymm28, %ymm25

// CHECK: vmovaps %ymm28, %ymm25 {%k3}
// CHECK:  encoding: [0x62,0x01,0x7c,0x2b,0x28,0xcc]
          vmovaps %ymm28, %ymm25 {%k3}

// CHECK: vmovaps %ymm28, %ymm25 {%k3} {z}
// CHECK:  encoding: [0x62,0x01,0x7c,0xab,0x28,0xcc]
          vmovaps %ymm28, %ymm25 {%k3} {z}

// CHECK: vmovaps (%rcx), %ymm25
// CHECK:  encoding: [0x62,0x61,0x7c,0x28,0x28,0x09]
          vmovaps (%rcx), %ymm25

// CHECK: vmovaps 291(%rax,%r14,8), %ymm25
// CHECK:  encoding: [0x62,0x21,0x7c,0x28,0x28,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vmovaps 291(%rax,%r14,8), %ymm25

// CHECK: vmovaps 4064(%rdx), %ymm25
// CHECK:  encoding: [0x62,0x61,0x7c,0x28,0x28,0x4a,0x7f]
          vmovaps 4064(%rdx), %ymm25

// CHECK: vmovaps 4096(%rdx), %ymm25
// CHECK:  encoding: [0x62,0x61,0x7c,0x28,0x28,0x8a,0x00,0x10,0x00,0x00]
          vmovaps 4096(%rdx), %ymm25

// CHECK: vmovaps -4096(%rdx), %ymm25
// CHECK:  encoding: [0x62,0x61,0x7c,0x28,0x28,0x4a,0x80]
          vmovaps -4096(%rdx), %ymm25

// CHECK: vmovaps -4128(%rdx), %ymm25
// CHECK:  encoding: [0x62,0x61,0x7c,0x28,0x28,0x8a,0xe0,0xef,0xff,0xff]
          vmovaps -4128(%rdx), %ymm25

// CHECK: vmovdqa32 %xmm24, %xmm21
// CHECK:  encoding: [0x62,0x81,0x7d,0x08,0x6f,0xe8]
          vmovdqa32 %xmm24, %xmm21

// CHECK: vmovdqa32 %xmm24, %xmm21 {%k6}
// CHECK:  encoding: [0x62,0x81,0x7d,0x0e,0x6f,0xe8]
          vmovdqa32 %xmm24, %xmm21 {%k6}

// CHECK: vmovdqa32 %xmm24, %xmm21 {%k6} {z}
// CHECK:  encoding: [0x62,0x81,0x7d,0x8e,0x6f,0xe8]
          vmovdqa32 %xmm24, %xmm21 {%k6} {z}

// CHECK: vmovdqa32 (%rcx), %xmm21
// CHECK:  encoding: [0x62,0xe1,0x7d,0x08,0x6f,0x29]
          vmovdqa32 (%rcx), %xmm21

// CHECK: vmovdqa32 291(%rax,%r14,8), %xmm21
// CHECK:  encoding: [0x62,0xa1,0x7d,0x08,0x6f,0xac,0xf0,0x23,0x01,0x00,0x00]
          vmovdqa32 291(%rax,%r14,8), %xmm21

// CHECK: vmovdqa32 2032(%rdx), %xmm21
// CHECK:  encoding: [0x62,0xe1,0x7d,0x08,0x6f,0x6a,0x7f]
          vmovdqa32 2032(%rdx), %xmm21

// CHECK: vmovdqa32 2048(%rdx), %xmm21
// CHECK:  encoding: [0x62,0xe1,0x7d,0x08,0x6f,0xaa,0x00,0x08,0x00,0x00]
          vmovdqa32 2048(%rdx), %xmm21

// CHECK: vmovdqa32 -2048(%rdx), %xmm21
// CHECK:  encoding: [0x62,0xe1,0x7d,0x08,0x6f,0x6a,0x80]
          vmovdqa32 -2048(%rdx), %xmm21

// CHECK: vmovdqa32 -2064(%rdx), %xmm21
// CHECK:  encoding: [0x62,0xe1,0x7d,0x08,0x6f,0xaa,0xf0,0xf7,0xff,0xff]
          vmovdqa32 -2064(%rdx), %xmm21

// CHECK: vmovdqa32 %ymm28, %ymm24
// CHECK:  encoding: [0x62,0x01,0x7d,0x28,0x6f,0xc4]
          vmovdqa32 %ymm28, %ymm24

// CHECK: vmovdqa32 %ymm28, %ymm24 {%k5}
// CHECK:  encoding: [0x62,0x01,0x7d,0x2d,0x6f,0xc4]
          vmovdqa32 %ymm28, %ymm24 {%k5}

// CHECK: vmovdqa32 %ymm28, %ymm24 {%k5} {z}
// CHECK:  encoding: [0x62,0x01,0x7d,0xad,0x6f,0xc4]
          vmovdqa32 %ymm28, %ymm24 {%k5} {z}

// CHECK: vmovdqa32 (%rcx), %ymm24
// CHECK:  encoding: [0x62,0x61,0x7d,0x28,0x6f,0x01]
          vmovdqa32 (%rcx), %ymm24

// CHECK: vmovdqa32 291(%rax,%r14,8), %ymm24
// CHECK:  encoding: [0x62,0x21,0x7d,0x28,0x6f,0x84,0xf0,0x23,0x01,0x00,0x00]
          vmovdqa32 291(%rax,%r14,8), %ymm24

// CHECK: vmovdqa32 4064(%rdx), %ymm24
// CHECK:  encoding: [0x62,0x61,0x7d,0x28,0x6f,0x42,0x7f]
          vmovdqa32 4064(%rdx), %ymm24

// CHECK: vmovdqa32 4096(%rdx), %ymm24
// CHECK:  encoding: [0x62,0x61,0x7d,0x28,0x6f,0x82,0x00,0x10,0x00,0x00]
          vmovdqa32 4096(%rdx), %ymm24

// CHECK: vmovdqa32 -4096(%rdx), %ymm24
// CHECK:  encoding: [0x62,0x61,0x7d,0x28,0x6f,0x42,0x80]
          vmovdqa32 -4096(%rdx), %ymm24

// CHECK: vmovdqa32 -4128(%rdx), %ymm24
// CHECK:  encoding: [0x62,0x61,0x7d,0x28,0x6f,0x82,0xe0,0xef,0xff,0xff]
          vmovdqa32 -4128(%rdx), %ymm24

// CHECK: vmovdqa64 %xmm24, %xmm27
// CHECK:  encoding: [0x62,0x01,0xfd,0x08,0x6f,0xd8]
          vmovdqa64 %xmm24, %xmm27

// CHECK: vmovdqa64 %xmm24, %xmm27 {%k5}
// CHECK:  encoding: [0x62,0x01,0xfd,0x0d,0x6f,0xd8]
          vmovdqa64 %xmm24, %xmm27 {%k5}

// CHECK: vmovdqa64 %xmm24, %xmm27 {%k5} {z}
// CHECK:  encoding: [0x62,0x01,0xfd,0x8d,0x6f,0xd8]
          vmovdqa64 %xmm24, %xmm27 {%k5} {z}

// CHECK: vmovdqa64 (%rcx), %xmm27
// CHECK:  encoding: [0x62,0x61,0xfd,0x08,0x6f,0x19]
          vmovdqa64 (%rcx), %xmm27

// CHECK: vmovdqa64 291(%rax,%r14,8), %xmm27
// CHECK:  encoding: [0x62,0x21,0xfd,0x08,0x6f,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vmovdqa64 291(%rax,%r14,8), %xmm27

// CHECK: vmovdqa64 2032(%rdx), %xmm27
// CHECK:  encoding: [0x62,0x61,0xfd,0x08,0x6f,0x5a,0x7f]
          vmovdqa64 2032(%rdx), %xmm27

// CHECK: vmovdqa64 2048(%rdx), %xmm27
// CHECK:  encoding: [0x62,0x61,0xfd,0x08,0x6f,0x9a,0x00,0x08,0x00,0x00]
          vmovdqa64 2048(%rdx), %xmm27

// CHECK: vmovdqa64 -2048(%rdx), %xmm27
// CHECK:  encoding: [0x62,0x61,0xfd,0x08,0x6f,0x5a,0x80]
          vmovdqa64 -2048(%rdx), %xmm27

// CHECK: vmovdqa64 -2064(%rdx), %xmm27
// CHECK:  encoding: [0x62,0x61,0xfd,0x08,0x6f,0x9a,0xf0,0xf7,0xff,0xff]
          vmovdqa64 -2064(%rdx), %xmm27

// CHECK: vmovdqa64 %ymm29, %ymm30
// CHECK:  encoding: [0x62,0x01,0xfd,0x28,0x6f,0xf5]
          vmovdqa64 %ymm29, %ymm30

// CHECK: vmovdqa64 %ymm29, %ymm30 {%k3}
// CHECK:  encoding: [0x62,0x01,0xfd,0x2b,0x6f,0xf5]
          vmovdqa64 %ymm29, %ymm30 {%k3}

// CHECK: vmovdqa64 %ymm29, %ymm30 {%k3} {z}
// CHECK:  encoding: [0x62,0x01,0xfd,0xab,0x6f,0xf5]
          vmovdqa64 %ymm29, %ymm30 {%k3} {z}

// CHECK: vmovdqa64 (%rcx), %ymm30
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x6f,0x31]
          vmovdqa64 (%rcx), %ymm30

// CHECK: vmovdqa64 291(%rax,%r14,8), %ymm30
// CHECK:  encoding: [0x62,0x21,0xfd,0x28,0x6f,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vmovdqa64 291(%rax,%r14,8), %ymm30

// CHECK: vmovdqa64 4064(%rdx), %ymm30
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x6f,0x72,0x7f]
          vmovdqa64 4064(%rdx), %ymm30

// CHECK: vmovdqa64 4096(%rdx), %ymm30
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x6f,0xb2,0x00,0x10,0x00,0x00]
          vmovdqa64 4096(%rdx), %ymm30

// CHECK: vmovdqa64 -4096(%rdx), %ymm30
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x6f,0x72,0x80]
          vmovdqa64 -4096(%rdx), %ymm30

// CHECK: vmovdqa64 -4128(%rdx), %ymm30
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x6f,0xb2,0xe0,0xef,0xff,0xff]
          vmovdqa64 -4128(%rdx), %ymm30

// CHECK: vmovdqu32 %xmm19, %xmm29
// CHECK:  encoding: [0x62,0x21,0x7e,0x08,0x6f,0xeb]
          vmovdqu32 %xmm19, %xmm29

// CHECK: vmovdqu32 %xmm19, %xmm29 {%k6}
// CHECK:  encoding: [0x62,0x21,0x7e,0x0e,0x6f,0xeb]
          vmovdqu32 %xmm19, %xmm29 {%k6}

// CHECK: vmovdqu32 %xmm19, %xmm29 {%k6} {z}
// CHECK:  encoding: [0x62,0x21,0x7e,0x8e,0x6f,0xeb]
          vmovdqu32 %xmm19, %xmm29 {%k6} {z}

// CHECK: vmovdqu32 (%rcx), %xmm29
// CHECK:  encoding: [0x62,0x61,0x7e,0x08,0x6f,0x29]
          vmovdqu32 (%rcx), %xmm29

// CHECK: vmovdqu32 291(%rax,%r14,8), %xmm29
// CHECK:  encoding: [0x62,0x21,0x7e,0x08,0x6f,0xac,0xf0,0x23,0x01,0x00,0x00]
          vmovdqu32 291(%rax,%r14,8), %xmm29

// CHECK: vmovdqu32 2032(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x61,0x7e,0x08,0x6f,0x6a,0x7f]
          vmovdqu32 2032(%rdx), %xmm29

// CHECK: vmovdqu32 2048(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x61,0x7e,0x08,0x6f,0xaa,0x00,0x08,0x00,0x00]
          vmovdqu32 2048(%rdx), %xmm29

// CHECK: vmovdqu32 -2048(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x61,0x7e,0x08,0x6f,0x6a,0x80]
          vmovdqu32 -2048(%rdx), %xmm29

// CHECK: vmovdqu32 -2064(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x61,0x7e,0x08,0x6f,0xaa,0xf0,0xf7,0xff,0xff]
          vmovdqu32 -2064(%rdx), %xmm29

// CHECK: vmovdqu32 %ymm18, %ymm17
// CHECK:  encoding: [0x62,0xa1,0x7e,0x28,0x6f,0xca]
          vmovdqu32 %ymm18, %ymm17

// CHECK: vmovdqu32 %ymm18, %ymm17 {%k3}
// CHECK:  encoding: [0x62,0xa1,0x7e,0x2b,0x6f,0xca]
          vmovdqu32 %ymm18, %ymm17 {%k3}

// CHECK: vmovdqu32 %ymm18, %ymm17 {%k3} {z}
// CHECK:  encoding: [0x62,0xa1,0x7e,0xab,0x6f,0xca]
          vmovdqu32 %ymm18, %ymm17 {%k3} {z}

// CHECK: vmovdqu32 (%rcx), %ymm17
// CHECK:  encoding: [0x62,0xe1,0x7e,0x28,0x6f,0x09]
          vmovdqu32 (%rcx), %ymm17

// CHECK: vmovdqu32 291(%rax,%r14,8), %ymm17
// CHECK:  encoding: [0x62,0xa1,0x7e,0x28,0x6f,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vmovdqu32 291(%rax,%r14,8), %ymm17

// CHECK: vmovdqu32 4064(%rdx), %ymm17
// CHECK:  encoding: [0x62,0xe1,0x7e,0x28,0x6f,0x4a,0x7f]
          vmovdqu32 4064(%rdx), %ymm17

// CHECK: vmovdqu32 4096(%rdx), %ymm17
// CHECK:  encoding: [0x62,0xe1,0x7e,0x28,0x6f,0x8a,0x00,0x10,0x00,0x00]
          vmovdqu32 4096(%rdx), %ymm17

// CHECK: vmovdqu32 -4096(%rdx), %ymm17
// CHECK:  encoding: [0x62,0xe1,0x7e,0x28,0x6f,0x4a,0x80]
          vmovdqu32 -4096(%rdx), %ymm17

// CHECK: vmovdqu32 -4128(%rdx), %ymm17
// CHECK:  encoding: [0x62,0xe1,0x7e,0x28,0x6f,0x8a,0xe0,0xef,0xff,0xff]
          vmovdqu32 -4128(%rdx), %ymm17

// CHECK: vmovdqu64 %xmm19, %xmm24
// CHECK:  encoding: [0x62,0x21,0xfe,0x08,0x6f,0xc3]
          vmovdqu64 %xmm19, %xmm24

// CHECK: vmovdqu64 %xmm19, %xmm24 {%k5}
// CHECK:  encoding: [0x62,0x21,0xfe,0x0d,0x6f,0xc3]
          vmovdqu64 %xmm19, %xmm24 {%k5}

// CHECK: vmovdqu64 %xmm19, %xmm24 {%k5} {z}
// CHECK:  encoding: [0x62,0x21,0xfe,0x8d,0x6f,0xc3]
          vmovdqu64 %xmm19, %xmm24 {%k5} {z}

// CHECK: vmovdqu64 (%rcx), %xmm24
// CHECK:  encoding: [0x62,0x61,0xfe,0x08,0x6f,0x01]
          vmovdqu64 (%rcx), %xmm24

// CHECK: vmovdqu64 291(%rax,%r14,8), %xmm24
// CHECK:  encoding: [0x62,0x21,0xfe,0x08,0x6f,0x84,0xf0,0x23,0x01,0x00,0x00]
          vmovdqu64 291(%rax,%r14,8), %xmm24

// CHECK: vmovdqu64 2032(%rdx), %xmm24
// CHECK:  encoding: [0x62,0x61,0xfe,0x08,0x6f,0x42,0x7f]
          vmovdqu64 2032(%rdx), %xmm24

// CHECK: vmovdqu64 2048(%rdx), %xmm24
// CHECK:  encoding: [0x62,0x61,0xfe,0x08,0x6f,0x82,0x00,0x08,0x00,0x00]
          vmovdqu64 2048(%rdx), %xmm24

// CHECK: vmovdqu64 -2048(%rdx), %xmm24
// CHECK:  encoding: [0x62,0x61,0xfe,0x08,0x6f,0x42,0x80]
          vmovdqu64 -2048(%rdx), %xmm24

// CHECK: vmovdqu64 -2064(%rdx), %xmm24
// CHECK:  encoding: [0x62,0x61,0xfe,0x08,0x6f,0x82,0xf0,0xf7,0xff,0xff]
          vmovdqu64 -2064(%rdx), %xmm24

// CHECK: vmovdqu64 %ymm21, %ymm29
// CHECK:  encoding: [0x62,0x21,0xfe,0x28,0x6f,0xed]
          vmovdqu64 %ymm21, %ymm29

// CHECK: vmovdqu64 %ymm21, %ymm29 {%k3}
// CHECK:  encoding: [0x62,0x21,0xfe,0x2b,0x6f,0xed]
          vmovdqu64 %ymm21, %ymm29 {%k3}

// CHECK: vmovdqu64 %ymm21, %ymm29 {%k3} {z}
// CHECK:  encoding: [0x62,0x21,0xfe,0xab,0x6f,0xed]
          vmovdqu64 %ymm21, %ymm29 {%k3} {z}

// CHECK: vmovdqu64 (%rcx), %ymm29
// CHECK:  encoding: [0x62,0x61,0xfe,0x28,0x6f,0x29]
          vmovdqu64 (%rcx), %ymm29

// CHECK: vmovdqu64 291(%rax,%r14,8), %ymm29
// CHECK:  encoding: [0x62,0x21,0xfe,0x28,0x6f,0xac,0xf0,0x23,0x01,0x00,0x00]
          vmovdqu64 291(%rax,%r14,8), %ymm29

// CHECK: vmovdqu64 4064(%rdx), %ymm29
// CHECK:  encoding: [0x62,0x61,0xfe,0x28,0x6f,0x6a,0x7f]
          vmovdqu64 4064(%rdx), %ymm29

// CHECK: vmovdqu64 4096(%rdx), %ymm29
// CHECK:  encoding: [0x62,0x61,0xfe,0x28,0x6f,0xaa,0x00,0x10,0x00,0x00]
          vmovdqu64 4096(%rdx), %ymm29

// CHECK: vmovdqu64 -4096(%rdx), %ymm29
// CHECK:  encoding: [0x62,0x61,0xfe,0x28,0x6f,0x6a,0x80]
          vmovdqu64 -4096(%rdx), %ymm29

// CHECK: vmovdqu64 -4128(%rdx), %ymm29
// CHECK:  encoding: [0x62,0x61,0xfe,0x28,0x6f,0xaa,0xe0,0xef,0xff,0xff]
          vmovdqu64 -4128(%rdx), %ymm29

// CHECK: vmovntdq %xmm22, (%rcx)
// CHECK:  encoding: [0x62,0xe1,0x7d,0x08,0xe7,0x31]
          vmovntdq %xmm22, (%rcx)

// CHECK: vmovntdq %xmm22, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa1,0x7d,0x08,0xe7,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vmovntdq %xmm22, 291(%rax,%r14,8)

// CHECK: vmovntdq %xmm22, 2032(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7d,0x08,0xe7,0x72,0x7f]
          vmovntdq %xmm22, 2032(%rdx)

// CHECK: vmovntdq %xmm22, 2048(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7d,0x08,0xe7,0xb2,0x00,0x08,0x00,0x00]
          vmovntdq %xmm22, 2048(%rdx)

// CHECK: vmovntdq %xmm22, -2048(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7d,0x08,0xe7,0x72,0x80]
          vmovntdq %xmm22, -2048(%rdx)

// CHECK: vmovntdq %xmm22, -2064(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7d,0x08,0xe7,0xb2,0xf0,0xf7,0xff,0xff]
          vmovntdq %xmm22, -2064(%rdx)

// CHECK: vmovntdq %ymm19, (%rcx)
// CHECK:  encoding: [0x62,0xe1,0x7d,0x28,0xe7,0x19]
          vmovntdq %ymm19, (%rcx)

// CHECK: vmovntdq %ymm19, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa1,0x7d,0x28,0xe7,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vmovntdq %ymm19, 291(%rax,%r14,8)

// CHECK: vmovntdq %ymm19, 4064(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7d,0x28,0xe7,0x5a,0x7f]
          vmovntdq %ymm19, 4064(%rdx)

// CHECK: vmovntdq %ymm19, 4096(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7d,0x28,0xe7,0x9a,0x00,0x10,0x00,0x00]
          vmovntdq %ymm19, 4096(%rdx)

// CHECK: vmovntdq %ymm19, -4096(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7d,0x28,0xe7,0x5a,0x80]
          vmovntdq %ymm19, -4096(%rdx)

// CHECK: vmovntdq %ymm19, -4128(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7d,0x28,0xe7,0x9a,0xe0,0xef,0xff,0xff]
          vmovntdq %ymm19, -4128(%rdx)

// CHECK: vmovntdqa (%rcx), %xmm24
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x2a,0x01]
          vmovntdqa (%rcx), %xmm24

// CHECK: vmovntdqa 291(%rax,%r14,8), %xmm24
// CHECK:  encoding: [0x62,0x22,0x7d,0x08,0x2a,0x84,0xf0,0x23,0x01,0x00,0x00]
          vmovntdqa 291(%rax,%r14,8), %xmm24

// CHECK: vmovntdqa 2032(%rdx), %xmm24
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x2a,0x42,0x7f]
          vmovntdqa 2032(%rdx), %xmm24

// CHECK: vmovntdqa 2048(%rdx), %xmm24
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x2a,0x82,0x00,0x08,0x00,0x00]
          vmovntdqa 2048(%rdx), %xmm24

// CHECK: vmovntdqa -2048(%rdx), %xmm24
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x2a,0x42,0x80]
          vmovntdqa -2048(%rdx), %xmm24

// CHECK: vmovntdqa -2064(%rdx), %xmm24
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x2a,0x82,0xf0,0xf7,0xff,0xff]
          vmovntdqa -2064(%rdx), %xmm24

// CHECK: vmovntdqa (%rcx), %ymm28
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x2a,0x21]
          vmovntdqa (%rcx), %ymm28

// CHECK: vmovntdqa 291(%rax,%r14,8), %ymm28
// CHECK:  encoding: [0x62,0x22,0x7d,0x28,0x2a,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vmovntdqa 291(%rax,%r14,8), %ymm28

// CHECK: vmovntdqa 4064(%rdx), %ymm28
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x2a,0x62,0x7f]
          vmovntdqa 4064(%rdx), %ymm28

// CHECK: vmovntdqa 4096(%rdx), %ymm28
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x2a,0xa2,0x00,0x10,0x00,0x00]
          vmovntdqa 4096(%rdx), %ymm28

// CHECK: vmovntdqa -4096(%rdx), %ymm28
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x2a,0x62,0x80]
          vmovntdqa -4096(%rdx), %ymm28

// CHECK: vmovntdqa -4128(%rdx), %ymm28
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x2a,0xa2,0xe0,0xef,0xff,0xff]
          vmovntdqa -4128(%rdx), %ymm28

// CHECK: vmovntpd %xmm17, (%rcx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x2b,0x09]
          vmovntpd %xmm17, (%rcx)

// CHECK: vmovntpd %xmm17, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa1,0xfd,0x08,0x2b,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vmovntpd %xmm17, 291(%rax,%r14,8)

// CHECK: vmovntpd %xmm17, 2032(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x2b,0x4a,0x7f]
          vmovntpd %xmm17, 2032(%rdx)

// CHECK: vmovntpd %xmm17, 2048(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x2b,0x8a,0x00,0x08,0x00,0x00]
          vmovntpd %xmm17, 2048(%rdx)

// CHECK: vmovntpd %xmm17, -2048(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x2b,0x4a,0x80]
          vmovntpd %xmm17, -2048(%rdx)

// CHECK: vmovntpd %xmm17, -2064(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x2b,0x8a,0xf0,0xf7,0xff,0xff]
          vmovntpd %xmm17, -2064(%rdx)

// CHECK: vmovntpd %ymm27, (%rcx)
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x2b,0x19]
          vmovntpd %ymm27, (%rcx)

// CHECK: vmovntpd %ymm27, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x21,0xfd,0x28,0x2b,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vmovntpd %ymm27, 291(%rax,%r14,8)

// CHECK: vmovntpd %ymm27, 4064(%rdx)
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x2b,0x5a,0x7f]
          vmovntpd %ymm27, 4064(%rdx)

// CHECK: vmovntpd %ymm27, 4096(%rdx)
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x2b,0x9a,0x00,0x10,0x00,0x00]
          vmovntpd %ymm27, 4096(%rdx)

// CHECK: vmovntpd %ymm27, -4096(%rdx)
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x2b,0x5a,0x80]
          vmovntpd %ymm27, -4096(%rdx)

// CHECK: vmovntpd %ymm27, -4128(%rdx)
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x2b,0x9a,0xe0,0xef,0xff,0xff]
          vmovntpd %ymm27, -4128(%rdx)

// CHECK: vmovntps %xmm26, (%rcx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x08,0x2b,0x11]
          vmovntps %xmm26, (%rcx)

// CHECK: vmovntps %xmm26, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x21,0x7c,0x08,0x2b,0x94,0xf0,0x23,0x01,0x00,0x00]
          vmovntps %xmm26, 291(%rax,%r14,8)

// CHECK: vmovntps %xmm26, 2032(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x08,0x2b,0x52,0x7f]
          vmovntps %xmm26, 2032(%rdx)

// CHECK: vmovntps %xmm26, 2048(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x08,0x2b,0x92,0x00,0x08,0x00,0x00]
          vmovntps %xmm26, 2048(%rdx)

// CHECK: vmovntps %xmm26, -2048(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x08,0x2b,0x52,0x80]
          vmovntps %xmm26, -2048(%rdx)

// CHECK: vmovntps %xmm26, -2064(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x08,0x2b,0x92,0xf0,0xf7,0xff,0xff]
          vmovntps %xmm26, -2064(%rdx)

// CHECK: vmovntps %ymm28, (%rcx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x28,0x2b,0x21]
          vmovntps %ymm28, (%rcx)

// CHECK: vmovntps %ymm28, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x21,0x7c,0x28,0x2b,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vmovntps %ymm28, 291(%rax,%r14,8)

// CHECK: vmovntps %ymm28, 4064(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x28,0x2b,0x62,0x7f]
          vmovntps %ymm28, 4064(%rdx)

// CHECK: vmovntps %ymm28, 4096(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x28,0x2b,0xa2,0x00,0x10,0x00,0x00]
          vmovntps %ymm28, 4096(%rdx)

// CHECK: vmovntps %ymm28, -4096(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x28,0x2b,0x62,0x80]
          vmovntps %ymm28, -4096(%rdx)

// CHECK: vmovntps %ymm28, -4128(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x28,0x2b,0xa2,0xe0,0xef,0xff,0xff]
          vmovntps %ymm28, -4128(%rdx)

// CHECK: vmovupd %xmm22, %xmm24
// CHECK:  encoding: [0x62,0x21,0xfd,0x08,0x10,0xc6]
          vmovupd %xmm22, %xmm24

// CHECK: vmovupd %xmm22, %xmm24 {%k6}
// CHECK:  encoding: [0x62,0x21,0xfd,0x0e,0x10,0xc6]
          vmovupd %xmm22, %xmm24 {%k6}

// CHECK: vmovupd %xmm22, %xmm24 {%k6} {z}
// CHECK:  encoding: [0x62,0x21,0xfd,0x8e,0x10,0xc6]
          vmovupd %xmm22, %xmm24 {%k6} {z}

// CHECK: vmovupd (%rcx), %xmm24
// CHECK:  encoding: [0x62,0x61,0xfd,0x08,0x10,0x01]
          vmovupd (%rcx), %xmm24

// CHECK: vmovupd 291(%rax,%r14,8), %xmm24
// CHECK:  encoding: [0x62,0x21,0xfd,0x08,0x10,0x84,0xf0,0x23,0x01,0x00,0x00]
          vmovupd 291(%rax,%r14,8), %xmm24

// CHECK: vmovupd 2032(%rdx), %xmm24
// CHECK:  encoding: [0x62,0x61,0xfd,0x08,0x10,0x42,0x7f]
          vmovupd 2032(%rdx), %xmm24

// CHECK: vmovupd 2048(%rdx), %xmm24
// CHECK:  encoding: [0x62,0x61,0xfd,0x08,0x10,0x82,0x00,0x08,0x00,0x00]
          vmovupd 2048(%rdx), %xmm24

// CHECK: vmovupd -2048(%rdx), %xmm24
// CHECK:  encoding: [0x62,0x61,0xfd,0x08,0x10,0x42,0x80]
          vmovupd -2048(%rdx), %xmm24

// CHECK: vmovupd -2064(%rdx), %xmm24
// CHECK:  encoding: [0x62,0x61,0xfd,0x08,0x10,0x82,0xf0,0xf7,0xff,0xff]
          vmovupd -2064(%rdx), %xmm24

// CHECK: vmovupd %ymm25, %ymm30
// CHECK:  encoding: [0x62,0x01,0xfd,0x28,0x10,0xf1]
          vmovupd %ymm25, %ymm30

// CHECK: vmovupd %ymm25, %ymm30 {%k7}
// CHECK:  encoding: [0x62,0x01,0xfd,0x2f,0x10,0xf1]
          vmovupd %ymm25, %ymm30 {%k7}

// CHECK: vmovupd %ymm25, %ymm30 {%k7} {z}
// CHECK:  encoding: [0x62,0x01,0xfd,0xaf,0x10,0xf1]
          vmovupd %ymm25, %ymm30 {%k7} {z}

// CHECK: vmovupd (%rcx), %ymm30
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x10,0x31]
          vmovupd (%rcx), %ymm30

// CHECK: vmovupd 291(%rax,%r14,8), %ymm30
// CHECK:  encoding: [0x62,0x21,0xfd,0x28,0x10,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vmovupd 291(%rax,%r14,8), %ymm30

// CHECK: vmovupd 4064(%rdx), %ymm30
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x10,0x72,0x7f]
          vmovupd 4064(%rdx), %ymm30

// CHECK: vmovupd 4096(%rdx), %ymm30
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x10,0xb2,0x00,0x10,0x00,0x00]
          vmovupd 4096(%rdx), %ymm30

// CHECK: vmovupd -4096(%rdx), %ymm30
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x10,0x72,0x80]
          vmovupd -4096(%rdx), %ymm30

// CHECK: vmovupd -4128(%rdx), %ymm30
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x10,0xb2,0xe0,0xef,0xff,0xff]
          vmovupd -4128(%rdx), %ymm30

// CHECK: vmovups %xmm29, %xmm20
// CHECK:  encoding: [0x62,0x81,0x7c,0x08,0x10,0xe5]
          vmovups %xmm29, %xmm20

// CHECK: vmovups %xmm29, %xmm20 {%k6}
// CHECK:  encoding: [0x62,0x81,0x7c,0x0e,0x10,0xe5]
          vmovups %xmm29, %xmm20 {%k6}

// CHECK: vmovups %xmm29, %xmm20 {%k6} {z}
// CHECK:  encoding: [0x62,0x81,0x7c,0x8e,0x10,0xe5]
          vmovups %xmm29, %xmm20 {%k6} {z}

// CHECK: vmovups (%rcx), %xmm20
// CHECK:  encoding: [0x62,0xe1,0x7c,0x08,0x10,0x21]
          vmovups (%rcx), %xmm20

// CHECK: vmovups 291(%rax,%r14,8), %xmm20
// CHECK:  encoding: [0x62,0xa1,0x7c,0x08,0x10,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vmovups 291(%rax,%r14,8), %xmm20

// CHECK: vmovups 2032(%rdx), %xmm20
// CHECK:  encoding: [0x62,0xe1,0x7c,0x08,0x10,0x62,0x7f]
          vmovups 2032(%rdx), %xmm20

// CHECK: vmovups 2048(%rdx), %xmm20
// CHECK:  encoding: [0x62,0xe1,0x7c,0x08,0x10,0xa2,0x00,0x08,0x00,0x00]
          vmovups 2048(%rdx), %xmm20

// CHECK: vmovups -2048(%rdx), %xmm20
// CHECK:  encoding: [0x62,0xe1,0x7c,0x08,0x10,0x62,0x80]
          vmovups -2048(%rdx), %xmm20

// CHECK: vmovups -2064(%rdx), %xmm20
// CHECK:  encoding: [0x62,0xe1,0x7c,0x08,0x10,0xa2,0xf0,0xf7,0xff,0xff]
          vmovups -2064(%rdx), %xmm20

// CHECK: vmovups %ymm26, %ymm21
// CHECK:  encoding: [0x62,0x81,0x7c,0x28,0x10,0xea]
          vmovups %ymm26, %ymm21

// CHECK: vmovups %ymm26, %ymm21 {%k6}
// CHECK:  encoding: [0x62,0x81,0x7c,0x2e,0x10,0xea]
          vmovups %ymm26, %ymm21 {%k6}

// CHECK: vmovups %ymm26, %ymm21 {%k6} {z}
// CHECK:  encoding: [0x62,0x81,0x7c,0xae,0x10,0xea]
          vmovups %ymm26, %ymm21 {%k6} {z}

// CHECK: vmovups (%rcx), %ymm21
// CHECK:  encoding: [0x62,0xe1,0x7c,0x28,0x10,0x29]
          vmovups (%rcx), %ymm21

// CHECK: vmovups 291(%rax,%r14,8), %ymm21
// CHECK:  encoding: [0x62,0xa1,0x7c,0x28,0x10,0xac,0xf0,0x23,0x01,0x00,0x00]
          vmovups 291(%rax,%r14,8), %ymm21

// CHECK: vmovups 4064(%rdx), %ymm21
// CHECK:  encoding: [0x62,0xe1,0x7c,0x28,0x10,0x6a,0x7f]
          vmovups 4064(%rdx), %ymm21

// CHECK: vmovups 4096(%rdx), %ymm21
// CHECK:  encoding: [0x62,0xe1,0x7c,0x28,0x10,0xaa,0x00,0x10,0x00,0x00]
          vmovups 4096(%rdx), %ymm21

// CHECK: vmovups -4096(%rdx), %ymm21
// CHECK:  encoding: [0x62,0xe1,0x7c,0x28,0x10,0x6a,0x80]
          vmovups -4096(%rdx), %ymm21

// CHECK: vmovups -4128(%rdx), %ymm21
// CHECK:  encoding: [0x62,0xe1,0x7c,0x28,0x10,0xaa,0xe0,0xef,0xff,0xff]
          vmovups -4128(%rdx), %ymm21

// CHECK: vmulpd %xmm26, %xmm17, %xmm17
// CHECK:  encoding: [0x62,0x81,0xf5,0x00,0x59,0xca]
          vmulpd %xmm26, %xmm17, %xmm17

// CHECK: vmulpd %xmm26, %xmm17, %xmm17 {%k7}
// CHECK:  encoding: [0x62,0x81,0xf5,0x07,0x59,0xca]
          vmulpd %xmm26, %xmm17, %xmm17 {%k7}

// CHECK: vmulpd %xmm26, %xmm17, %xmm17 {%k7} {z}
// CHECK:  encoding: [0x62,0x81,0xf5,0x87,0x59,0xca]
          vmulpd %xmm26, %xmm17, %xmm17 {%k7} {z}

// CHECK: vmulpd (%rcx), %xmm17, %xmm17
// CHECK:  encoding: [0x62,0xe1,0xf5,0x00,0x59,0x09]
          vmulpd (%rcx), %xmm17, %xmm17

// CHECK: vmulpd 291(%rax,%r14,8), %xmm17, %xmm17
// CHECK:  encoding: [0x62,0xa1,0xf5,0x00,0x59,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vmulpd 291(%rax,%r14,8), %xmm17, %xmm17

// CHECK: vmulpd (%rcx){1to2}, %xmm17, %xmm17
// CHECK:  encoding: [0x62,0xe1,0xf5,0x10,0x59,0x09]
          vmulpd (%rcx){1to2}, %xmm17, %xmm17

// CHECK: vmulpd 2032(%rdx), %xmm17, %xmm17
// CHECK:  encoding: [0x62,0xe1,0xf5,0x00,0x59,0x4a,0x7f]
          vmulpd 2032(%rdx), %xmm17, %xmm17

// CHECK: vmulpd 2048(%rdx), %xmm17, %xmm17
// CHECK:  encoding: [0x62,0xe1,0xf5,0x00,0x59,0x8a,0x00,0x08,0x00,0x00]
          vmulpd 2048(%rdx), %xmm17, %xmm17

// CHECK: vmulpd -2048(%rdx), %xmm17, %xmm17
// CHECK:  encoding: [0x62,0xe1,0xf5,0x00,0x59,0x4a,0x80]
          vmulpd -2048(%rdx), %xmm17, %xmm17

// CHECK: vmulpd -2064(%rdx), %xmm17, %xmm17
// CHECK:  encoding: [0x62,0xe1,0xf5,0x00,0x59,0x8a,0xf0,0xf7,0xff,0xff]
          vmulpd -2064(%rdx), %xmm17, %xmm17

// CHECK: vmulpd 1016(%rdx){1to2}, %xmm17, %xmm17
// CHECK:  encoding: [0x62,0xe1,0xf5,0x10,0x59,0x4a,0x7f]
          vmulpd 1016(%rdx){1to2}, %xmm17, %xmm17

// CHECK: vmulpd 1024(%rdx){1to2}, %xmm17, %xmm17
// CHECK:  encoding: [0x62,0xe1,0xf5,0x10,0x59,0x8a,0x00,0x04,0x00,0x00]
          vmulpd 1024(%rdx){1to2}, %xmm17, %xmm17

// CHECK: vmulpd -1024(%rdx){1to2}, %xmm17, %xmm17
// CHECK:  encoding: [0x62,0xe1,0xf5,0x10,0x59,0x4a,0x80]
          vmulpd -1024(%rdx){1to2}, %xmm17, %xmm17

// CHECK: vmulpd -1032(%rdx){1to2}, %xmm17, %xmm17
// CHECK:  encoding: [0x62,0xe1,0xf5,0x10,0x59,0x8a,0xf8,0xfb,0xff,0xff]
          vmulpd -1032(%rdx){1to2}, %xmm17, %xmm17

// CHECK: vmulpd %ymm27, %ymm27, %ymm25
// CHECK:  encoding: [0x62,0x01,0xa5,0x20,0x59,0xcb]
          vmulpd %ymm27, %ymm27, %ymm25

// CHECK: vmulpd %ymm27, %ymm27, %ymm25 {%k3}
// CHECK:  encoding: [0x62,0x01,0xa5,0x23,0x59,0xcb]
          vmulpd %ymm27, %ymm27, %ymm25 {%k3}

// CHECK: vmulpd %ymm27, %ymm27, %ymm25 {%k3} {z}
// CHECK:  encoding: [0x62,0x01,0xa5,0xa3,0x59,0xcb]
          vmulpd %ymm27, %ymm27, %ymm25 {%k3} {z}

// CHECK: vmulpd (%rcx), %ymm27, %ymm25
// CHECK:  encoding: [0x62,0x61,0xa5,0x20,0x59,0x09]
          vmulpd (%rcx), %ymm27, %ymm25

// CHECK: vmulpd 291(%rax,%r14,8), %ymm27, %ymm25
// CHECK:  encoding: [0x62,0x21,0xa5,0x20,0x59,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vmulpd 291(%rax,%r14,8), %ymm27, %ymm25

// CHECK: vmulpd (%rcx){1to4}, %ymm27, %ymm25
// CHECK:  encoding: [0x62,0x61,0xa5,0x30,0x59,0x09]
          vmulpd (%rcx){1to4}, %ymm27, %ymm25

// CHECK: vmulpd 4064(%rdx), %ymm27, %ymm25
// CHECK:  encoding: [0x62,0x61,0xa5,0x20,0x59,0x4a,0x7f]
          vmulpd 4064(%rdx), %ymm27, %ymm25

// CHECK: vmulpd 4096(%rdx), %ymm27, %ymm25
// CHECK:  encoding: [0x62,0x61,0xa5,0x20,0x59,0x8a,0x00,0x10,0x00,0x00]
          vmulpd 4096(%rdx), %ymm27, %ymm25

// CHECK: vmulpd -4096(%rdx), %ymm27, %ymm25
// CHECK:  encoding: [0x62,0x61,0xa5,0x20,0x59,0x4a,0x80]
          vmulpd -4096(%rdx), %ymm27, %ymm25

// CHECK: vmulpd -4128(%rdx), %ymm27, %ymm25
// CHECK:  encoding: [0x62,0x61,0xa5,0x20,0x59,0x8a,0xe0,0xef,0xff,0xff]
          vmulpd -4128(%rdx), %ymm27, %ymm25

// CHECK: vmulpd 1016(%rdx){1to4}, %ymm27, %ymm25
// CHECK:  encoding: [0x62,0x61,0xa5,0x30,0x59,0x4a,0x7f]
          vmulpd 1016(%rdx){1to4}, %ymm27, %ymm25

// CHECK: vmulpd 1024(%rdx){1to4}, %ymm27, %ymm25
// CHECK:  encoding: [0x62,0x61,0xa5,0x30,0x59,0x8a,0x00,0x04,0x00,0x00]
          vmulpd 1024(%rdx){1to4}, %ymm27, %ymm25

// CHECK: vmulpd -1024(%rdx){1to4}, %ymm27, %ymm25
// CHECK:  encoding: [0x62,0x61,0xa5,0x30,0x59,0x4a,0x80]
          vmulpd -1024(%rdx){1to4}, %ymm27, %ymm25

// CHECK: vmulpd -1032(%rdx){1to4}, %ymm27, %ymm25
// CHECK:  encoding: [0x62,0x61,0xa5,0x30,0x59,0x8a,0xf8,0xfb,0xff,0xff]
          vmulpd -1032(%rdx){1to4}, %ymm27, %ymm25

// CHECK: vmulps %xmm21, %xmm17, %xmm29
// CHECK:  encoding: [0x62,0x21,0x74,0x00,0x59,0xed]
          vmulps %xmm21, %xmm17, %xmm29

// CHECK: vmulps %xmm21, %xmm17, %xmm29 {%k2}
// CHECK:  encoding: [0x62,0x21,0x74,0x02,0x59,0xed]
          vmulps %xmm21, %xmm17, %xmm29 {%k2}

// CHECK: vmulps %xmm21, %xmm17, %xmm29 {%k2} {z}
// CHECK:  encoding: [0x62,0x21,0x74,0x82,0x59,0xed]
          vmulps %xmm21, %xmm17, %xmm29 {%k2} {z}

// CHECK: vmulps (%rcx), %xmm17, %xmm29
// CHECK:  encoding: [0x62,0x61,0x74,0x00,0x59,0x29]
          vmulps (%rcx), %xmm17, %xmm29

// CHECK: vmulps 291(%rax,%r14,8), %xmm17, %xmm29
// CHECK:  encoding: [0x62,0x21,0x74,0x00,0x59,0xac,0xf0,0x23,0x01,0x00,0x00]
          vmulps 291(%rax,%r14,8), %xmm17, %xmm29

// CHECK: vmulps (%rcx){1to4}, %xmm17, %xmm29
// CHECK:  encoding: [0x62,0x61,0x74,0x10,0x59,0x29]
          vmulps (%rcx){1to4}, %xmm17, %xmm29

// CHECK: vmulps 2032(%rdx), %xmm17, %xmm29
// CHECK:  encoding: [0x62,0x61,0x74,0x00,0x59,0x6a,0x7f]
          vmulps 2032(%rdx), %xmm17, %xmm29

// CHECK: vmulps 2048(%rdx), %xmm17, %xmm29
// CHECK:  encoding: [0x62,0x61,0x74,0x00,0x59,0xaa,0x00,0x08,0x00,0x00]
          vmulps 2048(%rdx), %xmm17, %xmm29

// CHECK: vmulps -2048(%rdx), %xmm17, %xmm29
// CHECK:  encoding: [0x62,0x61,0x74,0x00,0x59,0x6a,0x80]
          vmulps -2048(%rdx), %xmm17, %xmm29

// CHECK: vmulps -2064(%rdx), %xmm17, %xmm29
// CHECK:  encoding: [0x62,0x61,0x74,0x00,0x59,0xaa,0xf0,0xf7,0xff,0xff]
          vmulps -2064(%rdx), %xmm17, %xmm29

// CHECK: vmulps 508(%rdx){1to4}, %xmm17, %xmm29
// CHECK:  encoding: [0x62,0x61,0x74,0x10,0x59,0x6a,0x7f]
          vmulps 508(%rdx){1to4}, %xmm17, %xmm29

// CHECK: vmulps 512(%rdx){1to4}, %xmm17, %xmm29
// CHECK:  encoding: [0x62,0x61,0x74,0x10,0x59,0xaa,0x00,0x02,0x00,0x00]
          vmulps 512(%rdx){1to4}, %xmm17, %xmm29

// CHECK: vmulps -512(%rdx){1to4}, %xmm17, %xmm29
// CHECK:  encoding: [0x62,0x61,0x74,0x10,0x59,0x6a,0x80]
          vmulps -512(%rdx){1to4}, %xmm17, %xmm29

// CHECK: vmulps -516(%rdx){1to4}, %xmm17, %xmm29
// CHECK:  encoding: [0x62,0x61,0x74,0x10,0x59,0xaa,0xfc,0xfd,0xff,0xff]
          vmulps -516(%rdx){1to4}, %xmm17, %xmm29

// CHECK: vmulps %ymm28, %ymm26, %ymm30
// CHECK:  encoding: [0x62,0x01,0x2c,0x20,0x59,0xf4]
          vmulps %ymm28, %ymm26, %ymm30

// CHECK: vmulps %ymm28, %ymm26, %ymm30 {%k3}
// CHECK:  encoding: [0x62,0x01,0x2c,0x23,0x59,0xf4]
          vmulps %ymm28, %ymm26, %ymm30 {%k3}

// CHECK: vmulps %ymm28, %ymm26, %ymm30 {%k3} {z}
// CHECK:  encoding: [0x62,0x01,0x2c,0xa3,0x59,0xf4]
          vmulps %ymm28, %ymm26, %ymm30 {%k3} {z}

// CHECK: vmulps (%rcx), %ymm26, %ymm30
// CHECK:  encoding: [0x62,0x61,0x2c,0x20,0x59,0x31]
          vmulps (%rcx), %ymm26, %ymm30

// CHECK: vmulps 291(%rax,%r14,8), %ymm26, %ymm30
// CHECK:  encoding: [0x62,0x21,0x2c,0x20,0x59,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vmulps 291(%rax,%r14,8), %ymm26, %ymm30

// CHECK: vmulps (%rcx){1to8}, %ymm26, %ymm30
// CHECK:  encoding: [0x62,0x61,0x2c,0x30,0x59,0x31]
          vmulps (%rcx){1to8}, %ymm26, %ymm30

// CHECK: vmulps 4064(%rdx), %ymm26, %ymm30
// CHECK:  encoding: [0x62,0x61,0x2c,0x20,0x59,0x72,0x7f]
          vmulps 4064(%rdx), %ymm26, %ymm30

// CHECK: vmulps 4096(%rdx), %ymm26, %ymm30
// CHECK:  encoding: [0x62,0x61,0x2c,0x20,0x59,0xb2,0x00,0x10,0x00,0x00]
          vmulps 4096(%rdx), %ymm26, %ymm30

// CHECK: vmulps -4096(%rdx), %ymm26, %ymm30
// CHECK:  encoding: [0x62,0x61,0x2c,0x20,0x59,0x72,0x80]
          vmulps -4096(%rdx), %ymm26, %ymm30

// CHECK: vmulps -4128(%rdx), %ymm26, %ymm30
// CHECK:  encoding: [0x62,0x61,0x2c,0x20,0x59,0xb2,0xe0,0xef,0xff,0xff]
          vmulps -4128(%rdx), %ymm26, %ymm30

// CHECK: vmulps 508(%rdx){1to8}, %ymm26, %ymm30
// CHECK:  encoding: [0x62,0x61,0x2c,0x30,0x59,0x72,0x7f]
          vmulps 508(%rdx){1to8}, %ymm26, %ymm30

// CHECK: vmulps 512(%rdx){1to8}, %ymm26, %ymm30
// CHECK:  encoding: [0x62,0x61,0x2c,0x30,0x59,0xb2,0x00,0x02,0x00,0x00]
          vmulps 512(%rdx){1to8}, %ymm26, %ymm30

// CHECK: vmulps -512(%rdx){1to8}, %ymm26, %ymm30
// CHECK:  encoding: [0x62,0x61,0x2c,0x30,0x59,0x72,0x80]
          vmulps -512(%rdx){1to8}, %ymm26, %ymm30

// CHECK: vmulps -516(%rdx){1to8}, %ymm26, %ymm30
// CHECK:  encoding: [0x62,0x61,0x2c,0x30,0x59,0xb2,0xfc,0xfd,0xff,0xff]
          vmulps -516(%rdx){1to8}, %ymm26, %ymm30

// CHECK: vpaddd %xmm26, %xmm19, %xmm21
// CHECK:  encoding: [0x62,0x81,0x65,0x00,0xfe,0xea]
          vpaddd %xmm26, %xmm19, %xmm21

// CHECK: vpaddd %xmm26, %xmm19, %xmm21 {%k5}
// CHECK:  encoding: [0x62,0x81,0x65,0x05,0xfe,0xea]
          vpaddd %xmm26, %xmm19, %xmm21 {%k5}

// CHECK: vpaddd %xmm26, %xmm19, %xmm21 {%k5} {z}
// CHECK:  encoding: [0x62,0x81,0x65,0x85,0xfe,0xea]
          vpaddd %xmm26, %xmm19, %xmm21 {%k5} {z}

// CHECK: vpaddd (%rcx), %xmm19, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x65,0x00,0xfe,0x29]
          vpaddd (%rcx), %xmm19, %xmm21

// CHECK: vpaddd 291(%rax,%r14,8), %xmm19, %xmm21
// CHECK:  encoding: [0x62,0xa1,0x65,0x00,0xfe,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpaddd 291(%rax,%r14,8), %xmm19, %xmm21

// CHECK: vpaddd (%rcx){1to4}, %xmm19, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x65,0x10,0xfe,0x29]
          vpaddd (%rcx){1to4}, %xmm19, %xmm21

// CHECK: vpaddd 2032(%rdx), %xmm19, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x65,0x00,0xfe,0x6a,0x7f]
          vpaddd 2032(%rdx), %xmm19, %xmm21

// CHECK: vpaddd 2048(%rdx), %xmm19, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x65,0x00,0xfe,0xaa,0x00,0x08,0x00,0x00]
          vpaddd 2048(%rdx), %xmm19, %xmm21

// CHECK: vpaddd -2048(%rdx), %xmm19, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x65,0x00,0xfe,0x6a,0x80]
          vpaddd -2048(%rdx), %xmm19, %xmm21

// CHECK: vpaddd -2064(%rdx), %xmm19, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x65,0x00,0xfe,0xaa,0xf0,0xf7,0xff,0xff]
          vpaddd -2064(%rdx), %xmm19, %xmm21

// CHECK: vpaddd 508(%rdx){1to4}, %xmm19, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x65,0x10,0xfe,0x6a,0x7f]
          vpaddd 508(%rdx){1to4}, %xmm19, %xmm21

// CHECK: vpaddd 512(%rdx){1to4}, %xmm19, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x65,0x10,0xfe,0xaa,0x00,0x02,0x00,0x00]
          vpaddd 512(%rdx){1to4}, %xmm19, %xmm21

// CHECK: vpaddd -512(%rdx){1to4}, %xmm19, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x65,0x10,0xfe,0x6a,0x80]
          vpaddd -512(%rdx){1to4}, %xmm19, %xmm21

// CHECK: vpaddd -516(%rdx){1to4}, %xmm19, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x65,0x10,0xfe,0xaa,0xfc,0xfd,0xff,0xff]
          vpaddd -516(%rdx){1to4}, %xmm19, %xmm21

// CHECK: vpaddd %ymm17, %ymm23, %ymm29
// CHECK:  encoding: [0x62,0x21,0x45,0x20,0xfe,0xe9]
          vpaddd %ymm17, %ymm23, %ymm29

// CHECK: vpaddd %ymm17, %ymm23, %ymm29 {%k5}
// CHECK:  encoding: [0x62,0x21,0x45,0x25,0xfe,0xe9]
          vpaddd %ymm17, %ymm23, %ymm29 {%k5}

// CHECK: vpaddd %ymm17, %ymm23, %ymm29 {%k5} {z}
// CHECK:  encoding: [0x62,0x21,0x45,0xa5,0xfe,0xe9]
          vpaddd %ymm17, %ymm23, %ymm29 {%k5} {z}

// CHECK: vpaddd (%rcx), %ymm23, %ymm29
// CHECK:  encoding: [0x62,0x61,0x45,0x20,0xfe,0x29]
          vpaddd (%rcx), %ymm23, %ymm29

// CHECK: vpaddd 291(%rax,%r14,8), %ymm23, %ymm29
// CHECK:  encoding: [0x62,0x21,0x45,0x20,0xfe,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpaddd 291(%rax,%r14,8), %ymm23, %ymm29

// CHECK: vpaddd (%rcx){1to8}, %ymm23, %ymm29
// CHECK:  encoding: [0x62,0x61,0x45,0x30,0xfe,0x29]
          vpaddd (%rcx){1to8}, %ymm23, %ymm29

// CHECK: vpaddd 4064(%rdx), %ymm23, %ymm29
// CHECK:  encoding: [0x62,0x61,0x45,0x20,0xfe,0x6a,0x7f]
          vpaddd 4064(%rdx), %ymm23, %ymm29

// CHECK: vpaddd 4096(%rdx), %ymm23, %ymm29
// CHECK:  encoding: [0x62,0x61,0x45,0x20,0xfe,0xaa,0x00,0x10,0x00,0x00]
          vpaddd 4096(%rdx), %ymm23, %ymm29

// CHECK: vpaddd -4096(%rdx), %ymm23, %ymm29
// CHECK:  encoding: [0x62,0x61,0x45,0x20,0xfe,0x6a,0x80]
          vpaddd -4096(%rdx), %ymm23, %ymm29

// CHECK: vpaddd -4128(%rdx), %ymm23, %ymm29
// CHECK:  encoding: [0x62,0x61,0x45,0x20,0xfe,0xaa,0xe0,0xef,0xff,0xff]
          vpaddd -4128(%rdx), %ymm23, %ymm29

// CHECK: vpaddd 508(%rdx){1to8}, %ymm23, %ymm29
// CHECK:  encoding: [0x62,0x61,0x45,0x30,0xfe,0x6a,0x7f]
          vpaddd 508(%rdx){1to8}, %ymm23, %ymm29

// CHECK: vpaddd 512(%rdx){1to8}, %ymm23, %ymm29
// CHECK:  encoding: [0x62,0x61,0x45,0x30,0xfe,0xaa,0x00,0x02,0x00,0x00]
          vpaddd 512(%rdx){1to8}, %ymm23, %ymm29

// CHECK: vpaddd -512(%rdx){1to8}, %ymm23, %ymm29
// CHECK:  encoding: [0x62,0x61,0x45,0x30,0xfe,0x6a,0x80]
          vpaddd -512(%rdx){1to8}, %ymm23, %ymm29

// CHECK: vpaddd -516(%rdx){1to8}, %ymm23, %ymm29
// CHECK:  encoding: [0x62,0x61,0x45,0x30,0xfe,0xaa,0xfc,0xfd,0xff,0xff]
          vpaddd -516(%rdx){1to8}, %ymm23, %ymm29

// CHECK: vpaddq %xmm26, %xmm17, %xmm29
// CHECK:  encoding: [0x62,0x01,0xf5,0x00,0xd4,0xea]
          vpaddq %xmm26, %xmm17, %xmm29

// CHECK: vpaddq %xmm26, %xmm17, %xmm29 {%k2}
// CHECK:  encoding: [0x62,0x01,0xf5,0x02,0xd4,0xea]
          vpaddq %xmm26, %xmm17, %xmm29 {%k2}

// CHECK: vpaddq %xmm26, %xmm17, %xmm29 {%k2} {z}
// CHECK:  encoding: [0x62,0x01,0xf5,0x82,0xd4,0xea]
          vpaddq %xmm26, %xmm17, %xmm29 {%k2} {z}

// CHECK: vpaddq (%rcx), %xmm17, %xmm29
// CHECK:  encoding: [0x62,0x61,0xf5,0x00,0xd4,0x29]
          vpaddq (%rcx), %xmm17, %xmm29

// CHECK: vpaddq 291(%rax,%r14,8), %xmm17, %xmm29
// CHECK:  encoding: [0x62,0x21,0xf5,0x00,0xd4,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpaddq 291(%rax,%r14,8), %xmm17, %xmm29

// CHECK: vpaddq (%rcx){1to2}, %xmm17, %xmm29
// CHECK:  encoding: [0x62,0x61,0xf5,0x10,0xd4,0x29]
          vpaddq (%rcx){1to2}, %xmm17, %xmm29

// CHECK: vpaddq 2032(%rdx), %xmm17, %xmm29
// CHECK:  encoding: [0x62,0x61,0xf5,0x00,0xd4,0x6a,0x7f]
          vpaddq 2032(%rdx), %xmm17, %xmm29

// CHECK: vpaddq 2048(%rdx), %xmm17, %xmm29
// CHECK:  encoding: [0x62,0x61,0xf5,0x00,0xd4,0xaa,0x00,0x08,0x00,0x00]
          vpaddq 2048(%rdx), %xmm17, %xmm29

// CHECK: vpaddq -2048(%rdx), %xmm17, %xmm29
// CHECK:  encoding: [0x62,0x61,0xf5,0x00,0xd4,0x6a,0x80]
          vpaddq -2048(%rdx), %xmm17, %xmm29

// CHECK: vpaddq -2064(%rdx), %xmm17, %xmm29
// CHECK:  encoding: [0x62,0x61,0xf5,0x00,0xd4,0xaa,0xf0,0xf7,0xff,0xff]
          vpaddq -2064(%rdx), %xmm17, %xmm29

// CHECK: vpaddq 1016(%rdx){1to2}, %xmm17, %xmm29
// CHECK:  encoding: [0x62,0x61,0xf5,0x10,0xd4,0x6a,0x7f]
          vpaddq 1016(%rdx){1to2}, %xmm17, %xmm29

// CHECK: vpaddq 1024(%rdx){1to2}, %xmm17, %xmm29
// CHECK:  encoding: [0x62,0x61,0xf5,0x10,0xd4,0xaa,0x00,0x04,0x00,0x00]
          vpaddq 1024(%rdx){1to2}, %xmm17, %xmm29

// CHECK: vpaddq -1024(%rdx){1to2}, %xmm17, %xmm29
// CHECK:  encoding: [0x62,0x61,0xf5,0x10,0xd4,0x6a,0x80]
          vpaddq -1024(%rdx){1to2}, %xmm17, %xmm29

// CHECK: vpaddq -1032(%rdx){1to2}, %xmm17, %xmm29
// CHECK:  encoding: [0x62,0x61,0xf5,0x10,0xd4,0xaa,0xf8,0xfb,0xff,0xff]
          vpaddq -1032(%rdx){1to2}, %xmm17, %xmm29

// CHECK: vpaddq %ymm18, %ymm25, %ymm20
// CHECK:  encoding: [0x62,0xa1,0xb5,0x20,0xd4,0xe2]
          vpaddq %ymm18, %ymm25, %ymm20

// CHECK: vpaddq %ymm18, %ymm25, %ymm20 {%k6}
// CHECK:  encoding: [0x62,0xa1,0xb5,0x26,0xd4,0xe2]
          vpaddq %ymm18, %ymm25, %ymm20 {%k6}

// CHECK: vpaddq %ymm18, %ymm25, %ymm20 {%k6} {z}
// CHECK:  encoding: [0x62,0xa1,0xb5,0xa6,0xd4,0xe2]
          vpaddq %ymm18, %ymm25, %ymm20 {%k6} {z}

// CHECK: vpaddq (%rcx), %ymm25, %ymm20
// CHECK:  encoding: [0x62,0xe1,0xb5,0x20,0xd4,0x21]
          vpaddq (%rcx), %ymm25, %ymm20

// CHECK: vpaddq 291(%rax,%r14,8), %ymm25, %ymm20
// CHECK:  encoding: [0x62,0xa1,0xb5,0x20,0xd4,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpaddq 291(%rax,%r14,8), %ymm25, %ymm20

// CHECK: vpaddq (%rcx){1to4}, %ymm25, %ymm20
// CHECK:  encoding: [0x62,0xe1,0xb5,0x30,0xd4,0x21]
          vpaddq (%rcx){1to4}, %ymm25, %ymm20

// CHECK: vpaddq 4064(%rdx), %ymm25, %ymm20
// CHECK:  encoding: [0x62,0xe1,0xb5,0x20,0xd4,0x62,0x7f]
          vpaddq 4064(%rdx), %ymm25, %ymm20

// CHECK: vpaddq 4096(%rdx), %ymm25, %ymm20
// CHECK:  encoding: [0x62,0xe1,0xb5,0x20,0xd4,0xa2,0x00,0x10,0x00,0x00]
          vpaddq 4096(%rdx), %ymm25, %ymm20

// CHECK: vpaddq -4096(%rdx), %ymm25, %ymm20
// CHECK:  encoding: [0x62,0xe1,0xb5,0x20,0xd4,0x62,0x80]
          vpaddq -4096(%rdx), %ymm25, %ymm20

// CHECK: vpaddq -4128(%rdx), %ymm25, %ymm20
// CHECK:  encoding: [0x62,0xe1,0xb5,0x20,0xd4,0xa2,0xe0,0xef,0xff,0xff]
          vpaddq -4128(%rdx), %ymm25, %ymm20

// CHECK: vpaddq 1016(%rdx){1to4}, %ymm25, %ymm20
// CHECK:  encoding: [0x62,0xe1,0xb5,0x30,0xd4,0x62,0x7f]
          vpaddq 1016(%rdx){1to4}, %ymm25, %ymm20

// CHECK: vpaddq 1024(%rdx){1to4}, %ymm25, %ymm20
// CHECK:  encoding: [0x62,0xe1,0xb5,0x30,0xd4,0xa2,0x00,0x04,0x00,0x00]
          vpaddq 1024(%rdx){1to4}, %ymm25, %ymm20

// CHECK: vpaddq -1024(%rdx){1to4}, %ymm25, %ymm20
// CHECK:  encoding: [0x62,0xe1,0xb5,0x30,0xd4,0x62,0x80]
          vpaddq -1024(%rdx){1to4}, %ymm25, %ymm20

// CHECK: vpaddq -1032(%rdx){1to4}, %ymm25, %ymm20
// CHECK:  encoding: [0x62,0xe1,0xb5,0x30,0xd4,0xa2,0xf8,0xfb,0xff,0xff]
          vpaddq -1032(%rdx){1to4}, %ymm25, %ymm20

// CHECK: vpandd %xmm18, %xmm26, %xmm24
// CHECK:  encoding: [0x62,0x21,0x2d,0x00,0xdb,0xc2]
          vpandd %xmm18, %xmm26, %xmm24

// CHECK: vpandd %xmm18, %xmm26, %xmm24 {%k2}
// CHECK:  encoding: [0x62,0x21,0x2d,0x02,0xdb,0xc2]
          vpandd %xmm18, %xmm26, %xmm24 {%k2}

// CHECK: vpandd %xmm18, %xmm26, %xmm24 {%k2} {z}
// CHECK:  encoding: [0x62,0x21,0x2d,0x82,0xdb,0xc2]
          vpandd %xmm18, %xmm26, %xmm24 {%k2} {z}

// CHECK: vpandd (%rcx), %xmm26, %xmm24
// CHECK:  encoding: [0x62,0x61,0x2d,0x00,0xdb,0x01]
          vpandd (%rcx), %xmm26, %xmm24

// CHECK: vpandd 291(%rax,%r14,8), %xmm26, %xmm24
// CHECK:  encoding: [0x62,0x21,0x2d,0x00,0xdb,0x84,0xf0,0x23,0x01,0x00,0x00]
          vpandd 291(%rax,%r14,8), %xmm26, %xmm24

// CHECK: vpandd (%rcx){1to4}, %xmm26, %xmm24
// CHECK:  encoding: [0x62,0x61,0x2d,0x10,0xdb,0x01]
          vpandd (%rcx){1to4}, %xmm26, %xmm24

// CHECK: vpandd 2032(%rdx), %xmm26, %xmm24
// CHECK:  encoding: [0x62,0x61,0x2d,0x00,0xdb,0x42,0x7f]
          vpandd 2032(%rdx), %xmm26, %xmm24

// CHECK: vpandd 2048(%rdx), %xmm26, %xmm24
// CHECK:  encoding: [0x62,0x61,0x2d,0x00,0xdb,0x82,0x00,0x08,0x00,0x00]
          vpandd 2048(%rdx), %xmm26, %xmm24

// CHECK: vpandd -2048(%rdx), %xmm26, %xmm24
// CHECK:  encoding: [0x62,0x61,0x2d,0x00,0xdb,0x42,0x80]
          vpandd -2048(%rdx), %xmm26, %xmm24

// CHECK: vpandd -2064(%rdx), %xmm26, %xmm24
// CHECK:  encoding: [0x62,0x61,0x2d,0x00,0xdb,0x82,0xf0,0xf7,0xff,0xff]
          vpandd -2064(%rdx), %xmm26, %xmm24

// CHECK: vpandd 508(%rdx){1to4}, %xmm26, %xmm24
// CHECK:  encoding: [0x62,0x61,0x2d,0x10,0xdb,0x42,0x7f]
          vpandd 508(%rdx){1to4}, %xmm26, %xmm24

// CHECK: vpandd 512(%rdx){1to4}, %xmm26, %xmm24
// CHECK:  encoding: [0x62,0x61,0x2d,0x10,0xdb,0x82,0x00,0x02,0x00,0x00]
          vpandd 512(%rdx){1to4}, %xmm26, %xmm24

// CHECK: vpandd -512(%rdx){1to4}, %xmm26, %xmm24
// CHECK:  encoding: [0x62,0x61,0x2d,0x10,0xdb,0x42,0x80]
          vpandd -512(%rdx){1to4}, %xmm26, %xmm24

// CHECK: vpandd -516(%rdx){1to4}, %xmm26, %xmm24
// CHECK:  encoding: [0x62,0x61,0x2d,0x10,0xdb,0x82,0xfc,0xfd,0xff,0xff]
          vpandd -516(%rdx){1to4}, %xmm26, %xmm24

// CHECK: vpandd %ymm20, %ymm21, %ymm18
// CHECK:  encoding: [0x62,0xa1,0x55,0x20,0xdb,0xd4]
          vpandd %ymm20, %ymm21, %ymm18

// CHECK: vpandd %ymm20, %ymm21, %ymm18 {%k3}
// CHECK:  encoding: [0x62,0xa1,0x55,0x23,0xdb,0xd4]
          vpandd %ymm20, %ymm21, %ymm18 {%k3}

// CHECK: vpandd %ymm20, %ymm21, %ymm18 {%k3} {z}
// CHECK:  encoding: [0x62,0xa1,0x55,0xa3,0xdb,0xd4]
          vpandd %ymm20, %ymm21, %ymm18 {%k3} {z}

// CHECK: vpandd (%rcx), %ymm21, %ymm18
// CHECK:  encoding: [0x62,0xe1,0x55,0x20,0xdb,0x11]
          vpandd (%rcx), %ymm21, %ymm18

// CHECK: vpandd 291(%rax,%r14,8), %ymm21, %ymm18
// CHECK:  encoding: [0x62,0xa1,0x55,0x20,0xdb,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpandd 291(%rax,%r14,8), %ymm21, %ymm18

// CHECK: vpandd (%rcx){1to8}, %ymm21, %ymm18
// CHECK:  encoding: [0x62,0xe1,0x55,0x30,0xdb,0x11]
          vpandd (%rcx){1to8}, %ymm21, %ymm18

// CHECK: vpandd 4064(%rdx), %ymm21, %ymm18
// CHECK:  encoding: [0x62,0xe1,0x55,0x20,0xdb,0x52,0x7f]
          vpandd 4064(%rdx), %ymm21, %ymm18

// CHECK: vpandd 4096(%rdx), %ymm21, %ymm18
// CHECK:  encoding: [0x62,0xe1,0x55,0x20,0xdb,0x92,0x00,0x10,0x00,0x00]
          vpandd 4096(%rdx), %ymm21, %ymm18

// CHECK: vpandd -4096(%rdx), %ymm21, %ymm18
// CHECK:  encoding: [0x62,0xe1,0x55,0x20,0xdb,0x52,0x80]
          vpandd -4096(%rdx), %ymm21, %ymm18

// CHECK: vpandd -4128(%rdx), %ymm21, %ymm18
// CHECK:  encoding: [0x62,0xe1,0x55,0x20,0xdb,0x92,0xe0,0xef,0xff,0xff]
          vpandd -4128(%rdx), %ymm21, %ymm18

// CHECK: vpandd 508(%rdx){1to8}, %ymm21, %ymm18
// CHECK:  encoding: [0x62,0xe1,0x55,0x30,0xdb,0x52,0x7f]
          vpandd 508(%rdx){1to8}, %ymm21, %ymm18

// CHECK: vpandd 512(%rdx){1to8}, %ymm21, %ymm18
// CHECK:  encoding: [0x62,0xe1,0x55,0x30,0xdb,0x92,0x00,0x02,0x00,0x00]
          vpandd 512(%rdx){1to8}, %ymm21, %ymm18

// CHECK: vpandd -512(%rdx){1to8}, %ymm21, %ymm18
// CHECK:  encoding: [0x62,0xe1,0x55,0x30,0xdb,0x52,0x80]
          vpandd -512(%rdx){1to8}, %ymm21, %ymm18

// CHECK: vpandd -516(%rdx){1to8}, %ymm21, %ymm18
// CHECK:  encoding: [0x62,0xe1,0x55,0x30,0xdb,0x92,0xfc,0xfd,0xff,0xff]
          vpandd -516(%rdx){1to8}, %ymm21, %ymm18

// CHECK: vpandnd %xmm22, %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x21,0x75,0x00,0xdf,0xc6]
          vpandnd %xmm22, %xmm17, %xmm24

// CHECK: vpandnd %xmm22, %xmm17, %xmm24 {%k2}
// CHECK:  encoding: [0x62,0x21,0x75,0x02,0xdf,0xc6]
          vpandnd %xmm22, %xmm17, %xmm24 {%k2}

// CHECK: vpandnd %xmm22, %xmm17, %xmm24 {%k2} {z}
// CHECK:  encoding: [0x62,0x21,0x75,0x82,0xdf,0xc6]
          vpandnd %xmm22, %xmm17, %xmm24 {%k2} {z}

// CHECK: vpandnd (%rcx), %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x61,0x75,0x00,0xdf,0x01]
          vpandnd (%rcx), %xmm17, %xmm24

// CHECK: vpandnd 291(%rax,%r14,8), %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x21,0x75,0x00,0xdf,0x84,0xf0,0x23,0x01,0x00,0x00]
          vpandnd 291(%rax,%r14,8), %xmm17, %xmm24

// CHECK: vpandnd (%rcx){1to4}, %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x61,0x75,0x10,0xdf,0x01]
          vpandnd (%rcx){1to4}, %xmm17, %xmm24

// CHECK: vpandnd 2032(%rdx), %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x61,0x75,0x00,0xdf,0x42,0x7f]
          vpandnd 2032(%rdx), %xmm17, %xmm24

// CHECK: vpandnd 2048(%rdx), %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x61,0x75,0x00,0xdf,0x82,0x00,0x08,0x00,0x00]
          vpandnd 2048(%rdx), %xmm17, %xmm24

// CHECK: vpandnd -2048(%rdx), %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x61,0x75,0x00,0xdf,0x42,0x80]
          vpandnd -2048(%rdx), %xmm17, %xmm24

// CHECK: vpandnd -2064(%rdx), %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x61,0x75,0x00,0xdf,0x82,0xf0,0xf7,0xff,0xff]
          vpandnd -2064(%rdx), %xmm17, %xmm24

// CHECK: vpandnd 508(%rdx){1to4}, %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x61,0x75,0x10,0xdf,0x42,0x7f]
          vpandnd 508(%rdx){1to4}, %xmm17, %xmm24

// CHECK: vpandnd 512(%rdx){1to4}, %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x61,0x75,0x10,0xdf,0x82,0x00,0x02,0x00,0x00]
          vpandnd 512(%rdx){1to4}, %xmm17, %xmm24

// CHECK: vpandnd -512(%rdx){1to4}, %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x61,0x75,0x10,0xdf,0x42,0x80]
          vpandnd -512(%rdx){1to4}, %xmm17, %xmm24

// CHECK: vpandnd -516(%rdx){1to4}, %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x61,0x75,0x10,0xdf,0x82,0xfc,0xfd,0xff,0xff]
          vpandnd -516(%rdx){1to4}, %xmm17, %xmm24

// CHECK: vpandnd %ymm17, %ymm27, %ymm19
// CHECK:  encoding: [0x62,0xa1,0x25,0x20,0xdf,0xd9]
          vpandnd %ymm17, %ymm27, %ymm19

// CHECK: vpandnd %ymm17, %ymm27, %ymm19 {%k2}
// CHECK:  encoding: [0x62,0xa1,0x25,0x22,0xdf,0xd9]
          vpandnd %ymm17, %ymm27, %ymm19 {%k2}

// CHECK: vpandnd %ymm17, %ymm27, %ymm19 {%k2} {z}
// CHECK:  encoding: [0x62,0xa1,0x25,0xa2,0xdf,0xd9]
          vpandnd %ymm17, %ymm27, %ymm19 {%k2} {z}

// CHECK: vpandnd (%rcx), %ymm27, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x25,0x20,0xdf,0x19]
          vpandnd (%rcx), %ymm27, %ymm19

// CHECK: vpandnd 291(%rax,%r14,8), %ymm27, %ymm19
// CHECK:  encoding: [0x62,0xa1,0x25,0x20,0xdf,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpandnd 291(%rax,%r14,8), %ymm27, %ymm19

// CHECK: vpandnd (%rcx){1to8}, %ymm27, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x25,0x30,0xdf,0x19]
          vpandnd (%rcx){1to8}, %ymm27, %ymm19

// CHECK: vpandnd 4064(%rdx), %ymm27, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x25,0x20,0xdf,0x5a,0x7f]
          vpandnd 4064(%rdx), %ymm27, %ymm19

// CHECK: vpandnd 4096(%rdx), %ymm27, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x25,0x20,0xdf,0x9a,0x00,0x10,0x00,0x00]
          vpandnd 4096(%rdx), %ymm27, %ymm19

// CHECK: vpandnd -4096(%rdx), %ymm27, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x25,0x20,0xdf,0x5a,0x80]
          vpandnd -4096(%rdx), %ymm27, %ymm19

// CHECK: vpandnd -4128(%rdx), %ymm27, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x25,0x20,0xdf,0x9a,0xe0,0xef,0xff,0xff]
          vpandnd -4128(%rdx), %ymm27, %ymm19

// CHECK: vpandnd 508(%rdx){1to8}, %ymm27, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x25,0x30,0xdf,0x5a,0x7f]
          vpandnd 508(%rdx){1to8}, %ymm27, %ymm19

// CHECK: vpandnd 512(%rdx){1to8}, %ymm27, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x25,0x30,0xdf,0x9a,0x00,0x02,0x00,0x00]
          vpandnd 512(%rdx){1to8}, %ymm27, %ymm19

// CHECK: vpandnd -512(%rdx){1to8}, %ymm27, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x25,0x30,0xdf,0x5a,0x80]
          vpandnd -512(%rdx){1to8}, %ymm27, %ymm19

// CHECK: vpandnd -516(%rdx){1to8}, %ymm27, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x25,0x30,0xdf,0x9a,0xfc,0xfd,0xff,0xff]
          vpandnd -516(%rdx){1to8}, %ymm27, %ymm19

// CHECK: vpandnq %xmm20, %xmm28, %xmm23
// CHECK:  encoding: [0x62,0xa1,0x9d,0x00,0xdf,0xfc]
          vpandnq %xmm20, %xmm28, %xmm23

// CHECK: vpandnq %xmm20, %xmm28, %xmm23 {%k7}
// CHECK:  encoding: [0x62,0xa1,0x9d,0x07,0xdf,0xfc]
          vpandnq %xmm20, %xmm28, %xmm23 {%k7}

// CHECK: vpandnq %xmm20, %xmm28, %xmm23 {%k7} {z}
// CHECK:  encoding: [0x62,0xa1,0x9d,0x87,0xdf,0xfc]
          vpandnq %xmm20, %xmm28, %xmm23 {%k7} {z}

// CHECK: vpandnq (%rcx), %xmm28, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x9d,0x00,0xdf,0x39]
          vpandnq (%rcx), %xmm28, %xmm23

// CHECK: vpandnq 291(%rax,%r14,8), %xmm28, %xmm23
// CHECK:  encoding: [0x62,0xa1,0x9d,0x00,0xdf,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vpandnq 291(%rax,%r14,8), %xmm28, %xmm23

// CHECK: vpandnq (%rcx){1to2}, %xmm28, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x9d,0x10,0xdf,0x39]
          vpandnq (%rcx){1to2}, %xmm28, %xmm23

// CHECK: vpandnq 2032(%rdx), %xmm28, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x9d,0x00,0xdf,0x7a,0x7f]
          vpandnq 2032(%rdx), %xmm28, %xmm23

// CHECK: vpandnq 2048(%rdx), %xmm28, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x9d,0x00,0xdf,0xba,0x00,0x08,0x00,0x00]
          vpandnq 2048(%rdx), %xmm28, %xmm23

// CHECK: vpandnq -2048(%rdx), %xmm28, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x9d,0x00,0xdf,0x7a,0x80]
          vpandnq -2048(%rdx), %xmm28, %xmm23

// CHECK: vpandnq -2064(%rdx), %xmm28, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x9d,0x00,0xdf,0xba,0xf0,0xf7,0xff,0xff]
          vpandnq -2064(%rdx), %xmm28, %xmm23

// CHECK: vpandnq 1016(%rdx){1to2}, %xmm28, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x9d,0x10,0xdf,0x7a,0x7f]
          vpandnq 1016(%rdx){1to2}, %xmm28, %xmm23

// CHECK: vpandnq 1024(%rdx){1to2}, %xmm28, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x9d,0x10,0xdf,0xba,0x00,0x04,0x00,0x00]
          vpandnq 1024(%rdx){1to2}, %xmm28, %xmm23

// CHECK: vpandnq -1024(%rdx){1to2}, %xmm28, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x9d,0x10,0xdf,0x7a,0x80]
          vpandnq -1024(%rdx){1to2}, %xmm28, %xmm23

// CHECK: vpandnq -1032(%rdx){1to2}, %xmm28, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x9d,0x10,0xdf,0xba,0xf8,0xfb,0xff,0xff]
          vpandnq -1032(%rdx){1to2}, %xmm28, %xmm23

// CHECK: vpandnq %ymm28, %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x01,0xdd,0x20,0xdf,0xec]
          vpandnq %ymm28, %ymm20, %ymm29

// CHECK: vpandnq %ymm28, %ymm20, %ymm29 {%k1}
// CHECK:  encoding: [0x62,0x01,0xdd,0x21,0xdf,0xec]
          vpandnq %ymm28, %ymm20, %ymm29 {%k1}

// CHECK: vpandnq %ymm28, %ymm20, %ymm29 {%k1} {z}
// CHECK:  encoding: [0x62,0x01,0xdd,0xa1,0xdf,0xec]
          vpandnq %ymm28, %ymm20, %ymm29 {%k1} {z}

// CHECK: vpandnq (%rcx), %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x61,0xdd,0x20,0xdf,0x29]
          vpandnq (%rcx), %ymm20, %ymm29

// CHECK: vpandnq 291(%rax,%r14,8), %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x21,0xdd,0x20,0xdf,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpandnq 291(%rax,%r14,8), %ymm20, %ymm29

// CHECK: vpandnq (%rcx){1to4}, %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x61,0xdd,0x30,0xdf,0x29]
          vpandnq (%rcx){1to4}, %ymm20, %ymm29

// CHECK: vpandnq 4064(%rdx), %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x61,0xdd,0x20,0xdf,0x6a,0x7f]
          vpandnq 4064(%rdx), %ymm20, %ymm29

// CHECK: vpandnq 4096(%rdx), %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x61,0xdd,0x20,0xdf,0xaa,0x00,0x10,0x00,0x00]
          vpandnq 4096(%rdx), %ymm20, %ymm29

// CHECK: vpandnq -4096(%rdx), %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x61,0xdd,0x20,0xdf,0x6a,0x80]
          vpandnq -4096(%rdx), %ymm20, %ymm29

// CHECK: vpandnq -4128(%rdx), %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x61,0xdd,0x20,0xdf,0xaa,0xe0,0xef,0xff,0xff]
          vpandnq -4128(%rdx), %ymm20, %ymm29

// CHECK: vpandnq 1016(%rdx){1to4}, %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x61,0xdd,0x30,0xdf,0x6a,0x7f]
          vpandnq 1016(%rdx){1to4}, %ymm20, %ymm29

// CHECK: vpandnq 1024(%rdx){1to4}, %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x61,0xdd,0x30,0xdf,0xaa,0x00,0x04,0x00,0x00]
          vpandnq 1024(%rdx){1to4}, %ymm20, %ymm29

// CHECK: vpandnq -1024(%rdx){1to4}, %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x61,0xdd,0x30,0xdf,0x6a,0x80]
          vpandnq -1024(%rdx){1to4}, %ymm20, %ymm29

// CHECK: vpandnq -1032(%rdx){1to4}, %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x61,0xdd,0x30,0xdf,0xaa,0xf8,0xfb,0xff,0xff]
          vpandnq -1032(%rdx){1to4}, %ymm20, %ymm29

// CHECK: vpandq %xmm25, %xmm19, %xmm22
// CHECK:  encoding: [0x62,0x81,0xe5,0x00,0xdb,0xf1]
          vpandq %xmm25, %xmm19, %xmm22

// CHECK: vpandq %xmm25, %xmm19, %xmm22 {%k5}
// CHECK:  encoding: [0x62,0x81,0xe5,0x05,0xdb,0xf1]
          vpandq %xmm25, %xmm19, %xmm22 {%k5}

// CHECK: vpandq %xmm25, %xmm19, %xmm22 {%k5} {z}
// CHECK:  encoding: [0x62,0x81,0xe5,0x85,0xdb,0xf1]
          vpandq %xmm25, %xmm19, %xmm22 {%k5} {z}

// CHECK: vpandq (%rcx), %xmm19, %xmm22
// CHECK:  encoding: [0x62,0xe1,0xe5,0x00,0xdb,0x31]
          vpandq (%rcx), %xmm19, %xmm22

// CHECK: vpandq 291(%rax,%r14,8), %xmm19, %xmm22
// CHECK:  encoding: [0x62,0xa1,0xe5,0x00,0xdb,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpandq 291(%rax,%r14,8), %xmm19, %xmm22

// CHECK: vpandq (%rcx){1to2}, %xmm19, %xmm22
// CHECK:  encoding: [0x62,0xe1,0xe5,0x10,0xdb,0x31]
          vpandq (%rcx){1to2}, %xmm19, %xmm22

// CHECK: vpandq 2032(%rdx), %xmm19, %xmm22
// CHECK:  encoding: [0x62,0xe1,0xe5,0x00,0xdb,0x72,0x7f]
          vpandq 2032(%rdx), %xmm19, %xmm22

// CHECK: vpandq 2048(%rdx), %xmm19, %xmm22
// CHECK:  encoding: [0x62,0xe1,0xe5,0x00,0xdb,0xb2,0x00,0x08,0x00,0x00]
          vpandq 2048(%rdx), %xmm19, %xmm22

// CHECK: vpandq -2048(%rdx), %xmm19, %xmm22
// CHECK:  encoding: [0x62,0xe1,0xe5,0x00,0xdb,0x72,0x80]
          vpandq -2048(%rdx), %xmm19, %xmm22

// CHECK: vpandq -2064(%rdx), %xmm19, %xmm22
// CHECK:  encoding: [0x62,0xe1,0xe5,0x00,0xdb,0xb2,0xf0,0xf7,0xff,0xff]
          vpandq -2064(%rdx), %xmm19, %xmm22

// CHECK: vpandq 1016(%rdx){1to2}, %xmm19, %xmm22
// CHECK:  encoding: [0x62,0xe1,0xe5,0x10,0xdb,0x72,0x7f]
          vpandq 1016(%rdx){1to2}, %xmm19, %xmm22

// CHECK: vpandq 1024(%rdx){1to2}, %xmm19, %xmm22
// CHECK:  encoding: [0x62,0xe1,0xe5,0x10,0xdb,0xb2,0x00,0x04,0x00,0x00]
          vpandq 1024(%rdx){1to2}, %xmm19, %xmm22

// CHECK: vpandq -1024(%rdx){1to2}, %xmm19, %xmm22
// CHECK:  encoding: [0x62,0xe1,0xe5,0x10,0xdb,0x72,0x80]
          vpandq -1024(%rdx){1to2}, %xmm19, %xmm22

// CHECK: vpandq -1032(%rdx){1to2}, %xmm19, %xmm22
// CHECK:  encoding: [0x62,0xe1,0xe5,0x10,0xdb,0xb2,0xf8,0xfb,0xff,0xff]
          vpandq -1032(%rdx){1to2}, %xmm19, %xmm22

// CHECK: vpandq %ymm24, %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x01,0xad,0x20,0xdb,0xc8]
          vpandq %ymm24, %ymm26, %ymm25

// CHECK: vpandq %ymm24, %ymm26, %ymm25 {%k7}
// CHECK:  encoding: [0x62,0x01,0xad,0x27,0xdb,0xc8]
          vpandq %ymm24, %ymm26, %ymm25 {%k7}

// CHECK: vpandq %ymm24, %ymm26, %ymm25 {%k7} {z}
// CHECK:  encoding: [0x62,0x01,0xad,0xa7,0xdb,0xc8]
          vpandq %ymm24, %ymm26, %ymm25 {%k7} {z}

// CHECK: vpandq (%rcx), %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x61,0xad,0x20,0xdb,0x09]
          vpandq (%rcx), %ymm26, %ymm25

// CHECK: vpandq 291(%rax,%r14,8), %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x21,0xad,0x20,0xdb,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpandq 291(%rax,%r14,8), %ymm26, %ymm25

// CHECK: vpandq (%rcx){1to4}, %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x61,0xad,0x30,0xdb,0x09]
          vpandq (%rcx){1to4}, %ymm26, %ymm25

// CHECK: vpandq 4064(%rdx), %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x61,0xad,0x20,0xdb,0x4a,0x7f]
          vpandq 4064(%rdx), %ymm26, %ymm25

// CHECK: vpandq 4096(%rdx), %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x61,0xad,0x20,0xdb,0x8a,0x00,0x10,0x00,0x00]
          vpandq 4096(%rdx), %ymm26, %ymm25

// CHECK: vpandq -4096(%rdx), %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x61,0xad,0x20,0xdb,0x4a,0x80]
          vpandq -4096(%rdx), %ymm26, %ymm25

// CHECK: vpandq -4128(%rdx), %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x61,0xad,0x20,0xdb,0x8a,0xe0,0xef,0xff,0xff]
          vpandq -4128(%rdx), %ymm26, %ymm25

// CHECK: vpandq 1016(%rdx){1to4}, %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x61,0xad,0x30,0xdb,0x4a,0x7f]
          vpandq 1016(%rdx){1to4}, %ymm26, %ymm25

// CHECK: vpandq 1024(%rdx){1to4}, %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x61,0xad,0x30,0xdb,0x8a,0x00,0x04,0x00,0x00]
          vpandq 1024(%rdx){1to4}, %ymm26, %ymm25

// CHECK: vpandq -1024(%rdx){1to4}, %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x61,0xad,0x30,0xdb,0x4a,0x80]
          vpandq -1024(%rdx){1to4}, %ymm26, %ymm25

// CHECK: vpandq -1032(%rdx){1to4}, %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x61,0xad,0x30,0xdb,0x8a,0xf8,0xfb,0xff,0xff]
          vpandq -1032(%rdx){1to4}, %ymm26, %ymm25

// CHECK: vpbroadcastd %eax, %xmm22
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x7c,0xf0]
          vpbroadcastd %eax, %xmm22

// CHECK: vpbroadcastd %eax, %xmm22 {%k5}
// CHECK:  encoding: [0x62,0xe2,0x7d,0x0d,0x7c,0xf0]
          vpbroadcastd %eax, %xmm22 {%k5}

// CHECK: vpbroadcastd %eax, %xmm22 {%k5} {z}
// CHECK:  encoding: [0x62,0xe2,0x7d,0x8d,0x7c,0xf0]
          vpbroadcastd %eax, %xmm22 {%k5} {z}

// CHECK: vpbroadcastd %ebp, %xmm22
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x7c,0xf5]
          vpbroadcastd %ebp, %xmm22

// CHECK: vpbroadcastd %r13d, %xmm22
// CHECK:  encoding: [0x62,0xc2,0x7d,0x08,0x7c,0xf5]
          vpbroadcastd %r13d, %xmm22

// CHECK: vpbroadcastd %eax, %ymm25
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x7c,0xc8]
          vpbroadcastd %eax, %ymm25

// CHECK: vpbroadcastd %eax, %ymm25 {%k5}
// CHECK:  encoding: [0x62,0x62,0x7d,0x2d,0x7c,0xc8]
          vpbroadcastd %eax, %ymm25 {%k5}

// CHECK: vpbroadcastd %eax, %ymm25 {%k5} {z}
// CHECK:  encoding: [0x62,0x62,0x7d,0xad,0x7c,0xc8]
          vpbroadcastd %eax, %ymm25 {%k5} {z}

// CHECK: vpbroadcastd %ebp, %ymm25
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x7c,0xcd]
          vpbroadcastd %ebp, %ymm25

// CHECK: vpbroadcastd %r13d, %ymm25
// CHECK:  encoding: [0x62,0x42,0x7d,0x28,0x7c,0xcd]
          vpbroadcastd %r13d, %ymm25

// CHECK: vpbroadcastq %rax, %xmm22
// CHECK:  encoding: [0x62,0xe2,0xfd,0x08,0x7c,0xf0]
          vpbroadcastq %rax, %xmm22

// CHECK: vpbroadcastq %rax, %xmm22 {%k2}
// CHECK:  encoding: [0x62,0xe2,0xfd,0x0a,0x7c,0xf0]
          vpbroadcastq %rax, %xmm22 {%k2}

// CHECK: vpbroadcastq %rax, %xmm22 {%k2} {z}
// CHECK:  encoding: [0x62,0xe2,0xfd,0x8a,0x7c,0xf0]
          vpbroadcastq %rax, %xmm22 {%k2} {z}

// CHECK: vpbroadcastq %r8, %xmm22
// CHECK:  encoding: [0x62,0xc2,0xfd,0x08,0x7c,0xf0]
          vpbroadcastq %r8, %xmm22

// CHECK: vpbroadcastq %rax, %ymm19
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0x7c,0xd8]
          vpbroadcastq %rax, %ymm19

// CHECK: vpbroadcastq %rax, %ymm19 {%k5}
// CHECK:  encoding: [0x62,0xe2,0xfd,0x2d,0x7c,0xd8]
          vpbroadcastq %rax, %ymm19 {%k5}

// CHECK: vpbroadcastq %rax, %ymm19 {%k5} {z}
// CHECK:  encoding: [0x62,0xe2,0xfd,0xad,0x7c,0xd8]
          vpbroadcastq %rax, %ymm19 {%k5} {z}

// CHECK: vpbroadcastq %r8, %ymm19
// CHECK:  encoding: [0x62,0xc2,0xfd,0x28,0x7c,0xd8]
          vpbroadcastq %r8, %ymm19

// CHECK: vpcmpd $171, %xmm20, %xmm23, %k4
// CHECK:  encoding: [0x62,0xb3,0x45,0x00,0x1f,0xe4,0xab]
          vpcmpd $171, %xmm20, %xmm23, %k4

// CHECK: vpcmpd $171, %xmm20, %xmm23, %k4 {%k1}
// CHECK:  encoding: [0x62,0xb3,0x45,0x01,0x1f,0xe4,0xab]
          vpcmpd $171, %xmm20, %xmm23, %k4 {%k1}

// CHECK: vpcmpd $123, %xmm20, %xmm23, %k4
// CHECK:  encoding: [0x62,0xb3,0x45,0x00,0x1f,0xe4,0x7b]
          vpcmpd $123, %xmm20, %xmm23, %k4

// CHECK: vpcmpd $123, (%rcx), %xmm23, %k4
// CHECK:  encoding: [0x62,0xf3,0x45,0x00,0x1f,0x21,0x7b]
          vpcmpd $123, (%rcx), %xmm23, %k4

// CHECK: vpcmpd $123, 291(%rax,%r14,8), %xmm23, %k4
// CHECK:  encoding: [0x62,0xb3,0x45,0x00,0x1f,0xa4,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpcmpd $123, 291(%rax,%r14,8), %xmm23, %k4

// CHECK: vpcmpd $123, (%rcx){1to4}, %xmm23, %k4
// CHECK:  encoding: [0x62,0xf3,0x45,0x10,0x1f,0x21,0x7b]
          vpcmpd $123, (%rcx){1to4}, %xmm23, %k4

// CHECK: vpcmpd $123, 2032(%rdx), %xmm23, %k4
// CHECK:  encoding: [0x62,0xf3,0x45,0x00,0x1f,0x62,0x7f,0x7b]
          vpcmpd $123, 2032(%rdx), %xmm23, %k4

// CHECK: vpcmpd $123, 2048(%rdx), %xmm23, %k4
// CHECK:  encoding: [0x62,0xf3,0x45,0x00,0x1f,0xa2,0x00,0x08,0x00,0x00,0x7b]
          vpcmpd $123, 2048(%rdx), %xmm23, %k4

// CHECK: vpcmpd $123, -2048(%rdx), %xmm23, %k4
// CHECK:  encoding: [0x62,0xf3,0x45,0x00,0x1f,0x62,0x80,0x7b]
          vpcmpd $123, -2048(%rdx), %xmm23, %k4

// CHECK: vpcmpd $123, -2064(%rdx), %xmm23, %k4
// CHECK:  encoding: [0x62,0xf3,0x45,0x00,0x1f,0xa2,0xf0,0xf7,0xff,0xff,0x7b]
          vpcmpd $123, -2064(%rdx), %xmm23, %k4

// CHECK: vpcmpd $123, 508(%rdx){1to4}, %xmm23, %k4
// CHECK:  encoding: [0x62,0xf3,0x45,0x10,0x1f,0x62,0x7f,0x7b]
          vpcmpd $123, 508(%rdx){1to4}, %xmm23, %k4

// CHECK: vpcmpd $123, 512(%rdx){1to4}, %xmm23, %k4
// CHECK:  encoding: [0x62,0xf3,0x45,0x10,0x1f,0xa2,0x00,0x02,0x00,0x00,0x7b]
          vpcmpd $123, 512(%rdx){1to4}, %xmm23, %k4

// CHECK: vpcmpd $123, -512(%rdx){1to4}, %xmm23, %k4
// CHECK:  encoding: [0x62,0xf3,0x45,0x10,0x1f,0x62,0x80,0x7b]
          vpcmpd $123, -512(%rdx){1to4}, %xmm23, %k4

// CHECK: vpcmpd $123, -516(%rdx){1to4}, %xmm23, %k4
// CHECK:  encoding: [0x62,0xf3,0x45,0x10,0x1f,0xa2,0xfc,0xfd,0xff,0xff,0x7b]
          vpcmpd $123, -516(%rdx){1to4}, %xmm23, %k4

// CHECK: vpcmpd $171, %ymm19, %ymm24, %k4
// CHECK:  encoding: [0x62,0xb3,0x3d,0x20,0x1f,0xe3,0xab]
          vpcmpd $171, %ymm19, %ymm24, %k4

// CHECK: vpcmpd $171, %ymm19, %ymm24, %k4 {%k3}
// CHECK:  encoding: [0x62,0xb3,0x3d,0x23,0x1f,0xe3,0xab]
          vpcmpd $171, %ymm19, %ymm24, %k4 {%k3}

// CHECK: vpcmpd $123, %ymm19, %ymm24, %k4
// CHECK:  encoding: [0x62,0xb3,0x3d,0x20,0x1f,0xe3,0x7b]
          vpcmpd $123, %ymm19, %ymm24, %k4

// CHECK: vpcmpd $123, (%rcx), %ymm24, %k4
// CHECK:  encoding: [0x62,0xf3,0x3d,0x20,0x1f,0x21,0x7b]
          vpcmpd $123, (%rcx), %ymm24, %k4

// CHECK: vpcmpd $123, 291(%rax,%r14,8), %ymm24, %k4
// CHECK:  encoding: [0x62,0xb3,0x3d,0x20,0x1f,0xa4,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpcmpd $123, 291(%rax,%r14,8), %ymm24, %k4

// CHECK: vpcmpd $123, (%rcx){1to8}, %ymm24, %k4
// CHECK:  encoding: [0x62,0xf3,0x3d,0x30,0x1f,0x21,0x7b]
          vpcmpd $123, (%rcx){1to8}, %ymm24, %k4

// CHECK: vpcmpd $123, 4064(%rdx), %ymm24, %k4
// CHECK:  encoding: [0x62,0xf3,0x3d,0x20,0x1f,0x62,0x7f,0x7b]
          vpcmpd $123, 4064(%rdx), %ymm24, %k4

// CHECK: vpcmpd $123, 4096(%rdx), %ymm24, %k4
// CHECK:  encoding: [0x62,0xf3,0x3d,0x20,0x1f,0xa2,0x00,0x10,0x00,0x00,0x7b]
          vpcmpd $123, 4096(%rdx), %ymm24, %k4

// CHECK: vpcmpd $123, -4096(%rdx), %ymm24, %k4
// CHECK:  encoding: [0x62,0xf3,0x3d,0x20,0x1f,0x62,0x80,0x7b]
          vpcmpd $123, -4096(%rdx), %ymm24, %k4

// CHECK: vpcmpd $123, -4128(%rdx), %ymm24, %k4
// CHECK:  encoding: [0x62,0xf3,0x3d,0x20,0x1f,0xa2,0xe0,0xef,0xff,0xff,0x7b]
          vpcmpd $123, -4128(%rdx), %ymm24, %k4

// CHECK: vpcmpd $123, 508(%rdx){1to8}, %ymm24, %k4
// CHECK:  encoding: [0x62,0xf3,0x3d,0x30,0x1f,0x62,0x7f,0x7b]
          vpcmpd $123, 508(%rdx){1to8}, %ymm24, %k4

// CHECK: vpcmpd $123, 512(%rdx){1to8}, %ymm24, %k4
// CHECK:  encoding: [0x62,0xf3,0x3d,0x30,0x1f,0xa2,0x00,0x02,0x00,0x00,0x7b]
          vpcmpd $123, 512(%rdx){1to8}, %ymm24, %k4

// CHECK: vpcmpd $123, -512(%rdx){1to8}, %ymm24, %k4
// CHECK:  encoding: [0x62,0xf3,0x3d,0x30,0x1f,0x62,0x80,0x7b]
          vpcmpd $123, -512(%rdx){1to8}, %ymm24, %k4

// CHECK: vpcmpd $123, -516(%rdx){1to8}, %ymm24, %k4
// CHECK:  encoding: [0x62,0xf3,0x3d,0x30,0x1f,0xa2,0xfc,0xfd,0xff,0xff,0x7b]
          vpcmpd $123, -516(%rdx){1to8}, %ymm24, %k4

// CHECK: vpcmpeqd %xmm24, %xmm29, %k3
// CHECK:  encoding: [0x62,0x91,0x15,0x00,0x76,0xd8]
          vpcmpeqd %xmm24, %xmm29, %k3

// CHECK: vpcmpeqd %xmm24, %xmm29, %k3 {%k5}
// CHECK:  encoding: [0x62,0x91,0x15,0x05,0x76,0xd8]
          vpcmpeqd %xmm24, %xmm29, %k3 {%k5}

// CHECK: vpcmpeqd (%rcx), %xmm29, %k3
// CHECK:  encoding: [0x62,0xf1,0x15,0x00,0x76,0x19]
          vpcmpeqd (%rcx), %xmm29, %k3

// CHECK: vpcmpeqd 291(%rax,%r14,8), %xmm29, %k3
// CHECK:  encoding: [0x62,0xb1,0x15,0x00,0x76,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpcmpeqd 291(%rax,%r14,8), %xmm29, %k3

// CHECK: vpcmpeqd (%rcx){1to4}, %xmm29, %k3
// CHECK:  encoding: [0x62,0xf1,0x15,0x10,0x76,0x19]
          vpcmpeqd (%rcx){1to4}, %xmm29, %k3

// CHECK: vpcmpeqd 2032(%rdx), %xmm29, %k3
// CHECK:  encoding: [0x62,0xf1,0x15,0x00,0x76,0x5a,0x7f]
          vpcmpeqd 2032(%rdx), %xmm29, %k3

// CHECK: vpcmpeqd 2048(%rdx), %xmm29, %k3
// CHECK:  encoding: [0x62,0xf1,0x15,0x00,0x76,0x9a,0x00,0x08,0x00,0x00]
          vpcmpeqd 2048(%rdx), %xmm29, %k3

// CHECK: vpcmpeqd -2048(%rdx), %xmm29, %k3
// CHECK:  encoding: [0x62,0xf1,0x15,0x00,0x76,0x5a,0x80]
          vpcmpeqd -2048(%rdx), %xmm29, %k3

// CHECK: vpcmpeqd -2064(%rdx), %xmm29, %k3
// CHECK:  encoding: [0x62,0xf1,0x15,0x00,0x76,0x9a,0xf0,0xf7,0xff,0xff]
          vpcmpeqd -2064(%rdx), %xmm29, %k3

// CHECK: vpcmpeqd 508(%rdx){1to4}, %xmm29, %k3
// CHECK:  encoding: [0x62,0xf1,0x15,0x10,0x76,0x5a,0x7f]
          vpcmpeqd 508(%rdx){1to4}, %xmm29, %k3

// CHECK: vpcmpeqd 512(%rdx){1to4}, %xmm29, %k3
// CHECK:  encoding: [0x62,0xf1,0x15,0x10,0x76,0x9a,0x00,0x02,0x00,0x00]
          vpcmpeqd 512(%rdx){1to4}, %xmm29, %k3

// CHECK: vpcmpeqd -512(%rdx){1to4}, %xmm29, %k3
// CHECK:  encoding: [0x62,0xf1,0x15,0x10,0x76,0x5a,0x80]
          vpcmpeqd -512(%rdx){1to4}, %xmm29, %k3

// CHECK: vpcmpeqd -516(%rdx){1to4}, %xmm29, %k3
// CHECK:  encoding: [0x62,0xf1,0x15,0x10,0x76,0x9a,0xfc,0xfd,0xff,0xff]
          vpcmpeqd -516(%rdx){1to4}, %xmm29, %k3

// CHECK: vpcmpeqd %ymm20, %ymm26, %k5
// CHECK:  encoding: [0x62,0xb1,0x2d,0x20,0x76,0xec]
          vpcmpeqd %ymm20, %ymm26, %k5

// CHECK: vpcmpeqd %ymm20, %ymm26, %k5 {%k5}
// CHECK:  encoding: [0x62,0xb1,0x2d,0x25,0x76,0xec]
          vpcmpeqd %ymm20, %ymm26, %k5 {%k5}

// CHECK: vpcmpeqd (%rcx), %ymm26, %k5
// CHECK:  encoding: [0x62,0xf1,0x2d,0x20,0x76,0x29]
          vpcmpeqd (%rcx), %ymm26, %k5

// CHECK: vpcmpeqd 291(%rax,%r14,8), %ymm26, %k5
// CHECK:  encoding: [0x62,0xb1,0x2d,0x20,0x76,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpcmpeqd 291(%rax,%r14,8), %ymm26, %k5

// CHECK: vpcmpeqd (%rcx){1to8}, %ymm26, %k5
// CHECK:  encoding: [0x62,0xf1,0x2d,0x30,0x76,0x29]
          vpcmpeqd (%rcx){1to8}, %ymm26, %k5

// CHECK: vpcmpeqd 4064(%rdx), %ymm26, %k5
// CHECK:  encoding: [0x62,0xf1,0x2d,0x20,0x76,0x6a,0x7f]
          vpcmpeqd 4064(%rdx), %ymm26, %k5

// CHECK: vpcmpeqd 4096(%rdx), %ymm26, %k5
// CHECK:  encoding: [0x62,0xf1,0x2d,0x20,0x76,0xaa,0x00,0x10,0x00,0x00]
          vpcmpeqd 4096(%rdx), %ymm26, %k5

// CHECK: vpcmpeqd -4096(%rdx), %ymm26, %k5
// CHECK:  encoding: [0x62,0xf1,0x2d,0x20,0x76,0x6a,0x80]
          vpcmpeqd -4096(%rdx), %ymm26, %k5

// CHECK: vpcmpeqd -4128(%rdx), %ymm26, %k5
// CHECK:  encoding: [0x62,0xf1,0x2d,0x20,0x76,0xaa,0xe0,0xef,0xff,0xff]
          vpcmpeqd -4128(%rdx), %ymm26, %k5

// CHECK: vpcmpeqd 508(%rdx){1to8}, %ymm26, %k5
// CHECK:  encoding: [0x62,0xf1,0x2d,0x30,0x76,0x6a,0x7f]
          vpcmpeqd 508(%rdx){1to8}, %ymm26, %k5

// CHECK: vpcmpeqd 512(%rdx){1to8}, %ymm26, %k5
// CHECK:  encoding: [0x62,0xf1,0x2d,0x30,0x76,0xaa,0x00,0x02,0x00,0x00]
          vpcmpeqd 512(%rdx){1to8}, %ymm26, %k5

// CHECK: vpcmpeqd -512(%rdx){1to8}, %ymm26, %k5
// CHECK:  encoding: [0x62,0xf1,0x2d,0x30,0x76,0x6a,0x80]
          vpcmpeqd -512(%rdx){1to8}, %ymm26, %k5

// CHECK: vpcmpeqd -516(%rdx){1to8}, %ymm26, %k5
// CHECK:  encoding: [0x62,0xf1,0x2d,0x30,0x76,0xaa,0xfc,0xfd,0xff,0xff]
          vpcmpeqd -516(%rdx){1to8}, %ymm26, %k5

// CHECK: vpcmpeqq %xmm29, %xmm20, %k3
// CHECK:  encoding: [0x62,0x92,0xdd,0x00,0x29,0xdd]
          vpcmpeqq %xmm29, %xmm20, %k3

// CHECK: vpcmpeqq %xmm29, %xmm20, %k3 {%k3}
// CHECK:  encoding: [0x62,0x92,0xdd,0x03,0x29,0xdd]
          vpcmpeqq %xmm29, %xmm20, %k3 {%k3}

// CHECK: vpcmpeqq (%rcx), %xmm20, %k3
// CHECK:  encoding: [0x62,0xf2,0xdd,0x00,0x29,0x19]
          vpcmpeqq (%rcx), %xmm20, %k3

// CHECK: vpcmpeqq 291(%rax,%r14,8), %xmm20, %k3
// CHECK:  encoding: [0x62,0xb2,0xdd,0x00,0x29,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpcmpeqq 291(%rax,%r14,8), %xmm20, %k3

// CHECK: vpcmpeqq (%rcx){1to2}, %xmm20, %k3
// CHECK:  encoding: [0x62,0xf2,0xdd,0x10,0x29,0x19]
          vpcmpeqq (%rcx){1to2}, %xmm20, %k3

// CHECK: vpcmpeqq 2032(%rdx), %xmm20, %k3
// CHECK:  encoding: [0x62,0xf2,0xdd,0x00,0x29,0x5a,0x7f]
          vpcmpeqq 2032(%rdx), %xmm20, %k3

// CHECK: vpcmpeqq 2048(%rdx), %xmm20, %k3
// CHECK:  encoding: [0x62,0xf2,0xdd,0x00,0x29,0x9a,0x00,0x08,0x00,0x00]
          vpcmpeqq 2048(%rdx), %xmm20, %k3

// CHECK: vpcmpeqq -2048(%rdx), %xmm20, %k3
// CHECK:  encoding: [0x62,0xf2,0xdd,0x00,0x29,0x5a,0x80]
          vpcmpeqq -2048(%rdx), %xmm20, %k3

// CHECK: vpcmpeqq -2064(%rdx), %xmm20, %k3
// CHECK:  encoding: [0x62,0xf2,0xdd,0x00,0x29,0x9a,0xf0,0xf7,0xff,0xff]
          vpcmpeqq -2064(%rdx), %xmm20, %k3

// CHECK: vpcmpeqq 1016(%rdx){1to2}, %xmm20, %k3
// CHECK:  encoding: [0x62,0xf2,0xdd,0x10,0x29,0x5a,0x7f]
          vpcmpeqq 1016(%rdx){1to2}, %xmm20, %k3

// CHECK: vpcmpeqq 1024(%rdx){1to2}, %xmm20, %k3
// CHECK:  encoding: [0x62,0xf2,0xdd,0x10,0x29,0x9a,0x00,0x04,0x00,0x00]
          vpcmpeqq 1024(%rdx){1to2}, %xmm20, %k3

// CHECK: vpcmpeqq -1024(%rdx){1to2}, %xmm20, %k3
// CHECK:  encoding: [0x62,0xf2,0xdd,0x10,0x29,0x5a,0x80]
          vpcmpeqq -1024(%rdx){1to2}, %xmm20, %k3

// CHECK: vpcmpeqq -1032(%rdx){1to2}, %xmm20, %k3
// CHECK:  encoding: [0x62,0xf2,0xdd,0x10,0x29,0x9a,0xf8,0xfb,0xff,0xff]
          vpcmpeqq -1032(%rdx){1to2}, %xmm20, %k3

// CHECK: vpcmpeqq %ymm23, %ymm30, %k5
// CHECK:  encoding: [0x62,0xb2,0x8d,0x20,0x29,0xef]
          vpcmpeqq %ymm23, %ymm30, %k5

// CHECK: vpcmpeqq %ymm23, %ymm30, %k5 {%k6}
// CHECK:  encoding: [0x62,0xb2,0x8d,0x26,0x29,0xef]
          vpcmpeqq %ymm23, %ymm30, %k5 {%k6}

// CHECK: vpcmpeqq (%rcx), %ymm30, %k5
// CHECK:  encoding: [0x62,0xf2,0x8d,0x20,0x29,0x29]
          vpcmpeqq (%rcx), %ymm30, %k5

// CHECK: vpcmpeqq 291(%rax,%r14,8), %ymm30, %k5
// CHECK:  encoding: [0x62,0xb2,0x8d,0x20,0x29,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpcmpeqq 291(%rax,%r14,8), %ymm30, %k5

// CHECK: vpcmpeqq (%rcx){1to4}, %ymm30, %k5
// CHECK:  encoding: [0x62,0xf2,0x8d,0x30,0x29,0x29]
          vpcmpeqq (%rcx){1to4}, %ymm30, %k5

// CHECK: vpcmpeqq 4064(%rdx), %ymm30, %k5
// CHECK:  encoding: [0x62,0xf2,0x8d,0x20,0x29,0x6a,0x7f]
          vpcmpeqq 4064(%rdx), %ymm30, %k5

// CHECK: vpcmpeqq 4096(%rdx), %ymm30, %k5
// CHECK:  encoding: [0x62,0xf2,0x8d,0x20,0x29,0xaa,0x00,0x10,0x00,0x00]
          vpcmpeqq 4096(%rdx), %ymm30, %k5

// CHECK: vpcmpeqq -4096(%rdx), %ymm30, %k5
// CHECK:  encoding: [0x62,0xf2,0x8d,0x20,0x29,0x6a,0x80]
          vpcmpeqq -4096(%rdx), %ymm30, %k5

// CHECK: vpcmpeqq -4128(%rdx), %ymm30, %k5
// CHECK:  encoding: [0x62,0xf2,0x8d,0x20,0x29,0xaa,0xe0,0xef,0xff,0xff]
          vpcmpeqq -4128(%rdx), %ymm30, %k5

// CHECK: vpcmpeqq 1016(%rdx){1to4}, %ymm30, %k5
// CHECK:  encoding: [0x62,0xf2,0x8d,0x30,0x29,0x6a,0x7f]
          vpcmpeqq 1016(%rdx){1to4}, %ymm30, %k5

// CHECK: vpcmpeqq 1024(%rdx){1to4}, %ymm30, %k5
// CHECK:  encoding: [0x62,0xf2,0x8d,0x30,0x29,0xaa,0x00,0x04,0x00,0x00]
          vpcmpeqq 1024(%rdx){1to4}, %ymm30, %k5

// CHECK: vpcmpeqq -1024(%rdx){1to4}, %ymm30, %k5
// CHECK:  encoding: [0x62,0xf2,0x8d,0x30,0x29,0x6a,0x80]
          vpcmpeqq -1024(%rdx){1to4}, %ymm30, %k5

// CHECK: vpcmpeqq -1032(%rdx){1to4}, %ymm30, %k5
// CHECK:  encoding: [0x62,0xf2,0x8d,0x30,0x29,0xaa,0xf8,0xfb,0xff,0xff]
          vpcmpeqq -1032(%rdx){1to4}, %ymm30, %k5

// CHECK: vpcmpgtd %xmm20, %xmm29, %k4
// CHECK:  encoding: [0x62,0xb1,0x15,0x00,0x66,0xe4]
          vpcmpgtd %xmm20, %xmm29, %k4

// CHECK: vpcmpgtd %xmm20, %xmm29, %k4 {%k2}
// CHECK:  encoding: [0x62,0xb1,0x15,0x02,0x66,0xe4]
          vpcmpgtd %xmm20, %xmm29, %k4 {%k2}

// CHECK: vpcmpgtd (%rcx), %xmm29, %k4
// CHECK:  encoding: [0x62,0xf1,0x15,0x00,0x66,0x21]
          vpcmpgtd (%rcx), %xmm29, %k4

// CHECK: vpcmpgtd 291(%rax,%r14,8), %xmm29, %k4
// CHECK:  encoding: [0x62,0xb1,0x15,0x00,0x66,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpcmpgtd 291(%rax,%r14,8), %xmm29, %k4

// CHECK: vpcmpgtd (%rcx){1to4}, %xmm29, %k4
// CHECK:  encoding: [0x62,0xf1,0x15,0x10,0x66,0x21]
          vpcmpgtd (%rcx){1to4}, %xmm29, %k4

// CHECK: vpcmpgtd 2032(%rdx), %xmm29, %k4
// CHECK:  encoding: [0x62,0xf1,0x15,0x00,0x66,0x62,0x7f]
          vpcmpgtd 2032(%rdx), %xmm29, %k4

// CHECK: vpcmpgtd 2048(%rdx), %xmm29, %k4
// CHECK:  encoding: [0x62,0xf1,0x15,0x00,0x66,0xa2,0x00,0x08,0x00,0x00]
          vpcmpgtd 2048(%rdx), %xmm29, %k4

// CHECK: vpcmpgtd -2048(%rdx), %xmm29, %k4
// CHECK:  encoding: [0x62,0xf1,0x15,0x00,0x66,0x62,0x80]
          vpcmpgtd -2048(%rdx), %xmm29, %k4

// CHECK: vpcmpgtd -2064(%rdx), %xmm29, %k4
// CHECK:  encoding: [0x62,0xf1,0x15,0x00,0x66,0xa2,0xf0,0xf7,0xff,0xff]
          vpcmpgtd -2064(%rdx), %xmm29, %k4

// CHECK: vpcmpgtd 508(%rdx){1to4}, %xmm29, %k4
// CHECK:  encoding: [0x62,0xf1,0x15,0x10,0x66,0x62,0x7f]
          vpcmpgtd 508(%rdx){1to4}, %xmm29, %k4

// CHECK: vpcmpgtd 512(%rdx){1to4}, %xmm29, %k4
// CHECK:  encoding: [0x62,0xf1,0x15,0x10,0x66,0xa2,0x00,0x02,0x00,0x00]
          vpcmpgtd 512(%rdx){1to4}, %xmm29, %k4

// CHECK: vpcmpgtd -512(%rdx){1to4}, %xmm29, %k4
// CHECK:  encoding: [0x62,0xf1,0x15,0x10,0x66,0x62,0x80]
          vpcmpgtd -512(%rdx){1to4}, %xmm29, %k4

// CHECK: vpcmpgtd -516(%rdx){1to4}, %xmm29, %k4
// CHECK:  encoding: [0x62,0xf1,0x15,0x10,0x66,0xa2,0xfc,0xfd,0xff,0xff]
          vpcmpgtd -516(%rdx){1to4}, %xmm29, %k4

// CHECK: vpcmpgtd %ymm17, %ymm22, %k2
// CHECK:  encoding: [0x62,0xb1,0x4d,0x20,0x66,0xd1]
          vpcmpgtd %ymm17, %ymm22, %k2

// CHECK: vpcmpgtd %ymm17, %ymm22, %k2 {%k1}
// CHECK:  encoding: [0x62,0xb1,0x4d,0x21,0x66,0xd1]
          vpcmpgtd %ymm17, %ymm22, %k2 {%k1}

// CHECK: vpcmpgtd (%rcx), %ymm22, %k2
// CHECK:  encoding: [0x62,0xf1,0x4d,0x20,0x66,0x11]
          vpcmpgtd (%rcx), %ymm22, %k2

// CHECK: vpcmpgtd 291(%rax,%r14,8), %ymm22, %k2
// CHECK:  encoding: [0x62,0xb1,0x4d,0x20,0x66,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpcmpgtd 291(%rax,%r14,8), %ymm22, %k2

// CHECK: vpcmpgtd (%rcx){1to8}, %ymm22, %k2
// CHECK:  encoding: [0x62,0xf1,0x4d,0x30,0x66,0x11]
          vpcmpgtd (%rcx){1to8}, %ymm22, %k2

// CHECK: vpcmpgtd 4064(%rdx), %ymm22, %k2
// CHECK:  encoding: [0x62,0xf1,0x4d,0x20,0x66,0x52,0x7f]
          vpcmpgtd 4064(%rdx), %ymm22, %k2

// CHECK: vpcmpgtd 4096(%rdx), %ymm22, %k2
// CHECK:  encoding: [0x62,0xf1,0x4d,0x20,0x66,0x92,0x00,0x10,0x00,0x00]
          vpcmpgtd 4096(%rdx), %ymm22, %k2

// CHECK: vpcmpgtd -4096(%rdx), %ymm22, %k2
// CHECK:  encoding: [0x62,0xf1,0x4d,0x20,0x66,0x52,0x80]
          vpcmpgtd -4096(%rdx), %ymm22, %k2

// CHECK: vpcmpgtd -4128(%rdx), %ymm22, %k2
// CHECK:  encoding: [0x62,0xf1,0x4d,0x20,0x66,0x92,0xe0,0xef,0xff,0xff]
          vpcmpgtd -4128(%rdx), %ymm22, %k2

// CHECK: vpcmpgtd 508(%rdx){1to8}, %ymm22, %k2
// CHECK:  encoding: [0x62,0xf1,0x4d,0x30,0x66,0x52,0x7f]
          vpcmpgtd 508(%rdx){1to8}, %ymm22, %k2

// CHECK: vpcmpgtd 512(%rdx){1to8}, %ymm22, %k2
// CHECK:  encoding: [0x62,0xf1,0x4d,0x30,0x66,0x92,0x00,0x02,0x00,0x00]
          vpcmpgtd 512(%rdx){1to8}, %ymm22, %k2

// CHECK: vpcmpgtd -512(%rdx){1to8}, %ymm22, %k2
// CHECK:  encoding: [0x62,0xf1,0x4d,0x30,0x66,0x52,0x80]
          vpcmpgtd -512(%rdx){1to8}, %ymm22, %k2

// CHECK: vpcmpgtd -516(%rdx){1to8}, %ymm22, %k2
// CHECK:  encoding: [0x62,0xf1,0x4d,0x30,0x66,0x92,0xfc,0xfd,0xff,0xff]
          vpcmpgtd -516(%rdx){1to8}, %ymm22, %k2

// CHECK: vpcmpgtq %xmm25, %xmm30, %k3
// CHECK:  encoding: [0x62,0x92,0x8d,0x00,0x37,0xd9]
          vpcmpgtq %xmm25, %xmm30, %k3

// CHECK: vpcmpgtq %xmm25, %xmm30, %k3 {%k6}
// CHECK:  encoding: [0x62,0x92,0x8d,0x06,0x37,0xd9]
          vpcmpgtq %xmm25, %xmm30, %k3 {%k6}

// CHECK: vpcmpgtq (%rcx), %xmm30, %k3
// CHECK:  encoding: [0x62,0xf2,0x8d,0x00,0x37,0x19]
          vpcmpgtq (%rcx), %xmm30, %k3

// CHECK: vpcmpgtq 291(%rax,%r14,8), %xmm30, %k3
// CHECK:  encoding: [0x62,0xb2,0x8d,0x00,0x37,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpcmpgtq 291(%rax,%r14,8), %xmm30, %k3

// CHECK: vpcmpgtq (%rcx){1to2}, %xmm30, %k3
// CHECK:  encoding: [0x62,0xf2,0x8d,0x10,0x37,0x19]
          vpcmpgtq (%rcx){1to2}, %xmm30, %k3

// CHECK: vpcmpgtq 2032(%rdx), %xmm30, %k3
// CHECK:  encoding: [0x62,0xf2,0x8d,0x00,0x37,0x5a,0x7f]
          vpcmpgtq 2032(%rdx), %xmm30, %k3

// CHECK: vpcmpgtq 2048(%rdx), %xmm30, %k3
// CHECK:  encoding: [0x62,0xf2,0x8d,0x00,0x37,0x9a,0x00,0x08,0x00,0x00]
          vpcmpgtq 2048(%rdx), %xmm30, %k3

// CHECK: vpcmpgtq -2048(%rdx), %xmm30, %k3
// CHECK:  encoding: [0x62,0xf2,0x8d,0x00,0x37,0x5a,0x80]
          vpcmpgtq -2048(%rdx), %xmm30, %k3

// CHECK: vpcmpgtq -2064(%rdx), %xmm30, %k3
// CHECK:  encoding: [0x62,0xf2,0x8d,0x00,0x37,0x9a,0xf0,0xf7,0xff,0xff]
          vpcmpgtq -2064(%rdx), %xmm30, %k3

// CHECK: vpcmpgtq 1016(%rdx){1to2}, %xmm30, %k3
// CHECK:  encoding: [0x62,0xf2,0x8d,0x10,0x37,0x5a,0x7f]
          vpcmpgtq 1016(%rdx){1to2}, %xmm30, %k3

// CHECK: vpcmpgtq 1024(%rdx){1to2}, %xmm30, %k3
// CHECK:  encoding: [0x62,0xf2,0x8d,0x10,0x37,0x9a,0x00,0x04,0x00,0x00]
          vpcmpgtq 1024(%rdx){1to2}, %xmm30, %k3

// CHECK: vpcmpgtq -1024(%rdx){1to2}, %xmm30, %k3
// CHECK:  encoding: [0x62,0xf2,0x8d,0x10,0x37,0x5a,0x80]
          vpcmpgtq -1024(%rdx){1to2}, %xmm30, %k3

// CHECK: vpcmpgtq -1032(%rdx){1to2}, %xmm30, %k3
// CHECK:  encoding: [0x62,0xf2,0x8d,0x10,0x37,0x9a,0xf8,0xfb,0xff,0xff]
          vpcmpgtq -1032(%rdx){1to2}, %xmm30, %k3

// CHECK: vpcmpgtq %ymm20, %ymm22, %k2
// CHECK:  encoding: [0x62,0xb2,0xcd,0x20,0x37,0xd4]
          vpcmpgtq %ymm20, %ymm22, %k2

// CHECK: vpcmpgtq %ymm20, %ymm22, %k2 {%k1}
// CHECK:  encoding: [0x62,0xb2,0xcd,0x21,0x37,0xd4]
          vpcmpgtq %ymm20, %ymm22, %k2 {%k1}

// CHECK: vpcmpgtq (%rcx), %ymm22, %k2
// CHECK:  encoding: [0x62,0xf2,0xcd,0x20,0x37,0x11]
          vpcmpgtq (%rcx), %ymm22, %k2

// CHECK: vpcmpgtq 291(%rax,%r14,8), %ymm22, %k2
// CHECK:  encoding: [0x62,0xb2,0xcd,0x20,0x37,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpcmpgtq 291(%rax,%r14,8), %ymm22, %k2

// CHECK: vpcmpgtq (%rcx){1to4}, %ymm22, %k2
// CHECK:  encoding: [0x62,0xf2,0xcd,0x30,0x37,0x11]
          vpcmpgtq (%rcx){1to4}, %ymm22, %k2

// CHECK: vpcmpgtq 4064(%rdx), %ymm22, %k2
// CHECK:  encoding: [0x62,0xf2,0xcd,0x20,0x37,0x52,0x7f]
          vpcmpgtq 4064(%rdx), %ymm22, %k2

// CHECK: vpcmpgtq 4096(%rdx), %ymm22, %k2
// CHECK:  encoding: [0x62,0xf2,0xcd,0x20,0x37,0x92,0x00,0x10,0x00,0x00]
          vpcmpgtq 4096(%rdx), %ymm22, %k2

// CHECK: vpcmpgtq -4096(%rdx), %ymm22, %k2
// CHECK:  encoding: [0x62,0xf2,0xcd,0x20,0x37,0x52,0x80]
          vpcmpgtq -4096(%rdx), %ymm22, %k2

// CHECK: vpcmpgtq -4128(%rdx), %ymm22, %k2
// CHECK:  encoding: [0x62,0xf2,0xcd,0x20,0x37,0x92,0xe0,0xef,0xff,0xff]
          vpcmpgtq -4128(%rdx), %ymm22, %k2

// CHECK: vpcmpgtq 1016(%rdx){1to4}, %ymm22, %k2
// CHECK:  encoding: [0x62,0xf2,0xcd,0x30,0x37,0x52,0x7f]
          vpcmpgtq 1016(%rdx){1to4}, %ymm22, %k2

// CHECK: vpcmpgtq 1024(%rdx){1to4}, %ymm22, %k2
// CHECK:  encoding: [0x62,0xf2,0xcd,0x30,0x37,0x92,0x00,0x04,0x00,0x00]
          vpcmpgtq 1024(%rdx){1to4}, %ymm22, %k2

// CHECK: vpcmpgtq -1024(%rdx){1to4}, %ymm22, %k2
// CHECK:  encoding: [0x62,0xf2,0xcd,0x30,0x37,0x52,0x80]
          vpcmpgtq -1024(%rdx){1to4}, %ymm22, %k2

// CHECK: vpcmpgtq -1032(%rdx){1to4}, %ymm22, %k2
// CHECK:  encoding: [0x62,0xf2,0xcd,0x30,0x37,0x92,0xf8,0xfb,0xff,0xff]
          vpcmpgtq -1032(%rdx){1to4}, %ymm22, %k2

// CHECK: vpcmpq $171, %xmm24, %xmm27, %k5
// CHECK:  encoding: [0x62,0x93,0xa5,0x00,0x1f,0xe8,0xab]
          vpcmpq $171, %xmm24, %xmm27, %k5

// CHECK: vpcmpq $171, %xmm24, %xmm27, %k5 {%k7}
// CHECK:  encoding: [0x62,0x93,0xa5,0x07,0x1f,0xe8,0xab]
          vpcmpq $171, %xmm24, %xmm27, %k5 {%k7}

// CHECK: vpcmpq $123, %xmm24, %xmm27, %k5
// CHECK:  encoding: [0x62,0x93,0xa5,0x00,0x1f,0xe8,0x7b]
          vpcmpq $123, %xmm24, %xmm27, %k5

// CHECK: vpcmpq $123, (%rcx), %xmm27, %k5
// CHECK:  encoding: [0x62,0xf3,0xa5,0x00,0x1f,0x29,0x7b]
          vpcmpq $123, (%rcx), %xmm27, %k5

// CHECK: vpcmpq $123, 291(%rax,%r14,8), %xmm27, %k5
// CHECK:  encoding: [0x62,0xb3,0xa5,0x00,0x1f,0xac,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpcmpq $123, 291(%rax,%r14,8), %xmm27, %k5

// CHECK: vpcmpq $123, (%rcx){1to2}, %xmm27, %k5
// CHECK:  encoding: [0x62,0xf3,0xa5,0x10,0x1f,0x29,0x7b]
          vpcmpq $123, (%rcx){1to2}, %xmm27, %k5

// CHECK: vpcmpq $123, 2032(%rdx), %xmm27, %k5
// CHECK:  encoding: [0x62,0xf3,0xa5,0x00,0x1f,0x6a,0x7f,0x7b]
          vpcmpq $123, 2032(%rdx), %xmm27, %k5

// CHECK: vpcmpq $123, 2048(%rdx), %xmm27, %k5
// CHECK:  encoding: [0x62,0xf3,0xa5,0x00,0x1f,0xaa,0x00,0x08,0x00,0x00,0x7b]
          vpcmpq $123, 2048(%rdx), %xmm27, %k5

// CHECK: vpcmpq $123, -2048(%rdx), %xmm27, %k5
// CHECK:  encoding: [0x62,0xf3,0xa5,0x00,0x1f,0x6a,0x80,0x7b]
          vpcmpq $123, -2048(%rdx), %xmm27, %k5

// CHECK: vpcmpq $123, -2064(%rdx), %xmm27, %k5
// CHECK:  encoding: [0x62,0xf3,0xa5,0x00,0x1f,0xaa,0xf0,0xf7,0xff,0xff,0x7b]
          vpcmpq $123, -2064(%rdx), %xmm27, %k5

// CHECK: vpcmpq $123, 1016(%rdx){1to2}, %xmm27, %k5
// CHECK:  encoding: [0x62,0xf3,0xa5,0x10,0x1f,0x6a,0x7f,0x7b]
          vpcmpq $123, 1016(%rdx){1to2}, %xmm27, %k5

// CHECK: vpcmpq $123, 1024(%rdx){1to2}, %xmm27, %k5
// CHECK:  encoding: [0x62,0xf3,0xa5,0x10,0x1f,0xaa,0x00,0x04,0x00,0x00,0x7b]
          vpcmpq $123, 1024(%rdx){1to2}, %xmm27, %k5

// CHECK: vpcmpq $123, -1024(%rdx){1to2}, %xmm27, %k5
// CHECK:  encoding: [0x62,0xf3,0xa5,0x10,0x1f,0x6a,0x80,0x7b]
          vpcmpq $123, -1024(%rdx){1to2}, %xmm27, %k5

// CHECK: vpcmpq $123, -1032(%rdx){1to2}, %xmm27, %k5
// CHECK:  encoding: [0x62,0xf3,0xa5,0x10,0x1f,0xaa,0xf8,0xfb,0xff,0xff,0x7b]
          vpcmpq $123, -1032(%rdx){1to2}, %xmm27, %k5

// CHECK: vpcmpq $171, %ymm19, %ymm26, %k4
// CHECK:  encoding: [0x62,0xb3,0xad,0x20,0x1f,0xe3,0xab]
          vpcmpq $171, %ymm19, %ymm26, %k4

// CHECK: vpcmpq $171, %ymm19, %ymm26, %k4 {%k6}
// CHECK:  encoding: [0x62,0xb3,0xad,0x26,0x1f,0xe3,0xab]
          vpcmpq $171, %ymm19, %ymm26, %k4 {%k6}

// CHECK: vpcmpq $123, %ymm19, %ymm26, %k4
// CHECK:  encoding: [0x62,0xb3,0xad,0x20,0x1f,0xe3,0x7b]
          vpcmpq $123, %ymm19, %ymm26, %k4

// CHECK: vpcmpq $123, (%rcx), %ymm26, %k4
// CHECK:  encoding: [0x62,0xf3,0xad,0x20,0x1f,0x21,0x7b]
          vpcmpq $123, (%rcx), %ymm26, %k4

// CHECK: vpcmpq $123, 291(%rax,%r14,8), %ymm26, %k4
// CHECK:  encoding: [0x62,0xb3,0xad,0x20,0x1f,0xa4,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpcmpq $123, 291(%rax,%r14,8), %ymm26, %k4

// CHECK: vpcmpq $123, (%rcx){1to4}, %ymm26, %k4
// CHECK:  encoding: [0x62,0xf3,0xad,0x30,0x1f,0x21,0x7b]
          vpcmpq $123, (%rcx){1to4}, %ymm26, %k4

// CHECK: vpcmpq $123, 4064(%rdx), %ymm26, %k4
// CHECK:  encoding: [0x62,0xf3,0xad,0x20,0x1f,0x62,0x7f,0x7b]
          vpcmpq $123, 4064(%rdx), %ymm26, %k4

// CHECK: vpcmpq $123, 4096(%rdx), %ymm26, %k4
// CHECK:  encoding: [0x62,0xf3,0xad,0x20,0x1f,0xa2,0x00,0x10,0x00,0x00,0x7b]
          vpcmpq $123, 4096(%rdx), %ymm26, %k4

// CHECK: vpcmpq $123, -4096(%rdx), %ymm26, %k4
// CHECK:  encoding: [0x62,0xf3,0xad,0x20,0x1f,0x62,0x80,0x7b]
          vpcmpq $123, -4096(%rdx), %ymm26, %k4

// CHECK: vpcmpq $123, -4128(%rdx), %ymm26, %k4
// CHECK:  encoding: [0x62,0xf3,0xad,0x20,0x1f,0xa2,0xe0,0xef,0xff,0xff,0x7b]
          vpcmpq $123, -4128(%rdx), %ymm26, %k4

// CHECK: vpcmpq $123, 1016(%rdx){1to4}, %ymm26, %k4
// CHECK:  encoding: [0x62,0xf3,0xad,0x30,0x1f,0x62,0x7f,0x7b]
          vpcmpq $123, 1016(%rdx){1to4}, %ymm26, %k4

// CHECK: vpcmpq $123, 1024(%rdx){1to4}, %ymm26, %k4
// CHECK:  encoding: [0x62,0xf3,0xad,0x30,0x1f,0xa2,0x00,0x04,0x00,0x00,0x7b]
          vpcmpq $123, 1024(%rdx){1to4}, %ymm26, %k4

// CHECK: vpcmpq $123, -1024(%rdx){1to4}, %ymm26, %k4
// CHECK:  encoding: [0x62,0xf3,0xad,0x30,0x1f,0x62,0x80,0x7b]
          vpcmpq $123, -1024(%rdx){1to4}, %ymm26, %k4

// CHECK: vpcmpq $123, -1032(%rdx){1to4}, %ymm26, %k4
// CHECK:  encoding: [0x62,0xf3,0xad,0x30,0x1f,0xa2,0xf8,0xfb,0xff,0xff,0x7b]
          vpcmpq $123, -1032(%rdx){1to4}, %ymm26, %k4

// CHECK: vpcmpud $171, %xmm21, %xmm22, %k3
// CHECK:  encoding: [0x62,0xb3,0x4d,0x00,0x1e,0xdd,0xab]
          vpcmpud $171, %xmm21, %xmm22, %k3

// CHECK: vpcmpud $171, %xmm21, %xmm22, %k3 {%k1}
// CHECK:  encoding: [0x62,0xb3,0x4d,0x01,0x1e,0xdd,0xab]
          vpcmpud $171, %xmm21, %xmm22, %k3 {%k1}

// CHECK: vpcmpud $123, %xmm21, %xmm22, %k3
// CHECK:  encoding: [0x62,0xb3,0x4d,0x00,0x1e,0xdd,0x7b]
          vpcmpud $123, %xmm21, %xmm22, %k3

// CHECK: vpcmpud $123, (%rcx), %xmm22, %k3
// CHECK:  encoding: [0x62,0xf3,0x4d,0x00,0x1e,0x19,0x7b]
          vpcmpud $123, (%rcx), %xmm22, %k3

// CHECK: vpcmpud $123, 291(%rax,%r14,8), %xmm22, %k3
// CHECK:  encoding: [0x62,0xb3,0x4d,0x00,0x1e,0x9c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpcmpud $123, 291(%rax,%r14,8), %xmm22, %k3

// CHECK: vpcmpud $123, (%rcx){1to4}, %xmm22, %k3
// CHECK:  encoding: [0x62,0xf3,0x4d,0x10,0x1e,0x19,0x7b]
          vpcmpud $123, (%rcx){1to4}, %xmm22, %k3

// CHECK: vpcmpud $123, 2032(%rdx), %xmm22, %k3
// CHECK:  encoding: [0x62,0xf3,0x4d,0x00,0x1e,0x5a,0x7f,0x7b]
          vpcmpud $123, 2032(%rdx), %xmm22, %k3

// CHECK: vpcmpud $123, 2048(%rdx), %xmm22, %k3
// CHECK:  encoding: [0x62,0xf3,0x4d,0x00,0x1e,0x9a,0x00,0x08,0x00,0x00,0x7b]
          vpcmpud $123, 2048(%rdx), %xmm22, %k3

// CHECK: vpcmpud $123, -2048(%rdx), %xmm22, %k3
// CHECK:  encoding: [0x62,0xf3,0x4d,0x00,0x1e,0x5a,0x80,0x7b]
          vpcmpud $123, -2048(%rdx), %xmm22, %k3

// CHECK: vpcmpud $123, -2064(%rdx), %xmm22, %k3
// CHECK:  encoding: [0x62,0xf3,0x4d,0x00,0x1e,0x9a,0xf0,0xf7,0xff,0xff,0x7b]
          vpcmpud $123, -2064(%rdx), %xmm22, %k3

// CHECK: vpcmpud $123, 508(%rdx){1to4}, %xmm22, %k3
// CHECK:  encoding: [0x62,0xf3,0x4d,0x10,0x1e,0x5a,0x7f,0x7b]
          vpcmpud $123, 508(%rdx){1to4}, %xmm22, %k3

// CHECK: vpcmpud $123, 512(%rdx){1to4}, %xmm22, %k3
// CHECK:  encoding: [0x62,0xf3,0x4d,0x10,0x1e,0x9a,0x00,0x02,0x00,0x00,0x7b]
          vpcmpud $123, 512(%rdx){1to4}, %xmm22, %k3

// CHECK: vpcmpud $123, -512(%rdx){1to4}, %xmm22, %k3
// CHECK:  encoding: [0x62,0xf3,0x4d,0x10,0x1e,0x5a,0x80,0x7b]
          vpcmpud $123, -512(%rdx){1to4}, %xmm22, %k3

// CHECK: vpcmpud $123, -516(%rdx){1to4}, %xmm22, %k3
// CHECK:  encoding: [0x62,0xf3,0x4d,0x10,0x1e,0x9a,0xfc,0xfd,0xff,0xff,0x7b]
          vpcmpud $123, -516(%rdx){1to4}, %xmm22, %k3

// CHECK: vpcmpud $171, %ymm20, %ymm30, %k3
// CHECK:  encoding: [0x62,0xb3,0x0d,0x20,0x1e,0xdc,0xab]
          vpcmpud $171, %ymm20, %ymm30, %k3

// CHECK: vpcmpud $171, %ymm20, %ymm30, %k3 {%k6}
// CHECK:  encoding: [0x62,0xb3,0x0d,0x26,0x1e,0xdc,0xab]
          vpcmpud $171, %ymm20, %ymm30, %k3 {%k6}

// CHECK: vpcmpud $123, %ymm20, %ymm30, %k3
// CHECK:  encoding: [0x62,0xb3,0x0d,0x20,0x1e,0xdc,0x7b]
          vpcmpud $123, %ymm20, %ymm30, %k3

// CHECK: vpcmpud $123, (%rcx), %ymm30, %k3
// CHECK:  encoding: [0x62,0xf3,0x0d,0x20,0x1e,0x19,0x7b]
          vpcmpud $123, (%rcx), %ymm30, %k3

// CHECK: vpcmpud $123, 291(%rax,%r14,8), %ymm30, %k3
// CHECK:  encoding: [0x62,0xb3,0x0d,0x20,0x1e,0x9c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpcmpud $123, 291(%rax,%r14,8), %ymm30, %k3

// CHECK: vpcmpud $123, (%rcx){1to8}, %ymm30, %k3
// CHECK:  encoding: [0x62,0xf3,0x0d,0x30,0x1e,0x19,0x7b]
          vpcmpud $123, (%rcx){1to8}, %ymm30, %k3

// CHECK: vpcmpud $123, 4064(%rdx), %ymm30, %k3
// CHECK:  encoding: [0x62,0xf3,0x0d,0x20,0x1e,0x5a,0x7f,0x7b]
          vpcmpud $123, 4064(%rdx), %ymm30, %k3

// CHECK: vpcmpud $123, 4096(%rdx), %ymm30, %k3
// CHECK:  encoding: [0x62,0xf3,0x0d,0x20,0x1e,0x9a,0x00,0x10,0x00,0x00,0x7b]
          vpcmpud $123, 4096(%rdx), %ymm30, %k3

// CHECK: vpcmpud $123, -4096(%rdx), %ymm30, %k3
// CHECK:  encoding: [0x62,0xf3,0x0d,0x20,0x1e,0x5a,0x80,0x7b]
          vpcmpud $123, -4096(%rdx), %ymm30, %k3

// CHECK: vpcmpud $123, -4128(%rdx), %ymm30, %k3
// CHECK:  encoding: [0x62,0xf3,0x0d,0x20,0x1e,0x9a,0xe0,0xef,0xff,0xff,0x7b]
          vpcmpud $123, -4128(%rdx), %ymm30, %k3

// CHECK: vpcmpud $123, 508(%rdx){1to8}, %ymm30, %k3
// CHECK:  encoding: [0x62,0xf3,0x0d,0x30,0x1e,0x5a,0x7f,0x7b]
          vpcmpud $123, 508(%rdx){1to8}, %ymm30, %k3

// CHECK: vpcmpud $123, 512(%rdx){1to8}, %ymm30, %k3
// CHECK:  encoding: [0x62,0xf3,0x0d,0x30,0x1e,0x9a,0x00,0x02,0x00,0x00,0x7b]
          vpcmpud $123, 512(%rdx){1to8}, %ymm30, %k3

// CHECK: vpcmpud $123, -512(%rdx){1to8}, %ymm30, %k3
// CHECK:  encoding: [0x62,0xf3,0x0d,0x30,0x1e,0x5a,0x80,0x7b]
          vpcmpud $123, -512(%rdx){1to8}, %ymm30, %k3

// CHECK: vpcmpud $123, -516(%rdx){1to8}, %ymm30, %k3
// CHECK:  encoding: [0x62,0xf3,0x0d,0x30,0x1e,0x9a,0xfc,0xfd,0xff,0xff,0x7b]
          vpcmpud $123, -516(%rdx){1to8}, %ymm30, %k3

// CHECK: vpcmpuq $171, %xmm28, %xmm28, %k5
// CHECK:  encoding: [0x62,0x93,0x9d,0x00,0x1e,0xec,0xab]
          vpcmpuq $171, %xmm28, %xmm28, %k5

// CHECK: vpcmpuq $171, %xmm28, %xmm28, %k5 {%k4}
// CHECK:  encoding: [0x62,0x93,0x9d,0x04,0x1e,0xec,0xab]
          vpcmpuq $171, %xmm28, %xmm28, %k5 {%k4}

// CHECK: vpcmpuq $123, %xmm28, %xmm28, %k5
// CHECK:  encoding: [0x62,0x93,0x9d,0x00,0x1e,0xec,0x7b]
          vpcmpuq $123, %xmm28, %xmm28, %k5

// CHECK: vpcmpuq $123, (%rcx), %xmm28, %k5
// CHECK:  encoding: [0x62,0xf3,0x9d,0x00,0x1e,0x29,0x7b]
          vpcmpuq $123, (%rcx), %xmm28, %k5

// CHECK: vpcmpuq $123, 291(%rax,%r14,8), %xmm28, %k5
// CHECK:  encoding: [0x62,0xb3,0x9d,0x00,0x1e,0xac,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpcmpuq $123, 291(%rax,%r14,8), %xmm28, %k5

// CHECK: vpcmpuq $123, (%rcx){1to2}, %xmm28, %k5
// CHECK:  encoding: [0x62,0xf3,0x9d,0x10,0x1e,0x29,0x7b]
          vpcmpuq $123, (%rcx){1to2}, %xmm28, %k5

// CHECK: vpcmpuq $123, 2032(%rdx), %xmm28, %k5
// CHECK:  encoding: [0x62,0xf3,0x9d,0x00,0x1e,0x6a,0x7f,0x7b]
          vpcmpuq $123, 2032(%rdx), %xmm28, %k5

// CHECK: vpcmpuq $123, 2048(%rdx), %xmm28, %k5
// CHECK:  encoding: [0x62,0xf3,0x9d,0x00,0x1e,0xaa,0x00,0x08,0x00,0x00,0x7b]
          vpcmpuq $123, 2048(%rdx), %xmm28, %k5

// CHECK: vpcmpuq $123, -2048(%rdx), %xmm28, %k5
// CHECK:  encoding: [0x62,0xf3,0x9d,0x00,0x1e,0x6a,0x80,0x7b]
          vpcmpuq $123, -2048(%rdx), %xmm28, %k5

// CHECK: vpcmpuq $123, -2064(%rdx), %xmm28, %k5
// CHECK:  encoding: [0x62,0xf3,0x9d,0x00,0x1e,0xaa,0xf0,0xf7,0xff,0xff,0x7b]
          vpcmpuq $123, -2064(%rdx), %xmm28, %k5

// CHECK: vpcmpuq $123, 1016(%rdx){1to2}, %xmm28, %k5
// CHECK:  encoding: [0x62,0xf3,0x9d,0x10,0x1e,0x6a,0x7f,0x7b]
          vpcmpuq $123, 1016(%rdx){1to2}, %xmm28, %k5

// CHECK: vpcmpuq $123, 1024(%rdx){1to2}, %xmm28, %k5
// CHECK:  encoding: [0x62,0xf3,0x9d,0x10,0x1e,0xaa,0x00,0x04,0x00,0x00,0x7b]
          vpcmpuq $123, 1024(%rdx){1to2}, %xmm28, %k5

// CHECK: vpcmpuq $123, -1024(%rdx){1to2}, %xmm28, %k5
// CHECK:  encoding: [0x62,0xf3,0x9d,0x10,0x1e,0x6a,0x80,0x7b]
          vpcmpuq $123, -1024(%rdx){1to2}, %xmm28, %k5

// CHECK: vpcmpuq $123, -1032(%rdx){1to2}, %xmm28, %k5
// CHECK:  encoding: [0x62,0xf3,0x9d,0x10,0x1e,0xaa,0xf8,0xfb,0xff,0xff,0x7b]
          vpcmpuq $123, -1032(%rdx){1to2}, %xmm28, %k5

// CHECK: vpcmpuq $171, %ymm26, %ymm22, %k3
// CHECK:  encoding: [0x62,0x93,0xcd,0x20,0x1e,0xda,0xab]
          vpcmpuq $171, %ymm26, %ymm22, %k3

// CHECK: vpcmpuq $171, %ymm26, %ymm22, %k3 {%k3}
// CHECK:  encoding: [0x62,0x93,0xcd,0x23,0x1e,0xda,0xab]
          vpcmpuq $171, %ymm26, %ymm22, %k3 {%k3}

// CHECK: vpcmpuq $123, %ymm26, %ymm22, %k3
// CHECK:  encoding: [0x62,0x93,0xcd,0x20,0x1e,0xda,0x7b]
          vpcmpuq $123, %ymm26, %ymm22, %k3

// CHECK: vpcmpuq $123, (%rcx), %ymm22, %k3
// CHECK:  encoding: [0x62,0xf3,0xcd,0x20,0x1e,0x19,0x7b]
          vpcmpuq $123, (%rcx), %ymm22, %k3

// CHECK: vpcmpuq $123, 291(%rax,%r14,8), %ymm22, %k3
// CHECK:  encoding: [0x62,0xb3,0xcd,0x20,0x1e,0x9c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpcmpuq $123, 291(%rax,%r14,8), %ymm22, %k3

// CHECK: vpcmpuq $123, (%rcx){1to4}, %ymm22, %k3
// CHECK:  encoding: [0x62,0xf3,0xcd,0x30,0x1e,0x19,0x7b]
          vpcmpuq $123, (%rcx){1to4}, %ymm22, %k3

// CHECK: vpcmpuq $123, 4064(%rdx), %ymm22, %k3
// CHECK:  encoding: [0x62,0xf3,0xcd,0x20,0x1e,0x5a,0x7f,0x7b]
          vpcmpuq $123, 4064(%rdx), %ymm22, %k3

// CHECK: vpcmpuq $123, 4096(%rdx), %ymm22, %k3
// CHECK:  encoding: [0x62,0xf3,0xcd,0x20,0x1e,0x9a,0x00,0x10,0x00,0x00,0x7b]
          vpcmpuq $123, 4096(%rdx), %ymm22, %k3

// CHECK: vpcmpuq $123, -4096(%rdx), %ymm22, %k3
// CHECK:  encoding: [0x62,0xf3,0xcd,0x20,0x1e,0x5a,0x80,0x7b]
          vpcmpuq $123, -4096(%rdx), %ymm22, %k3

// CHECK: vpcmpuq $123, -4128(%rdx), %ymm22, %k3
// CHECK:  encoding: [0x62,0xf3,0xcd,0x20,0x1e,0x9a,0xe0,0xef,0xff,0xff,0x7b]
          vpcmpuq $123, -4128(%rdx), %ymm22, %k3

// CHECK: vpcmpuq $123, 1016(%rdx){1to4}, %ymm22, %k3
// CHECK:  encoding: [0x62,0xf3,0xcd,0x30,0x1e,0x5a,0x7f,0x7b]
          vpcmpuq $123, 1016(%rdx){1to4}, %ymm22, %k3

// CHECK: vpcmpuq $123, 1024(%rdx){1to4}, %ymm22, %k3
// CHECK:  encoding: [0x62,0xf3,0xcd,0x30,0x1e,0x9a,0x00,0x04,0x00,0x00,0x7b]
          vpcmpuq $123, 1024(%rdx){1to4}, %ymm22, %k3

// CHECK: vpcmpuq $123, -1024(%rdx){1to4}, %ymm22, %k3
// CHECK:  encoding: [0x62,0xf3,0xcd,0x30,0x1e,0x5a,0x80,0x7b]
          vpcmpuq $123, -1024(%rdx){1to4}, %ymm22, %k3

// CHECK: vpcmpuq $123, -1032(%rdx){1to4}, %ymm22, %k3
// CHECK:  encoding: [0x62,0xf3,0xcd,0x30,0x1e,0x9a,0xf8,0xfb,0xff,0xff,0x7b]
          vpcmpuq $123, -1032(%rdx){1to4}, %ymm22, %k3

// CHECK: vpmaxsd %xmm26, %xmm22, %xmm19
// CHECK:  encoding: [0x62,0x82,0x4d,0x00,0x3d,0xda]
          vpmaxsd %xmm26, %xmm22, %xmm19

// CHECK: vpmaxsd %xmm26, %xmm22, %xmm19 {%k2}
// CHECK:  encoding: [0x62,0x82,0x4d,0x02,0x3d,0xda]
          vpmaxsd %xmm26, %xmm22, %xmm19 {%k2}

// CHECK: vpmaxsd %xmm26, %xmm22, %xmm19 {%k2} {z}
// CHECK:  encoding: [0x62,0x82,0x4d,0x82,0x3d,0xda]
          vpmaxsd %xmm26, %xmm22, %xmm19 {%k2} {z}

// CHECK: vpmaxsd (%rcx), %xmm22, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x4d,0x00,0x3d,0x19]
          vpmaxsd (%rcx), %xmm22, %xmm19

// CHECK: vpmaxsd 291(%rax,%r14,8), %xmm22, %xmm19
// CHECK:  encoding: [0x62,0xa2,0x4d,0x00,0x3d,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpmaxsd 291(%rax,%r14,8), %xmm22, %xmm19

// CHECK: vpmaxsd (%rcx){1to4}, %xmm22, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x4d,0x10,0x3d,0x19]
          vpmaxsd (%rcx){1to4}, %xmm22, %xmm19

// CHECK: vpmaxsd 2032(%rdx), %xmm22, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x4d,0x00,0x3d,0x5a,0x7f]
          vpmaxsd 2032(%rdx), %xmm22, %xmm19

// CHECK: vpmaxsd 2048(%rdx), %xmm22, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x4d,0x00,0x3d,0x9a,0x00,0x08,0x00,0x00]
          vpmaxsd 2048(%rdx), %xmm22, %xmm19

// CHECK: vpmaxsd -2048(%rdx), %xmm22, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x4d,0x00,0x3d,0x5a,0x80]
          vpmaxsd -2048(%rdx), %xmm22, %xmm19

// CHECK: vpmaxsd -2064(%rdx), %xmm22, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x4d,0x00,0x3d,0x9a,0xf0,0xf7,0xff,0xff]
          vpmaxsd -2064(%rdx), %xmm22, %xmm19

// CHECK: vpmaxsd 508(%rdx){1to4}, %xmm22, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x4d,0x10,0x3d,0x5a,0x7f]
          vpmaxsd 508(%rdx){1to4}, %xmm22, %xmm19

// CHECK: vpmaxsd 512(%rdx){1to4}, %xmm22, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x4d,0x10,0x3d,0x9a,0x00,0x02,0x00,0x00]
          vpmaxsd 512(%rdx){1to4}, %xmm22, %xmm19

// CHECK: vpmaxsd -512(%rdx){1to4}, %xmm22, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x4d,0x10,0x3d,0x5a,0x80]
          vpmaxsd -512(%rdx){1to4}, %xmm22, %xmm19

// CHECK: vpmaxsd -516(%rdx){1to4}, %xmm22, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x4d,0x10,0x3d,0x9a,0xfc,0xfd,0xff,0xff]
          vpmaxsd -516(%rdx){1to4}, %xmm22, %xmm19

// CHECK: vpmaxsd %ymm23, %ymm24, %ymm27
// CHECK:  encoding: [0x62,0x22,0x3d,0x20,0x3d,0xdf]
          vpmaxsd %ymm23, %ymm24, %ymm27

// CHECK: vpmaxsd %ymm23, %ymm24, %ymm27 {%k6}
// CHECK:  encoding: [0x62,0x22,0x3d,0x26,0x3d,0xdf]
          vpmaxsd %ymm23, %ymm24, %ymm27 {%k6}

// CHECK: vpmaxsd %ymm23, %ymm24, %ymm27 {%k6} {z}
// CHECK:  encoding: [0x62,0x22,0x3d,0xa6,0x3d,0xdf]
          vpmaxsd %ymm23, %ymm24, %ymm27 {%k6} {z}

// CHECK: vpmaxsd (%rcx), %ymm24, %ymm27
// CHECK:  encoding: [0x62,0x62,0x3d,0x20,0x3d,0x19]
          vpmaxsd (%rcx), %ymm24, %ymm27

// CHECK: vpmaxsd 291(%rax,%r14,8), %ymm24, %ymm27
// CHECK:  encoding: [0x62,0x22,0x3d,0x20,0x3d,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpmaxsd 291(%rax,%r14,8), %ymm24, %ymm27

// CHECK: vpmaxsd (%rcx){1to8}, %ymm24, %ymm27
// CHECK:  encoding: [0x62,0x62,0x3d,0x30,0x3d,0x19]
          vpmaxsd (%rcx){1to8}, %ymm24, %ymm27

// CHECK: vpmaxsd 4064(%rdx), %ymm24, %ymm27
// CHECK:  encoding: [0x62,0x62,0x3d,0x20,0x3d,0x5a,0x7f]
          vpmaxsd 4064(%rdx), %ymm24, %ymm27

// CHECK: vpmaxsd 4096(%rdx), %ymm24, %ymm27
// CHECK:  encoding: [0x62,0x62,0x3d,0x20,0x3d,0x9a,0x00,0x10,0x00,0x00]
          vpmaxsd 4096(%rdx), %ymm24, %ymm27

// CHECK: vpmaxsd -4096(%rdx), %ymm24, %ymm27
// CHECK:  encoding: [0x62,0x62,0x3d,0x20,0x3d,0x5a,0x80]
          vpmaxsd -4096(%rdx), %ymm24, %ymm27

// CHECK: vpmaxsd -4128(%rdx), %ymm24, %ymm27
// CHECK:  encoding: [0x62,0x62,0x3d,0x20,0x3d,0x9a,0xe0,0xef,0xff,0xff]
          vpmaxsd -4128(%rdx), %ymm24, %ymm27

// CHECK: vpmaxsd 508(%rdx){1to8}, %ymm24, %ymm27
// CHECK:  encoding: [0x62,0x62,0x3d,0x30,0x3d,0x5a,0x7f]
          vpmaxsd 508(%rdx){1to8}, %ymm24, %ymm27

// CHECK: vpmaxsd 512(%rdx){1to8}, %ymm24, %ymm27
// CHECK:  encoding: [0x62,0x62,0x3d,0x30,0x3d,0x9a,0x00,0x02,0x00,0x00]
          vpmaxsd 512(%rdx){1to8}, %ymm24, %ymm27

// CHECK: vpmaxsd -512(%rdx){1to8}, %ymm24, %ymm27
// CHECK:  encoding: [0x62,0x62,0x3d,0x30,0x3d,0x5a,0x80]
          vpmaxsd -512(%rdx){1to8}, %ymm24, %ymm27

// CHECK: vpmaxsd -516(%rdx){1to8}, %ymm24, %ymm27
// CHECK:  encoding: [0x62,0x62,0x3d,0x30,0x3d,0x9a,0xfc,0xfd,0xff,0xff]
          vpmaxsd -516(%rdx){1to8}, %ymm24, %ymm27

// CHECK: vpmaxsq %xmm25, %xmm23, %xmm23
// CHECK:  encoding: [0x62,0x82,0xc5,0x00,0x3d,0xf9]
          vpmaxsq %xmm25, %xmm23, %xmm23

// CHECK: vpmaxsq %xmm25, %xmm23, %xmm23 {%k2}
// CHECK:  encoding: [0x62,0x82,0xc5,0x02,0x3d,0xf9]
          vpmaxsq %xmm25, %xmm23, %xmm23 {%k2}

// CHECK: vpmaxsq %xmm25, %xmm23, %xmm23 {%k2} {z}
// CHECK:  encoding: [0x62,0x82,0xc5,0x82,0x3d,0xf9]
          vpmaxsq %xmm25, %xmm23, %xmm23 {%k2} {z}

// CHECK: vpmaxsq (%rcx), %xmm23, %xmm23
// CHECK:  encoding: [0x62,0xe2,0xc5,0x00,0x3d,0x39]
          vpmaxsq (%rcx), %xmm23, %xmm23

// CHECK: vpmaxsq 291(%rax,%r14,8), %xmm23, %xmm23
// CHECK:  encoding: [0x62,0xa2,0xc5,0x00,0x3d,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vpmaxsq 291(%rax,%r14,8), %xmm23, %xmm23

// CHECK: vpmaxsq (%rcx){1to2}, %xmm23, %xmm23
// CHECK:  encoding: [0x62,0xe2,0xc5,0x10,0x3d,0x39]
          vpmaxsq (%rcx){1to2}, %xmm23, %xmm23

// CHECK: vpmaxsq 2032(%rdx), %xmm23, %xmm23
// CHECK:  encoding: [0x62,0xe2,0xc5,0x00,0x3d,0x7a,0x7f]
          vpmaxsq 2032(%rdx), %xmm23, %xmm23

// CHECK: vpmaxsq 2048(%rdx), %xmm23, %xmm23
// CHECK:  encoding: [0x62,0xe2,0xc5,0x00,0x3d,0xba,0x00,0x08,0x00,0x00]
          vpmaxsq 2048(%rdx), %xmm23, %xmm23

// CHECK: vpmaxsq -2048(%rdx), %xmm23, %xmm23
// CHECK:  encoding: [0x62,0xe2,0xc5,0x00,0x3d,0x7a,0x80]
          vpmaxsq -2048(%rdx), %xmm23, %xmm23

// CHECK: vpmaxsq -2064(%rdx), %xmm23, %xmm23
// CHECK:  encoding: [0x62,0xe2,0xc5,0x00,0x3d,0xba,0xf0,0xf7,0xff,0xff]
          vpmaxsq -2064(%rdx), %xmm23, %xmm23

// CHECK: vpmaxsq 1016(%rdx){1to2}, %xmm23, %xmm23
// CHECK:  encoding: [0x62,0xe2,0xc5,0x10,0x3d,0x7a,0x7f]
          vpmaxsq 1016(%rdx){1to2}, %xmm23, %xmm23

// CHECK: vpmaxsq 1024(%rdx){1to2}, %xmm23, %xmm23
// CHECK:  encoding: [0x62,0xe2,0xc5,0x10,0x3d,0xba,0x00,0x04,0x00,0x00]
          vpmaxsq 1024(%rdx){1to2}, %xmm23, %xmm23

// CHECK: vpmaxsq -1024(%rdx){1to2}, %xmm23, %xmm23
// CHECK:  encoding: [0x62,0xe2,0xc5,0x10,0x3d,0x7a,0x80]
          vpmaxsq -1024(%rdx){1to2}, %xmm23, %xmm23

// CHECK: vpmaxsq -1032(%rdx){1to2}, %xmm23, %xmm23
// CHECK:  encoding: [0x62,0xe2,0xc5,0x10,0x3d,0xba,0xf8,0xfb,0xff,0xff]
          vpmaxsq -1032(%rdx){1to2}, %xmm23, %xmm23

// CHECK: vpmaxsq %ymm25, %ymm20, %ymm30
// CHECK:  encoding: [0x62,0x02,0xdd,0x20,0x3d,0xf1]
          vpmaxsq %ymm25, %ymm20, %ymm30

// CHECK: vpmaxsq %ymm25, %ymm20, %ymm30 {%k6}
// CHECK:  encoding: [0x62,0x02,0xdd,0x26,0x3d,0xf1]
          vpmaxsq %ymm25, %ymm20, %ymm30 {%k6}

// CHECK: vpmaxsq %ymm25, %ymm20, %ymm30 {%k6} {z}
// CHECK:  encoding: [0x62,0x02,0xdd,0xa6,0x3d,0xf1]
          vpmaxsq %ymm25, %ymm20, %ymm30 {%k6} {z}

// CHECK: vpmaxsq (%rcx), %ymm20, %ymm30
// CHECK:  encoding: [0x62,0x62,0xdd,0x20,0x3d,0x31]
          vpmaxsq (%rcx), %ymm20, %ymm30

// CHECK: vpmaxsq 291(%rax,%r14,8), %ymm20, %ymm30
// CHECK:  encoding: [0x62,0x22,0xdd,0x20,0x3d,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpmaxsq 291(%rax,%r14,8), %ymm20, %ymm30

// CHECK: vpmaxsq (%rcx){1to4}, %ymm20, %ymm30
// CHECK:  encoding: [0x62,0x62,0xdd,0x30,0x3d,0x31]
          vpmaxsq (%rcx){1to4}, %ymm20, %ymm30

// CHECK: vpmaxsq 4064(%rdx), %ymm20, %ymm30
// CHECK:  encoding: [0x62,0x62,0xdd,0x20,0x3d,0x72,0x7f]
          vpmaxsq 4064(%rdx), %ymm20, %ymm30

// CHECK: vpmaxsq 4096(%rdx), %ymm20, %ymm30
// CHECK:  encoding: [0x62,0x62,0xdd,0x20,0x3d,0xb2,0x00,0x10,0x00,0x00]
          vpmaxsq 4096(%rdx), %ymm20, %ymm30

// CHECK: vpmaxsq -4096(%rdx), %ymm20, %ymm30
// CHECK:  encoding: [0x62,0x62,0xdd,0x20,0x3d,0x72,0x80]
          vpmaxsq -4096(%rdx), %ymm20, %ymm30

// CHECK: vpmaxsq -4128(%rdx), %ymm20, %ymm30
// CHECK:  encoding: [0x62,0x62,0xdd,0x20,0x3d,0xb2,0xe0,0xef,0xff,0xff]
          vpmaxsq -4128(%rdx), %ymm20, %ymm30

// CHECK: vpmaxsq 1016(%rdx){1to4}, %ymm20, %ymm30
// CHECK:  encoding: [0x62,0x62,0xdd,0x30,0x3d,0x72,0x7f]
          vpmaxsq 1016(%rdx){1to4}, %ymm20, %ymm30

// CHECK: vpmaxsq 1024(%rdx){1to4}, %ymm20, %ymm30
// CHECK:  encoding: [0x62,0x62,0xdd,0x30,0x3d,0xb2,0x00,0x04,0x00,0x00]
          vpmaxsq 1024(%rdx){1to4}, %ymm20, %ymm30

// CHECK: vpmaxsq -1024(%rdx){1to4}, %ymm20, %ymm30
// CHECK:  encoding: [0x62,0x62,0xdd,0x30,0x3d,0x72,0x80]
          vpmaxsq -1024(%rdx){1to4}, %ymm20, %ymm30

// CHECK: vpmaxsq -1032(%rdx){1to4}, %ymm20, %ymm30
// CHECK:  encoding: [0x62,0x62,0xdd,0x30,0x3d,0xb2,0xf8,0xfb,0xff,0xff]
          vpmaxsq -1032(%rdx){1to4}, %ymm20, %ymm30

// CHECK: vpmaxud %xmm19, %xmm17, %xmm21
// CHECK:  encoding: [0x62,0xa2,0x75,0x00,0x3f,0xeb]
          vpmaxud %xmm19, %xmm17, %xmm21

// CHECK: vpmaxud %xmm19, %xmm17, %xmm21 {%k7}
// CHECK:  encoding: [0x62,0xa2,0x75,0x07,0x3f,0xeb]
          vpmaxud %xmm19, %xmm17, %xmm21 {%k7}

// CHECK: vpmaxud %xmm19, %xmm17, %xmm21 {%k7} {z}
// CHECK:  encoding: [0x62,0xa2,0x75,0x87,0x3f,0xeb]
          vpmaxud %xmm19, %xmm17, %xmm21 {%k7} {z}

// CHECK: vpmaxud (%rcx), %xmm17, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x75,0x00,0x3f,0x29]
          vpmaxud (%rcx), %xmm17, %xmm21

// CHECK: vpmaxud 291(%rax,%r14,8), %xmm17, %xmm21
// CHECK:  encoding: [0x62,0xa2,0x75,0x00,0x3f,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpmaxud 291(%rax,%r14,8), %xmm17, %xmm21

// CHECK: vpmaxud (%rcx){1to4}, %xmm17, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x75,0x10,0x3f,0x29]
          vpmaxud (%rcx){1to4}, %xmm17, %xmm21

// CHECK: vpmaxud 2032(%rdx), %xmm17, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x75,0x00,0x3f,0x6a,0x7f]
          vpmaxud 2032(%rdx), %xmm17, %xmm21

// CHECK: vpmaxud 2048(%rdx), %xmm17, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x75,0x00,0x3f,0xaa,0x00,0x08,0x00,0x00]
          vpmaxud 2048(%rdx), %xmm17, %xmm21

// CHECK: vpmaxud -2048(%rdx), %xmm17, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x75,0x00,0x3f,0x6a,0x80]
          vpmaxud -2048(%rdx), %xmm17, %xmm21

// CHECK: vpmaxud -2064(%rdx), %xmm17, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x75,0x00,0x3f,0xaa,0xf0,0xf7,0xff,0xff]
          vpmaxud -2064(%rdx), %xmm17, %xmm21

// CHECK: vpmaxud 508(%rdx){1to4}, %xmm17, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x75,0x10,0x3f,0x6a,0x7f]
          vpmaxud 508(%rdx){1to4}, %xmm17, %xmm21

// CHECK: vpmaxud 512(%rdx){1to4}, %xmm17, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x75,0x10,0x3f,0xaa,0x00,0x02,0x00,0x00]
          vpmaxud 512(%rdx){1to4}, %xmm17, %xmm21

// CHECK: vpmaxud -512(%rdx){1to4}, %xmm17, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x75,0x10,0x3f,0x6a,0x80]
          vpmaxud -512(%rdx){1to4}, %xmm17, %xmm21

// CHECK: vpmaxud -516(%rdx){1to4}, %xmm17, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x75,0x10,0x3f,0xaa,0xfc,0xfd,0xff,0xff]
          vpmaxud -516(%rdx){1to4}, %xmm17, %xmm21

// CHECK: vpmaxud %ymm23, %ymm23, %ymm28
// CHECK:  encoding: [0x62,0x22,0x45,0x20,0x3f,0xe7]
          vpmaxud %ymm23, %ymm23, %ymm28

// CHECK: vpmaxud %ymm23, %ymm23, %ymm28 {%k7}
// CHECK:  encoding: [0x62,0x22,0x45,0x27,0x3f,0xe7]
          vpmaxud %ymm23, %ymm23, %ymm28 {%k7}

// CHECK: vpmaxud %ymm23, %ymm23, %ymm28 {%k7} {z}
// CHECK:  encoding: [0x62,0x22,0x45,0xa7,0x3f,0xe7]
          vpmaxud %ymm23, %ymm23, %ymm28 {%k7} {z}

// CHECK: vpmaxud (%rcx), %ymm23, %ymm28
// CHECK:  encoding: [0x62,0x62,0x45,0x20,0x3f,0x21]
          vpmaxud (%rcx), %ymm23, %ymm28

// CHECK: vpmaxud 291(%rax,%r14,8), %ymm23, %ymm28
// CHECK:  encoding: [0x62,0x22,0x45,0x20,0x3f,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpmaxud 291(%rax,%r14,8), %ymm23, %ymm28

// CHECK: vpmaxud (%rcx){1to8}, %ymm23, %ymm28
// CHECK:  encoding: [0x62,0x62,0x45,0x30,0x3f,0x21]
          vpmaxud (%rcx){1to8}, %ymm23, %ymm28

// CHECK: vpmaxud 4064(%rdx), %ymm23, %ymm28
// CHECK:  encoding: [0x62,0x62,0x45,0x20,0x3f,0x62,0x7f]
          vpmaxud 4064(%rdx), %ymm23, %ymm28

// CHECK: vpmaxud 4096(%rdx), %ymm23, %ymm28
// CHECK:  encoding: [0x62,0x62,0x45,0x20,0x3f,0xa2,0x00,0x10,0x00,0x00]
          vpmaxud 4096(%rdx), %ymm23, %ymm28

// CHECK: vpmaxud -4096(%rdx), %ymm23, %ymm28
// CHECK:  encoding: [0x62,0x62,0x45,0x20,0x3f,0x62,0x80]
          vpmaxud -4096(%rdx), %ymm23, %ymm28

// CHECK: vpmaxud -4128(%rdx), %ymm23, %ymm28
// CHECK:  encoding: [0x62,0x62,0x45,0x20,0x3f,0xa2,0xe0,0xef,0xff,0xff]
          vpmaxud -4128(%rdx), %ymm23, %ymm28

// CHECK: vpmaxud 508(%rdx){1to8}, %ymm23, %ymm28
// CHECK:  encoding: [0x62,0x62,0x45,0x30,0x3f,0x62,0x7f]
          vpmaxud 508(%rdx){1to8}, %ymm23, %ymm28

// CHECK: vpmaxud 512(%rdx){1to8}, %ymm23, %ymm28
// CHECK:  encoding: [0x62,0x62,0x45,0x30,0x3f,0xa2,0x00,0x02,0x00,0x00]
          vpmaxud 512(%rdx){1to8}, %ymm23, %ymm28

// CHECK: vpmaxud -512(%rdx){1to8}, %ymm23, %ymm28
// CHECK:  encoding: [0x62,0x62,0x45,0x30,0x3f,0x62,0x80]
          vpmaxud -512(%rdx){1to8}, %ymm23, %ymm28

// CHECK: vpmaxud -516(%rdx){1to8}, %ymm23, %ymm28
// CHECK:  encoding: [0x62,0x62,0x45,0x30,0x3f,0xa2,0xfc,0xfd,0xff,0xff]
          vpmaxud -516(%rdx){1to8}, %ymm23, %ymm28

// CHECK: vpmaxuq %xmm25, %xmm26, %xmm26
// CHECK:  encoding: [0x62,0x02,0xad,0x00,0x3f,0xd1]
          vpmaxuq %xmm25, %xmm26, %xmm26

// CHECK: vpmaxuq %xmm25, %xmm26, %xmm26 {%k7}
// CHECK:  encoding: [0x62,0x02,0xad,0x07,0x3f,0xd1]
          vpmaxuq %xmm25, %xmm26, %xmm26 {%k7}

// CHECK: vpmaxuq %xmm25, %xmm26, %xmm26 {%k7} {z}
// CHECK:  encoding: [0x62,0x02,0xad,0x87,0x3f,0xd1]
          vpmaxuq %xmm25, %xmm26, %xmm26 {%k7} {z}

// CHECK: vpmaxuq (%rcx), %xmm26, %xmm26
// CHECK:  encoding: [0x62,0x62,0xad,0x00,0x3f,0x11]
          vpmaxuq (%rcx), %xmm26, %xmm26

// CHECK: vpmaxuq 291(%rax,%r14,8), %xmm26, %xmm26
// CHECK:  encoding: [0x62,0x22,0xad,0x00,0x3f,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpmaxuq 291(%rax,%r14,8), %xmm26, %xmm26

// CHECK: vpmaxuq (%rcx){1to2}, %xmm26, %xmm26
// CHECK:  encoding: [0x62,0x62,0xad,0x10,0x3f,0x11]
          vpmaxuq (%rcx){1to2}, %xmm26, %xmm26

// CHECK: vpmaxuq 2032(%rdx), %xmm26, %xmm26
// CHECK:  encoding: [0x62,0x62,0xad,0x00,0x3f,0x52,0x7f]
          vpmaxuq 2032(%rdx), %xmm26, %xmm26

// CHECK: vpmaxuq 2048(%rdx), %xmm26, %xmm26
// CHECK:  encoding: [0x62,0x62,0xad,0x00,0x3f,0x92,0x00,0x08,0x00,0x00]
          vpmaxuq 2048(%rdx), %xmm26, %xmm26

// CHECK: vpmaxuq -2048(%rdx), %xmm26, %xmm26
// CHECK:  encoding: [0x62,0x62,0xad,0x00,0x3f,0x52,0x80]
          vpmaxuq -2048(%rdx), %xmm26, %xmm26

// CHECK: vpmaxuq -2064(%rdx), %xmm26, %xmm26
// CHECK:  encoding: [0x62,0x62,0xad,0x00,0x3f,0x92,0xf0,0xf7,0xff,0xff]
          vpmaxuq -2064(%rdx), %xmm26, %xmm26

// CHECK: vpmaxuq 1016(%rdx){1to2}, %xmm26, %xmm26
// CHECK:  encoding: [0x62,0x62,0xad,0x10,0x3f,0x52,0x7f]
          vpmaxuq 1016(%rdx){1to2}, %xmm26, %xmm26

// CHECK: vpmaxuq 1024(%rdx){1to2}, %xmm26, %xmm26
// CHECK:  encoding: [0x62,0x62,0xad,0x10,0x3f,0x92,0x00,0x04,0x00,0x00]
          vpmaxuq 1024(%rdx){1to2}, %xmm26, %xmm26

// CHECK: vpmaxuq -1024(%rdx){1to2}, %xmm26, %xmm26
// CHECK:  encoding: [0x62,0x62,0xad,0x10,0x3f,0x52,0x80]
          vpmaxuq -1024(%rdx){1to2}, %xmm26, %xmm26

// CHECK: vpmaxuq -1032(%rdx){1to2}, %xmm26, %xmm26
// CHECK:  encoding: [0x62,0x62,0xad,0x10,0x3f,0x92,0xf8,0xfb,0xff,0xff]
          vpmaxuq -1032(%rdx){1to2}, %xmm26, %xmm26

// CHECK: vpmaxuq %ymm20, %ymm17, %ymm30
// CHECK:  encoding: [0x62,0x22,0xf5,0x20,0x3f,0xf4]
          vpmaxuq %ymm20, %ymm17, %ymm30

// CHECK: vpmaxuq %ymm20, %ymm17, %ymm30 {%k4}
// CHECK:  encoding: [0x62,0x22,0xf5,0x24,0x3f,0xf4]
          vpmaxuq %ymm20, %ymm17, %ymm30 {%k4}

// CHECK: vpmaxuq %ymm20, %ymm17, %ymm30 {%k4} {z}
// CHECK:  encoding: [0x62,0x22,0xf5,0xa4,0x3f,0xf4]
          vpmaxuq %ymm20, %ymm17, %ymm30 {%k4} {z}

// CHECK: vpmaxuq (%rcx), %ymm17, %ymm30
// CHECK:  encoding: [0x62,0x62,0xf5,0x20,0x3f,0x31]
          vpmaxuq (%rcx), %ymm17, %ymm30

// CHECK: vpmaxuq 291(%rax,%r14,8), %ymm17, %ymm30
// CHECK:  encoding: [0x62,0x22,0xf5,0x20,0x3f,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpmaxuq 291(%rax,%r14,8), %ymm17, %ymm30

// CHECK: vpmaxuq (%rcx){1to4}, %ymm17, %ymm30
// CHECK:  encoding: [0x62,0x62,0xf5,0x30,0x3f,0x31]
          vpmaxuq (%rcx){1to4}, %ymm17, %ymm30

// CHECK: vpmaxuq 4064(%rdx), %ymm17, %ymm30
// CHECK:  encoding: [0x62,0x62,0xf5,0x20,0x3f,0x72,0x7f]
          vpmaxuq 4064(%rdx), %ymm17, %ymm30

// CHECK: vpmaxuq 4096(%rdx), %ymm17, %ymm30
// CHECK:  encoding: [0x62,0x62,0xf5,0x20,0x3f,0xb2,0x00,0x10,0x00,0x00]
          vpmaxuq 4096(%rdx), %ymm17, %ymm30

// CHECK: vpmaxuq -4096(%rdx), %ymm17, %ymm30
// CHECK:  encoding: [0x62,0x62,0xf5,0x20,0x3f,0x72,0x80]
          vpmaxuq -4096(%rdx), %ymm17, %ymm30

// CHECK: vpmaxuq -4128(%rdx), %ymm17, %ymm30
// CHECK:  encoding: [0x62,0x62,0xf5,0x20,0x3f,0xb2,0xe0,0xef,0xff,0xff]
          vpmaxuq -4128(%rdx), %ymm17, %ymm30

// CHECK: vpmaxuq 1016(%rdx){1to4}, %ymm17, %ymm30
// CHECK:  encoding: [0x62,0x62,0xf5,0x30,0x3f,0x72,0x7f]
          vpmaxuq 1016(%rdx){1to4}, %ymm17, %ymm30

// CHECK: vpmaxuq 1024(%rdx){1to4}, %ymm17, %ymm30
// CHECK:  encoding: [0x62,0x62,0xf5,0x30,0x3f,0xb2,0x00,0x04,0x00,0x00]
          vpmaxuq 1024(%rdx){1to4}, %ymm17, %ymm30

// CHECK: vpmaxuq -1024(%rdx){1to4}, %ymm17, %ymm30
// CHECK:  encoding: [0x62,0x62,0xf5,0x30,0x3f,0x72,0x80]
          vpmaxuq -1024(%rdx){1to4}, %ymm17, %ymm30

// CHECK: vpmaxuq -1032(%rdx){1to4}, %ymm17, %ymm30
// CHECK:  encoding: [0x62,0x62,0xf5,0x30,0x3f,0xb2,0xf8,0xfb,0xff,0xff]
          vpmaxuq -1032(%rdx){1to4}, %ymm17, %ymm30

// CHECK: vpminsd %xmm17, %xmm21, %xmm29
// CHECK:  encoding: [0x62,0x22,0x55,0x00,0x39,0xe9]
          vpminsd %xmm17, %xmm21, %xmm29

// CHECK: vpminsd %xmm17, %xmm21, %xmm29 {%k4}
// CHECK:  encoding: [0x62,0x22,0x55,0x04,0x39,0xe9]
          vpminsd %xmm17, %xmm21, %xmm29 {%k4}

// CHECK: vpminsd %xmm17, %xmm21, %xmm29 {%k4} {z}
// CHECK:  encoding: [0x62,0x22,0x55,0x84,0x39,0xe9]
          vpminsd %xmm17, %xmm21, %xmm29 {%k4} {z}

// CHECK: vpminsd (%rcx), %xmm21, %xmm29
// CHECK:  encoding: [0x62,0x62,0x55,0x00,0x39,0x29]
          vpminsd (%rcx), %xmm21, %xmm29

// CHECK: vpminsd 291(%rax,%r14,8), %xmm21, %xmm29
// CHECK:  encoding: [0x62,0x22,0x55,0x00,0x39,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpminsd 291(%rax,%r14,8), %xmm21, %xmm29

// CHECK: vpminsd (%rcx){1to4}, %xmm21, %xmm29
// CHECK:  encoding: [0x62,0x62,0x55,0x10,0x39,0x29]
          vpminsd (%rcx){1to4}, %xmm21, %xmm29

// CHECK: vpminsd 2032(%rdx), %xmm21, %xmm29
// CHECK:  encoding: [0x62,0x62,0x55,0x00,0x39,0x6a,0x7f]
          vpminsd 2032(%rdx), %xmm21, %xmm29

// CHECK: vpminsd 2048(%rdx), %xmm21, %xmm29
// CHECK:  encoding: [0x62,0x62,0x55,0x00,0x39,0xaa,0x00,0x08,0x00,0x00]
          vpminsd 2048(%rdx), %xmm21, %xmm29

// CHECK: vpminsd -2048(%rdx), %xmm21, %xmm29
// CHECK:  encoding: [0x62,0x62,0x55,0x00,0x39,0x6a,0x80]
          vpminsd -2048(%rdx), %xmm21, %xmm29

// CHECK: vpminsd -2064(%rdx), %xmm21, %xmm29
// CHECK:  encoding: [0x62,0x62,0x55,0x00,0x39,0xaa,0xf0,0xf7,0xff,0xff]
          vpminsd -2064(%rdx), %xmm21, %xmm29

// CHECK: vpminsd 508(%rdx){1to4}, %xmm21, %xmm29
// CHECK:  encoding: [0x62,0x62,0x55,0x10,0x39,0x6a,0x7f]
          vpminsd 508(%rdx){1to4}, %xmm21, %xmm29

// CHECK: vpminsd 512(%rdx){1to4}, %xmm21, %xmm29
// CHECK:  encoding: [0x62,0x62,0x55,0x10,0x39,0xaa,0x00,0x02,0x00,0x00]
          vpminsd 512(%rdx){1to4}, %xmm21, %xmm29

// CHECK: vpminsd -512(%rdx){1to4}, %xmm21, %xmm29
// CHECK:  encoding: [0x62,0x62,0x55,0x10,0x39,0x6a,0x80]
          vpminsd -512(%rdx){1to4}, %xmm21, %xmm29

// CHECK: vpminsd -516(%rdx){1to4}, %xmm21, %xmm29
// CHECK:  encoding: [0x62,0x62,0x55,0x10,0x39,0xaa,0xfc,0xfd,0xff,0xff]
          vpminsd -516(%rdx){1to4}, %xmm21, %xmm29

// CHECK: vpminsd %ymm25, %ymm26, %ymm19
// CHECK:  encoding: [0x62,0x82,0x2d,0x20,0x39,0xd9]
          vpminsd %ymm25, %ymm26, %ymm19

// CHECK: vpminsd %ymm25, %ymm26, %ymm19 {%k7}
// CHECK:  encoding: [0x62,0x82,0x2d,0x27,0x39,0xd9]
          vpminsd %ymm25, %ymm26, %ymm19 {%k7}

// CHECK: vpminsd %ymm25, %ymm26, %ymm19 {%k7} {z}
// CHECK:  encoding: [0x62,0x82,0x2d,0xa7,0x39,0xd9]
          vpminsd %ymm25, %ymm26, %ymm19 {%k7} {z}

// CHECK: vpminsd (%rcx), %ymm26, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x2d,0x20,0x39,0x19]
          vpminsd (%rcx), %ymm26, %ymm19

// CHECK: vpminsd 291(%rax,%r14,8), %ymm26, %ymm19
// CHECK:  encoding: [0x62,0xa2,0x2d,0x20,0x39,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpminsd 291(%rax,%r14,8), %ymm26, %ymm19

// CHECK: vpminsd (%rcx){1to8}, %ymm26, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x2d,0x30,0x39,0x19]
          vpminsd (%rcx){1to8}, %ymm26, %ymm19

// CHECK: vpminsd 4064(%rdx), %ymm26, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x2d,0x20,0x39,0x5a,0x7f]
          vpminsd 4064(%rdx), %ymm26, %ymm19

// CHECK: vpminsd 4096(%rdx), %ymm26, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x2d,0x20,0x39,0x9a,0x00,0x10,0x00,0x00]
          vpminsd 4096(%rdx), %ymm26, %ymm19

// CHECK: vpminsd -4096(%rdx), %ymm26, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x2d,0x20,0x39,0x5a,0x80]
          vpminsd -4096(%rdx), %ymm26, %ymm19

// CHECK: vpminsd -4128(%rdx), %ymm26, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x2d,0x20,0x39,0x9a,0xe0,0xef,0xff,0xff]
          vpminsd -4128(%rdx), %ymm26, %ymm19

// CHECK: vpminsd 508(%rdx){1to8}, %ymm26, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x2d,0x30,0x39,0x5a,0x7f]
          vpminsd 508(%rdx){1to8}, %ymm26, %ymm19

// CHECK: vpminsd 512(%rdx){1to8}, %ymm26, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x2d,0x30,0x39,0x9a,0x00,0x02,0x00,0x00]
          vpminsd 512(%rdx){1to8}, %ymm26, %ymm19

// CHECK: vpminsd -512(%rdx){1to8}, %ymm26, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x2d,0x30,0x39,0x5a,0x80]
          vpminsd -512(%rdx){1to8}, %ymm26, %ymm19

// CHECK: vpminsd -516(%rdx){1to8}, %ymm26, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x2d,0x30,0x39,0x9a,0xfc,0xfd,0xff,0xff]
          vpminsd -516(%rdx){1to8}, %ymm26, %ymm19

// CHECK: vpminsq %xmm18, %xmm24, %xmm19
// CHECK:  encoding: [0x62,0xa2,0xbd,0x00,0x39,0xda]
          vpminsq %xmm18, %xmm24, %xmm19

// CHECK: vpminsq %xmm18, %xmm24, %xmm19 {%k6}
// CHECK:  encoding: [0x62,0xa2,0xbd,0x06,0x39,0xda]
          vpminsq %xmm18, %xmm24, %xmm19 {%k6}

// CHECK: vpminsq %xmm18, %xmm24, %xmm19 {%k6} {z}
// CHECK:  encoding: [0x62,0xa2,0xbd,0x86,0x39,0xda]
          vpminsq %xmm18, %xmm24, %xmm19 {%k6} {z}

// CHECK: vpminsq (%rcx), %xmm24, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xbd,0x00,0x39,0x19]
          vpminsq (%rcx), %xmm24, %xmm19

// CHECK: vpminsq 291(%rax,%r14,8), %xmm24, %xmm19
// CHECK:  encoding: [0x62,0xa2,0xbd,0x00,0x39,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpminsq 291(%rax,%r14,8), %xmm24, %xmm19

// CHECK: vpminsq (%rcx){1to2}, %xmm24, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xbd,0x10,0x39,0x19]
          vpminsq (%rcx){1to2}, %xmm24, %xmm19

// CHECK: vpminsq 2032(%rdx), %xmm24, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xbd,0x00,0x39,0x5a,0x7f]
          vpminsq 2032(%rdx), %xmm24, %xmm19

// CHECK: vpminsq 2048(%rdx), %xmm24, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xbd,0x00,0x39,0x9a,0x00,0x08,0x00,0x00]
          vpminsq 2048(%rdx), %xmm24, %xmm19

// CHECK: vpminsq -2048(%rdx), %xmm24, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xbd,0x00,0x39,0x5a,0x80]
          vpminsq -2048(%rdx), %xmm24, %xmm19

// CHECK: vpminsq -2064(%rdx), %xmm24, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xbd,0x00,0x39,0x9a,0xf0,0xf7,0xff,0xff]
          vpminsq -2064(%rdx), %xmm24, %xmm19

// CHECK: vpminsq 1016(%rdx){1to2}, %xmm24, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xbd,0x10,0x39,0x5a,0x7f]
          vpminsq 1016(%rdx){1to2}, %xmm24, %xmm19

// CHECK: vpminsq 1024(%rdx){1to2}, %xmm24, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xbd,0x10,0x39,0x9a,0x00,0x04,0x00,0x00]
          vpminsq 1024(%rdx){1to2}, %xmm24, %xmm19

// CHECK: vpminsq -1024(%rdx){1to2}, %xmm24, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xbd,0x10,0x39,0x5a,0x80]
          vpminsq -1024(%rdx){1to2}, %xmm24, %xmm19

// CHECK: vpminsq -1032(%rdx){1to2}, %xmm24, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xbd,0x10,0x39,0x9a,0xf8,0xfb,0xff,0xff]
          vpminsq -1032(%rdx){1to2}, %xmm24, %xmm19

// CHECK: vpminsq %ymm28, %ymm29, %ymm25
// CHECK:  encoding: [0x62,0x02,0x95,0x20,0x39,0xcc]
          vpminsq %ymm28, %ymm29, %ymm25

// CHECK: vpminsq %ymm28, %ymm29, %ymm25 {%k6}
// CHECK:  encoding: [0x62,0x02,0x95,0x26,0x39,0xcc]
          vpminsq %ymm28, %ymm29, %ymm25 {%k6}

// CHECK: vpminsq %ymm28, %ymm29, %ymm25 {%k6} {z}
// CHECK:  encoding: [0x62,0x02,0x95,0xa6,0x39,0xcc]
          vpminsq %ymm28, %ymm29, %ymm25 {%k6} {z}

// CHECK: vpminsq (%rcx), %ymm29, %ymm25
// CHECK:  encoding: [0x62,0x62,0x95,0x20,0x39,0x09]
          vpminsq (%rcx), %ymm29, %ymm25

// CHECK: vpminsq 291(%rax,%r14,8), %ymm29, %ymm25
// CHECK:  encoding: [0x62,0x22,0x95,0x20,0x39,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpminsq 291(%rax,%r14,8), %ymm29, %ymm25

// CHECK: vpminsq (%rcx){1to4}, %ymm29, %ymm25
// CHECK:  encoding: [0x62,0x62,0x95,0x30,0x39,0x09]
          vpminsq (%rcx){1to4}, %ymm29, %ymm25

// CHECK: vpminsq 4064(%rdx), %ymm29, %ymm25
// CHECK:  encoding: [0x62,0x62,0x95,0x20,0x39,0x4a,0x7f]
          vpminsq 4064(%rdx), %ymm29, %ymm25

// CHECK: vpminsq 4096(%rdx), %ymm29, %ymm25
// CHECK:  encoding: [0x62,0x62,0x95,0x20,0x39,0x8a,0x00,0x10,0x00,0x00]
          vpminsq 4096(%rdx), %ymm29, %ymm25

// CHECK: vpminsq -4096(%rdx), %ymm29, %ymm25
// CHECK:  encoding: [0x62,0x62,0x95,0x20,0x39,0x4a,0x80]
          vpminsq -4096(%rdx), %ymm29, %ymm25

// CHECK: vpminsq -4128(%rdx), %ymm29, %ymm25
// CHECK:  encoding: [0x62,0x62,0x95,0x20,0x39,0x8a,0xe0,0xef,0xff,0xff]
          vpminsq -4128(%rdx), %ymm29, %ymm25

// CHECK: vpminsq 1016(%rdx){1to4}, %ymm29, %ymm25
// CHECK:  encoding: [0x62,0x62,0x95,0x30,0x39,0x4a,0x7f]
          vpminsq 1016(%rdx){1to4}, %ymm29, %ymm25

// CHECK: vpminsq 1024(%rdx){1to4}, %ymm29, %ymm25
// CHECK:  encoding: [0x62,0x62,0x95,0x30,0x39,0x8a,0x00,0x04,0x00,0x00]
          vpminsq 1024(%rdx){1to4}, %ymm29, %ymm25

// CHECK: vpminsq -1024(%rdx){1to4}, %ymm29, %ymm25
// CHECK:  encoding: [0x62,0x62,0x95,0x30,0x39,0x4a,0x80]
          vpminsq -1024(%rdx){1to4}, %ymm29, %ymm25

// CHECK: vpminsq -1032(%rdx){1to4}, %ymm29, %ymm25
// CHECK:  encoding: [0x62,0x62,0x95,0x30,0x39,0x8a,0xf8,0xfb,0xff,0xff]
          vpminsq -1032(%rdx){1to4}, %ymm29, %ymm25

// CHECK: vpminud %xmm17, %xmm23, %xmm18
// CHECK:  encoding: [0x62,0xa2,0x45,0x00,0x3b,0xd1]
          vpminud %xmm17, %xmm23, %xmm18

// CHECK: vpminud %xmm17, %xmm23, %xmm18 {%k3}
// CHECK:  encoding: [0x62,0xa2,0x45,0x03,0x3b,0xd1]
          vpminud %xmm17, %xmm23, %xmm18 {%k3}

// CHECK: vpminud %xmm17, %xmm23, %xmm18 {%k3} {z}
// CHECK:  encoding: [0x62,0xa2,0x45,0x83,0x3b,0xd1]
          vpminud %xmm17, %xmm23, %xmm18 {%k3} {z}

// CHECK: vpminud (%rcx), %xmm23, %xmm18
// CHECK:  encoding: [0x62,0xe2,0x45,0x00,0x3b,0x11]
          vpminud (%rcx), %xmm23, %xmm18

// CHECK: vpminud 291(%rax,%r14,8), %xmm23, %xmm18
// CHECK:  encoding: [0x62,0xa2,0x45,0x00,0x3b,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpminud 291(%rax,%r14,8), %xmm23, %xmm18

// CHECK: vpminud (%rcx){1to4}, %xmm23, %xmm18
// CHECK:  encoding: [0x62,0xe2,0x45,0x10,0x3b,0x11]
          vpminud (%rcx){1to4}, %xmm23, %xmm18

// CHECK: vpminud 2032(%rdx), %xmm23, %xmm18
// CHECK:  encoding: [0x62,0xe2,0x45,0x00,0x3b,0x52,0x7f]
          vpminud 2032(%rdx), %xmm23, %xmm18

// CHECK: vpminud 2048(%rdx), %xmm23, %xmm18
// CHECK:  encoding: [0x62,0xe2,0x45,0x00,0x3b,0x92,0x00,0x08,0x00,0x00]
          vpminud 2048(%rdx), %xmm23, %xmm18

// CHECK: vpminud -2048(%rdx), %xmm23, %xmm18
// CHECK:  encoding: [0x62,0xe2,0x45,0x00,0x3b,0x52,0x80]
          vpminud -2048(%rdx), %xmm23, %xmm18

// CHECK: vpminud -2064(%rdx), %xmm23, %xmm18
// CHECK:  encoding: [0x62,0xe2,0x45,0x00,0x3b,0x92,0xf0,0xf7,0xff,0xff]
          vpminud -2064(%rdx), %xmm23, %xmm18

// CHECK: vpminud 508(%rdx){1to4}, %xmm23, %xmm18
// CHECK:  encoding: [0x62,0xe2,0x45,0x10,0x3b,0x52,0x7f]
          vpminud 508(%rdx){1to4}, %xmm23, %xmm18

// CHECK: vpminud 512(%rdx){1to4}, %xmm23, %xmm18
// CHECK:  encoding: [0x62,0xe2,0x45,0x10,0x3b,0x92,0x00,0x02,0x00,0x00]
          vpminud 512(%rdx){1to4}, %xmm23, %xmm18

// CHECK: vpminud -512(%rdx){1to4}, %xmm23, %xmm18
// CHECK:  encoding: [0x62,0xe2,0x45,0x10,0x3b,0x52,0x80]
          vpminud -512(%rdx){1to4}, %xmm23, %xmm18

// CHECK: vpminud -516(%rdx){1to4}, %xmm23, %xmm18
// CHECK:  encoding: [0x62,0xe2,0x45,0x10,0x3b,0x92,0xfc,0xfd,0xff,0xff]
          vpminud -516(%rdx){1to4}, %xmm23, %xmm18

// CHECK: vpminud %ymm19, %ymm22, %ymm19
// CHECK:  encoding: [0x62,0xa2,0x4d,0x20,0x3b,0xdb]
          vpminud %ymm19, %ymm22, %ymm19

// CHECK: vpminud %ymm19, %ymm22, %ymm19 {%k3}
// CHECK:  encoding: [0x62,0xa2,0x4d,0x23,0x3b,0xdb]
          vpminud %ymm19, %ymm22, %ymm19 {%k3}

// CHECK: vpminud %ymm19, %ymm22, %ymm19 {%k3} {z}
// CHECK:  encoding: [0x62,0xa2,0x4d,0xa3,0x3b,0xdb]
          vpminud %ymm19, %ymm22, %ymm19 {%k3} {z}

// CHECK: vpminud (%rcx), %ymm22, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x4d,0x20,0x3b,0x19]
          vpminud (%rcx), %ymm22, %ymm19

// CHECK: vpminud 291(%rax,%r14,8), %ymm22, %ymm19
// CHECK:  encoding: [0x62,0xa2,0x4d,0x20,0x3b,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpminud 291(%rax,%r14,8), %ymm22, %ymm19

// CHECK: vpminud (%rcx){1to8}, %ymm22, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x4d,0x30,0x3b,0x19]
          vpminud (%rcx){1to8}, %ymm22, %ymm19

// CHECK: vpminud 4064(%rdx), %ymm22, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x4d,0x20,0x3b,0x5a,0x7f]
          vpminud 4064(%rdx), %ymm22, %ymm19

// CHECK: vpminud 4096(%rdx), %ymm22, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x4d,0x20,0x3b,0x9a,0x00,0x10,0x00,0x00]
          vpminud 4096(%rdx), %ymm22, %ymm19

// CHECK: vpminud -4096(%rdx), %ymm22, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x4d,0x20,0x3b,0x5a,0x80]
          vpminud -4096(%rdx), %ymm22, %ymm19

// CHECK: vpminud -4128(%rdx), %ymm22, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x4d,0x20,0x3b,0x9a,0xe0,0xef,0xff,0xff]
          vpminud -4128(%rdx), %ymm22, %ymm19

// CHECK: vpminud 508(%rdx){1to8}, %ymm22, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x4d,0x30,0x3b,0x5a,0x7f]
          vpminud 508(%rdx){1to8}, %ymm22, %ymm19

// CHECK: vpminud 512(%rdx){1to8}, %ymm22, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x4d,0x30,0x3b,0x9a,0x00,0x02,0x00,0x00]
          vpminud 512(%rdx){1to8}, %ymm22, %ymm19

// CHECK: vpminud -512(%rdx){1to8}, %ymm22, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x4d,0x30,0x3b,0x5a,0x80]
          vpminud -512(%rdx){1to8}, %ymm22, %ymm19

// CHECK: vpminud -516(%rdx){1to8}, %ymm22, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x4d,0x30,0x3b,0x9a,0xfc,0xfd,0xff,0xff]
          vpminud -516(%rdx){1to8}, %ymm22, %ymm19

// CHECK: vpminuq %xmm23, %xmm22, %xmm28
// CHECK:  encoding: [0x62,0x22,0xcd,0x00,0x3b,0xe7]
          vpminuq %xmm23, %xmm22, %xmm28

// CHECK: vpminuq %xmm23, %xmm22, %xmm28 {%k4}
// CHECK:  encoding: [0x62,0x22,0xcd,0x04,0x3b,0xe7]
          vpminuq %xmm23, %xmm22, %xmm28 {%k4}

// CHECK: vpminuq %xmm23, %xmm22, %xmm28 {%k4} {z}
// CHECK:  encoding: [0x62,0x22,0xcd,0x84,0x3b,0xe7]
          vpminuq %xmm23, %xmm22, %xmm28 {%k4} {z}

// CHECK: vpminuq (%rcx), %xmm22, %xmm28
// CHECK:  encoding: [0x62,0x62,0xcd,0x00,0x3b,0x21]
          vpminuq (%rcx), %xmm22, %xmm28

// CHECK: vpminuq 291(%rax,%r14,8), %xmm22, %xmm28
// CHECK:  encoding: [0x62,0x22,0xcd,0x00,0x3b,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpminuq 291(%rax,%r14,8), %xmm22, %xmm28

// CHECK: vpminuq (%rcx){1to2}, %xmm22, %xmm28
// CHECK:  encoding: [0x62,0x62,0xcd,0x10,0x3b,0x21]
          vpminuq (%rcx){1to2}, %xmm22, %xmm28

// CHECK: vpminuq 2032(%rdx), %xmm22, %xmm28
// CHECK:  encoding: [0x62,0x62,0xcd,0x00,0x3b,0x62,0x7f]
          vpminuq 2032(%rdx), %xmm22, %xmm28

// CHECK: vpminuq 2048(%rdx), %xmm22, %xmm28
// CHECK:  encoding: [0x62,0x62,0xcd,0x00,0x3b,0xa2,0x00,0x08,0x00,0x00]
          vpminuq 2048(%rdx), %xmm22, %xmm28

// CHECK: vpminuq -2048(%rdx), %xmm22, %xmm28
// CHECK:  encoding: [0x62,0x62,0xcd,0x00,0x3b,0x62,0x80]
          vpminuq -2048(%rdx), %xmm22, %xmm28

// CHECK: vpminuq -2064(%rdx), %xmm22, %xmm28
// CHECK:  encoding: [0x62,0x62,0xcd,0x00,0x3b,0xa2,0xf0,0xf7,0xff,0xff]
          vpminuq -2064(%rdx), %xmm22, %xmm28

// CHECK: vpminuq 1016(%rdx){1to2}, %xmm22, %xmm28
// CHECK:  encoding: [0x62,0x62,0xcd,0x10,0x3b,0x62,0x7f]
          vpminuq 1016(%rdx){1to2}, %xmm22, %xmm28

// CHECK: vpminuq 1024(%rdx){1to2}, %xmm22, %xmm28
// CHECK:  encoding: [0x62,0x62,0xcd,0x10,0x3b,0xa2,0x00,0x04,0x00,0x00]
          vpminuq 1024(%rdx){1to2}, %xmm22, %xmm28

// CHECK: vpminuq -1024(%rdx){1to2}, %xmm22, %xmm28
// CHECK:  encoding: [0x62,0x62,0xcd,0x10,0x3b,0x62,0x80]
          vpminuq -1024(%rdx){1to2}, %xmm22, %xmm28

// CHECK: vpminuq -1032(%rdx){1to2}, %xmm22, %xmm28
// CHECK:  encoding: [0x62,0x62,0xcd,0x10,0x3b,0xa2,0xf8,0xfb,0xff,0xff]
          vpminuq -1032(%rdx){1to2}, %xmm22, %xmm28

// CHECK: vpminuq %ymm23, %ymm21, %ymm29
// CHECK:  encoding: [0x62,0x22,0xd5,0x20,0x3b,0xef]
          vpminuq %ymm23, %ymm21, %ymm29

// CHECK: vpminuq %ymm23, %ymm21, %ymm29 {%k5}
// CHECK:  encoding: [0x62,0x22,0xd5,0x25,0x3b,0xef]
          vpminuq %ymm23, %ymm21, %ymm29 {%k5}

// CHECK: vpminuq %ymm23, %ymm21, %ymm29 {%k5} {z}
// CHECK:  encoding: [0x62,0x22,0xd5,0xa5,0x3b,0xef]
          vpminuq %ymm23, %ymm21, %ymm29 {%k5} {z}

// CHECK: vpminuq (%rcx), %ymm21, %ymm29
// CHECK:  encoding: [0x62,0x62,0xd5,0x20,0x3b,0x29]
          vpminuq (%rcx), %ymm21, %ymm29

// CHECK: vpminuq 291(%rax,%r14,8), %ymm21, %ymm29
// CHECK:  encoding: [0x62,0x22,0xd5,0x20,0x3b,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpminuq 291(%rax,%r14,8), %ymm21, %ymm29

// CHECK: vpminuq (%rcx){1to4}, %ymm21, %ymm29
// CHECK:  encoding: [0x62,0x62,0xd5,0x30,0x3b,0x29]
          vpminuq (%rcx){1to4}, %ymm21, %ymm29

// CHECK: vpminuq 4064(%rdx), %ymm21, %ymm29
// CHECK:  encoding: [0x62,0x62,0xd5,0x20,0x3b,0x6a,0x7f]
          vpminuq 4064(%rdx), %ymm21, %ymm29

// CHECK: vpminuq 4096(%rdx), %ymm21, %ymm29
// CHECK:  encoding: [0x62,0x62,0xd5,0x20,0x3b,0xaa,0x00,0x10,0x00,0x00]
          vpminuq 4096(%rdx), %ymm21, %ymm29

// CHECK: vpminuq -4096(%rdx), %ymm21, %ymm29
// CHECK:  encoding: [0x62,0x62,0xd5,0x20,0x3b,0x6a,0x80]
          vpminuq -4096(%rdx), %ymm21, %ymm29

// CHECK: vpminuq -4128(%rdx), %ymm21, %ymm29
// CHECK:  encoding: [0x62,0x62,0xd5,0x20,0x3b,0xaa,0xe0,0xef,0xff,0xff]
          vpminuq -4128(%rdx), %ymm21, %ymm29

// CHECK: vpminuq 1016(%rdx){1to4}, %ymm21, %ymm29
// CHECK:  encoding: [0x62,0x62,0xd5,0x30,0x3b,0x6a,0x7f]
          vpminuq 1016(%rdx){1to4}, %ymm21, %ymm29

// CHECK: vpminuq 1024(%rdx){1to4}, %ymm21, %ymm29
// CHECK:  encoding: [0x62,0x62,0xd5,0x30,0x3b,0xaa,0x00,0x04,0x00,0x00]
          vpminuq 1024(%rdx){1to4}, %ymm21, %ymm29

// CHECK: vpminuq -1024(%rdx){1to4}, %ymm21, %ymm29
// CHECK:  encoding: [0x62,0x62,0xd5,0x30,0x3b,0x6a,0x80]
          vpminuq -1024(%rdx){1to4}, %ymm21, %ymm29

// CHECK: vpminuq -1032(%rdx){1to4}, %ymm21, %ymm29
// CHECK:  encoding: [0x62,0x62,0xd5,0x30,0x3b,0xaa,0xf8,0xfb,0xff,0xff]
          vpminuq -1032(%rdx){1to4}, %ymm21, %ymm29

// CHECK: vpmovsxbd %xmm28, %xmm24
// CHECK:  encoding: [0x62,0x02,0x7d,0x08,0x21,0xc4]
          vpmovsxbd %xmm28, %xmm24

// CHECK: vpmovsxbd %xmm28, %xmm24 {%k1}
// CHECK:  encoding: [0x62,0x02,0x7d,0x09,0x21,0xc4]
          vpmovsxbd %xmm28, %xmm24 {%k1}

// CHECK: vpmovsxbd %xmm28, %xmm24 {%k1} {z}
// CHECK:  encoding: [0x62,0x02,0x7d,0x89,0x21,0xc4]
          vpmovsxbd %xmm28, %xmm24 {%k1} {z}

// CHECK: vpmovsxbd (%rcx), %xmm24
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x21,0x01]
          vpmovsxbd (%rcx), %xmm24

// CHECK: vpmovsxbd 291(%rax,%r14,8), %xmm24
// CHECK:  encoding: [0x62,0x22,0x7d,0x08,0x21,0x84,0xf0,0x23,0x01,0x00,0x00]
          vpmovsxbd 291(%rax,%r14,8), %xmm24

// CHECK: vpmovsxbd 508(%rdx), %xmm24
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x21,0x42,0x7f]
          vpmovsxbd 508(%rdx), %xmm24

// CHECK: vpmovsxbd 512(%rdx), %xmm24
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x21,0x82,0x00,0x02,0x00,0x00]
          vpmovsxbd 512(%rdx), %xmm24

// CHECK: vpmovsxbd -512(%rdx), %xmm24
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x21,0x42,0x80]
          vpmovsxbd -512(%rdx), %xmm24

// CHECK: vpmovsxbd -516(%rdx), %xmm24
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x21,0x82,0xfc,0xfd,0xff,0xff]
          vpmovsxbd -516(%rdx), %xmm24

// CHECK: vpmovsxbd %xmm20, %ymm24
// CHECK:  encoding: [0x62,0x22,0x7d,0x28,0x21,0xc4]
          vpmovsxbd %xmm20, %ymm24

// CHECK: vpmovsxbd %xmm20, %ymm24 {%k3}
// CHECK:  encoding: [0x62,0x22,0x7d,0x2b,0x21,0xc4]
          vpmovsxbd %xmm20, %ymm24 {%k3}

// CHECK: vpmovsxbd %xmm20, %ymm24 {%k3} {z}
// CHECK:  encoding: [0x62,0x22,0x7d,0xab,0x21,0xc4]
          vpmovsxbd %xmm20, %ymm24 {%k3} {z}

// CHECK: vpmovsxbd (%rcx), %ymm24
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x21,0x01]
          vpmovsxbd (%rcx), %ymm24

// CHECK: vpmovsxbd 291(%rax,%r14,8), %ymm24
// CHECK:  encoding: [0x62,0x22,0x7d,0x28,0x21,0x84,0xf0,0x23,0x01,0x00,0x00]
          vpmovsxbd 291(%rax,%r14,8), %ymm24

// CHECK: vpmovsxbd 1016(%rdx), %ymm24
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x21,0x42,0x7f]
          vpmovsxbd 1016(%rdx), %ymm24

// CHECK: vpmovsxbd 1024(%rdx), %ymm24
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x21,0x82,0x00,0x04,0x00,0x00]
          vpmovsxbd 1024(%rdx), %ymm24

// CHECK: vpmovsxbd -1024(%rdx), %ymm24
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x21,0x42,0x80]
          vpmovsxbd -1024(%rdx), %ymm24

// CHECK: vpmovsxbd -1032(%rdx), %ymm24
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x21,0x82,0xf8,0xfb,0xff,0xff]
          vpmovsxbd -1032(%rdx), %ymm24

// CHECK: vpmovsxbq %xmm22, %xmm17
// CHECK:  encoding: [0x62,0xa2,0x7d,0x08,0x22,0xce]
          vpmovsxbq %xmm22, %xmm17

// CHECK: vpmovsxbq %xmm22, %xmm17 {%k5}
// CHECK:  encoding: [0x62,0xa2,0x7d,0x0d,0x22,0xce]
          vpmovsxbq %xmm22, %xmm17 {%k5}

// CHECK: vpmovsxbq %xmm22, %xmm17 {%k5} {z}
// CHECK:  encoding: [0x62,0xa2,0x7d,0x8d,0x22,0xce]
          vpmovsxbq %xmm22, %xmm17 {%k5} {z}

// CHECK: vpmovsxbq (%rcx), %xmm17
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x22,0x09]
          vpmovsxbq (%rcx), %xmm17

// CHECK: vpmovsxbq 291(%rax,%r14,8), %xmm17
// CHECK:  encoding: [0x62,0xa2,0x7d,0x08,0x22,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpmovsxbq 291(%rax,%r14,8), %xmm17

// CHECK: vpmovsxbq 254(%rdx), %xmm17
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x22,0x4a,0x7f]
          vpmovsxbq 254(%rdx), %xmm17

// CHECK: vpmovsxbq 256(%rdx), %xmm17
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x22,0x8a,0x00,0x01,0x00,0x00]
          vpmovsxbq 256(%rdx), %xmm17

// CHECK: vpmovsxbq -256(%rdx), %xmm17
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x22,0x4a,0x80]
          vpmovsxbq -256(%rdx), %xmm17

// CHECK: vpmovsxbq -258(%rdx), %xmm17
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x22,0x8a,0xfe,0xfe,0xff,0xff]
          vpmovsxbq -258(%rdx), %xmm17

// CHECK: vpmovsxbq %xmm26, %ymm28
// CHECK:  encoding: [0x62,0x02,0x7d,0x28,0x22,0xe2]
          vpmovsxbq %xmm26, %ymm28

// CHECK: vpmovsxbq %xmm26, %ymm28 {%k5}
// CHECK:  encoding: [0x62,0x02,0x7d,0x2d,0x22,0xe2]
          vpmovsxbq %xmm26, %ymm28 {%k5}

// CHECK: vpmovsxbq %xmm26, %ymm28 {%k5} {z}
// CHECK:  encoding: [0x62,0x02,0x7d,0xad,0x22,0xe2]
          vpmovsxbq %xmm26, %ymm28 {%k5} {z}

// CHECK: vpmovsxbq (%rcx), %ymm28
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x22,0x21]
          vpmovsxbq (%rcx), %ymm28

// CHECK: vpmovsxbq 291(%rax,%r14,8), %ymm28
// CHECK:  encoding: [0x62,0x22,0x7d,0x28,0x22,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpmovsxbq 291(%rax,%r14,8), %ymm28

// CHECK: vpmovsxbq 508(%rdx), %ymm28
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x22,0x62,0x7f]
          vpmovsxbq 508(%rdx), %ymm28

// CHECK: vpmovsxbq 512(%rdx), %ymm28
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x22,0xa2,0x00,0x02,0x00,0x00]
          vpmovsxbq 512(%rdx), %ymm28

// CHECK: vpmovsxbq -512(%rdx), %ymm28
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x22,0x62,0x80]
          vpmovsxbq -512(%rdx), %ymm28

// CHECK: vpmovsxbq -516(%rdx), %ymm28
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x22,0xa2,0xfc,0xfd,0xff,0xff]
          vpmovsxbq -516(%rdx), %ymm28

// CHECK: vpmovsxdq %xmm26, %xmm23
// CHECK:  encoding: [0x62,0x82,0x7d,0x08,0x25,0xfa]
          vpmovsxdq %xmm26, %xmm23

// CHECK: vpmovsxdq %xmm26, %xmm23 {%k7}
// CHECK:  encoding: [0x62,0x82,0x7d,0x0f,0x25,0xfa]
          vpmovsxdq %xmm26, %xmm23 {%k7}

// CHECK: vpmovsxdq %xmm26, %xmm23 {%k7} {z}
// CHECK:  encoding: [0x62,0x82,0x7d,0x8f,0x25,0xfa]
          vpmovsxdq %xmm26, %xmm23 {%k7} {z}

// CHECK: vpmovsxdq (%rcx), %xmm23
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x25,0x39]
          vpmovsxdq (%rcx), %xmm23

// CHECK: vpmovsxdq 291(%rax,%r14,8), %xmm23
// CHECK:  encoding: [0x62,0xa2,0x7d,0x08,0x25,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vpmovsxdq 291(%rax,%r14,8), %xmm23

// CHECK: vpmovsxdq 1016(%rdx), %xmm23
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x25,0x7a,0x7f]
          vpmovsxdq 1016(%rdx), %xmm23

// CHECK: vpmovsxdq 1024(%rdx), %xmm23
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x25,0xba,0x00,0x04,0x00,0x00]
          vpmovsxdq 1024(%rdx), %xmm23

// CHECK: vpmovsxdq -1024(%rdx), %xmm23
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x25,0x7a,0x80]
          vpmovsxdq -1024(%rdx), %xmm23

// CHECK: vpmovsxdq -1032(%rdx), %xmm23
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x25,0xba,0xf8,0xfb,0xff,0xff]
          vpmovsxdq -1032(%rdx), %xmm23

// CHECK: vpmovsxdq %xmm28, %ymm18
// CHECK:  encoding: [0x62,0x82,0x7d,0x28,0x25,0xd4]
          vpmovsxdq %xmm28, %ymm18

// CHECK: vpmovsxdq %xmm28, %ymm18 {%k7}
// CHECK:  encoding: [0x62,0x82,0x7d,0x2f,0x25,0xd4]
          vpmovsxdq %xmm28, %ymm18 {%k7}

// CHECK: vpmovsxdq %xmm28, %ymm18 {%k7} {z}
// CHECK:  encoding: [0x62,0x82,0x7d,0xaf,0x25,0xd4]
          vpmovsxdq %xmm28, %ymm18 {%k7} {z}

// CHECK: vpmovsxdq (%rcx), %ymm18
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x25,0x11]
          vpmovsxdq (%rcx), %ymm18

// CHECK: vpmovsxdq 291(%rax,%r14,8), %ymm18
// CHECK:  encoding: [0x62,0xa2,0x7d,0x28,0x25,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpmovsxdq 291(%rax,%r14,8), %ymm18

// CHECK: vpmovsxdq 2032(%rdx), %ymm18
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x25,0x52,0x7f]
          vpmovsxdq 2032(%rdx), %ymm18

// CHECK: vpmovsxdq 2048(%rdx), %ymm18
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x25,0x92,0x00,0x08,0x00,0x00]
          vpmovsxdq 2048(%rdx), %ymm18

// CHECK: vpmovsxdq -2048(%rdx), %ymm18
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x25,0x52,0x80]
          vpmovsxdq -2048(%rdx), %ymm18

// CHECK: vpmovsxdq -2064(%rdx), %ymm18
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x25,0x92,0xf0,0xf7,0xff,0xff]
          vpmovsxdq -2064(%rdx), %ymm18

// CHECK: vpmovsxwd %xmm18, %xmm17
// CHECK:  encoding: [0x62,0xa2,0x7d,0x08,0x23,0xca]
          vpmovsxwd %xmm18, %xmm17

// CHECK: vpmovsxwd %xmm18, %xmm17 {%k4}
// CHECK:  encoding: [0x62,0xa2,0x7d,0x0c,0x23,0xca]
          vpmovsxwd %xmm18, %xmm17 {%k4}

// CHECK: vpmovsxwd %xmm18, %xmm17 {%k4} {z}
// CHECK:  encoding: [0x62,0xa2,0x7d,0x8c,0x23,0xca]
          vpmovsxwd %xmm18, %xmm17 {%k4} {z}

// CHECK: vpmovsxwd (%rcx), %xmm17
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x23,0x09]
          vpmovsxwd (%rcx), %xmm17

// CHECK: vpmovsxwd 291(%rax,%r14,8), %xmm17
// CHECK:  encoding: [0x62,0xa2,0x7d,0x08,0x23,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpmovsxwd 291(%rax,%r14,8), %xmm17

// CHECK: vpmovsxwd 1016(%rdx), %xmm17
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x23,0x4a,0x7f]
          vpmovsxwd 1016(%rdx), %xmm17

// CHECK: vpmovsxwd 1024(%rdx), %xmm17
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x23,0x8a,0x00,0x04,0x00,0x00]
          vpmovsxwd 1024(%rdx), %xmm17

// CHECK: vpmovsxwd -1024(%rdx), %xmm17
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x23,0x4a,0x80]
          vpmovsxwd -1024(%rdx), %xmm17

// CHECK: vpmovsxwd -1032(%rdx), %xmm17
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x23,0x8a,0xf8,0xfb,0xff,0xff]
          vpmovsxwd -1032(%rdx), %xmm17

// CHECK: vpmovsxwd %xmm25, %ymm21
// CHECK:  encoding: [0x62,0x82,0x7d,0x28,0x23,0xe9]
          vpmovsxwd %xmm25, %ymm21

// CHECK: vpmovsxwd %xmm25, %ymm21 {%k5}
// CHECK:  encoding: [0x62,0x82,0x7d,0x2d,0x23,0xe9]
          vpmovsxwd %xmm25, %ymm21 {%k5}

// CHECK: vpmovsxwd %xmm25, %ymm21 {%k5} {z}
// CHECK:  encoding: [0x62,0x82,0x7d,0xad,0x23,0xe9]
          vpmovsxwd %xmm25, %ymm21 {%k5} {z}

// CHECK: vpmovsxwd (%rcx), %ymm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x23,0x29]
          vpmovsxwd (%rcx), %ymm21

// CHECK: vpmovsxwd 291(%rax,%r14,8), %ymm21
// CHECK:  encoding: [0x62,0xa2,0x7d,0x28,0x23,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpmovsxwd 291(%rax,%r14,8), %ymm21

// CHECK: vpmovsxwd 2032(%rdx), %ymm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x23,0x6a,0x7f]
          vpmovsxwd 2032(%rdx), %ymm21

// CHECK: vpmovsxwd 2048(%rdx), %ymm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x23,0xaa,0x00,0x08,0x00,0x00]
          vpmovsxwd 2048(%rdx), %ymm21

// CHECK: vpmovsxwd -2048(%rdx), %ymm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x23,0x6a,0x80]
          vpmovsxwd -2048(%rdx), %ymm21

// CHECK: vpmovsxwd -2064(%rdx), %ymm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x23,0xaa,0xf0,0xf7,0xff,0xff]
          vpmovsxwd -2064(%rdx), %ymm21

// CHECK: vpmovsxwq %xmm20, %xmm29
// CHECK:  encoding: [0x62,0x22,0x7d,0x08,0x24,0xec]
          vpmovsxwq %xmm20, %xmm29

// CHECK: vpmovsxwq %xmm20, %xmm29 {%k6}
// CHECK:  encoding: [0x62,0x22,0x7d,0x0e,0x24,0xec]
          vpmovsxwq %xmm20, %xmm29 {%k6}

// CHECK: vpmovsxwq %xmm20, %xmm29 {%k6} {z}
// CHECK:  encoding: [0x62,0x22,0x7d,0x8e,0x24,0xec]
          vpmovsxwq %xmm20, %xmm29 {%k6} {z}

// CHECK: vpmovsxwq (%rcx), %xmm29
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x24,0x29]
          vpmovsxwq (%rcx), %xmm29

// CHECK: vpmovsxwq 291(%rax,%r14,8), %xmm29
// CHECK:  encoding: [0x62,0x22,0x7d,0x08,0x24,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpmovsxwq 291(%rax,%r14,8), %xmm29

// CHECK: vpmovsxwq 508(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x24,0x6a,0x7f]
          vpmovsxwq 508(%rdx), %xmm29

// CHECK: vpmovsxwq 512(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x24,0xaa,0x00,0x02,0x00,0x00]
          vpmovsxwq 512(%rdx), %xmm29

// CHECK: vpmovsxwq -512(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x24,0x6a,0x80]
          vpmovsxwq -512(%rdx), %xmm29

// CHECK: vpmovsxwq -516(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x24,0xaa,0xfc,0xfd,0xff,0xff]
          vpmovsxwq -516(%rdx), %xmm29

// CHECK: vpmovsxwq %xmm17, %ymm23
// CHECK:  encoding: [0x62,0xa2,0x7d,0x28,0x24,0xf9]
          vpmovsxwq %xmm17, %ymm23

// CHECK: vpmovsxwq %xmm17, %ymm23 {%k5}
// CHECK:  encoding: [0x62,0xa2,0x7d,0x2d,0x24,0xf9]
          vpmovsxwq %xmm17, %ymm23 {%k5}

// CHECK: vpmovsxwq %xmm17, %ymm23 {%k5} {z}
// CHECK:  encoding: [0x62,0xa2,0x7d,0xad,0x24,0xf9]
          vpmovsxwq %xmm17, %ymm23 {%k5} {z}

// CHECK: vpmovsxwq (%rcx), %ymm23
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x24,0x39]
          vpmovsxwq (%rcx), %ymm23

// CHECK: vpmovsxwq 291(%rax,%r14,8), %ymm23
// CHECK:  encoding: [0x62,0xa2,0x7d,0x28,0x24,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vpmovsxwq 291(%rax,%r14,8), %ymm23

// CHECK: vpmovsxwq 1016(%rdx), %ymm23
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x24,0x7a,0x7f]
          vpmovsxwq 1016(%rdx), %ymm23

// CHECK: vpmovsxwq 1024(%rdx), %ymm23
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x24,0xba,0x00,0x04,0x00,0x00]
          vpmovsxwq 1024(%rdx), %ymm23

// CHECK: vpmovsxwq -1024(%rdx), %ymm23
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x24,0x7a,0x80]
          vpmovsxwq -1024(%rdx), %ymm23

// CHECK: vpmovsxwq -1032(%rdx), %ymm23
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x24,0xba,0xf8,0xfb,0xff,0xff]
          vpmovsxwq -1032(%rdx), %ymm23

// CHECK: vpmovzxbd %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x22,0x7d,0x08,0x31,0xc1]
          vpmovzxbd %xmm17, %xmm24

// CHECK: vpmovzxbd %xmm17, %xmm24 {%k6}
// CHECK:  encoding: [0x62,0x22,0x7d,0x0e,0x31,0xc1]
          vpmovzxbd %xmm17, %xmm24 {%k6}

// CHECK: vpmovzxbd %xmm17, %xmm24 {%k6} {z}
// CHECK:  encoding: [0x62,0x22,0x7d,0x8e,0x31,0xc1]
          vpmovzxbd %xmm17, %xmm24 {%k6} {z}

// CHECK: vpmovzxbd (%rcx), %xmm24
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x31,0x01]
          vpmovzxbd (%rcx), %xmm24

// CHECK: vpmovzxbd 291(%rax,%r14,8), %xmm24
// CHECK:  encoding: [0x62,0x22,0x7d,0x08,0x31,0x84,0xf0,0x23,0x01,0x00,0x00]
          vpmovzxbd 291(%rax,%r14,8), %xmm24

// CHECK: vpmovzxbd 508(%rdx), %xmm24
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x31,0x42,0x7f]
          vpmovzxbd 508(%rdx), %xmm24

// CHECK: vpmovzxbd 512(%rdx), %xmm24
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x31,0x82,0x00,0x02,0x00,0x00]
          vpmovzxbd 512(%rdx), %xmm24

// CHECK: vpmovzxbd -512(%rdx), %xmm24
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x31,0x42,0x80]
          vpmovzxbd -512(%rdx), %xmm24

// CHECK: vpmovzxbd -516(%rdx), %xmm24
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x31,0x82,0xfc,0xfd,0xff,0xff]
          vpmovzxbd -516(%rdx), %xmm24

// CHECK: vpmovzxbd %xmm17, %ymm27
// CHECK:  encoding: [0x62,0x22,0x7d,0x28,0x31,0xd9]
          vpmovzxbd %xmm17, %ymm27

// CHECK: vpmovzxbd %xmm17, %ymm27 {%k1}
// CHECK:  encoding: [0x62,0x22,0x7d,0x29,0x31,0xd9]
          vpmovzxbd %xmm17, %ymm27 {%k1}

// CHECK: vpmovzxbd %xmm17, %ymm27 {%k1} {z}
// CHECK:  encoding: [0x62,0x22,0x7d,0xa9,0x31,0xd9]
          vpmovzxbd %xmm17, %ymm27 {%k1} {z}

// CHECK: vpmovzxbd (%rcx), %ymm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x31,0x19]
          vpmovzxbd (%rcx), %ymm27

// CHECK: vpmovzxbd 291(%rax,%r14,8), %ymm27
// CHECK:  encoding: [0x62,0x22,0x7d,0x28,0x31,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpmovzxbd 291(%rax,%r14,8), %ymm27

// CHECK: vpmovzxbd 1016(%rdx), %ymm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x31,0x5a,0x7f]
          vpmovzxbd 1016(%rdx), %ymm27

// CHECK: vpmovzxbd 1024(%rdx), %ymm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x31,0x9a,0x00,0x04,0x00,0x00]
          vpmovzxbd 1024(%rdx), %ymm27

// CHECK: vpmovzxbd -1024(%rdx), %ymm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x31,0x5a,0x80]
          vpmovzxbd -1024(%rdx), %ymm27

// CHECK: vpmovzxbd -1032(%rdx), %ymm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x31,0x9a,0xf8,0xfb,0xff,0xff]
          vpmovzxbd -1032(%rdx), %ymm27

// CHECK: vpmovzxbq %xmm19, %xmm19
// CHECK:  encoding: [0x62,0xa2,0x7d,0x08,0x32,0xdb]
          vpmovzxbq %xmm19, %xmm19

// CHECK: vpmovzxbq %xmm19, %xmm19 {%k1}
// CHECK:  encoding: [0x62,0xa2,0x7d,0x09,0x32,0xdb]
          vpmovzxbq %xmm19, %xmm19 {%k1}

// CHECK: vpmovzxbq %xmm19, %xmm19 {%k1} {z}
// CHECK:  encoding: [0x62,0xa2,0x7d,0x89,0x32,0xdb]
          vpmovzxbq %xmm19, %xmm19 {%k1} {z}

// CHECK: vpmovzxbq (%rcx), %xmm19
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x32,0x19]
          vpmovzxbq (%rcx), %xmm19

// CHECK: vpmovzxbq 291(%rax,%r14,8), %xmm19
// CHECK:  encoding: [0x62,0xa2,0x7d,0x08,0x32,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpmovzxbq 291(%rax,%r14,8), %xmm19

// CHECK: vpmovzxbq 254(%rdx), %xmm19
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x32,0x5a,0x7f]
          vpmovzxbq 254(%rdx), %xmm19

// CHECK: vpmovzxbq 256(%rdx), %xmm19
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x32,0x9a,0x00,0x01,0x00,0x00]
          vpmovzxbq 256(%rdx), %xmm19

// CHECK: vpmovzxbq -256(%rdx), %xmm19
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x32,0x5a,0x80]
          vpmovzxbq -256(%rdx), %xmm19

// CHECK: vpmovzxbq -258(%rdx), %xmm19
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x32,0x9a,0xfe,0xfe,0xff,0xff]
          vpmovzxbq -258(%rdx), %xmm19

// CHECK: vpmovzxbq %xmm19, %ymm24
// CHECK:  encoding: [0x62,0x22,0x7d,0x28,0x32,0xc3]
          vpmovzxbq %xmm19, %ymm24

// CHECK: vpmovzxbq %xmm19, %ymm24 {%k2}
// CHECK:  encoding: [0x62,0x22,0x7d,0x2a,0x32,0xc3]
          vpmovzxbq %xmm19, %ymm24 {%k2}

// CHECK: vpmovzxbq %xmm19, %ymm24 {%k2} {z}
// CHECK:  encoding: [0x62,0x22,0x7d,0xaa,0x32,0xc3]
          vpmovzxbq %xmm19, %ymm24 {%k2} {z}

// CHECK: vpmovzxbq (%rcx), %ymm24
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x32,0x01]
          vpmovzxbq (%rcx), %ymm24

// CHECK: vpmovzxbq 291(%rax,%r14,8), %ymm24
// CHECK:  encoding: [0x62,0x22,0x7d,0x28,0x32,0x84,0xf0,0x23,0x01,0x00,0x00]
          vpmovzxbq 291(%rax,%r14,8), %ymm24

// CHECK: vpmovzxbq 508(%rdx), %ymm24
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x32,0x42,0x7f]
          vpmovzxbq 508(%rdx), %ymm24

// CHECK: vpmovzxbq 512(%rdx), %ymm24
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x32,0x82,0x00,0x02,0x00,0x00]
          vpmovzxbq 512(%rdx), %ymm24

// CHECK: vpmovzxbq -512(%rdx), %ymm24
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x32,0x42,0x80]
          vpmovzxbq -512(%rdx), %ymm24

// CHECK: vpmovzxbq -516(%rdx), %ymm24
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x32,0x82,0xfc,0xfd,0xff,0xff]
          vpmovzxbq -516(%rdx), %ymm24

// CHECK: vpmovzxdq %xmm21, %xmm25
// CHECK:  encoding: [0x62,0x22,0x7d,0x08,0x35,0xcd]
          vpmovzxdq %xmm21, %xmm25

// CHECK: vpmovzxdq %xmm21, %xmm25 {%k7}
// CHECK:  encoding: [0x62,0x22,0x7d,0x0f,0x35,0xcd]
          vpmovzxdq %xmm21, %xmm25 {%k7}

// CHECK: vpmovzxdq %xmm21, %xmm25 {%k7} {z}
// CHECK:  encoding: [0x62,0x22,0x7d,0x8f,0x35,0xcd]
          vpmovzxdq %xmm21, %xmm25 {%k7} {z}

// CHECK: vpmovzxdq (%rcx), %xmm25
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x35,0x09]
          vpmovzxdq (%rcx), %xmm25

// CHECK: vpmovzxdq 291(%rax,%r14,8), %xmm25
// CHECK:  encoding: [0x62,0x22,0x7d,0x08,0x35,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpmovzxdq 291(%rax,%r14,8), %xmm25

// CHECK: vpmovzxdq 1016(%rdx), %xmm25
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x35,0x4a,0x7f]
          vpmovzxdq 1016(%rdx), %xmm25

// CHECK: vpmovzxdq 1024(%rdx), %xmm25
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x35,0x8a,0x00,0x04,0x00,0x00]
          vpmovzxdq 1024(%rdx), %xmm25

// CHECK: vpmovzxdq -1024(%rdx), %xmm25
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x35,0x4a,0x80]
          vpmovzxdq -1024(%rdx), %xmm25

// CHECK: vpmovzxdq -1032(%rdx), %xmm25
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x35,0x8a,0xf8,0xfb,0xff,0xff]
          vpmovzxdq -1032(%rdx), %xmm25

// CHECK: vpmovzxdq %xmm22, %ymm28
// CHECK:  encoding: [0x62,0x22,0x7d,0x28,0x35,0xe6]
          vpmovzxdq %xmm22, %ymm28

// CHECK: vpmovzxdq %xmm22, %ymm28 {%k7}
// CHECK:  encoding: [0x62,0x22,0x7d,0x2f,0x35,0xe6]
          vpmovzxdq %xmm22, %ymm28 {%k7}

// CHECK: vpmovzxdq %xmm22, %ymm28 {%k7} {z}
// CHECK:  encoding: [0x62,0x22,0x7d,0xaf,0x35,0xe6]
          vpmovzxdq %xmm22, %ymm28 {%k7} {z}

// CHECK: vpmovzxdq (%rcx), %ymm28
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x35,0x21]
          vpmovzxdq (%rcx), %ymm28

// CHECK: vpmovzxdq 291(%rax,%r14,8), %ymm28
// CHECK:  encoding: [0x62,0x22,0x7d,0x28,0x35,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpmovzxdq 291(%rax,%r14,8), %ymm28

// CHECK: vpmovzxdq 2032(%rdx), %ymm28
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x35,0x62,0x7f]
          vpmovzxdq 2032(%rdx), %ymm28

// CHECK: vpmovzxdq 2048(%rdx), %ymm28
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x35,0xa2,0x00,0x08,0x00,0x00]
          vpmovzxdq 2048(%rdx), %ymm28

// CHECK: vpmovzxdq -2048(%rdx), %ymm28
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x35,0x62,0x80]
          vpmovzxdq -2048(%rdx), %ymm28

// CHECK: vpmovzxdq -2064(%rdx), %ymm28
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x35,0xa2,0xf0,0xf7,0xff,0xff]
          vpmovzxdq -2064(%rdx), %ymm28

// CHECK: vpmovzxwd %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x22,0x7d,0x08,0x33,0xc1]
          vpmovzxwd %xmm17, %xmm24

// CHECK: vpmovzxwd %xmm17, %xmm24 {%k4}
// CHECK:  encoding: [0x62,0x22,0x7d,0x0c,0x33,0xc1]
          vpmovzxwd %xmm17, %xmm24 {%k4}

// CHECK: vpmovzxwd %xmm17, %xmm24 {%k4} {z}
// CHECK:  encoding: [0x62,0x22,0x7d,0x8c,0x33,0xc1]
          vpmovzxwd %xmm17, %xmm24 {%k4} {z}

// CHECK: vpmovzxwd (%rcx), %xmm24
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x33,0x01]
          vpmovzxwd (%rcx), %xmm24

// CHECK: vpmovzxwd 291(%rax,%r14,8), %xmm24
// CHECK:  encoding: [0x62,0x22,0x7d,0x08,0x33,0x84,0xf0,0x23,0x01,0x00,0x00]
          vpmovzxwd 291(%rax,%r14,8), %xmm24

// CHECK: vpmovzxwd 1016(%rdx), %xmm24
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x33,0x42,0x7f]
          vpmovzxwd 1016(%rdx), %xmm24

// CHECK: vpmovzxwd 1024(%rdx), %xmm24
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x33,0x82,0x00,0x04,0x00,0x00]
          vpmovzxwd 1024(%rdx), %xmm24

// CHECK: vpmovzxwd -1024(%rdx), %xmm24
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x33,0x42,0x80]
          vpmovzxwd -1024(%rdx), %xmm24

// CHECK: vpmovzxwd -1032(%rdx), %xmm24
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x33,0x82,0xf8,0xfb,0xff,0xff]
          vpmovzxwd -1032(%rdx), %xmm24

// CHECK: vpmovzxwd %xmm29, %ymm26
// CHECK:  encoding: [0x62,0x02,0x7d,0x28,0x33,0xd5]
          vpmovzxwd %xmm29, %ymm26

// CHECK: vpmovzxwd %xmm29, %ymm26 {%k5}
// CHECK:  encoding: [0x62,0x02,0x7d,0x2d,0x33,0xd5]
          vpmovzxwd %xmm29, %ymm26 {%k5}

// CHECK: vpmovzxwd %xmm29, %ymm26 {%k5} {z}
// CHECK:  encoding: [0x62,0x02,0x7d,0xad,0x33,0xd5]
          vpmovzxwd %xmm29, %ymm26 {%k5} {z}

// CHECK: vpmovzxwd (%rcx), %ymm26
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x33,0x11]
          vpmovzxwd (%rcx), %ymm26

// CHECK: vpmovzxwd 291(%rax,%r14,8), %ymm26
// CHECK:  encoding: [0x62,0x22,0x7d,0x28,0x33,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpmovzxwd 291(%rax,%r14,8), %ymm26

// CHECK: vpmovzxwd 2032(%rdx), %ymm26
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x33,0x52,0x7f]
          vpmovzxwd 2032(%rdx), %ymm26

// CHECK: vpmovzxwd 2048(%rdx), %ymm26
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x33,0x92,0x00,0x08,0x00,0x00]
          vpmovzxwd 2048(%rdx), %ymm26

// CHECK: vpmovzxwd -2048(%rdx), %ymm26
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x33,0x52,0x80]
          vpmovzxwd -2048(%rdx), %ymm26

// CHECK: vpmovzxwd -2064(%rdx), %ymm26
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x33,0x92,0xf0,0xf7,0xff,0xff]
          vpmovzxwd -2064(%rdx), %ymm26

// CHECK: vpmovzxwq %xmm20, %xmm29
// CHECK:  encoding: [0x62,0x22,0x7d,0x08,0x34,0xec]
          vpmovzxwq %xmm20, %xmm29

// CHECK: vpmovzxwq %xmm20, %xmm29 {%k2}
// CHECK:  encoding: [0x62,0x22,0x7d,0x0a,0x34,0xec]
          vpmovzxwq %xmm20, %xmm29 {%k2}

// CHECK: vpmovzxwq %xmm20, %xmm29 {%k2} {z}
// CHECK:  encoding: [0x62,0x22,0x7d,0x8a,0x34,0xec]
          vpmovzxwq %xmm20, %xmm29 {%k2} {z}

// CHECK: vpmovzxwq (%rcx), %xmm29
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x34,0x29]
          vpmovzxwq (%rcx), %xmm29

// CHECK: vpmovzxwq 291(%rax,%r14,8), %xmm29
// CHECK:  encoding: [0x62,0x22,0x7d,0x08,0x34,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpmovzxwq 291(%rax,%r14,8), %xmm29

// CHECK: vpmovzxwq 508(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x34,0x6a,0x7f]
          vpmovzxwq 508(%rdx), %xmm29

// CHECK: vpmovzxwq 512(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x34,0xaa,0x00,0x02,0x00,0x00]
          vpmovzxwq 512(%rdx), %xmm29

// CHECK: vpmovzxwq -512(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x34,0x6a,0x80]
          vpmovzxwq -512(%rdx), %xmm29

// CHECK: vpmovzxwq -516(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x34,0xaa,0xfc,0xfd,0xff,0xff]
          vpmovzxwq -516(%rdx), %xmm29

// CHECK: vpmovzxwq %xmm25, %ymm18
// CHECK:  encoding: [0x62,0x82,0x7d,0x28,0x34,0xd1]
          vpmovzxwq %xmm25, %ymm18

// CHECK: vpmovzxwq %xmm25, %ymm18 {%k1}
// CHECK:  encoding: [0x62,0x82,0x7d,0x29,0x34,0xd1]
          vpmovzxwq %xmm25, %ymm18 {%k1}

// CHECK: vpmovzxwq %xmm25, %ymm18 {%k1} {z}
// CHECK:  encoding: [0x62,0x82,0x7d,0xa9,0x34,0xd1]
          vpmovzxwq %xmm25, %ymm18 {%k1} {z}

// CHECK: vpmovzxwq (%rcx), %ymm18
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x34,0x11]
          vpmovzxwq (%rcx), %ymm18

// CHECK: vpmovzxwq 291(%rax,%r14,8), %ymm18
// CHECK:  encoding: [0x62,0xa2,0x7d,0x28,0x34,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpmovzxwq 291(%rax,%r14,8), %ymm18

// CHECK: vpmovzxwq 1016(%rdx), %ymm18
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x34,0x52,0x7f]
          vpmovzxwq 1016(%rdx), %ymm18

// CHECK: vpmovzxwq 1024(%rdx), %ymm18
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x34,0x92,0x00,0x04,0x00,0x00]
          vpmovzxwq 1024(%rdx), %ymm18

// CHECK: vpmovzxwq -1024(%rdx), %ymm18
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x34,0x52,0x80]
          vpmovzxwq -1024(%rdx), %ymm18

// CHECK: vpmovzxwq -1032(%rdx), %ymm18
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x34,0x92,0xf8,0xfb,0xff,0xff]
          vpmovzxwq -1032(%rdx), %ymm18

// CHECK: vpmulld %xmm24, %xmm19, %xmm25
// CHECK:  encoding: [0x62,0x02,0x65,0x00,0x40,0xc8]
          vpmulld %xmm24, %xmm19, %xmm25

// CHECK: vpmulld %xmm24, %xmm19, %xmm25 {%k6}
// CHECK:  encoding: [0x62,0x02,0x65,0x06,0x40,0xc8]
          vpmulld %xmm24, %xmm19, %xmm25 {%k6}

// CHECK: vpmulld %xmm24, %xmm19, %xmm25 {%k6} {z}
// CHECK:  encoding: [0x62,0x02,0x65,0x86,0x40,0xc8]
          vpmulld %xmm24, %xmm19, %xmm25 {%k6} {z}

// CHECK: vpmulld (%rcx), %xmm19, %xmm25
// CHECK:  encoding: [0x62,0x62,0x65,0x00,0x40,0x09]
          vpmulld (%rcx), %xmm19, %xmm25

// CHECK: vpmulld 291(%rax,%r14,8), %xmm19, %xmm25
// CHECK:  encoding: [0x62,0x22,0x65,0x00,0x40,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpmulld 291(%rax,%r14,8), %xmm19, %xmm25

// CHECK: vpmulld (%rcx){1to4}, %xmm19, %xmm25
// CHECK:  encoding: [0x62,0x62,0x65,0x10,0x40,0x09]
          vpmulld (%rcx){1to4}, %xmm19, %xmm25

// CHECK: vpmulld 2032(%rdx), %xmm19, %xmm25
// CHECK:  encoding: [0x62,0x62,0x65,0x00,0x40,0x4a,0x7f]
          vpmulld 2032(%rdx), %xmm19, %xmm25

// CHECK: vpmulld 2048(%rdx), %xmm19, %xmm25
// CHECK:  encoding: [0x62,0x62,0x65,0x00,0x40,0x8a,0x00,0x08,0x00,0x00]
          vpmulld 2048(%rdx), %xmm19, %xmm25

// CHECK: vpmulld -2048(%rdx), %xmm19, %xmm25
// CHECK:  encoding: [0x62,0x62,0x65,0x00,0x40,0x4a,0x80]
          vpmulld -2048(%rdx), %xmm19, %xmm25

// CHECK: vpmulld -2064(%rdx), %xmm19, %xmm25
// CHECK:  encoding: [0x62,0x62,0x65,0x00,0x40,0x8a,0xf0,0xf7,0xff,0xff]
          vpmulld -2064(%rdx), %xmm19, %xmm25

// CHECK: vpmulld 508(%rdx){1to4}, %xmm19, %xmm25
// CHECK:  encoding: [0x62,0x62,0x65,0x10,0x40,0x4a,0x7f]
          vpmulld 508(%rdx){1to4}, %xmm19, %xmm25

// CHECK: vpmulld 512(%rdx){1to4}, %xmm19, %xmm25
// CHECK:  encoding: [0x62,0x62,0x65,0x10,0x40,0x8a,0x00,0x02,0x00,0x00]
          vpmulld 512(%rdx){1to4}, %xmm19, %xmm25

// CHECK: vpmulld -512(%rdx){1to4}, %xmm19, %xmm25
// CHECK:  encoding: [0x62,0x62,0x65,0x10,0x40,0x4a,0x80]
          vpmulld -512(%rdx){1to4}, %xmm19, %xmm25

// CHECK: vpmulld -516(%rdx){1to4}, %xmm19, %xmm25
// CHECK:  encoding: [0x62,0x62,0x65,0x10,0x40,0x8a,0xfc,0xfd,0xff,0xff]
          vpmulld -516(%rdx){1to4}, %xmm19, %xmm25

// CHECK: vpmulld %ymm26, %ymm26, %ymm23
// CHECK:  encoding: [0x62,0x82,0x2d,0x20,0x40,0xfa]
          vpmulld %ymm26, %ymm26, %ymm23

// CHECK: vpmulld %ymm26, %ymm26, %ymm23 {%k2}
// CHECK:  encoding: [0x62,0x82,0x2d,0x22,0x40,0xfa]
          vpmulld %ymm26, %ymm26, %ymm23 {%k2}

// CHECK: vpmulld %ymm26, %ymm26, %ymm23 {%k2} {z}
// CHECK:  encoding: [0x62,0x82,0x2d,0xa2,0x40,0xfa]
          vpmulld %ymm26, %ymm26, %ymm23 {%k2} {z}

// CHECK: vpmulld (%rcx), %ymm26, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x2d,0x20,0x40,0x39]
          vpmulld (%rcx), %ymm26, %ymm23

// CHECK: vpmulld 291(%rax,%r14,8), %ymm26, %ymm23
// CHECK:  encoding: [0x62,0xa2,0x2d,0x20,0x40,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vpmulld 291(%rax,%r14,8), %ymm26, %ymm23

// CHECK: vpmulld (%rcx){1to8}, %ymm26, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x2d,0x30,0x40,0x39]
          vpmulld (%rcx){1to8}, %ymm26, %ymm23

// CHECK: vpmulld 4064(%rdx), %ymm26, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x2d,0x20,0x40,0x7a,0x7f]
          vpmulld 4064(%rdx), %ymm26, %ymm23

// CHECK: vpmulld 4096(%rdx), %ymm26, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x2d,0x20,0x40,0xba,0x00,0x10,0x00,0x00]
          vpmulld 4096(%rdx), %ymm26, %ymm23

// CHECK: vpmulld -4096(%rdx), %ymm26, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x2d,0x20,0x40,0x7a,0x80]
          vpmulld -4096(%rdx), %ymm26, %ymm23

// CHECK: vpmulld -4128(%rdx), %ymm26, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x2d,0x20,0x40,0xba,0xe0,0xef,0xff,0xff]
          vpmulld -4128(%rdx), %ymm26, %ymm23

// CHECK: vpmulld 508(%rdx){1to8}, %ymm26, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x2d,0x30,0x40,0x7a,0x7f]
          vpmulld 508(%rdx){1to8}, %ymm26, %ymm23

// CHECK: vpmulld 512(%rdx){1to8}, %ymm26, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x2d,0x30,0x40,0xba,0x00,0x02,0x00,0x00]
          vpmulld 512(%rdx){1to8}, %ymm26, %ymm23

// CHECK: vpmulld -512(%rdx){1to8}, %ymm26, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x2d,0x30,0x40,0x7a,0x80]
          vpmulld -512(%rdx){1to8}, %ymm26, %ymm23

// CHECK: vpmulld -516(%rdx){1to8}, %ymm26, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x2d,0x30,0x40,0xba,0xfc,0xfd,0xff,0xff]
          vpmulld -516(%rdx){1to8}, %ymm26, %ymm23

// CHECK: vpord  %xmm28, %xmm29, %xmm28
// CHECK:  encoding: [0x62,0x01,0x15,0x00,0xeb,0xe4]
          vpord  %xmm28, %xmm29, %xmm28

// CHECK: vpord  %xmm28, %xmm29, %xmm28 {%k2}
// CHECK:  encoding: [0x62,0x01,0x15,0x02,0xeb,0xe4]
          vpord  %xmm28, %xmm29, %xmm28 {%k2}

// CHECK: vpord  %xmm28, %xmm29, %xmm28 {%k2} {z}
// CHECK:  encoding: [0x62,0x01,0x15,0x82,0xeb,0xe4]
          vpord  %xmm28, %xmm29, %xmm28 {%k2} {z}

// CHECK: vpord  (%rcx), %xmm29, %xmm28
// CHECK:  encoding: [0x62,0x61,0x15,0x00,0xeb,0x21]
          vpord  (%rcx), %xmm29, %xmm28

// CHECK: vpord  291(%rax,%r14,8), %xmm29, %xmm28
// CHECK:  encoding: [0x62,0x21,0x15,0x00,0xeb,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpord  291(%rax,%r14,8), %xmm29, %xmm28

// CHECK: vpord  (%rcx){1to4}, %xmm29, %xmm28
// CHECK:  encoding: [0x62,0x61,0x15,0x10,0xeb,0x21]
          vpord  (%rcx){1to4}, %xmm29, %xmm28

// CHECK: vpord  2032(%rdx), %xmm29, %xmm28
// CHECK:  encoding: [0x62,0x61,0x15,0x00,0xeb,0x62,0x7f]
          vpord  2032(%rdx), %xmm29, %xmm28

// CHECK: vpord  2048(%rdx), %xmm29, %xmm28
// CHECK:  encoding: [0x62,0x61,0x15,0x00,0xeb,0xa2,0x00,0x08,0x00,0x00]
          vpord  2048(%rdx), %xmm29, %xmm28

// CHECK: vpord  -2048(%rdx), %xmm29, %xmm28
// CHECK:  encoding: [0x62,0x61,0x15,0x00,0xeb,0x62,0x80]
          vpord  -2048(%rdx), %xmm29, %xmm28

// CHECK: vpord  -2064(%rdx), %xmm29, %xmm28
// CHECK:  encoding: [0x62,0x61,0x15,0x00,0xeb,0xa2,0xf0,0xf7,0xff,0xff]
          vpord  -2064(%rdx), %xmm29, %xmm28

// CHECK: vpord  508(%rdx){1to4}, %xmm29, %xmm28
// CHECK:  encoding: [0x62,0x61,0x15,0x10,0xeb,0x62,0x7f]
          vpord  508(%rdx){1to4}, %xmm29, %xmm28

// CHECK: vpord  512(%rdx){1to4}, %xmm29, %xmm28
// CHECK:  encoding: [0x62,0x61,0x15,0x10,0xeb,0xa2,0x00,0x02,0x00,0x00]
          vpord  512(%rdx){1to4}, %xmm29, %xmm28

// CHECK: vpord  -512(%rdx){1to4}, %xmm29, %xmm28
// CHECK:  encoding: [0x62,0x61,0x15,0x10,0xeb,0x62,0x80]
          vpord  -512(%rdx){1to4}, %xmm29, %xmm28

// CHECK: vpord  -516(%rdx){1to4}, %xmm29, %xmm28
// CHECK:  encoding: [0x62,0x61,0x15,0x10,0xeb,0xa2,0xfc,0xfd,0xff,0xff]
          vpord  -516(%rdx){1to4}, %xmm29, %xmm28

// CHECK: vpord  %ymm22, %ymm25, %ymm21
// CHECK:  encoding: [0x62,0xa1,0x35,0x20,0xeb,0xee]
          vpord  %ymm22, %ymm25, %ymm21

// CHECK: vpord  %ymm22, %ymm25, %ymm21 {%k6}
// CHECK:  encoding: [0x62,0xa1,0x35,0x26,0xeb,0xee]
          vpord  %ymm22, %ymm25, %ymm21 {%k6}

// CHECK: vpord  %ymm22, %ymm25, %ymm21 {%k6} {z}
// CHECK:  encoding: [0x62,0xa1,0x35,0xa6,0xeb,0xee]
          vpord  %ymm22, %ymm25, %ymm21 {%k6} {z}

// CHECK: vpord  (%rcx), %ymm25, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x35,0x20,0xeb,0x29]
          vpord  (%rcx), %ymm25, %ymm21

// CHECK: vpord  291(%rax,%r14,8), %ymm25, %ymm21
// CHECK:  encoding: [0x62,0xa1,0x35,0x20,0xeb,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpord  291(%rax,%r14,8), %ymm25, %ymm21

// CHECK: vpord  (%rcx){1to8}, %ymm25, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x35,0x30,0xeb,0x29]
          vpord  (%rcx){1to8}, %ymm25, %ymm21

// CHECK: vpord  4064(%rdx), %ymm25, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x35,0x20,0xeb,0x6a,0x7f]
          vpord  4064(%rdx), %ymm25, %ymm21

// CHECK: vpord  4096(%rdx), %ymm25, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x35,0x20,0xeb,0xaa,0x00,0x10,0x00,0x00]
          vpord  4096(%rdx), %ymm25, %ymm21

// CHECK: vpord  -4096(%rdx), %ymm25, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x35,0x20,0xeb,0x6a,0x80]
          vpord  -4096(%rdx), %ymm25, %ymm21

// CHECK: vpord  -4128(%rdx), %ymm25, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x35,0x20,0xeb,0xaa,0xe0,0xef,0xff,0xff]
          vpord  -4128(%rdx), %ymm25, %ymm21

// CHECK: vpord  508(%rdx){1to8}, %ymm25, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x35,0x30,0xeb,0x6a,0x7f]
          vpord  508(%rdx){1to8}, %ymm25, %ymm21

// CHECK: vpord  512(%rdx){1to8}, %ymm25, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x35,0x30,0xeb,0xaa,0x00,0x02,0x00,0x00]
          vpord  512(%rdx){1to8}, %ymm25, %ymm21

// CHECK: vpord  -512(%rdx){1to8}, %ymm25, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x35,0x30,0xeb,0x6a,0x80]
          vpord  -512(%rdx){1to8}, %ymm25, %ymm21

// CHECK: vpord  -516(%rdx){1to8}, %ymm25, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x35,0x30,0xeb,0xaa,0xfc,0xfd,0xff,0xff]
          vpord  -516(%rdx){1to8}, %ymm25, %ymm21

// CHECK: vporq  %xmm20, %xmm28, %xmm21
// CHECK:  encoding: [0x62,0xa1,0x9d,0x00,0xeb,0xec]
          vporq  %xmm20, %xmm28, %xmm21

// CHECK: vporq  %xmm20, %xmm28, %xmm21 {%k7}
// CHECK:  encoding: [0x62,0xa1,0x9d,0x07,0xeb,0xec]
          vporq  %xmm20, %xmm28, %xmm21 {%k7}

// CHECK: vporq  %xmm20, %xmm28, %xmm21 {%k7} {z}
// CHECK:  encoding: [0x62,0xa1,0x9d,0x87,0xeb,0xec]
          vporq  %xmm20, %xmm28, %xmm21 {%k7} {z}

// CHECK: vporq  (%rcx), %xmm28, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x9d,0x00,0xeb,0x29]
          vporq  (%rcx), %xmm28, %xmm21

// CHECK: vporq  291(%rax,%r14,8), %xmm28, %xmm21
// CHECK:  encoding: [0x62,0xa1,0x9d,0x00,0xeb,0xac,0xf0,0x23,0x01,0x00,0x00]
          vporq  291(%rax,%r14,8), %xmm28, %xmm21

// CHECK: vporq  (%rcx){1to2}, %xmm28, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x9d,0x10,0xeb,0x29]
          vporq  (%rcx){1to2}, %xmm28, %xmm21

// CHECK: vporq  2032(%rdx), %xmm28, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x9d,0x00,0xeb,0x6a,0x7f]
          vporq  2032(%rdx), %xmm28, %xmm21

// CHECK: vporq  2048(%rdx), %xmm28, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x9d,0x00,0xeb,0xaa,0x00,0x08,0x00,0x00]
          vporq  2048(%rdx), %xmm28, %xmm21

// CHECK: vporq  -2048(%rdx), %xmm28, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x9d,0x00,0xeb,0x6a,0x80]
          vporq  -2048(%rdx), %xmm28, %xmm21

// CHECK: vporq  -2064(%rdx), %xmm28, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x9d,0x00,0xeb,0xaa,0xf0,0xf7,0xff,0xff]
          vporq  -2064(%rdx), %xmm28, %xmm21

// CHECK: vporq  1016(%rdx){1to2}, %xmm28, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x9d,0x10,0xeb,0x6a,0x7f]
          vporq  1016(%rdx){1to2}, %xmm28, %xmm21

// CHECK: vporq  1024(%rdx){1to2}, %xmm28, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x9d,0x10,0xeb,0xaa,0x00,0x04,0x00,0x00]
          vporq  1024(%rdx){1to2}, %xmm28, %xmm21

// CHECK: vporq  -1024(%rdx){1to2}, %xmm28, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x9d,0x10,0xeb,0x6a,0x80]
          vporq  -1024(%rdx){1to2}, %xmm28, %xmm21

// CHECK: vporq  -1032(%rdx){1to2}, %xmm28, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x9d,0x10,0xeb,0xaa,0xf8,0xfb,0xff,0xff]
          vporq  -1032(%rdx){1to2}, %xmm28, %xmm21

// CHECK: vporq  %ymm24, %ymm19, %ymm28
// CHECK:  encoding: [0x62,0x01,0xe5,0x20,0xeb,0xe0]
          vporq  %ymm24, %ymm19, %ymm28

// CHECK: vporq  %ymm24, %ymm19, %ymm28 {%k4}
// CHECK:  encoding: [0x62,0x01,0xe5,0x24,0xeb,0xe0]
          vporq  %ymm24, %ymm19, %ymm28 {%k4}

// CHECK: vporq  %ymm24, %ymm19, %ymm28 {%k4} {z}
// CHECK:  encoding: [0x62,0x01,0xe5,0xa4,0xeb,0xe0]
          vporq  %ymm24, %ymm19, %ymm28 {%k4} {z}

// CHECK: vporq  (%rcx), %ymm19, %ymm28
// CHECK:  encoding: [0x62,0x61,0xe5,0x20,0xeb,0x21]
          vporq  (%rcx), %ymm19, %ymm28

// CHECK: vporq  291(%rax,%r14,8), %ymm19, %ymm28
// CHECK:  encoding: [0x62,0x21,0xe5,0x20,0xeb,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vporq  291(%rax,%r14,8), %ymm19, %ymm28

// CHECK: vporq  (%rcx){1to4}, %ymm19, %ymm28
// CHECK:  encoding: [0x62,0x61,0xe5,0x30,0xeb,0x21]
          vporq  (%rcx){1to4}, %ymm19, %ymm28

// CHECK: vporq  4064(%rdx), %ymm19, %ymm28
// CHECK:  encoding: [0x62,0x61,0xe5,0x20,0xeb,0x62,0x7f]
          vporq  4064(%rdx), %ymm19, %ymm28

// CHECK: vporq  4096(%rdx), %ymm19, %ymm28
// CHECK:  encoding: [0x62,0x61,0xe5,0x20,0xeb,0xa2,0x00,0x10,0x00,0x00]
          vporq  4096(%rdx), %ymm19, %ymm28

// CHECK: vporq  -4096(%rdx), %ymm19, %ymm28
// CHECK:  encoding: [0x62,0x61,0xe5,0x20,0xeb,0x62,0x80]
          vporq  -4096(%rdx), %ymm19, %ymm28

// CHECK: vporq  -4128(%rdx), %ymm19, %ymm28
// CHECK:  encoding: [0x62,0x61,0xe5,0x20,0xeb,0xa2,0xe0,0xef,0xff,0xff]
          vporq  -4128(%rdx), %ymm19, %ymm28

// CHECK: vporq  1016(%rdx){1to4}, %ymm19, %ymm28
// CHECK:  encoding: [0x62,0x61,0xe5,0x30,0xeb,0x62,0x7f]
          vporq  1016(%rdx){1to4}, %ymm19, %ymm28

// CHECK: vporq  1024(%rdx){1to4}, %ymm19, %ymm28
// CHECK:  encoding: [0x62,0x61,0xe5,0x30,0xeb,0xa2,0x00,0x04,0x00,0x00]
          vporq  1024(%rdx){1to4}, %ymm19, %ymm28

// CHECK: vporq  -1024(%rdx){1to4}, %ymm19, %ymm28
// CHECK:  encoding: [0x62,0x61,0xe5,0x30,0xeb,0x62,0x80]
          vporq  -1024(%rdx){1to4}, %ymm19, %ymm28

// CHECK: vporq  -1032(%rdx){1to4}, %ymm19, %ymm28
// CHECK:  encoding: [0x62,0x61,0xe5,0x30,0xeb,0xa2,0xf8,0xfb,0xff,0xff]
          vporq  -1032(%rdx){1to4}, %ymm19, %ymm28

// CHECK: vpsubd %xmm26, %xmm18, %xmm19
// CHECK:  encoding: [0x62,0x81,0x6d,0x00,0xfa,0xda]
          vpsubd %xmm26, %xmm18, %xmm19

// CHECK: vpsubd %xmm26, %xmm18, %xmm19 {%k2}
// CHECK:  encoding: [0x62,0x81,0x6d,0x02,0xfa,0xda]
          vpsubd %xmm26, %xmm18, %xmm19 {%k2}

// CHECK: vpsubd %xmm26, %xmm18, %xmm19 {%k2} {z}
// CHECK:  encoding: [0x62,0x81,0x6d,0x82,0xfa,0xda]
          vpsubd %xmm26, %xmm18, %xmm19 {%k2} {z}

// CHECK: vpsubd (%rcx), %xmm18, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x6d,0x00,0xfa,0x19]
          vpsubd (%rcx), %xmm18, %xmm19

// CHECK: vpsubd 291(%rax,%r14,8), %xmm18, %xmm19
// CHECK:  encoding: [0x62,0xa1,0x6d,0x00,0xfa,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpsubd 291(%rax,%r14,8), %xmm18, %xmm19

// CHECK: vpsubd (%rcx){1to4}, %xmm18, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x6d,0x10,0xfa,0x19]
          vpsubd (%rcx){1to4}, %xmm18, %xmm19

// CHECK: vpsubd 2032(%rdx), %xmm18, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x6d,0x00,0xfa,0x5a,0x7f]
          vpsubd 2032(%rdx), %xmm18, %xmm19

// CHECK: vpsubd 2048(%rdx), %xmm18, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x6d,0x00,0xfa,0x9a,0x00,0x08,0x00,0x00]
          vpsubd 2048(%rdx), %xmm18, %xmm19

// CHECK: vpsubd -2048(%rdx), %xmm18, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x6d,0x00,0xfa,0x5a,0x80]
          vpsubd -2048(%rdx), %xmm18, %xmm19

// CHECK: vpsubd -2064(%rdx), %xmm18, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x6d,0x00,0xfa,0x9a,0xf0,0xf7,0xff,0xff]
          vpsubd -2064(%rdx), %xmm18, %xmm19

// CHECK: vpsubd 508(%rdx){1to4}, %xmm18, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x6d,0x10,0xfa,0x5a,0x7f]
          vpsubd 508(%rdx){1to4}, %xmm18, %xmm19

// CHECK: vpsubd 512(%rdx){1to4}, %xmm18, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x6d,0x10,0xfa,0x9a,0x00,0x02,0x00,0x00]
          vpsubd 512(%rdx){1to4}, %xmm18, %xmm19

// CHECK: vpsubd -512(%rdx){1to4}, %xmm18, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x6d,0x10,0xfa,0x5a,0x80]
          vpsubd -512(%rdx){1to4}, %xmm18, %xmm19

// CHECK: vpsubd -516(%rdx){1to4}, %xmm18, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x6d,0x10,0xfa,0x9a,0xfc,0xfd,0xff,0xff]
          vpsubd -516(%rdx){1to4}, %xmm18, %xmm19

// CHECK: vpsubd %ymm21, %ymm26, %ymm24
// CHECK:  encoding: [0x62,0x21,0x2d,0x20,0xfa,0xc5]
          vpsubd %ymm21, %ymm26, %ymm24

// CHECK: vpsubd %ymm21, %ymm26, %ymm24 {%k1}
// CHECK:  encoding: [0x62,0x21,0x2d,0x21,0xfa,0xc5]
          vpsubd %ymm21, %ymm26, %ymm24 {%k1}

// CHECK: vpsubd %ymm21, %ymm26, %ymm24 {%k1} {z}
// CHECK:  encoding: [0x62,0x21,0x2d,0xa1,0xfa,0xc5]
          vpsubd %ymm21, %ymm26, %ymm24 {%k1} {z}

// CHECK: vpsubd (%rcx), %ymm26, %ymm24
// CHECK:  encoding: [0x62,0x61,0x2d,0x20,0xfa,0x01]
          vpsubd (%rcx), %ymm26, %ymm24

// CHECK: vpsubd 291(%rax,%r14,8), %ymm26, %ymm24
// CHECK:  encoding: [0x62,0x21,0x2d,0x20,0xfa,0x84,0xf0,0x23,0x01,0x00,0x00]
          vpsubd 291(%rax,%r14,8), %ymm26, %ymm24

// CHECK: vpsubd (%rcx){1to8}, %ymm26, %ymm24
// CHECK:  encoding: [0x62,0x61,0x2d,0x30,0xfa,0x01]
          vpsubd (%rcx){1to8}, %ymm26, %ymm24

// CHECK: vpsubd 4064(%rdx), %ymm26, %ymm24
// CHECK:  encoding: [0x62,0x61,0x2d,0x20,0xfa,0x42,0x7f]
          vpsubd 4064(%rdx), %ymm26, %ymm24

// CHECK: vpsubd 4096(%rdx), %ymm26, %ymm24
// CHECK:  encoding: [0x62,0x61,0x2d,0x20,0xfa,0x82,0x00,0x10,0x00,0x00]
          vpsubd 4096(%rdx), %ymm26, %ymm24

// CHECK: vpsubd -4096(%rdx), %ymm26, %ymm24
// CHECK:  encoding: [0x62,0x61,0x2d,0x20,0xfa,0x42,0x80]
          vpsubd -4096(%rdx), %ymm26, %ymm24

// CHECK: vpsubd -4128(%rdx), %ymm26, %ymm24
// CHECK:  encoding: [0x62,0x61,0x2d,0x20,0xfa,0x82,0xe0,0xef,0xff,0xff]
          vpsubd -4128(%rdx), %ymm26, %ymm24

// CHECK: vpsubd 508(%rdx){1to8}, %ymm26, %ymm24
// CHECK:  encoding: [0x62,0x61,0x2d,0x30,0xfa,0x42,0x7f]
          vpsubd 508(%rdx){1to8}, %ymm26, %ymm24

// CHECK: vpsubd 512(%rdx){1to8}, %ymm26, %ymm24
// CHECK:  encoding: [0x62,0x61,0x2d,0x30,0xfa,0x82,0x00,0x02,0x00,0x00]
          vpsubd 512(%rdx){1to8}, %ymm26, %ymm24

// CHECK: vpsubd -512(%rdx){1to8}, %ymm26, %ymm24
// CHECK:  encoding: [0x62,0x61,0x2d,0x30,0xfa,0x42,0x80]
          vpsubd -512(%rdx){1to8}, %ymm26, %ymm24

// CHECK: vpsubd -516(%rdx){1to8}, %ymm26, %ymm24
// CHECK:  encoding: [0x62,0x61,0x2d,0x30,0xfa,0x82,0xfc,0xfd,0xff,0xff]
          vpsubd -516(%rdx){1to8}, %ymm26, %ymm24

// CHECK: vpsubq %xmm27, %xmm27, %xmm20
// CHECK:  encoding: [0x62,0x81,0xa5,0x00,0xfb,0xe3]
          vpsubq %xmm27, %xmm27, %xmm20

// CHECK: vpsubq %xmm27, %xmm27, %xmm20 {%k2}
// CHECK:  encoding: [0x62,0x81,0xa5,0x02,0xfb,0xe3]
          vpsubq %xmm27, %xmm27, %xmm20 {%k2}

// CHECK: vpsubq %xmm27, %xmm27, %xmm20 {%k2} {z}
// CHECK:  encoding: [0x62,0x81,0xa5,0x82,0xfb,0xe3]
          vpsubq %xmm27, %xmm27, %xmm20 {%k2} {z}

// CHECK: vpsubq (%rcx), %xmm27, %xmm20
// CHECK:  encoding: [0x62,0xe1,0xa5,0x00,0xfb,0x21]
          vpsubq (%rcx), %xmm27, %xmm20

// CHECK: vpsubq 291(%rax,%r14,8), %xmm27, %xmm20
// CHECK:  encoding: [0x62,0xa1,0xa5,0x00,0xfb,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpsubq 291(%rax,%r14,8), %xmm27, %xmm20

// CHECK: vpsubq (%rcx){1to2}, %xmm27, %xmm20
// CHECK:  encoding: [0x62,0xe1,0xa5,0x10,0xfb,0x21]
          vpsubq (%rcx){1to2}, %xmm27, %xmm20

// CHECK: vpsubq 2032(%rdx), %xmm27, %xmm20
// CHECK:  encoding: [0x62,0xe1,0xa5,0x00,0xfb,0x62,0x7f]
          vpsubq 2032(%rdx), %xmm27, %xmm20

// CHECK: vpsubq 2048(%rdx), %xmm27, %xmm20
// CHECK:  encoding: [0x62,0xe1,0xa5,0x00,0xfb,0xa2,0x00,0x08,0x00,0x00]
          vpsubq 2048(%rdx), %xmm27, %xmm20

// CHECK: vpsubq -2048(%rdx), %xmm27, %xmm20
// CHECK:  encoding: [0x62,0xe1,0xa5,0x00,0xfb,0x62,0x80]
          vpsubq -2048(%rdx), %xmm27, %xmm20

// CHECK: vpsubq -2064(%rdx), %xmm27, %xmm20
// CHECK:  encoding: [0x62,0xe1,0xa5,0x00,0xfb,0xa2,0xf0,0xf7,0xff,0xff]
          vpsubq -2064(%rdx), %xmm27, %xmm20

// CHECK: vpsubq 1016(%rdx){1to2}, %xmm27, %xmm20
// CHECK:  encoding: [0x62,0xe1,0xa5,0x10,0xfb,0x62,0x7f]
          vpsubq 1016(%rdx){1to2}, %xmm27, %xmm20

// CHECK: vpsubq 1024(%rdx){1to2}, %xmm27, %xmm20
// CHECK:  encoding: [0x62,0xe1,0xa5,0x10,0xfb,0xa2,0x00,0x04,0x00,0x00]
          vpsubq 1024(%rdx){1to2}, %xmm27, %xmm20

// CHECK: vpsubq -1024(%rdx){1to2}, %xmm27, %xmm20
// CHECK:  encoding: [0x62,0xe1,0xa5,0x10,0xfb,0x62,0x80]
          vpsubq -1024(%rdx){1to2}, %xmm27, %xmm20

// CHECK: vpsubq -1032(%rdx){1to2}, %xmm27, %xmm20
// CHECK:  encoding: [0x62,0xe1,0xa5,0x10,0xfb,0xa2,0xf8,0xfb,0xff,0xff]
          vpsubq -1032(%rdx){1to2}, %xmm27, %xmm20

// CHECK: vpsubq %ymm28, %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x01,0xdd,0x20,0xfb,0xec]
          vpsubq %ymm28, %ymm20, %ymm29

// CHECK: vpsubq %ymm28, %ymm20, %ymm29 {%k5}
// CHECK:  encoding: [0x62,0x01,0xdd,0x25,0xfb,0xec]
          vpsubq %ymm28, %ymm20, %ymm29 {%k5}

// CHECK: vpsubq %ymm28, %ymm20, %ymm29 {%k5} {z}
// CHECK:  encoding: [0x62,0x01,0xdd,0xa5,0xfb,0xec]
          vpsubq %ymm28, %ymm20, %ymm29 {%k5} {z}

// CHECK: vpsubq (%rcx), %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x61,0xdd,0x20,0xfb,0x29]
          vpsubq (%rcx), %ymm20, %ymm29

// CHECK: vpsubq 291(%rax,%r14,8), %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x21,0xdd,0x20,0xfb,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpsubq 291(%rax,%r14,8), %ymm20, %ymm29

// CHECK: vpsubq (%rcx){1to4}, %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x61,0xdd,0x30,0xfb,0x29]
          vpsubq (%rcx){1to4}, %ymm20, %ymm29

// CHECK: vpsubq 4064(%rdx), %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x61,0xdd,0x20,0xfb,0x6a,0x7f]
          vpsubq 4064(%rdx), %ymm20, %ymm29

// CHECK: vpsubq 4096(%rdx), %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x61,0xdd,0x20,0xfb,0xaa,0x00,0x10,0x00,0x00]
          vpsubq 4096(%rdx), %ymm20, %ymm29

// CHECK: vpsubq -4096(%rdx), %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x61,0xdd,0x20,0xfb,0x6a,0x80]
          vpsubq -4096(%rdx), %ymm20, %ymm29

// CHECK: vpsubq -4128(%rdx), %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x61,0xdd,0x20,0xfb,0xaa,0xe0,0xef,0xff,0xff]
          vpsubq -4128(%rdx), %ymm20, %ymm29

// CHECK: vpsubq 1016(%rdx){1to4}, %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x61,0xdd,0x30,0xfb,0x6a,0x7f]
          vpsubq 1016(%rdx){1to4}, %ymm20, %ymm29

// CHECK: vpsubq 1024(%rdx){1to4}, %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x61,0xdd,0x30,0xfb,0xaa,0x00,0x04,0x00,0x00]
          vpsubq 1024(%rdx){1to4}, %ymm20, %ymm29

// CHECK: vpsubq -1024(%rdx){1to4}, %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x61,0xdd,0x30,0xfb,0x6a,0x80]
          vpsubq -1024(%rdx){1to4}, %ymm20, %ymm29

// CHECK: vpsubq -1032(%rdx){1to4}, %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x61,0xdd,0x30,0xfb,0xaa,0xf8,0xfb,0xff,0xff]
          vpsubq -1032(%rdx){1to4}, %ymm20, %ymm29

// CHECK: vpxord %xmm25, %xmm17, %xmm23
// CHECK:  encoding: [0x62,0x81,0x75,0x00,0xef,0xf9]
          vpxord %xmm25, %xmm17, %xmm23

// CHECK: vpxord %xmm25, %xmm17, %xmm23 {%k3}
// CHECK:  encoding: [0x62,0x81,0x75,0x03,0xef,0xf9]
          vpxord %xmm25, %xmm17, %xmm23 {%k3}

// CHECK: vpxord %xmm25, %xmm17, %xmm23 {%k3} {z}
// CHECK:  encoding: [0x62,0x81,0x75,0x83,0xef,0xf9]
          vpxord %xmm25, %xmm17, %xmm23 {%k3} {z}

// CHECK: vpxord (%rcx), %xmm17, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x75,0x00,0xef,0x39]
          vpxord (%rcx), %xmm17, %xmm23

// CHECK: vpxord 291(%rax,%r14,8), %xmm17, %xmm23
// CHECK:  encoding: [0x62,0xa1,0x75,0x00,0xef,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vpxord 291(%rax,%r14,8), %xmm17, %xmm23

// CHECK: vpxord (%rcx){1to4}, %xmm17, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x75,0x10,0xef,0x39]
          vpxord (%rcx){1to4}, %xmm17, %xmm23

// CHECK: vpxord 2032(%rdx), %xmm17, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x75,0x00,0xef,0x7a,0x7f]
          vpxord 2032(%rdx), %xmm17, %xmm23

// CHECK: vpxord 2048(%rdx), %xmm17, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x75,0x00,0xef,0xba,0x00,0x08,0x00,0x00]
          vpxord 2048(%rdx), %xmm17, %xmm23

// CHECK: vpxord -2048(%rdx), %xmm17, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x75,0x00,0xef,0x7a,0x80]
          vpxord -2048(%rdx), %xmm17, %xmm23

// CHECK: vpxord -2064(%rdx), %xmm17, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x75,0x00,0xef,0xba,0xf0,0xf7,0xff,0xff]
          vpxord -2064(%rdx), %xmm17, %xmm23

// CHECK: vpxord 508(%rdx){1to4}, %xmm17, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x75,0x10,0xef,0x7a,0x7f]
          vpxord 508(%rdx){1to4}, %xmm17, %xmm23

// CHECK: vpxord 512(%rdx){1to4}, %xmm17, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x75,0x10,0xef,0xba,0x00,0x02,0x00,0x00]
          vpxord 512(%rdx){1to4}, %xmm17, %xmm23

// CHECK: vpxord -512(%rdx){1to4}, %xmm17, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x75,0x10,0xef,0x7a,0x80]
          vpxord -512(%rdx){1to4}, %xmm17, %xmm23

// CHECK: vpxord -516(%rdx){1to4}, %xmm17, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x75,0x10,0xef,0xba,0xfc,0xfd,0xff,0xff]
          vpxord -516(%rdx){1to4}, %xmm17, %xmm23

// CHECK: vpxord %ymm22, %ymm29, %ymm22
// CHECK:  encoding: [0x62,0xa1,0x15,0x20,0xef,0xf6]
          vpxord %ymm22, %ymm29, %ymm22

// CHECK: vpxord %ymm22, %ymm29, %ymm22 {%k4}
// CHECK:  encoding: [0x62,0xa1,0x15,0x24,0xef,0xf6]
          vpxord %ymm22, %ymm29, %ymm22 {%k4}

// CHECK: vpxord %ymm22, %ymm29, %ymm22 {%k4} {z}
// CHECK:  encoding: [0x62,0xa1,0x15,0xa4,0xef,0xf6]
          vpxord %ymm22, %ymm29, %ymm22 {%k4} {z}

// CHECK: vpxord (%rcx), %ymm29, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x15,0x20,0xef,0x31]
          vpxord (%rcx), %ymm29, %ymm22

// CHECK: vpxord 291(%rax,%r14,8), %ymm29, %ymm22
// CHECK:  encoding: [0x62,0xa1,0x15,0x20,0xef,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpxord 291(%rax,%r14,8), %ymm29, %ymm22

// CHECK: vpxord (%rcx){1to8}, %ymm29, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x15,0x30,0xef,0x31]
          vpxord (%rcx){1to8}, %ymm29, %ymm22

// CHECK: vpxord 4064(%rdx), %ymm29, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x15,0x20,0xef,0x72,0x7f]
          vpxord 4064(%rdx), %ymm29, %ymm22

// CHECK: vpxord 4096(%rdx), %ymm29, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x15,0x20,0xef,0xb2,0x00,0x10,0x00,0x00]
          vpxord 4096(%rdx), %ymm29, %ymm22

// CHECK: vpxord -4096(%rdx), %ymm29, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x15,0x20,0xef,0x72,0x80]
          vpxord -4096(%rdx), %ymm29, %ymm22

// CHECK: vpxord -4128(%rdx), %ymm29, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x15,0x20,0xef,0xb2,0xe0,0xef,0xff,0xff]
          vpxord -4128(%rdx), %ymm29, %ymm22

// CHECK: vpxord 508(%rdx){1to8}, %ymm29, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x15,0x30,0xef,0x72,0x7f]
          vpxord 508(%rdx){1to8}, %ymm29, %ymm22

// CHECK: vpxord 512(%rdx){1to8}, %ymm29, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x15,0x30,0xef,0xb2,0x00,0x02,0x00,0x00]
          vpxord 512(%rdx){1to8}, %ymm29, %ymm22

// CHECK: vpxord -512(%rdx){1to8}, %ymm29, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x15,0x30,0xef,0x72,0x80]
          vpxord -512(%rdx){1to8}, %ymm29, %ymm22

// CHECK: vpxord -516(%rdx){1to8}, %ymm29, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x15,0x30,0xef,0xb2,0xfc,0xfd,0xff,0xff]
          vpxord -516(%rdx){1to8}, %ymm29, %ymm22

// CHECK: vpxorq %xmm18, %xmm17, %xmm26
// CHECK:  encoding: [0x62,0x21,0xf5,0x00,0xef,0xd2]
          vpxorq %xmm18, %xmm17, %xmm26

// CHECK: vpxorq %xmm18, %xmm17, %xmm26 {%k2}
// CHECK:  encoding: [0x62,0x21,0xf5,0x02,0xef,0xd2]
          vpxorq %xmm18, %xmm17, %xmm26 {%k2}

// CHECK: vpxorq %xmm18, %xmm17, %xmm26 {%k2} {z}
// CHECK:  encoding: [0x62,0x21,0xf5,0x82,0xef,0xd2]
          vpxorq %xmm18, %xmm17, %xmm26 {%k2} {z}

// CHECK: vpxorq (%rcx), %xmm17, %xmm26
// CHECK:  encoding: [0x62,0x61,0xf5,0x00,0xef,0x11]
          vpxorq (%rcx), %xmm17, %xmm26

// CHECK: vpxorq 291(%rax,%r14,8), %xmm17, %xmm26
// CHECK:  encoding: [0x62,0x21,0xf5,0x00,0xef,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpxorq 291(%rax,%r14,8), %xmm17, %xmm26

// CHECK: vpxorq (%rcx){1to2}, %xmm17, %xmm26
// CHECK:  encoding: [0x62,0x61,0xf5,0x10,0xef,0x11]
          vpxorq (%rcx){1to2}, %xmm17, %xmm26

// CHECK: vpxorq 2032(%rdx), %xmm17, %xmm26
// CHECK:  encoding: [0x62,0x61,0xf5,0x00,0xef,0x52,0x7f]
          vpxorq 2032(%rdx), %xmm17, %xmm26

// CHECK: vpxorq 2048(%rdx), %xmm17, %xmm26
// CHECK:  encoding: [0x62,0x61,0xf5,0x00,0xef,0x92,0x00,0x08,0x00,0x00]
          vpxorq 2048(%rdx), %xmm17, %xmm26

// CHECK: vpxorq -2048(%rdx), %xmm17, %xmm26
// CHECK:  encoding: [0x62,0x61,0xf5,0x00,0xef,0x52,0x80]
          vpxorq -2048(%rdx), %xmm17, %xmm26

// CHECK: vpxorq -2064(%rdx), %xmm17, %xmm26
// CHECK:  encoding: [0x62,0x61,0xf5,0x00,0xef,0x92,0xf0,0xf7,0xff,0xff]
          vpxorq -2064(%rdx), %xmm17, %xmm26

// CHECK: vpxorq 1016(%rdx){1to2}, %xmm17, %xmm26
// CHECK:  encoding: [0x62,0x61,0xf5,0x10,0xef,0x52,0x7f]
          vpxorq 1016(%rdx){1to2}, %xmm17, %xmm26

// CHECK: vpxorq 1024(%rdx){1to2}, %xmm17, %xmm26
// CHECK:  encoding: [0x62,0x61,0xf5,0x10,0xef,0x92,0x00,0x04,0x00,0x00]
          vpxorq 1024(%rdx){1to2}, %xmm17, %xmm26

// CHECK: vpxorq -1024(%rdx){1to2}, %xmm17, %xmm26
// CHECK:  encoding: [0x62,0x61,0xf5,0x10,0xef,0x52,0x80]
          vpxorq -1024(%rdx){1to2}, %xmm17, %xmm26

// CHECK: vpxorq -1032(%rdx){1to2}, %xmm17, %xmm26
// CHECK:  encoding: [0x62,0x61,0xf5,0x10,0xef,0x92,0xf8,0xfb,0xff,0xff]
          vpxorq -1032(%rdx){1to2}, %xmm17, %xmm26

// CHECK: vpxorq %ymm19, %ymm18, %ymm21
// CHECK:  encoding: [0x62,0xa1,0xed,0x20,0xef,0xeb]
          vpxorq %ymm19, %ymm18, %ymm21

// CHECK: vpxorq %ymm19, %ymm18, %ymm21 {%k7}
// CHECK:  encoding: [0x62,0xa1,0xed,0x27,0xef,0xeb]
          vpxorq %ymm19, %ymm18, %ymm21 {%k7}

// CHECK: vpxorq %ymm19, %ymm18, %ymm21 {%k7} {z}
// CHECK:  encoding: [0x62,0xa1,0xed,0xa7,0xef,0xeb]
          vpxorq %ymm19, %ymm18, %ymm21 {%k7} {z}

// CHECK: vpxorq (%rcx), %ymm18, %ymm21
// CHECK:  encoding: [0x62,0xe1,0xed,0x20,0xef,0x29]
          vpxorq (%rcx), %ymm18, %ymm21

// CHECK: vpxorq 291(%rax,%r14,8), %ymm18, %ymm21
// CHECK:  encoding: [0x62,0xa1,0xed,0x20,0xef,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpxorq 291(%rax,%r14,8), %ymm18, %ymm21

// CHECK: vpxorq (%rcx){1to4}, %ymm18, %ymm21
// CHECK:  encoding: [0x62,0xe1,0xed,0x30,0xef,0x29]
          vpxorq (%rcx){1to4}, %ymm18, %ymm21

// CHECK: vpxorq 4064(%rdx), %ymm18, %ymm21
// CHECK:  encoding: [0x62,0xe1,0xed,0x20,0xef,0x6a,0x7f]
          vpxorq 4064(%rdx), %ymm18, %ymm21

// CHECK: vpxorq 4096(%rdx), %ymm18, %ymm21
// CHECK:  encoding: [0x62,0xe1,0xed,0x20,0xef,0xaa,0x00,0x10,0x00,0x00]
          vpxorq 4096(%rdx), %ymm18, %ymm21

// CHECK: vpxorq -4096(%rdx), %ymm18, %ymm21
// CHECK:  encoding: [0x62,0xe1,0xed,0x20,0xef,0x6a,0x80]
          vpxorq -4096(%rdx), %ymm18, %ymm21

// CHECK: vpxorq -4128(%rdx), %ymm18, %ymm21
// CHECK:  encoding: [0x62,0xe1,0xed,0x20,0xef,0xaa,0xe0,0xef,0xff,0xff]
          vpxorq -4128(%rdx), %ymm18, %ymm21

// CHECK: vpxorq 1016(%rdx){1to4}, %ymm18, %ymm21
// CHECK:  encoding: [0x62,0xe1,0xed,0x30,0xef,0x6a,0x7f]
          vpxorq 1016(%rdx){1to4}, %ymm18, %ymm21

// CHECK: vpxorq 1024(%rdx){1to4}, %ymm18, %ymm21
// CHECK:  encoding: [0x62,0xe1,0xed,0x30,0xef,0xaa,0x00,0x04,0x00,0x00]
          vpxorq 1024(%rdx){1to4}, %ymm18, %ymm21

// CHECK: vpxorq -1024(%rdx){1to4}, %ymm18, %ymm21
// CHECK:  encoding: [0x62,0xe1,0xed,0x30,0xef,0x6a,0x80]
          vpxorq -1024(%rdx){1to4}, %ymm18, %ymm21

// CHECK: vpxorq -1032(%rdx){1to4}, %ymm18, %ymm21
// CHECK:  encoding: [0x62,0xe1,0xed,0x30,0xef,0xaa,0xf8,0xfb,0xff,0xff]
          vpxorq -1032(%rdx){1to4}, %ymm18, %ymm21

// CHECK: vrcp14pd %xmm29, %xmm18
// CHECK:  encoding: [0x62,0x82,0xfd,0x08,0x4c,0xd5]
          vrcp14pd %xmm29, %xmm18

// CHECK: vrcp14pd %xmm29, %xmm18 {%k4}
// CHECK:  encoding: [0x62,0x82,0xfd,0x0c,0x4c,0xd5]
          vrcp14pd %xmm29, %xmm18 {%k4}

// CHECK: vrcp14pd %xmm29, %xmm18 {%k4} {z}
// CHECK:  encoding: [0x62,0x82,0xfd,0x8c,0x4c,0xd5]
          vrcp14pd %xmm29, %xmm18 {%k4} {z}

// CHECK: vrcp14pd (%rcx), %xmm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x08,0x4c,0x11]
          vrcp14pd (%rcx), %xmm18

// CHECK: vrcp14pd 291(%rax,%r14,8), %xmm18
// CHECK:  encoding: [0x62,0xa2,0xfd,0x08,0x4c,0x94,0xf0,0x23,0x01,0x00,0x00]
          vrcp14pd 291(%rax,%r14,8), %xmm18

// CHECK: vrcp14pd (%rcx){1to2}, %xmm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x18,0x4c,0x11]
          vrcp14pd (%rcx){1to2}, %xmm18

// CHECK: vrcp14pd 2032(%rdx), %xmm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x08,0x4c,0x52,0x7f]
          vrcp14pd 2032(%rdx), %xmm18

// CHECK: vrcp14pd 2048(%rdx), %xmm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x08,0x4c,0x92,0x00,0x08,0x00,0x00]
          vrcp14pd 2048(%rdx), %xmm18

// CHECK: vrcp14pd -2048(%rdx), %xmm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x08,0x4c,0x52,0x80]
          vrcp14pd -2048(%rdx), %xmm18

// CHECK: vrcp14pd -2064(%rdx), %xmm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x08,0x4c,0x92,0xf0,0xf7,0xff,0xff]
          vrcp14pd -2064(%rdx), %xmm18

// CHECK: vrcp14pd 1016(%rdx){1to2}, %xmm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x18,0x4c,0x52,0x7f]
          vrcp14pd 1016(%rdx){1to2}, %xmm18

// CHECK: vrcp14pd 1024(%rdx){1to2}, %xmm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x18,0x4c,0x92,0x00,0x04,0x00,0x00]
          vrcp14pd 1024(%rdx){1to2}, %xmm18

// CHECK: vrcp14pd -1024(%rdx){1to2}, %xmm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x18,0x4c,0x52,0x80]
          vrcp14pd -1024(%rdx){1to2}, %xmm18

// CHECK: vrcp14pd -1032(%rdx){1to2}, %xmm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x18,0x4c,0x92,0xf8,0xfb,0xff,0xff]
          vrcp14pd -1032(%rdx){1to2}, %xmm18

// CHECK: vrcp14pd %ymm29, %ymm17
// CHECK:  encoding: [0x62,0x82,0xfd,0x28,0x4c,0xcd]
          vrcp14pd %ymm29, %ymm17

// CHECK: vrcp14pd %ymm29, %ymm17 {%k4}
// CHECK:  encoding: [0x62,0x82,0xfd,0x2c,0x4c,0xcd]
          vrcp14pd %ymm29, %ymm17 {%k4}

// CHECK: vrcp14pd %ymm29, %ymm17 {%k4} {z}
// CHECK:  encoding: [0x62,0x82,0xfd,0xac,0x4c,0xcd]
          vrcp14pd %ymm29, %ymm17 {%k4} {z}

// CHECK: vrcp14pd (%rcx), %ymm17
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0x4c,0x09]
          vrcp14pd (%rcx), %ymm17

// CHECK: vrcp14pd 291(%rax,%r14,8), %ymm17
// CHECK:  encoding: [0x62,0xa2,0xfd,0x28,0x4c,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vrcp14pd 291(%rax,%r14,8), %ymm17

// CHECK: vrcp14pd (%rcx){1to4}, %ymm17
// CHECK:  encoding: [0x62,0xe2,0xfd,0x38,0x4c,0x09]
          vrcp14pd (%rcx){1to4}, %ymm17

// CHECK: vrcp14pd 4064(%rdx), %ymm17
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0x4c,0x4a,0x7f]
          vrcp14pd 4064(%rdx), %ymm17

// CHECK: vrcp14pd 4096(%rdx), %ymm17
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0x4c,0x8a,0x00,0x10,0x00,0x00]
          vrcp14pd 4096(%rdx), %ymm17

// CHECK: vrcp14pd -4096(%rdx), %ymm17
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0x4c,0x4a,0x80]
          vrcp14pd -4096(%rdx), %ymm17

// CHECK: vrcp14pd -4128(%rdx), %ymm17
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0x4c,0x8a,0xe0,0xef,0xff,0xff]
          vrcp14pd -4128(%rdx), %ymm17

// CHECK: vrcp14pd 1016(%rdx){1to4}, %ymm17
// CHECK:  encoding: [0x62,0xe2,0xfd,0x38,0x4c,0x4a,0x7f]
          vrcp14pd 1016(%rdx){1to4}, %ymm17

// CHECK: vrcp14pd 1024(%rdx){1to4}, %ymm17
// CHECK:  encoding: [0x62,0xe2,0xfd,0x38,0x4c,0x8a,0x00,0x04,0x00,0x00]
          vrcp14pd 1024(%rdx){1to4}, %ymm17

// CHECK: vrcp14pd -1024(%rdx){1to4}, %ymm17
// CHECK:  encoding: [0x62,0xe2,0xfd,0x38,0x4c,0x4a,0x80]
          vrcp14pd -1024(%rdx){1to4}, %ymm17

// CHECK: vrcp14pd -1032(%rdx){1to4}, %ymm17
// CHECK:  encoding: [0x62,0xe2,0xfd,0x38,0x4c,0x8a,0xf8,0xfb,0xff,0xff]
          vrcp14pd -1032(%rdx){1to4}, %ymm17

// CHECK: vrcp14ps %xmm28, %xmm27
// CHECK:  encoding: [0x62,0x02,0x7d,0x08,0x4c,0xdc]
          vrcp14ps %xmm28, %xmm27

// CHECK: vrcp14ps %xmm28, %xmm27 {%k4}
// CHECK:  encoding: [0x62,0x02,0x7d,0x0c,0x4c,0xdc]
          vrcp14ps %xmm28, %xmm27 {%k4}

// CHECK: vrcp14ps %xmm28, %xmm27 {%k4} {z}
// CHECK:  encoding: [0x62,0x02,0x7d,0x8c,0x4c,0xdc]
          vrcp14ps %xmm28, %xmm27 {%k4} {z}

// CHECK: vrcp14ps (%rcx), %xmm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x4c,0x19]
          vrcp14ps (%rcx), %xmm27

// CHECK: vrcp14ps 291(%rax,%r14,8), %xmm27
// CHECK:  encoding: [0x62,0x22,0x7d,0x08,0x4c,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vrcp14ps 291(%rax,%r14,8), %xmm27

// CHECK: vrcp14ps (%rcx){1to4}, %xmm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x18,0x4c,0x19]
          vrcp14ps (%rcx){1to4}, %xmm27

// CHECK: vrcp14ps 2032(%rdx), %xmm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x4c,0x5a,0x7f]
          vrcp14ps 2032(%rdx), %xmm27

// CHECK: vrcp14ps 2048(%rdx), %xmm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x4c,0x9a,0x00,0x08,0x00,0x00]
          vrcp14ps 2048(%rdx), %xmm27

// CHECK: vrcp14ps -2048(%rdx), %xmm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x4c,0x5a,0x80]
          vrcp14ps -2048(%rdx), %xmm27

// CHECK: vrcp14ps -2064(%rdx), %xmm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x4c,0x9a,0xf0,0xf7,0xff,0xff]
          vrcp14ps -2064(%rdx), %xmm27

// CHECK: vrcp14ps 508(%rdx){1to4}, %xmm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x18,0x4c,0x5a,0x7f]
          vrcp14ps 508(%rdx){1to4}, %xmm27

// CHECK: vrcp14ps 512(%rdx){1to4}, %xmm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x18,0x4c,0x9a,0x00,0x02,0x00,0x00]
          vrcp14ps 512(%rdx){1to4}, %xmm27

// CHECK: vrcp14ps -512(%rdx){1to4}, %xmm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x18,0x4c,0x5a,0x80]
          vrcp14ps -512(%rdx){1to4}, %xmm27

// CHECK: vrcp14ps -516(%rdx){1to4}, %xmm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x18,0x4c,0x9a,0xfc,0xfd,0xff,0xff]
          vrcp14ps -516(%rdx){1to4}, %xmm27

// CHECK: vrcp14ps %ymm21, %ymm29
// CHECK:  encoding: [0x62,0x22,0x7d,0x28,0x4c,0xed]
          vrcp14ps %ymm21, %ymm29

// CHECK: vrcp14ps %ymm21, %ymm29 {%k7}
// CHECK:  encoding: [0x62,0x22,0x7d,0x2f,0x4c,0xed]
          vrcp14ps %ymm21, %ymm29 {%k7}

// CHECK: vrcp14ps %ymm21, %ymm29 {%k7} {z}
// CHECK:  encoding: [0x62,0x22,0x7d,0xaf,0x4c,0xed]
          vrcp14ps %ymm21, %ymm29 {%k7} {z}

// CHECK: vrcp14ps (%rcx), %ymm29
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x4c,0x29]
          vrcp14ps (%rcx), %ymm29

// CHECK: vrcp14ps 291(%rax,%r14,8), %ymm29
// CHECK:  encoding: [0x62,0x22,0x7d,0x28,0x4c,0xac,0xf0,0x23,0x01,0x00,0x00]
          vrcp14ps 291(%rax,%r14,8), %ymm29

// CHECK: vrcp14ps (%rcx){1to8}, %ymm29
// CHECK:  encoding: [0x62,0x62,0x7d,0x38,0x4c,0x29]
          vrcp14ps (%rcx){1to8}, %ymm29

// CHECK: vrcp14ps 4064(%rdx), %ymm29
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x4c,0x6a,0x7f]
          vrcp14ps 4064(%rdx), %ymm29

// CHECK: vrcp14ps 4096(%rdx), %ymm29
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x4c,0xaa,0x00,0x10,0x00,0x00]
          vrcp14ps 4096(%rdx), %ymm29

// CHECK: vrcp14ps -4096(%rdx), %ymm29
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x4c,0x6a,0x80]
          vrcp14ps -4096(%rdx), %ymm29

// CHECK: vrcp14ps -4128(%rdx), %ymm29
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x4c,0xaa,0xe0,0xef,0xff,0xff]
          vrcp14ps -4128(%rdx), %ymm29

// CHECK: vrcp14ps 508(%rdx){1to8}, %ymm29
// CHECK:  encoding: [0x62,0x62,0x7d,0x38,0x4c,0x6a,0x7f]
          vrcp14ps 508(%rdx){1to8}, %ymm29

// CHECK: vrcp14ps 512(%rdx){1to8}, %ymm29
// CHECK:  encoding: [0x62,0x62,0x7d,0x38,0x4c,0xaa,0x00,0x02,0x00,0x00]
          vrcp14ps 512(%rdx){1to8}, %ymm29

// CHECK: vrcp14ps -512(%rdx){1to8}, %ymm29
// CHECK:  encoding: [0x62,0x62,0x7d,0x38,0x4c,0x6a,0x80]
          vrcp14ps -512(%rdx){1to8}, %ymm29

// CHECK: vrcp14ps -516(%rdx){1to8}, %ymm29
// CHECK:  encoding: [0x62,0x62,0x7d,0x38,0x4c,0xaa,0xfc,0xfd,0xff,0xff]
          vrcp14ps -516(%rdx){1to8}, %ymm29

// CHECK: vrsqrt14pd %xmm28, %xmm21
// CHECK:  encoding: [0x62,0x82,0xfd,0x08,0x4e,0xec]
          vrsqrt14pd %xmm28, %xmm21

// CHECK: vrsqrt14pd %xmm28, %xmm21 {%k1}
// CHECK:  encoding: [0x62,0x82,0xfd,0x09,0x4e,0xec]
          vrsqrt14pd %xmm28, %xmm21 {%k1}

// CHECK: vrsqrt14pd %xmm28, %xmm21 {%k1} {z}
// CHECK:  encoding: [0x62,0x82,0xfd,0x89,0x4e,0xec]
          vrsqrt14pd %xmm28, %xmm21 {%k1} {z}

// CHECK: vrsqrt14pd (%rcx), %xmm21
// CHECK:  encoding: [0x62,0xe2,0xfd,0x08,0x4e,0x29]
          vrsqrt14pd (%rcx), %xmm21

// CHECK: vrsqrt14pd 291(%rax,%r14,8), %xmm21
// CHECK:  encoding: [0x62,0xa2,0xfd,0x08,0x4e,0xac,0xf0,0x23,0x01,0x00,0x00]
          vrsqrt14pd 291(%rax,%r14,8), %xmm21

// CHECK: vrsqrt14pd (%rcx){1to2}, %xmm21
// CHECK:  encoding: [0x62,0xe2,0xfd,0x18,0x4e,0x29]
          vrsqrt14pd (%rcx){1to2}, %xmm21

// CHECK: vrsqrt14pd 2032(%rdx), %xmm21
// CHECK:  encoding: [0x62,0xe2,0xfd,0x08,0x4e,0x6a,0x7f]
          vrsqrt14pd 2032(%rdx), %xmm21

// CHECK: vrsqrt14pd 2048(%rdx), %xmm21
// CHECK:  encoding: [0x62,0xe2,0xfd,0x08,0x4e,0xaa,0x00,0x08,0x00,0x00]
          vrsqrt14pd 2048(%rdx), %xmm21

// CHECK: vrsqrt14pd -2048(%rdx), %xmm21
// CHECK:  encoding: [0x62,0xe2,0xfd,0x08,0x4e,0x6a,0x80]
          vrsqrt14pd -2048(%rdx), %xmm21

// CHECK: vrsqrt14pd -2064(%rdx), %xmm21
// CHECK:  encoding: [0x62,0xe2,0xfd,0x08,0x4e,0xaa,0xf0,0xf7,0xff,0xff]
          vrsqrt14pd -2064(%rdx), %xmm21

// CHECK: vrsqrt14pd 1016(%rdx){1to2}, %xmm21
// CHECK:  encoding: [0x62,0xe2,0xfd,0x18,0x4e,0x6a,0x7f]
          vrsqrt14pd 1016(%rdx){1to2}, %xmm21

// CHECK: vrsqrt14pd 1024(%rdx){1to2}, %xmm21
// CHECK:  encoding: [0x62,0xe2,0xfd,0x18,0x4e,0xaa,0x00,0x04,0x00,0x00]
          vrsqrt14pd 1024(%rdx){1to2}, %xmm21

// CHECK: vrsqrt14pd -1024(%rdx){1to2}, %xmm21
// CHECK:  encoding: [0x62,0xe2,0xfd,0x18,0x4e,0x6a,0x80]
          vrsqrt14pd -1024(%rdx){1to2}, %xmm21

// CHECK: vrsqrt14pd -1032(%rdx){1to2}, %xmm21
// CHECK:  encoding: [0x62,0xe2,0xfd,0x18,0x4e,0xaa,0xf8,0xfb,0xff,0xff]
          vrsqrt14pd -1032(%rdx){1to2}, %xmm21

// CHECK: vrsqrt14pd %ymm19, %ymm18
// CHECK:  encoding: [0x62,0xa2,0xfd,0x28,0x4e,0xd3]
          vrsqrt14pd %ymm19, %ymm18

// CHECK: vrsqrt14pd %ymm19, %ymm18 {%k4}
// CHECK:  encoding: [0x62,0xa2,0xfd,0x2c,0x4e,0xd3]
          vrsqrt14pd %ymm19, %ymm18 {%k4}

// CHECK: vrsqrt14pd %ymm19, %ymm18 {%k4} {z}
// CHECK:  encoding: [0x62,0xa2,0xfd,0xac,0x4e,0xd3]
          vrsqrt14pd %ymm19, %ymm18 {%k4} {z}

// CHECK: vrsqrt14pd (%rcx), %ymm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0x4e,0x11]
          vrsqrt14pd (%rcx), %ymm18

// CHECK: vrsqrt14pd 291(%rax,%r14,8), %ymm18
// CHECK:  encoding: [0x62,0xa2,0xfd,0x28,0x4e,0x94,0xf0,0x23,0x01,0x00,0x00]
          vrsqrt14pd 291(%rax,%r14,8), %ymm18

// CHECK: vrsqrt14pd (%rcx){1to4}, %ymm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x38,0x4e,0x11]
          vrsqrt14pd (%rcx){1to4}, %ymm18

// CHECK: vrsqrt14pd 4064(%rdx), %ymm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0x4e,0x52,0x7f]
          vrsqrt14pd 4064(%rdx), %ymm18

// CHECK: vrsqrt14pd 4096(%rdx), %ymm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0x4e,0x92,0x00,0x10,0x00,0x00]
          vrsqrt14pd 4096(%rdx), %ymm18

// CHECK: vrsqrt14pd -4096(%rdx), %ymm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0x4e,0x52,0x80]
          vrsqrt14pd -4096(%rdx), %ymm18

// CHECK: vrsqrt14pd -4128(%rdx), %ymm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0x4e,0x92,0xe0,0xef,0xff,0xff]
          vrsqrt14pd -4128(%rdx), %ymm18

// CHECK: vrsqrt14pd 1016(%rdx){1to4}, %ymm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x38,0x4e,0x52,0x7f]
          vrsqrt14pd 1016(%rdx){1to4}, %ymm18

// CHECK: vrsqrt14pd 1024(%rdx){1to4}, %ymm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x38,0x4e,0x92,0x00,0x04,0x00,0x00]
          vrsqrt14pd 1024(%rdx){1to4}, %ymm18

// CHECK: vrsqrt14pd -1024(%rdx){1to4}, %ymm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x38,0x4e,0x52,0x80]
          vrsqrt14pd -1024(%rdx){1to4}, %ymm18

// CHECK: vrsqrt14pd -1032(%rdx){1to4}, %ymm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x38,0x4e,0x92,0xf8,0xfb,0xff,0xff]
          vrsqrt14pd -1032(%rdx){1to4}, %ymm18

// CHECK: vrsqrt14ps %xmm20, %xmm19
// CHECK:  encoding: [0x62,0xa2,0x7d,0x08,0x4e,0xdc]
          vrsqrt14ps %xmm20, %xmm19

// CHECK: vrsqrt14ps %xmm20, %xmm19 {%k7}
// CHECK:  encoding: [0x62,0xa2,0x7d,0x0f,0x4e,0xdc]
          vrsqrt14ps %xmm20, %xmm19 {%k7}

// CHECK: vrsqrt14ps %xmm20, %xmm19 {%k7} {z}
// CHECK:  encoding: [0x62,0xa2,0x7d,0x8f,0x4e,0xdc]
          vrsqrt14ps %xmm20, %xmm19 {%k7} {z}

// CHECK: vrsqrt14ps (%rcx), %xmm19
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x4e,0x19]
          vrsqrt14ps (%rcx), %xmm19

// CHECK: vrsqrt14ps 291(%rax,%r14,8), %xmm19
// CHECK:  encoding: [0x62,0xa2,0x7d,0x08,0x4e,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vrsqrt14ps 291(%rax,%r14,8), %xmm19

// CHECK: vrsqrt14ps (%rcx){1to4}, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x7d,0x18,0x4e,0x19]
          vrsqrt14ps (%rcx){1to4}, %xmm19

// CHECK: vrsqrt14ps 2032(%rdx), %xmm19
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x4e,0x5a,0x7f]
          vrsqrt14ps 2032(%rdx), %xmm19

// CHECK: vrsqrt14ps 2048(%rdx), %xmm19
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x4e,0x9a,0x00,0x08,0x00,0x00]
          vrsqrt14ps 2048(%rdx), %xmm19

// CHECK: vrsqrt14ps -2048(%rdx), %xmm19
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x4e,0x5a,0x80]
          vrsqrt14ps -2048(%rdx), %xmm19

// CHECK: vrsqrt14ps -2064(%rdx), %xmm19
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x4e,0x9a,0xf0,0xf7,0xff,0xff]
          vrsqrt14ps -2064(%rdx), %xmm19

// CHECK: vrsqrt14ps 508(%rdx){1to4}, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x7d,0x18,0x4e,0x5a,0x7f]
          vrsqrt14ps 508(%rdx){1to4}, %xmm19

// CHECK: vrsqrt14ps 512(%rdx){1to4}, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x7d,0x18,0x4e,0x9a,0x00,0x02,0x00,0x00]
          vrsqrt14ps 512(%rdx){1to4}, %xmm19

// CHECK: vrsqrt14ps -512(%rdx){1to4}, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x7d,0x18,0x4e,0x5a,0x80]
          vrsqrt14ps -512(%rdx){1to4}, %xmm19

// CHECK: vrsqrt14ps -516(%rdx){1to4}, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x7d,0x18,0x4e,0x9a,0xfc,0xfd,0xff,0xff]
          vrsqrt14ps -516(%rdx){1to4}, %xmm19

// CHECK: vrsqrt14ps %ymm18, %ymm27
// CHECK:  encoding: [0x62,0x22,0x7d,0x28,0x4e,0xda]
          vrsqrt14ps %ymm18, %ymm27

// CHECK: vrsqrt14ps %ymm18, %ymm27 {%k7}
// CHECK:  encoding: [0x62,0x22,0x7d,0x2f,0x4e,0xda]
          vrsqrt14ps %ymm18, %ymm27 {%k7}

// CHECK: vrsqrt14ps %ymm18, %ymm27 {%k7} {z}
// CHECK:  encoding: [0x62,0x22,0x7d,0xaf,0x4e,0xda]
          vrsqrt14ps %ymm18, %ymm27 {%k7} {z}

// CHECK: vrsqrt14ps (%rcx), %ymm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x4e,0x19]
          vrsqrt14ps (%rcx), %ymm27

// CHECK: vrsqrt14ps 291(%rax,%r14,8), %ymm27
// CHECK:  encoding: [0x62,0x22,0x7d,0x28,0x4e,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vrsqrt14ps 291(%rax,%r14,8), %ymm27

// CHECK: vrsqrt14ps (%rcx){1to8}, %ymm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x38,0x4e,0x19]
          vrsqrt14ps (%rcx){1to8}, %ymm27

// CHECK: vrsqrt14ps 4064(%rdx), %ymm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x4e,0x5a,0x7f]
          vrsqrt14ps 4064(%rdx), %ymm27

// CHECK: vrsqrt14ps 4096(%rdx), %ymm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x4e,0x9a,0x00,0x10,0x00,0x00]
          vrsqrt14ps 4096(%rdx), %ymm27

// CHECK: vrsqrt14ps -4096(%rdx), %ymm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x4e,0x5a,0x80]
          vrsqrt14ps -4096(%rdx), %ymm27

// CHECK: vrsqrt14ps -4128(%rdx), %ymm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x4e,0x9a,0xe0,0xef,0xff,0xff]
          vrsqrt14ps -4128(%rdx), %ymm27

// CHECK: vrsqrt14ps 508(%rdx){1to8}, %ymm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x38,0x4e,0x5a,0x7f]
          vrsqrt14ps 508(%rdx){1to8}, %ymm27

// CHECK: vrsqrt14ps 512(%rdx){1to8}, %ymm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x38,0x4e,0x9a,0x00,0x02,0x00,0x00]
          vrsqrt14ps 512(%rdx){1to8}, %ymm27

// CHECK: vrsqrt14ps -512(%rdx){1to8}, %ymm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x38,0x4e,0x5a,0x80]
          vrsqrt14ps -512(%rdx){1to8}, %ymm27

// CHECK: vrsqrt14ps -516(%rdx){1to8}, %ymm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x38,0x4e,0x9a,0xfc,0xfd,0xff,0xff]
          vrsqrt14ps -516(%rdx){1to8}, %ymm27

// CHECK: vsqrtpd %xmm26, %xmm29
// CHECK:  encoding: [0x62,0x01,0xfd,0x08,0x51,0xea]
          vsqrtpd %xmm26, %xmm29

// CHECK: vsqrtpd %xmm26, %xmm29 {%k3}
// CHECK:  encoding: [0x62,0x01,0xfd,0x0b,0x51,0xea]
          vsqrtpd %xmm26, %xmm29 {%k3}

// CHECK: vsqrtpd %xmm26, %xmm29 {%k3} {z}
// CHECK:  encoding: [0x62,0x01,0xfd,0x8b,0x51,0xea]
          vsqrtpd %xmm26, %xmm29 {%k3} {z}

// CHECK: vsqrtpd (%rcx), %xmm29
// CHECK:  encoding: [0x62,0x61,0xfd,0x08,0x51,0x29]
          vsqrtpd (%rcx), %xmm29

// CHECK: vsqrtpd 291(%rax,%r14,8), %xmm29
// CHECK:  encoding: [0x62,0x21,0xfd,0x08,0x51,0xac,0xf0,0x23,0x01,0x00,0x00]
          vsqrtpd 291(%rax,%r14,8), %xmm29

// CHECK: vsqrtpd (%rcx){1to2}, %xmm29
// CHECK:  encoding: [0x62,0x61,0xfd,0x18,0x51,0x29]
          vsqrtpd (%rcx){1to2}, %xmm29

// CHECK: vsqrtpd 2032(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x61,0xfd,0x08,0x51,0x6a,0x7f]
          vsqrtpd 2032(%rdx), %xmm29

// CHECK: vsqrtpd 2048(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x61,0xfd,0x08,0x51,0xaa,0x00,0x08,0x00,0x00]
          vsqrtpd 2048(%rdx), %xmm29

// CHECK: vsqrtpd -2048(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x61,0xfd,0x08,0x51,0x6a,0x80]
          vsqrtpd -2048(%rdx), %xmm29

// CHECK: vsqrtpd -2064(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x61,0xfd,0x08,0x51,0xaa,0xf0,0xf7,0xff,0xff]
          vsqrtpd -2064(%rdx), %xmm29

// CHECK: vsqrtpd 1016(%rdx){1to2}, %xmm29
// CHECK:  encoding: [0x62,0x61,0xfd,0x18,0x51,0x6a,0x7f]
          vsqrtpd 1016(%rdx){1to2}, %xmm29

// CHECK: vsqrtpd 1024(%rdx){1to2}, %xmm29
// CHECK:  encoding: [0x62,0x61,0xfd,0x18,0x51,0xaa,0x00,0x04,0x00,0x00]
          vsqrtpd 1024(%rdx){1to2}, %xmm29

// CHECK: vsqrtpd -1024(%rdx){1to2}, %xmm29
// CHECK:  encoding: [0x62,0x61,0xfd,0x18,0x51,0x6a,0x80]
          vsqrtpd -1024(%rdx){1to2}, %xmm29

// CHECK: vsqrtpd -1032(%rdx){1to2}, %xmm29
// CHECK:  encoding: [0x62,0x61,0xfd,0x18,0x51,0xaa,0xf8,0xfb,0xff,0xff]
          vsqrtpd -1032(%rdx){1to2}, %xmm29

// CHECK: vsqrtpd %ymm20, %ymm18
// CHECK:  encoding: [0x62,0xa1,0xfd,0x28,0x51,0xd4]
          vsqrtpd %ymm20, %ymm18

// CHECK: vsqrtpd %ymm20, %ymm18 {%k3}
// CHECK:  encoding: [0x62,0xa1,0xfd,0x2b,0x51,0xd4]
          vsqrtpd %ymm20, %ymm18 {%k3}

// CHECK: vsqrtpd %ymm20, %ymm18 {%k3} {z}
// CHECK:  encoding: [0x62,0xa1,0xfd,0xab,0x51,0xd4]
          vsqrtpd %ymm20, %ymm18 {%k3} {z}

// CHECK: vsqrtpd (%rcx), %ymm18
// CHECK:  encoding: [0x62,0xe1,0xfd,0x28,0x51,0x11]
          vsqrtpd (%rcx), %ymm18

// CHECK: vsqrtpd 291(%rax,%r14,8), %ymm18
// CHECK:  encoding: [0x62,0xa1,0xfd,0x28,0x51,0x94,0xf0,0x23,0x01,0x00,0x00]
          vsqrtpd 291(%rax,%r14,8), %ymm18

// CHECK: vsqrtpd (%rcx){1to4}, %ymm18
// CHECK:  encoding: [0x62,0xe1,0xfd,0x38,0x51,0x11]
          vsqrtpd (%rcx){1to4}, %ymm18

// CHECK: vsqrtpd 4064(%rdx), %ymm18
// CHECK:  encoding: [0x62,0xe1,0xfd,0x28,0x51,0x52,0x7f]
          vsqrtpd 4064(%rdx), %ymm18

// CHECK: vsqrtpd 4096(%rdx), %ymm18
// CHECK:  encoding: [0x62,0xe1,0xfd,0x28,0x51,0x92,0x00,0x10,0x00,0x00]
          vsqrtpd 4096(%rdx), %ymm18

// CHECK: vsqrtpd -4096(%rdx), %ymm18
// CHECK:  encoding: [0x62,0xe1,0xfd,0x28,0x51,0x52,0x80]
          vsqrtpd -4096(%rdx), %ymm18

// CHECK: vsqrtpd -4128(%rdx), %ymm18
// CHECK:  encoding: [0x62,0xe1,0xfd,0x28,0x51,0x92,0xe0,0xef,0xff,0xff]
          vsqrtpd -4128(%rdx), %ymm18

// CHECK: vsqrtpd 1016(%rdx){1to4}, %ymm18
// CHECK:  encoding: [0x62,0xe1,0xfd,0x38,0x51,0x52,0x7f]
          vsqrtpd 1016(%rdx){1to4}, %ymm18

// CHECK: vsqrtpd 1024(%rdx){1to4}, %ymm18
// CHECK:  encoding: [0x62,0xe1,0xfd,0x38,0x51,0x92,0x00,0x04,0x00,0x00]
          vsqrtpd 1024(%rdx){1to4}, %ymm18

// CHECK: vsqrtpd -1024(%rdx){1to4}, %ymm18
// CHECK:  encoding: [0x62,0xe1,0xfd,0x38,0x51,0x52,0x80]
          vsqrtpd -1024(%rdx){1to4}, %ymm18

// CHECK: vsqrtpd -1032(%rdx){1to4}, %ymm18
// CHECK:  encoding: [0x62,0xe1,0xfd,0x38,0x51,0x92,0xf8,0xfb,0xff,0xff]
          vsqrtpd -1032(%rdx){1to4}, %ymm18

// CHECK: vsqrtps %xmm28, %xmm19
// CHECK:  encoding: [0x62,0x81,0x7c,0x08,0x51,0xdc]
          vsqrtps %xmm28, %xmm19

// CHECK: vsqrtps %xmm28, %xmm19 {%k7}
// CHECK:  encoding: [0x62,0x81,0x7c,0x0f,0x51,0xdc]
          vsqrtps %xmm28, %xmm19 {%k7}

// CHECK: vsqrtps %xmm28, %xmm19 {%k7} {z}
// CHECK:  encoding: [0x62,0x81,0x7c,0x8f,0x51,0xdc]
          vsqrtps %xmm28, %xmm19 {%k7} {z}

// CHECK: vsqrtps (%rcx), %xmm19
// CHECK:  encoding: [0x62,0xe1,0x7c,0x08,0x51,0x19]
          vsqrtps (%rcx), %xmm19

// CHECK: vsqrtps 291(%rax,%r14,8), %xmm19
// CHECK:  encoding: [0x62,0xa1,0x7c,0x08,0x51,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vsqrtps 291(%rax,%r14,8), %xmm19

// CHECK: vsqrtps (%rcx){1to4}, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x7c,0x18,0x51,0x19]
          vsqrtps (%rcx){1to4}, %xmm19

// CHECK: vsqrtps 2032(%rdx), %xmm19
// CHECK:  encoding: [0x62,0xe1,0x7c,0x08,0x51,0x5a,0x7f]
          vsqrtps 2032(%rdx), %xmm19

// CHECK: vsqrtps 2048(%rdx), %xmm19
// CHECK:  encoding: [0x62,0xe1,0x7c,0x08,0x51,0x9a,0x00,0x08,0x00,0x00]
          vsqrtps 2048(%rdx), %xmm19

// CHECK: vsqrtps -2048(%rdx), %xmm19
// CHECK:  encoding: [0x62,0xe1,0x7c,0x08,0x51,0x5a,0x80]
          vsqrtps -2048(%rdx), %xmm19

// CHECK: vsqrtps -2064(%rdx), %xmm19
// CHECK:  encoding: [0x62,0xe1,0x7c,0x08,0x51,0x9a,0xf0,0xf7,0xff,0xff]
          vsqrtps -2064(%rdx), %xmm19

// CHECK: vsqrtps 508(%rdx){1to4}, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x7c,0x18,0x51,0x5a,0x7f]
          vsqrtps 508(%rdx){1to4}, %xmm19

// CHECK: vsqrtps 512(%rdx){1to4}, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x7c,0x18,0x51,0x9a,0x00,0x02,0x00,0x00]
          vsqrtps 512(%rdx){1to4}, %xmm19

// CHECK: vsqrtps -512(%rdx){1to4}, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x7c,0x18,0x51,0x5a,0x80]
          vsqrtps -512(%rdx){1to4}, %xmm19

// CHECK: vsqrtps -516(%rdx){1to4}, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x7c,0x18,0x51,0x9a,0xfc,0xfd,0xff,0xff]
          vsqrtps -516(%rdx){1to4}, %xmm19

// CHECK: vsqrtps %ymm25, %ymm19
// CHECK:  encoding: [0x62,0x81,0x7c,0x28,0x51,0xd9]
          vsqrtps %ymm25, %ymm19

// CHECK: vsqrtps %ymm25, %ymm19 {%k2}
// CHECK:  encoding: [0x62,0x81,0x7c,0x2a,0x51,0xd9]
          vsqrtps %ymm25, %ymm19 {%k2}

// CHECK: vsqrtps %ymm25, %ymm19 {%k2} {z}
// CHECK:  encoding: [0x62,0x81,0x7c,0xaa,0x51,0xd9]
          vsqrtps %ymm25, %ymm19 {%k2} {z}

// CHECK: vsqrtps (%rcx), %ymm19
// CHECK:  encoding: [0x62,0xe1,0x7c,0x28,0x51,0x19]
          vsqrtps (%rcx), %ymm19

// CHECK: vsqrtps 291(%rax,%r14,8), %ymm19
// CHECK:  encoding: [0x62,0xa1,0x7c,0x28,0x51,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vsqrtps 291(%rax,%r14,8), %ymm19

// CHECK: vsqrtps (%rcx){1to8}, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x7c,0x38,0x51,0x19]
          vsqrtps (%rcx){1to8}, %ymm19

// CHECK: vsqrtps 4064(%rdx), %ymm19
// CHECK:  encoding: [0x62,0xe1,0x7c,0x28,0x51,0x5a,0x7f]
          vsqrtps 4064(%rdx), %ymm19

// CHECK: vsqrtps 4096(%rdx), %ymm19
// CHECK:  encoding: [0x62,0xe1,0x7c,0x28,0x51,0x9a,0x00,0x10,0x00,0x00]
          vsqrtps 4096(%rdx), %ymm19

// CHECK: vsqrtps -4096(%rdx), %ymm19
// CHECK:  encoding: [0x62,0xe1,0x7c,0x28,0x51,0x5a,0x80]
          vsqrtps -4096(%rdx), %ymm19

// CHECK: vsqrtps -4128(%rdx), %ymm19
// CHECK:  encoding: [0x62,0xe1,0x7c,0x28,0x51,0x9a,0xe0,0xef,0xff,0xff]
          vsqrtps -4128(%rdx), %ymm19

// CHECK: vsqrtps 508(%rdx){1to8}, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x7c,0x38,0x51,0x5a,0x7f]
          vsqrtps 508(%rdx){1to8}, %ymm19

// CHECK: vsqrtps 512(%rdx){1to8}, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x7c,0x38,0x51,0x9a,0x00,0x02,0x00,0x00]
          vsqrtps 512(%rdx){1to8}, %ymm19

// CHECK: vsqrtps -512(%rdx){1to8}, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x7c,0x38,0x51,0x5a,0x80]
          vsqrtps -512(%rdx){1to8}, %ymm19

// CHECK: vsqrtps -516(%rdx){1to8}, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x7c,0x38,0x51,0x9a,0xfc,0xfd,0xff,0xff]
          vsqrtps -516(%rdx){1to8}, %ymm19

// CHECK: vsubpd %xmm18, %xmm24, %xmm28
// CHECK:  encoding: [0x62,0x21,0xbd,0x00,0x5c,0xe2]
          vsubpd %xmm18, %xmm24, %xmm28

// CHECK: vsubpd %xmm18, %xmm24, %xmm28 {%k3}
// CHECK:  encoding: [0x62,0x21,0xbd,0x03,0x5c,0xe2]
          vsubpd %xmm18, %xmm24, %xmm28 {%k3}

// CHECK: vsubpd %xmm18, %xmm24, %xmm28 {%k3} {z}
// CHECK:  encoding: [0x62,0x21,0xbd,0x83,0x5c,0xe2]
          vsubpd %xmm18, %xmm24, %xmm28 {%k3} {z}

// CHECK: vsubpd (%rcx), %xmm24, %xmm28
// CHECK:  encoding: [0x62,0x61,0xbd,0x00,0x5c,0x21]
          vsubpd (%rcx), %xmm24, %xmm28

// CHECK: vsubpd 291(%rax,%r14,8), %xmm24, %xmm28
// CHECK:  encoding: [0x62,0x21,0xbd,0x00,0x5c,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vsubpd 291(%rax,%r14,8), %xmm24, %xmm28

// CHECK: vsubpd (%rcx){1to2}, %xmm24, %xmm28
// CHECK:  encoding: [0x62,0x61,0xbd,0x10,0x5c,0x21]
          vsubpd (%rcx){1to2}, %xmm24, %xmm28

// CHECK: vsubpd 2032(%rdx), %xmm24, %xmm28
// CHECK:  encoding: [0x62,0x61,0xbd,0x00,0x5c,0x62,0x7f]
          vsubpd 2032(%rdx), %xmm24, %xmm28

// CHECK: vsubpd 2048(%rdx), %xmm24, %xmm28
// CHECK:  encoding: [0x62,0x61,0xbd,0x00,0x5c,0xa2,0x00,0x08,0x00,0x00]
          vsubpd 2048(%rdx), %xmm24, %xmm28

// CHECK: vsubpd -2048(%rdx), %xmm24, %xmm28
// CHECK:  encoding: [0x62,0x61,0xbd,0x00,0x5c,0x62,0x80]
          vsubpd -2048(%rdx), %xmm24, %xmm28

// CHECK: vsubpd -2064(%rdx), %xmm24, %xmm28
// CHECK:  encoding: [0x62,0x61,0xbd,0x00,0x5c,0xa2,0xf0,0xf7,0xff,0xff]
          vsubpd -2064(%rdx), %xmm24, %xmm28

// CHECK: vsubpd 1016(%rdx){1to2}, %xmm24, %xmm28
// CHECK:  encoding: [0x62,0x61,0xbd,0x10,0x5c,0x62,0x7f]
          vsubpd 1016(%rdx){1to2}, %xmm24, %xmm28

// CHECK: vsubpd 1024(%rdx){1to2}, %xmm24, %xmm28
// CHECK:  encoding: [0x62,0x61,0xbd,0x10,0x5c,0xa2,0x00,0x04,0x00,0x00]
          vsubpd 1024(%rdx){1to2}, %xmm24, %xmm28

// CHECK: vsubpd -1024(%rdx){1to2}, %xmm24, %xmm28
// CHECK:  encoding: [0x62,0x61,0xbd,0x10,0x5c,0x62,0x80]
          vsubpd -1024(%rdx){1to2}, %xmm24, %xmm28

// CHECK: vsubpd -1032(%rdx){1to2}, %xmm24, %xmm28
// CHECK:  encoding: [0x62,0x61,0xbd,0x10,0x5c,0xa2,0xf8,0xfb,0xff,0xff]
          vsubpd -1032(%rdx){1to2}, %xmm24, %xmm28

// CHECK: vsubpd %ymm25, %ymm28, %ymm30
// CHECK:  encoding: [0x62,0x01,0x9d,0x20,0x5c,0xf1]
          vsubpd %ymm25, %ymm28, %ymm30

// CHECK: vsubpd %ymm25, %ymm28, %ymm30 {%k7}
// CHECK:  encoding: [0x62,0x01,0x9d,0x27,0x5c,0xf1]
          vsubpd %ymm25, %ymm28, %ymm30 {%k7}

// CHECK: vsubpd %ymm25, %ymm28, %ymm30 {%k7} {z}
// CHECK:  encoding: [0x62,0x01,0x9d,0xa7,0x5c,0xf1]
          vsubpd %ymm25, %ymm28, %ymm30 {%k7} {z}

// CHECK: vsubpd (%rcx), %ymm28, %ymm30
// CHECK:  encoding: [0x62,0x61,0x9d,0x20,0x5c,0x31]
          vsubpd (%rcx), %ymm28, %ymm30

// CHECK: vsubpd 291(%rax,%r14,8), %ymm28, %ymm30
// CHECK:  encoding: [0x62,0x21,0x9d,0x20,0x5c,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vsubpd 291(%rax,%r14,8), %ymm28, %ymm30

// CHECK: vsubpd (%rcx){1to4}, %ymm28, %ymm30
// CHECK:  encoding: [0x62,0x61,0x9d,0x30,0x5c,0x31]
          vsubpd (%rcx){1to4}, %ymm28, %ymm30

// CHECK: vsubpd 4064(%rdx), %ymm28, %ymm30
// CHECK:  encoding: [0x62,0x61,0x9d,0x20,0x5c,0x72,0x7f]
          vsubpd 4064(%rdx), %ymm28, %ymm30

// CHECK: vsubpd 4096(%rdx), %ymm28, %ymm30
// CHECK:  encoding: [0x62,0x61,0x9d,0x20,0x5c,0xb2,0x00,0x10,0x00,0x00]
          vsubpd 4096(%rdx), %ymm28, %ymm30

// CHECK: vsubpd -4096(%rdx), %ymm28, %ymm30
// CHECK:  encoding: [0x62,0x61,0x9d,0x20,0x5c,0x72,0x80]
          vsubpd -4096(%rdx), %ymm28, %ymm30

// CHECK: vsubpd -4128(%rdx), %ymm28, %ymm30
// CHECK:  encoding: [0x62,0x61,0x9d,0x20,0x5c,0xb2,0xe0,0xef,0xff,0xff]
          vsubpd -4128(%rdx), %ymm28, %ymm30

// CHECK: vsubpd 1016(%rdx){1to4}, %ymm28, %ymm30
// CHECK:  encoding: [0x62,0x61,0x9d,0x30,0x5c,0x72,0x7f]
          vsubpd 1016(%rdx){1to4}, %ymm28, %ymm30

// CHECK: vsubpd 1024(%rdx){1to4}, %ymm28, %ymm30
// CHECK:  encoding: [0x62,0x61,0x9d,0x30,0x5c,0xb2,0x00,0x04,0x00,0x00]
          vsubpd 1024(%rdx){1to4}, %ymm28, %ymm30

// CHECK: vsubpd -1024(%rdx){1to4}, %ymm28, %ymm30
// CHECK:  encoding: [0x62,0x61,0x9d,0x30,0x5c,0x72,0x80]
          vsubpd -1024(%rdx){1to4}, %ymm28, %ymm30

// CHECK: vsubpd -1032(%rdx){1to4}, %ymm28, %ymm30
// CHECK:  encoding: [0x62,0x61,0x9d,0x30,0x5c,0xb2,0xf8,0xfb,0xff,0xff]
          vsubpd -1032(%rdx){1to4}, %ymm28, %ymm30

// CHECK: vsubps %xmm25, %xmm29, %xmm20
// CHECK:  encoding: [0x62,0x81,0x14,0x00,0x5c,0xe1]
          vsubps %xmm25, %xmm29, %xmm20

// CHECK: vsubps %xmm25, %xmm29, %xmm20 {%k3}
// CHECK:  encoding: [0x62,0x81,0x14,0x03,0x5c,0xe1]
          vsubps %xmm25, %xmm29, %xmm20 {%k3}

// CHECK: vsubps %xmm25, %xmm29, %xmm20 {%k3} {z}
// CHECK:  encoding: [0x62,0x81,0x14,0x83,0x5c,0xe1]
          vsubps %xmm25, %xmm29, %xmm20 {%k3} {z}

// CHECK: vsubps (%rcx), %xmm29, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x14,0x00,0x5c,0x21]
          vsubps (%rcx), %xmm29, %xmm20

// CHECK: vsubps 291(%rax,%r14,8), %xmm29, %xmm20
// CHECK:  encoding: [0x62,0xa1,0x14,0x00,0x5c,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vsubps 291(%rax,%r14,8), %xmm29, %xmm20

// CHECK: vsubps (%rcx){1to4}, %xmm29, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x14,0x10,0x5c,0x21]
          vsubps (%rcx){1to4}, %xmm29, %xmm20

// CHECK: vsubps 2032(%rdx), %xmm29, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x14,0x00,0x5c,0x62,0x7f]
          vsubps 2032(%rdx), %xmm29, %xmm20

// CHECK: vsubps 2048(%rdx), %xmm29, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x14,0x00,0x5c,0xa2,0x00,0x08,0x00,0x00]
          vsubps 2048(%rdx), %xmm29, %xmm20

// CHECK: vsubps -2048(%rdx), %xmm29, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x14,0x00,0x5c,0x62,0x80]
          vsubps -2048(%rdx), %xmm29, %xmm20

// CHECK: vsubps -2064(%rdx), %xmm29, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x14,0x00,0x5c,0xa2,0xf0,0xf7,0xff,0xff]
          vsubps -2064(%rdx), %xmm29, %xmm20

// CHECK: vsubps 508(%rdx){1to4}, %xmm29, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x14,0x10,0x5c,0x62,0x7f]
          vsubps 508(%rdx){1to4}, %xmm29, %xmm20

// CHECK: vsubps 512(%rdx){1to4}, %xmm29, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x14,0x10,0x5c,0xa2,0x00,0x02,0x00,0x00]
          vsubps 512(%rdx){1to4}, %xmm29, %xmm20

// CHECK: vsubps -512(%rdx){1to4}, %xmm29, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x14,0x10,0x5c,0x62,0x80]
          vsubps -512(%rdx){1to4}, %xmm29, %xmm20

// CHECK: vsubps -516(%rdx){1to4}, %xmm29, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x14,0x10,0x5c,0xa2,0xfc,0xfd,0xff,0xff]
          vsubps -516(%rdx){1to4}, %xmm29, %xmm20

// CHECK: vsubps %ymm22, %ymm21, %ymm21
// CHECK:  encoding: [0x62,0xa1,0x54,0x20,0x5c,0xee]
          vsubps %ymm22, %ymm21, %ymm21

// CHECK: vsubps %ymm22, %ymm21, %ymm21 {%k4}
// CHECK:  encoding: [0x62,0xa1,0x54,0x24,0x5c,0xee]
          vsubps %ymm22, %ymm21, %ymm21 {%k4}

// CHECK: vsubps %ymm22, %ymm21, %ymm21 {%k4} {z}
// CHECK:  encoding: [0x62,0xa1,0x54,0xa4,0x5c,0xee]
          vsubps %ymm22, %ymm21, %ymm21 {%k4} {z}

// CHECK: vsubps (%rcx), %ymm21, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x54,0x20,0x5c,0x29]
          vsubps (%rcx), %ymm21, %ymm21

// CHECK: vsubps 291(%rax,%r14,8), %ymm21, %ymm21
// CHECK:  encoding: [0x62,0xa1,0x54,0x20,0x5c,0xac,0xf0,0x23,0x01,0x00,0x00]
          vsubps 291(%rax,%r14,8), %ymm21, %ymm21

// CHECK: vsubps (%rcx){1to8}, %ymm21, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x54,0x30,0x5c,0x29]
          vsubps (%rcx){1to8}, %ymm21, %ymm21

// CHECK: vsubps 4064(%rdx), %ymm21, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x54,0x20,0x5c,0x6a,0x7f]
          vsubps 4064(%rdx), %ymm21, %ymm21

// CHECK: vsubps 4096(%rdx), %ymm21, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x54,0x20,0x5c,0xaa,0x00,0x10,0x00,0x00]
          vsubps 4096(%rdx), %ymm21, %ymm21

// CHECK: vsubps -4096(%rdx), %ymm21, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x54,0x20,0x5c,0x6a,0x80]
          vsubps -4096(%rdx), %ymm21, %ymm21

// CHECK: vsubps -4128(%rdx), %ymm21, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x54,0x20,0x5c,0xaa,0xe0,0xef,0xff,0xff]
          vsubps -4128(%rdx), %ymm21, %ymm21

// CHECK: vsubps 508(%rdx){1to8}, %ymm21, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x54,0x30,0x5c,0x6a,0x7f]
          vsubps 508(%rdx){1to8}, %ymm21, %ymm21

// CHECK: vsubps 512(%rdx){1to8}, %ymm21, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x54,0x30,0x5c,0xaa,0x00,0x02,0x00,0x00]
          vsubps 512(%rdx){1to8}, %ymm21, %ymm21

// CHECK: vsubps -512(%rdx){1to8}, %ymm21, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x54,0x30,0x5c,0x6a,0x80]
          vsubps -512(%rdx){1to8}, %ymm21, %ymm21

// CHECK: vsubps -516(%rdx){1to8}, %ymm21, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x54,0x30,0x5c,0xaa,0xfc,0xfd,0xff,0xff]
          vsubps -516(%rdx){1to8}, %ymm21, %ymm21

// CHECK: vmovapd %xmm22, (%rcx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x29,0x31]
          vmovapd %xmm22, (%rcx)

// CHECK: vmovapd %xmm22, (%rcx) {%k2}
// CHECK:  encoding: [0x62,0xe1,0xfd,0x0a,0x29,0x31]
          vmovapd %xmm22, (%rcx) {%k2}

// CHECK: vmovapd %xmm22, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa1,0xfd,0x08,0x29,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vmovapd %xmm22, 291(%rax,%r14,8)

// CHECK: vmovapd %xmm22, 2032(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x29,0x72,0x7f]
          vmovapd %xmm22, 2032(%rdx)

// CHECK: vmovapd %xmm22, 2048(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x29,0xb2,0x00,0x08,0x00,0x00]
          vmovapd %xmm22, 2048(%rdx)

// CHECK: vmovapd %xmm22, -2048(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x29,0x72,0x80]
          vmovapd %xmm22, -2048(%rdx)

// CHECK: vmovapd %xmm22, -2064(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x29,0xb2,0xf0,0xf7,0xff,0xff]
          vmovapd %xmm22, -2064(%rdx)

// CHECK: vmovapd %ymm17, (%rcx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x28,0x29,0x09]
          vmovapd %ymm17, (%rcx)

// CHECK: vmovapd %ymm17, (%rcx) {%k6}
// CHECK:  encoding: [0x62,0xe1,0xfd,0x2e,0x29,0x09]
          vmovapd %ymm17, (%rcx) {%k6}

// CHECK: vmovapd %ymm17, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa1,0xfd,0x28,0x29,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vmovapd %ymm17, 291(%rax,%r14,8)

// CHECK: vmovapd %ymm17, 4064(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x28,0x29,0x4a,0x7f]
          vmovapd %ymm17, 4064(%rdx)

// CHECK: vmovapd %ymm17, 4096(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x28,0x29,0x8a,0x00,0x10,0x00,0x00]
          vmovapd %ymm17, 4096(%rdx)

// CHECK: vmovapd %ymm17, -4096(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x28,0x29,0x4a,0x80]
          vmovapd %ymm17, -4096(%rdx)

// CHECK: vmovapd %ymm17, -4128(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x28,0x29,0x8a,0xe0,0xef,0xff,0xff]
          vmovapd %ymm17, -4128(%rdx)

// CHECK: vmovaps %xmm29, (%rcx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x08,0x29,0x29]
          vmovaps %xmm29, (%rcx)

// CHECK: vmovaps %xmm29, (%rcx) {%k5}
// CHECK:  encoding: [0x62,0x61,0x7c,0x0d,0x29,0x29]
          vmovaps %xmm29, (%rcx) {%k5}

// CHECK: vmovaps %xmm29, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x21,0x7c,0x08,0x29,0xac,0xf0,0x23,0x01,0x00,0x00]
          vmovaps %xmm29, 291(%rax,%r14,8)

// CHECK: vmovaps %xmm29, 2032(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x08,0x29,0x6a,0x7f]
          vmovaps %xmm29, 2032(%rdx)

// CHECK: vmovaps %xmm29, 2048(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x08,0x29,0xaa,0x00,0x08,0x00,0x00]
          vmovaps %xmm29, 2048(%rdx)

// CHECK: vmovaps %xmm29, -2048(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x08,0x29,0x6a,0x80]
          vmovaps %xmm29, -2048(%rdx)

// CHECK: vmovaps %xmm29, -2064(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x08,0x29,0xaa,0xf0,0xf7,0xff,0xff]
          vmovaps %xmm29, -2064(%rdx)

// CHECK: vmovaps %ymm28, (%rcx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x28,0x29,0x21]
          vmovaps %ymm28, (%rcx)

// CHECK: vmovaps %ymm28, (%rcx) {%k6}
// CHECK:  encoding: [0x62,0x61,0x7c,0x2e,0x29,0x21]
          vmovaps %ymm28, (%rcx) {%k6}

// CHECK: vmovaps %ymm28, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x21,0x7c,0x28,0x29,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vmovaps %ymm28, 291(%rax,%r14,8)

// CHECK: vmovaps %ymm28, 4064(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x28,0x29,0x62,0x7f]
          vmovaps %ymm28, 4064(%rdx)

// CHECK: vmovaps %ymm28, 4096(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x28,0x29,0xa2,0x00,0x10,0x00,0x00]
          vmovaps %ymm28, 4096(%rdx)

// CHECK: vmovaps %ymm28, -4096(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x28,0x29,0x62,0x80]
          vmovaps %ymm28, -4096(%rdx)

// CHECK: vmovaps %ymm28, -4128(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x28,0x29,0xa2,0xe0,0xef,0xff,0xff]
          vmovaps %ymm28, -4128(%rdx)

// CHECK: vmovdqa32 %xmm24, (%rcx)
// CHECK:  encoding: [0x62,0x61,0x7d,0x08,0x7f,0x01]
          vmovdqa32 %xmm24, (%rcx)

// CHECK: vmovdqa32 %xmm24, (%rcx) {%k7}
// CHECK:  encoding: [0x62,0x61,0x7d,0x0f,0x7f,0x01]
          vmovdqa32 %xmm24, (%rcx) {%k7}

// CHECK: vmovdqa32 %xmm24, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x21,0x7d,0x08,0x7f,0x84,0xf0,0x23,0x01,0x00,0x00]
          vmovdqa32 %xmm24, 291(%rax,%r14,8)

// CHECK: vmovdqa32 %xmm24, 2032(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7d,0x08,0x7f,0x42,0x7f]
          vmovdqa32 %xmm24, 2032(%rdx)

// CHECK: vmovdqa32 %xmm24, 2048(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7d,0x08,0x7f,0x82,0x00,0x08,0x00,0x00]
          vmovdqa32 %xmm24, 2048(%rdx)

// CHECK: vmovdqa32 %xmm24, -2048(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7d,0x08,0x7f,0x42,0x80]
          vmovdqa32 %xmm24, -2048(%rdx)

// CHECK: vmovdqa32 %xmm24, -2064(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7d,0x08,0x7f,0x82,0xf0,0xf7,0xff,0xff]
          vmovdqa32 %xmm24, -2064(%rdx)

// CHECK: vmovdqa32 %ymm29, (%rcx)
// CHECK:  encoding: [0x62,0x61,0x7d,0x28,0x7f,0x29]
          vmovdqa32 %ymm29, (%rcx)

// CHECK: vmovdqa32 %ymm29, (%rcx) {%k7}
// CHECK:  encoding: [0x62,0x61,0x7d,0x2f,0x7f,0x29]
          vmovdqa32 %ymm29, (%rcx) {%k7}

// CHECK: vmovdqa32 %ymm29, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x21,0x7d,0x28,0x7f,0xac,0xf0,0x23,0x01,0x00,0x00]
          vmovdqa32 %ymm29, 291(%rax,%r14,8)

// CHECK: vmovdqa32 %ymm29, 4064(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7d,0x28,0x7f,0x6a,0x7f]
          vmovdqa32 %ymm29, 4064(%rdx)

// CHECK: vmovdqa32 %ymm29, 4096(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7d,0x28,0x7f,0xaa,0x00,0x10,0x00,0x00]
          vmovdqa32 %ymm29, 4096(%rdx)

// CHECK: vmovdqa32 %ymm29, -4096(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7d,0x28,0x7f,0x6a,0x80]
          vmovdqa32 %ymm29, -4096(%rdx)

// CHECK: vmovdqa32 %ymm29, -4128(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7d,0x28,0x7f,0xaa,0xe0,0xef,0xff,0xff]
          vmovdqa32 %ymm29, -4128(%rdx)

// CHECK: vmovdqa64 %xmm17, (%rcx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x7f,0x09]
          vmovdqa64 %xmm17, (%rcx)

// CHECK: vmovdqa64 %xmm17, (%rcx) {%k7}
// CHECK:  encoding: [0x62,0xe1,0xfd,0x0f,0x7f,0x09]
          vmovdqa64 %xmm17, (%rcx) {%k7}

// CHECK: vmovdqa64 %xmm17, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa1,0xfd,0x08,0x7f,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vmovdqa64 %xmm17, 291(%rax,%r14,8)

// CHECK: vmovdqa64 %xmm17, 2032(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x7f,0x4a,0x7f]
          vmovdqa64 %xmm17, 2032(%rdx)

// CHECK: vmovdqa64 %xmm17, 2048(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x7f,0x8a,0x00,0x08,0x00,0x00]
          vmovdqa64 %xmm17, 2048(%rdx)

// CHECK: vmovdqa64 %xmm17, -2048(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x7f,0x4a,0x80]
          vmovdqa64 %xmm17, -2048(%rdx)

// CHECK: vmovdqa64 %xmm17, -2064(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x7f,0x8a,0xf0,0xf7,0xff,0xff]
          vmovdqa64 %xmm17, -2064(%rdx)

// CHECK: vmovdqa64 %ymm24, (%rcx)
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x7f,0x01]
          vmovdqa64 %ymm24, (%rcx)

// CHECK: vmovdqa64 %ymm24, (%rcx) {%k2}
// CHECK:  encoding: [0x62,0x61,0xfd,0x2a,0x7f,0x01]
          vmovdqa64 %ymm24, (%rcx) {%k2}

// CHECK: vmovdqa64 %ymm24, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x21,0xfd,0x28,0x7f,0x84,0xf0,0x23,0x01,0x00,0x00]
          vmovdqa64 %ymm24, 291(%rax,%r14,8)

// CHECK: vmovdqa64 %ymm24, 4064(%rdx)
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x7f,0x42,0x7f]
          vmovdqa64 %ymm24, 4064(%rdx)

// CHECK: vmovdqa64 %ymm24, 4096(%rdx)
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x7f,0x82,0x00,0x10,0x00,0x00]
          vmovdqa64 %ymm24, 4096(%rdx)

// CHECK: vmovdqa64 %ymm24, -4096(%rdx)
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x7f,0x42,0x80]
          vmovdqa64 %ymm24, -4096(%rdx)

// CHECK: vmovdqa64 %ymm24, -4128(%rdx)
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x7f,0x82,0xe0,0xef,0xff,0xff]
          vmovdqa64 %ymm24, -4128(%rdx)

// CHECK: vmovdqu32 %xmm17, (%rcx)
// CHECK:  encoding: [0x62,0xe1,0x7e,0x08,0x7f,0x09]
          vmovdqu32 %xmm17, (%rcx)

// CHECK: vmovdqu32 %xmm17, (%rcx) {%k4}
// CHECK:  encoding: [0x62,0xe1,0x7e,0x0c,0x7f,0x09]
          vmovdqu32 %xmm17, (%rcx) {%k4}

// CHECK: vmovdqu32 %xmm17, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa1,0x7e,0x08,0x7f,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vmovdqu32 %xmm17, 291(%rax,%r14,8)

// CHECK: vmovdqu32 %xmm17, 2032(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7e,0x08,0x7f,0x4a,0x7f]
          vmovdqu32 %xmm17, 2032(%rdx)

// CHECK: vmovdqu32 %xmm17, 2048(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7e,0x08,0x7f,0x8a,0x00,0x08,0x00,0x00]
          vmovdqu32 %xmm17, 2048(%rdx)

// CHECK: vmovdqu32 %xmm17, -2048(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7e,0x08,0x7f,0x4a,0x80]
          vmovdqu32 %xmm17, -2048(%rdx)

// CHECK: vmovdqu32 %xmm17, -2064(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7e,0x08,0x7f,0x8a,0xf0,0xf7,0xff,0xff]
          vmovdqu32 %xmm17, -2064(%rdx)

// CHECK: vmovdqu32 %ymm20, (%rcx)
// CHECK:  encoding: [0x62,0xe1,0x7e,0x28,0x7f,0x21]
          vmovdqu32 %ymm20, (%rcx)

// CHECK: vmovdqu32 %ymm20, (%rcx) {%k1}
// CHECK:  encoding: [0x62,0xe1,0x7e,0x29,0x7f,0x21]
          vmovdqu32 %ymm20, (%rcx) {%k1}

// CHECK: vmovdqu32 %ymm20, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa1,0x7e,0x28,0x7f,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vmovdqu32 %ymm20, 291(%rax,%r14,8)

// CHECK: vmovdqu32 %ymm20, 4064(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7e,0x28,0x7f,0x62,0x7f]
          vmovdqu32 %ymm20, 4064(%rdx)

// CHECK: vmovdqu32 %ymm20, 4096(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7e,0x28,0x7f,0xa2,0x00,0x10,0x00,0x00]
          vmovdqu32 %ymm20, 4096(%rdx)

// CHECK: vmovdqu32 %ymm20, -4096(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7e,0x28,0x7f,0x62,0x80]
          vmovdqu32 %ymm20, -4096(%rdx)

// CHECK: vmovdqu32 %ymm20, -4128(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7e,0x28,0x7f,0xa2,0xe0,0xef,0xff,0xff]
          vmovdqu32 %ymm20, -4128(%rdx)

// CHECK: vmovdqu64 %xmm20, (%rcx)
// CHECK:  encoding: [0x62,0xe1,0xfe,0x08,0x7f,0x21]
          vmovdqu64 %xmm20, (%rcx)

// CHECK: vmovdqu64 %xmm20, (%rcx) {%k6}
// CHECK:  encoding: [0x62,0xe1,0xfe,0x0e,0x7f,0x21]
          vmovdqu64 %xmm20, (%rcx) {%k6}

// CHECK: vmovdqu64 %xmm20, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa1,0xfe,0x08,0x7f,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vmovdqu64 %xmm20, 291(%rax,%r14,8)

// CHECK: vmovdqu64 %xmm20, 2032(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfe,0x08,0x7f,0x62,0x7f]
          vmovdqu64 %xmm20, 2032(%rdx)

// CHECK: vmovdqu64 %xmm20, 2048(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfe,0x08,0x7f,0xa2,0x00,0x08,0x00,0x00]
          vmovdqu64 %xmm20, 2048(%rdx)

// CHECK: vmovdqu64 %xmm20, -2048(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfe,0x08,0x7f,0x62,0x80]
          vmovdqu64 %xmm20, -2048(%rdx)

// CHECK: vmovdqu64 %xmm20, -2064(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfe,0x08,0x7f,0xa2,0xf0,0xf7,0xff,0xff]
          vmovdqu64 %xmm20, -2064(%rdx)

// CHECK: vmovdqu64 %ymm19, (%rcx)
// CHECK:  encoding: [0x62,0xe1,0xfe,0x28,0x7f,0x19]
          vmovdqu64 %ymm19, (%rcx)

// CHECK: vmovdqu64 %ymm19, (%rcx) {%k7}
// CHECK:  encoding: [0x62,0xe1,0xfe,0x2f,0x7f,0x19]
          vmovdqu64 %ymm19, (%rcx) {%k7}

// CHECK: vmovdqu64 %ymm19, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa1,0xfe,0x28,0x7f,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vmovdqu64 %ymm19, 291(%rax,%r14,8)

// CHECK: vmovdqu64 %ymm19, 4064(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfe,0x28,0x7f,0x5a,0x7f]
          vmovdqu64 %ymm19, 4064(%rdx)

// CHECK: vmovdqu64 %ymm19, 4096(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfe,0x28,0x7f,0x9a,0x00,0x10,0x00,0x00]
          vmovdqu64 %ymm19, 4096(%rdx)

// CHECK: vmovdqu64 %ymm19, -4096(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfe,0x28,0x7f,0x5a,0x80]
          vmovdqu64 %ymm19, -4096(%rdx)

// CHECK: vmovdqu64 %ymm19, -4128(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfe,0x28,0x7f,0x9a,0xe0,0xef,0xff,0xff]
          vmovdqu64 %ymm19, -4128(%rdx)

// CHECK: vmovupd %xmm22, (%rcx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x11,0x31]
          vmovupd %xmm22, (%rcx)

// CHECK: vmovupd %xmm22, (%rcx) {%k7}
// CHECK:  encoding: [0x62,0xe1,0xfd,0x0f,0x11,0x31]
          vmovupd %xmm22, (%rcx) {%k7}

// CHECK: vmovupd %xmm22, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa1,0xfd,0x08,0x11,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vmovupd %xmm22, 291(%rax,%r14,8)

// CHECK: vmovupd %xmm22, 2032(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x11,0x72,0x7f]
          vmovupd %xmm22, 2032(%rdx)

// CHECK: vmovupd %xmm22, 2048(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x11,0xb2,0x00,0x08,0x00,0x00]
          vmovupd %xmm22, 2048(%rdx)

// CHECK: vmovupd %xmm22, -2048(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x11,0x72,0x80]
          vmovupd %xmm22, -2048(%rdx)

// CHECK: vmovupd %xmm22, -2064(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xfd,0x08,0x11,0xb2,0xf0,0xf7,0xff,0xff]
          vmovupd %xmm22, -2064(%rdx)

// CHECK: vmovupd %ymm28, (%rcx)
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x11,0x21]
          vmovupd %ymm28, (%rcx)

// CHECK: vmovupd %ymm28, (%rcx) {%k1}
// CHECK:  encoding: [0x62,0x61,0xfd,0x29,0x11,0x21]
          vmovupd %ymm28, (%rcx) {%k1}

// CHECK: vmovupd %ymm28, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x21,0xfd,0x28,0x11,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vmovupd %ymm28, 291(%rax,%r14,8)

// CHECK: vmovupd %ymm28, 4064(%rdx)
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x11,0x62,0x7f]
          vmovupd %ymm28, 4064(%rdx)

// CHECK: vmovupd %ymm28, 4096(%rdx)
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x11,0xa2,0x00,0x10,0x00,0x00]
          vmovupd %ymm28, 4096(%rdx)

// CHECK: vmovupd %ymm28, -4096(%rdx)
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x11,0x62,0x80]
          vmovupd %ymm28, -4096(%rdx)

// CHECK: vmovupd %ymm28, -4128(%rdx)
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0x11,0xa2,0xe0,0xef,0xff,0xff]
          vmovupd %ymm28, -4128(%rdx)

// CHECK: vmovups %xmm26, (%rcx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x08,0x11,0x11]
          vmovups %xmm26, (%rcx)

// CHECK: vmovups %xmm26, (%rcx) {%k5}
// CHECK:  encoding: [0x62,0x61,0x7c,0x0d,0x11,0x11]
          vmovups %xmm26, (%rcx) {%k5}

// CHECK: vmovups %xmm26, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x21,0x7c,0x08,0x11,0x94,0xf0,0x23,0x01,0x00,0x00]
          vmovups %xmm26, 291(%rax,%r14,8)

// CHECK: vmovups %xmm26, 2032(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x08,0x11,0x52,0x7f]
          vmovups %xmm26, 2032(%rdx)

// CHECK: vmovups %xmm26, 2048(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x08,0x11,0x92,0x00,0x08,0x00,0x00]
          vmovups %xmm26, 2048(%rdx)

// CHECK: vmovups %xmm26, -2048(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x08,0x11,0x52,0x80]
          vmovups %xmm26, -2048(%rdx)

// CHECK: vmovups %xmm26, -2064(%rdx)
// CHECK:  encoding: [0x62,0x61,0x7c,0x08,0x11,0x92,0xf0,0xf7,0xff,0xff]
          vmovups %xmm26, -2064(%rdx)

// CHECK: vmovups %ymm23, (%rcx)
// CHECK:  encoding: [0x62,0xe1,0x7c,0x28,0x11,0x39]
          vmovups %ymm23, (%rcx)

// CHECK: vmovups %ymm23, (%rcx) {%k3}
// CHECK:  encoding: [0x62,0xe1,0x7c,0x2b,0x11,0x39]
          vmovups %ymm23, (%rcx) {%k3}

// CHECK: vmovups %ymm23, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa1,0x7c,0x28,0x11,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vmovups %ymm23, 291(%rax,%r14,8)

// CHECK: vmovups %ymm23, 4064(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7c,0x28,0x11,0x7a,0x7f]
          vmovups %ymm23, 4064(%rdx)

// CHECK: vmovups %ymm23, 4096(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7c,0x28,0x11,0xba,0x00,0x10,0x00,0x00]
          vmovups %ymm23, 4096(%rdx)

// CHECK: vmovups %ymm23, -4096(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7c,0x28,0x11,0x7a,0x80]
          vmovups %ymm23, -4096(%rdx)

// CHECK: vmovups %ymm23, -4128(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7c,0x28,0x11,0xba,0xe0,0xef,0xff,0xff]
          vmovups %ymm23, -4128(%rdx)

// CHECK: vaddpd  %zmm2, %zmm1, %zmm1
// CHECK:  encoding: [0x62,0xf1,0xf5,0x48,0x58,0xca]
vaddpd  %zmm2, %zmm1, %zmm1

// CHECK: vaddpd  %zmm2, %zmm1, %zmm1 {%k5}
// CHECK:  encoding: [0x62,0xf1,0xf5,0x4d,0x58,0xca]
vaddpd  %zmm2, %zmm1, %zmm1 {%k5}

// CHECK: vaddpd  %zmm2, %zmm1, %zmm1 {%k5} {z}
// CHECK:  encoding: [0x62,0xf1,0xf5,0xcd,0x58,0xca]
vaddpd  %zmm2, %zmm1, %zmm1 {%k5} {z}

// CHECK: vaddpd  {rn-sae}, %zmm2, %zmm1, %zmm1 {%k5} {z}
// CHECK:  encoding: [0x62,0xf1,0xf5,0x9d,0x58,0xca]
vaddpd  {rn-sae}, %zmm2, %zmm1, %zmm1 {%k5} {z}

// CHECK: vaddpd  {rn-sae}, %zmm2, %zmm1, %zmm1
// CHECK:  encoding: [0x62,0xf1,0xf5,0x18,0x58,0xca]
vaddpd  {rn-sae}, %zmm2, %zmm1, %zmm1

// CHECK: vaddpd  {ru-sae}, %zmm2, %zmm1, %zmm1
// CHECK:  encoding: [0x62,0xf1,0xf5,0x58,0x58,0xca]
vaddpd  {ru-sae}, %zmm2, %zmm1, %zmm1

// CHECK:  vaddpd  {rd-sae}, %zmm2, %zmm1, %zmm1
// CHECK:  encoding: [0x62,0xf1,0xf5,0x38,0x58,0xca]
vaddpd  {rd-sae}, %zmm2, %zmm1, %zmm1

// CHECK: vaddpd  {rz-sae}, %zmm2, %zmm1, %zmm1
// CHECK:  encoding: [0x62,0xf1,0xf5,0x78,0x58,0xca]
vaddpd  {rz-sae}, %zmm2, %zmm1, %zmm1

// CHECK: vpslld %xmm22, %xmm21, %xmm18
// CHECK:  encoding: [0x62,0xa1,0x55,0x00,0xf2,0xd6]
          vpslld %xmm22, %xmm21, %xmm18

// CHECK: vpslld %xmm22, %xmm21, %xmm18 {%k1}
// CHECK:  encoding: [0x62,0xa1,0x55,0x01,0xf2,0xd6]
          vpslld %xmm22, %xmm21, %xmm18 {%k1}

// CHECK: vpslld %xmm22, %xmm21, %xmm18 {%k1} {z}
// CHECK:  encoding: [0x62,0xa1,0x55,0x81,0xf2,0xd6]
          vpslld %xmm22, %xmm21, %xmm18 {%k1} {z}

// CHECK: vpslld (%rcx), %xmm21, %xmm18
// CHECK:  encoding: [0x62,0xe1,0x55,0x00,0xf2,0x11]
          vpslld (%rcx), %xmm21, %xmm18

// CHECK: vpslld 291(%rax,%r14,8), %xmm21, %xmm18
// CHECK:  encoding: [0x62,0xa1,0x55,0x00,0xf2,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpslld 291(%rax,%r14,8), %xmm21, %xmm18

// CHECK: vpslld 2032(%rdx), %xmm21, %xmm18
// CHECK:  encoding: [0x62,0xe1,0x55,0x00,0xf2,0x52,0x7f]
          vpslld 2032(%rdx), %xmm21, %xmm18

// CHECK: vpslld 2048(%rdx), %xmm21, %xmm18
// CHECK:  encoding: [0x62,0xe1,0x55,0x00,0xf2,0x92,0x00,0x08,0x00,0x00]
          vpslld 2048(%rdx), %xmm21, %xmm18

// CHECK: vpslld -2048(%rdx), %xmm21, %xmm18
// CHECK:  encoding: [0x62,0xe1,0x55,0x00,0xf2,0x52,0x80]
          vpslld -2048(%rdx), %xmm21, %xmm18

// CHECK: vpslld -2064(%rdx), %xmm21, %xmm18
// CHECK:  encoding: [0x62,0xe1,0x55,0x00,0xf2,0x92,0xf0,0xf7,0xff,0xff]
          vpslld -2064(%rdx), %xmm21, %xmm18

// CHECK: vpslld %xmm25, %ymm26, %ymm29
// CHECK:  encoding: [0x62,0x01,0x2d,0x20,0xf2,0xe9]
          vpslld %xmm25, %ymm26, %ymm29

// CHECK: vpslld %xmm25, %ymm26, %ymm29 {%k7}
// CHECK:  encoding: [0x62,0x01,0x2d,0x27,0xf2,0xe9]
          vpslld %xmm25, %ymm26, %ymm29 {%k7}

// CHECK: vpslld %xmm25, %ymm26, %ymm29 {%k7} {z}
// CHECK:  encoding: [0x62,0x01,0x2d,0xa7,0xf2,0xe9]
          vpslld %xmm25, %ymm26, %ymm29 {%k7} {z}

// CHECK: vpslld (%rcx), %ymm26, %ymm29
// CHECK:  encoding: [0x62,0x61,0x2d,0x20,0xf2,0x29]
          vpslld (%rcx), %ymm26, %ymm29

// CHECK: vpslld 291(%rax,%r14,8), %ymm26, %ymm29
// CHECK:  encoding: [0x62,0x21,0x2d,0x20,0xf2,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpslld 291(%rax,%r14,8), %ymm26, %ymm29

// CHECK: vpslld 2032(%rdx), %ymm26, %ymm29
// CHECK:  encoding: [0x62,0x61,0x2d,0x20,0xf2,0x6a,0x7f]
          vpslld 2032(%rdx), %ymm26, %ymm29

// CHECK: vpslld 2048(%rdx), %ymm26, %ymm29
// CHECK:  encoding: [0x62,0x61,0x2d,0x20,0xf2,0xaa,0x00,0x08,0x00,0x00]
          vpslld 2048(%rdx), %ymm26, %ymm29

// CHECK: vpslld -2048(%rdx), %ymm26, %ymm29
// CHECK:  encoding: [0x62,0x61,0x2d,0x20,0xf2,0x6a,0x80]
          vpslld -2048(%rdx), %ymm26, %ymm29

// CHECK: vpslld -2064(%rdx), %ymm26, %ymm29
// CHECK:  encoding: [0x62,0x61,0x2d,0x20,0xf2,0xaa,0xf0,0xf7,0xff,0xff]
          vpslld -2064(%rdx), %ymm26, %ymm29

// CHECK: vpsllq %xmm24, %xmm28, %xmm20
// CHECK:  encoding: [0x62,0x81,0x9d,0x00,0xf3,0xe0]
          vpsllq %xmm24, %xmm28, %xmm20

// CHECK: vpsllq %xmm24, %xmm28, %xmm20 {%k1}
// CHECK:  encoding: [0x62,0x81,0x9d,0x01,0xf3,0xe0]
          vpsllq %xmm24, %xmm28, %xmm20 {%k1}

// CHECK: vpsllq %xmm24, %xmm28, %xmm20 {%k1} {z}
// CHECK:  encoding: [0x62,0x81,0x9d,0x81,0xf3,0xe0]
          vpsllq %xmm24, %xmm28, %xmm20 {%k1} {z}

// CHECK: vpsllq (%rcx), %xmm28, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x9d,0x00,0xf3,0x21]
          vpsllq (%rcx), %xmm28, %xmm20

// CHECK: vpsllq 291(%rax,%r14,8), %xmm28, %xmm20
// CHECK:  encoding: [0x62,0xa1,0x9d,0x00,0xf3,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpsllq 291(%rax,%r14,8), %xmm28, %xmm20

// CHECK: vpsllq 2032(%rdx), %xmm28, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x9d,0x00,0xf3,0x62,0x7f]
          vpsllq 2032(%rdx), %xmm28, %xmm20

// CHECK: vpsllq 2048(%rdx), %xmm28, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x9d,0x00,0xf3,0xa2,0x00,0x08,0x00,0x00]
          vpsllq 2048(%rdx), %xmm28, %xmm20

// CHECK: vpsllq -2048(%rdx), %xmm28, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x9d,0x00,0xf3,0x62,0x80]
          vpsllq -2048(%rdx), %xmm28, %xmm20

// CHECK: vpsllq -2064(%rdx), %xmm28, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x9d,0x00,0xf3,0xa2,0xf0,0xf7,0xff,0xff]
          vpsllq -2064(%rdx), %xmm28, %xmm20

// CHECK: vpsllq %xmm20, %ymm21, %ymm23
// CHECK:  encoding: [0x62,0xa1,0xd5,0x20,0xf3,0xfc]
          vpsllq %xmm20, %ymm21, %ymm23

// CHECK: vpsllq %xmm20, %ymm21, %ymm23 {%k1}
// CHECK:  encoding: [0x62,0xa1,0xd5,0x21,0xf3,0xfc]
          vpsllq %xmm20, %ymm21, %ymm23 {%k1}

// CHECK: vpsllq %xmm20, %ymm21, %ymm23 {%k1} {z}
// CHECK:  encoding: [0x62,0xa1,0xd5,0xa1,0xf3,0xfc]
          vpsllq %xmm20, %ymm21, %ymm23 {%k1} {z}

// CHECK: vpsllq (%rcx), %ymm21, %ymm23
// CHECK:  encoding: [0x62,0xe1,0xd5,0x20,0xf3,0x39]
          vpsllq (%rcx), %ymm21, %ymm23

// CHECK: vpsllq 291(%rax,%r14,8), %ymm21, %ymm23
// CHECK:  encoding: [0x62,0xa1,0xd5,0x20,0xf3,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vpsllq 291(%rax,%r14,8), %ymm21, %ymm23

// CHECK: vpsllq 2032(%rdx), %ymm21, %ymm23
// CHECK:  encoding: [0x62,0xe1,0xd5,0x20,0xf3,0x7a,0x7f]
          vpsllq 2032(%rdx), %ymm21, %ymm23

// CHECK: vpsllq 2048(%rdx), %ymm21, %ymm23
// CHECK:  encoding: [0x62,0xe1,0xd5,0x20,0xf3,0xba,0x00,0x08,0x00,0x00]
          vpsllq 2048(%rdx), %ymm21, %ymm23

// CHECK: vpsllq -2048(%rdx), %ymm21, %ymm23
// CHECK:  encoding: [0x62,0xe1,0xd5,0x20,0xf3,0x7a,0x80]
          vpsllq -2048(%rdx), %ymm21, %ymm23

// CHECK: vpsllq -2064(%rdx), %ymm21, %ymm23
// CHECK:  encoding: [0x62,0xe1,0xd5,0x20,0xf3,0xba,0xf0,0xf7,0xff,0xff]
          vpsllq -2064(%rdx), %ymm21, %ymm23

// CHECK: vpsllvd %xmm24, %xmm23, %xmm23
// CHECK:  encoding: [0x62,0x82,0x45,0x00,0x47,0xf8]
          vpsllvd %xmm24, %xmm23, %xmm23

// CHECK: vpsllvd %xmm24, %xmm23, %xmm23 {%k6}
// CHECK:  encoding: [0x62,0x82,0x45,0x06,0x47,0xf8]
          vpsllvd %xmm24, %xmm23, %xmm23 {%k6}

// CHECK: vpsllvd %xmm24, %xmm23, %xmm23 {%k6} {z}
// CHECK:  encoding: [0x62,0x82,0x45,0x86,0x47,0xf8]
          vpsllvd %xmm24, %xmm23, %xmm23 {%k6} {z}

// CHECK: vpsllvd (%rcx), %xmm23, %xmm23
// CHECK:  encoding: [0x62,0xe2,0x45,0x00,0x47,0x39]
          vpsllvd (%rcx), %xmm23, %xmm23

// CHECK: vpsllvd 291(%rax,%r14,8), %xmm23, %xmm23
// CHECK:  encoding: [0x62,0xa2,0x45,0x00,0x47,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vpsllvd 291(%rax,%r14,8), %xmm23, %xmm23

// CHECK: vpsllvd (%rcx){1to4}, %xmm23, %xmm23
// CHECK:  encoding: [0x62,0xe2,0x45,0x10,0x47,0x39]
          vpsllvd (%rcx){1to4}, %xmm23, %xmm23

// CHECK: vpsllvd 2032(%rdx), %xmm23, %xmm23
// CHECK:  encoding: [0x62,0xe2,0x45,0x00,0x47,0x7a,0x7f]
          vpsllvd 2032(%rdx), %xmm23, %xmm23

// CHECK: vpsllvd 2048(%rdx), %xmm23, %xmm23
// CHECK:  encoding: [0x62,0xe2,0x45,0x00,0x47,0xba,0x00,0x08,0x00,0x00]
          vpsllvd 2048(%rdx), %xmm23, %xmm23

// CHECK: vpsllvd -2048(%rdx), %xmm23, %xmm23
// CHECK:  encoding: [0x62,0xe2,0x45,0x00,0x47,0x7a,0x80]
          vpsllvd -2048(%rdx), %xmm23, %xmm23

// CHECK: vpsllvd -2064(%rdx), %xmm23, %xmm23
// CHECK:  encoding: [0x62,0xe2,0x45,0x00,0x47,0xba,0xf0,0xf7,0xff,0xff]
          vpsllvd -2064(%rdx), %xmm23, %xmm23

// CHECK: vpsllvd 508(%rdx){1to4}, %xmm23, %xmm23
// CHECK:  encoding: [0x62,0xe2,0x45,0x10,0x47,0x7a,0x7f]
          vpsllvd 508(%rdx){1to4}, %xmm23, %xmm23

// CHECK: vpsllvd 512(%rdx){1to4}, %xmm23, %xmm23
// CHECK:  encoding: [0x62,0xe2,0x45,0x10,0x47,0xba,0x00,0x02,0x00,0x00]
          vpsllvd 512(%rdx){1to4}, %xmm23, %xmm23

// CHECK: vpsllvd -512(%rdx){1to4}, %xmm23, %xmm23
// CHECK:  encoding: [0x62,0xe2,0x45,0x10,0x47,0x7a,0x80]
          vpsllvd -512(%rdx){1to4}, %xmm23, %xmm23

// CHECK: vpsllvd -516(%rdx){1to4}, %xmm23, %xmm23
// CHECK:  encoding: [0x62,0xe2,0x45,0x10,0x47,0xba,0xfc,0xfd,0xff,0xff]
          vpsllvd -516(%rdx){1to4}, %xmm23, %xmm23

// CHECK: vpsllvd %ymm19, %ymm22, %ymm17
// CHECK:  encoding: [0x62,0xa2,0x4d,0x20,0x47,0xcb]
          vpsllvd %ymm19, %ymm22, %ymm17

// CHECK: vpsllvd %ymm19, %ymm22, %ymm17 {%k5}
// CHECK:  encoding: [0x62,0xa2,0x4d,0x25,0x47,0xcb]
          vpsllvd %ymm19, %ymm22, %ymm17 {%k5}

// CHECK: vpsllvd %ymm19, %ymm22, %ymm17 {%k5} {z}
// CHECK:  encoding: [0x62,0xa2,0x4d,0xa5,0x47,0xcb]
          vpsllvd %ymm19, %ymm22, %ymm17 {%k5} {z}

// CHECK: vpsllvd (%rcx), %ymm22, %ymm17
// CHECK:  encoding: [0x62,0xe2,0x4d,0x20,0x47,0x09]
          vpsllvd (%rcx), %ymm22, %ymm17

// CHECK: vpsllvd 291(%rax,%r14,8), %ymm22, %ymm17
// CHECK:  encoding: [0x62,0xa2,0x4d,0x20,0x47,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpsllvd 291(%rax,%r14,8), %ymm22, %ymm17

// CHECK: vpsllvd (%rcx){1to8}, %ymm22, %ymm17
// CHECK:  encoding: [0x62,0xe2,0x4d,0x30,0x47,0x09]
          vpsllvd (%rcx){1to8}, %ymm22, %ymm17

// CHECK: vpsllvd 4064(%rdx), %ymm22, %ymm17
// CHECK:  encoding: [0x62,0xe2,0x4d,0x20,0x47,0x4a,0x7f]
          vpsllvd 4064(%rdx), %ymm22, %ymm17

// CHECK: vpsllvd 4096(%rdx), %ymm22, %ymm17
// CHECK:  encoding: [0x62,0xe2,0x4d,0x20,0x47,0x8a,0x00,0x10,0x00,0x00]
          vpsllvd 4096(%rdx), %ymm22, %ymm17

// CHECK: vpsllvd -4096(%rdx), %ymm22, %ymm17
// CHECK:  encoding: [0x62,0xe2,0x4d,0x20,0x47,0x4a,0x80]
          vpsllvd -4096(%rdx), %ymm22, %ymm17

// CHECK: vpsllvd -4128(%rdx), %ymm22, %ymm17
// CHECK:  encoding: [0x62,0xe2,0x4d,0x20,0x47,0x8a,0xe0,0xef,0xff,0xff]
          vpsllvd -4128(%rdx), %ymm22, %ymm17

// CHECK: vpsllvd 508(%rdx){1to8}, %ymm22, %ymm17
// CHECK:  encoding: [0x62,0xe2,0x4d,0x30,0x47,0x4a,0x7f]
          vpsllvd 508(%rdx){1to8}, %ymm22, %ymm17

// CHECK: vpsllvd 512(%rdx){1to8}, %ymm22, %ymm17
// CHECK:  encoding: [0x62,0xe2,0x4d,0x30,0x47,0x8a,0x00,0x02,0x00,0x00]
          vpsllvd 512(%rdx){1to8}, %ymm22, %ymm17

// CHECK: vpsllvd -512(%rdx){1to8}, %ymm22, %ymm17
// CHECK:  encoding: [0x62,0xe2,0x4d,0x30,0x47,0x4a,0x80]
          vpsllvd -512(%rdx){1to8}, %ymm22, %ymm17

// CHECK: vpsllvd -516(%rdx){1to8}, %ymm22, %ymm17
// CHECK:  encoding: [0x62,0xe2,0x4d,0x30,0x47,0x8a,0xfc,0xfd,0xff,0xff]
          vpsllvd -516(%rdx){1to8}, %ymm22, %ymm17

// CHECK: vpsllvq %xmm18, %xmm21, %xmm19
// CHECK:  encoding: [0x62,0xa2,0xd5,0x00,0x47,0xda]
          vpsllvq %xmm18, %xmm21, %xmm19

// CHECK: vpsllvq %xmm18, %xmm21, %xmm19 {%k2}
// CHECK:  encoding: [0x62,0xa2,0xd5,0x02,0x47,0xda]
          vpsllvq %xmm18, %xmm21, %xmm19 {%k2}

// CHECK: vpsllvq %xmm18, %xmm21, %xmm19 {%k2} {z}
// CHECK:  encoding: [0x62,0xa2,0xd5,0x82,0x47,0xda]
          vpsllvq %xmm18, %xmm21, %xmm19 {%k2} {z}

// CHECK: vpsllvq (%rcx), %xmm21, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xd5,0x00,0x47,0x19]
          vpsllvq (%rcx), %xmm21, %xmm19

// CHECK: vpsllvq 291(%rax,%r14,8), %xmm21, %xmm19
// CHECK:  encoding: [0x62,0xa2,0xd5,0x00,0x47,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpsllvq 291(%rax,%r14,8), %xmm21, %xmm19

// CHECK: vpsllvq (%rcx){1to2}, %xmm21, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xd5,0x10,0x47,0x19]
          vpsllvq (%rcx){1to2}, %xmm21, %xmm19

// CHECK: vpsllvq 2032(%rdx), %xmm21, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xd5,0x00,0x47,0x5a,0x7f]
          vpsllvq 2032(%rdx), %xmm21, %xmm19

// CHECK: vpsllvq 2048(%rdx), %xmm21, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xd5,0x00,0x47,0x9a,0x00,0x08,0x00,0x00]
          vpsllvq 2048(%rdx), %xmm21, %xmm19

// CHECK: vpsllvq -2048(%rdx), %xmm21, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xd5,0x00,0x47,0x5a,0x80]
          vpsllvq -2048(%rdx), %xmm21, %xmm19

// CHECK: vpsllvq -2064(%rdx), %xmm21, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xd5,0x00,0x47,0x9a,0xf0,0xf7,0xff,0xff]
          vpsllvq -2064(%rdx), %xmm21, %xmm19

// CHECK: vpsllvq 1016(%rdx){1to2}, %xmm21, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xd5,0x10,0x47,0x5a,0x7f]
          vpsllvq 1016(%rdx){1to2}, %xmm21, %xmm19

// CHECK: vpsllvq 1024(%rdx){1to2}, %xmm21, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xd5,0x10,0x47,0x9a,0x00,0x04,0x00,0x00]
          vpsllvq 1024(%rdx){1to2}, %xmm21, %xmm19

// CHECK: vpsllvq -1024(%rdx){1to2}, %xmm21, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xd5,0x10,0x47,0x5a,0x80]
          vpsllvq -1024(%rdx){1to2}, %xmm21, %xmm19

// CHECK: vpsllvq -1032(%rdx){1to2}, %xmm21, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xd5,0x10,0x47,0x9a,0xf8,0xfb,0xff,0xff]
          vpsllvq -1032(%rdx){1to2}, %xmm21, %xmm19

// CHECK: vpsllvq %ymm18, %ymm25, %ymm23
// CHECK:  encoding: [0x62,0xa2,0xb5,0x20,0x47,0xfa]
          vpsllvq %ymm18, %ymm25, %ymm23

// CHECK: vpsllvq %ymm18, %ymm25, %ymm23 {%k2}
// CHECK:  encoding: [0x62,0xa2,0xb5,0x22,0x47,0xfa]
          vpsllvq %ymm18, %ymm25, %ymm23 {%k2}

// CHECK: vpsllvq %ymm18, %ymm25, %ymm23 {%k2} {z}
// CHECK:  encoding: [0x62,0xa2,0xb5,0xa2,0x47,0xfa]
          vpsllvq %ymm18, %ymm25, %ymm23 {%k2} {z}

// CHECK: vpsllvq (%rcx), %ymm25, %ymm23
// CHECK:  encoding: [0x62,0xe2,0xb5,0x20,0x47,0x39]
          vpsllvq (%rcx), %ymm25, %ymm23

// CHECK: vpsllvq 291(%rax,%r14,8), %ymm25, %ymm23
// CHECK:  encoding: [0x62,0xa2,0xb5,0x20,0x47,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vpsllvq 291(%rax,%r14,8), %ymm25, %ymm23

// CHECK: vpsllvq (%rcx){1to4}, %ymm25, %ymm23
// CHECK:  encoding: [0x62,0xe2,0xb5,0x30,0x47,0x39]
          vpsllvq (%rcx){1to4}, %ymm25, %ymm23

// CHECK: vpsllvq 4064(%rdx), %ymm25, %ymm23
// CHECK:  encoding: [0x62,0xe2,0xb5,0x20,0x47,0x7a,0x7f]
          vpsllvq 4064(%rdx), %ymm25, %ymm23

// CHECK: vpsllvq 4096(%rdx), %ymm25, %ymm23
// CHECK:  encoding: [0x62,0xe2,0xb5,0x20,0x47,0xba,0x00,0x10,0x00,0x00]
          vpsllvq 4096(%rdx), %ymm25, %ymm23

// CHECK: vpsllvq -4096(%rdx), %ymm25, %ymm23
// CHECK:  encoding: [0x62,0xe2,0xb5,0x20,0x47,0x7a,0x80]
          vpsllvq -4096(%rdx), %ymm25, %ymm23

// CHECK: vpsllvq -4128(%rdx), %ymm25, %ymm23
// CHECK:  encoding: [0x62,0xe2,0xb5,0x20,0x47,0xba,0xe0,0xef,0xff,0xff]
          vpsllvq -4128(%rdx), %ymm25, %ymm23

// CHECK: vpsllvq 1016(%rdx){1to4}, %ymm25, %ymm23
// CHECK:  encoding: [0x62,0xe2,0xb5,0x30,0x47,0x7a,0x7f]
          vpsllvq 1016(%rdx){1to4}, %ymm25, %ymm23

// CHECK: vpsllvq 1024(%rdx){1to4}, %ymm25, %ymm23
// CHECK:  encoding: [0x62,0xe2,0xb5,0x30,0x47,0xba,0x00,0x04,0x00,0x00]
          vpsllvq 1024(%rdx){1to4}, %ymm25, %ymm23

// CHECK: vpsllvq -1024(%rdx){1to4}, %ymm25, %ymm23
// CHECK:  encoding: [0x62,0xe2,0xb5,0x30,0x47,0x7a,0x80]
          vpsllvq -1024(%rdx){1to4}, %ymm25, %ymm23

// CHECK: vpsllvq -1032(%rdx){1to4}, %ymm25, %ymm23
// CHECK:  encoding: [0x62,0xe2,0xb5,0x30,0x47,0xba,0xf8,0xfb,0xff,0xff]
          vpsllvq -1032(%rdx){1to4}, %ymm25, %ymm23

// CHECK: vpsrad %xmm20, %xmm23, %xmm28
// CHECK:  encoding: [0x62,0x21,0x45,0x00,0xe2,0xe4]
          vpsrad %xmm20, %xmm23, %xmm28

// CHECK: vpsrad %xmm20, %xmm23, %xmm28 {%k3}
// CHECK:  encoding: [0x62,0x21,0x45,0x03,0xe2,0xe4]
          vpsrad %xmm20, %xmm23, %xmm28 {%k3}

// CHECK: vpsrad %xmm20, %xmm23, %xmm28 {%k3} {z}
// CHECK:  encoding: [0x62,0x21,0x45,0x83,0xe2,0xe4]
          vpsrad %xmm20, %xmm23, %xmm28 {%k3} {z}

// CHECK: vpsrad (%rcx), %xmm23, %xmm28
// CHECK:  encoding: [0x62,0x61,0x45,0x00,0xe2,0x21]
          vpsrad (%rcx), %xmm23, %xmm28

// CHECK: vpsrad 291(%rax,%r14,8), %xmm23, %xmm28
// CHECK:  encoding: [0x62,0x21,0x45,0x00,0xe2,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpsrad 291(%rax,%r14,8), %xmm23, %xmm28

// CHECK: vpsrad 2032(%rdx), %xmm23, %xmm28
// CHECK:  encoding: [0x62,0x61,0x45,0x00,0xe2,0x62,0x7f]
          vpsrad 2032(%rdx), %xmm23, %xmm28

// CHECK: vpsrad 2048(%rdx), %xmm23, %xmm28
// CHECK:  encoding: [0x62,0x61,0x45,0x00,0xe2,0xa2,0x00,0x08,0x00,0x00]
          vpsrad 2048(%rdx), %xmm23, %xmm28

// CHECK: vpsrad -2048(%rdx), %xmm23, %xmm28
// CHECK:  encoding: [0x62,0x61,0x45,0x00,0xe2,0x62,0x80]
          vpsrad -2048(%rdx), %xmm23, %xmm28

// CHECK: vpsrad -2064(%rdx), %xmm23, %xmm28
// CHECK:  encoding: [0x62,0x61,0x45,0x00,0xe2,0xa2,0xf0,0xf7,0xff,0xff]
          vpsrad -2064(%rdx), %xmm23, %xmm28

// CHECK: vpsrad %xmm24, %ymm27, %ymm25
// CHECK:  encoding: [0x62,0x01,0x25,0x20,0xe2,0xc8]
          vpsrad %xmm24, %ymm27, %ymm25

// CHECK: vpsrad %xmm24, %ymm27, %ymm25 {%k4}
// CHECK:  encoding: [0x62,0x01,0x25,0x24,0xe2,0xc8]
          vpsrad %xmm24, %ymm27, %ymm25 {%k4}

// CHECK: vpsrad %xmm24, %ymm27, %ymm25 {%k4} {z}
// CHECK:  encoding: [0x62,0x01,0x25,0xa4,0xe2,0xc8]
          vpsrad %xmm24, %ymm27, %ymm25 {%k4} {z}

// CHECK: vpsrad (%rcx), %ymm27, %ymm25
// CHECK:  encoding: [0x62,0x61,0x25,0x20,0xe2,0x09]
          vpsrad (%rcx), %ymm27, %ymm25

// CHECK: vpsrad 291(%rax,%r14,8), %ymm27, %ymm25
// CHECK:  encoding: [0x62,0x21,0x25,0x20,0xe2,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpsrad 291(%rax,%r14,8), %ymm27, %ymm25

// CHECK: vpsrad 2032(%rdx), %ymm27, %ymm25
// CHECK:  encoding: [0x62,0x61,0x25,0x20,0xe2,0x4a,0x7f]
          vpsrad 2032(%rdx), %ymm27, %ymm25

// CHECK: vpsrad 2048(%rdx), %ymm27, %ymm25
// CHECK:  encoding: [0x62,0x61,0x25,0x20,0xe2,0x8a,0x00,0x08,0x00,0x00]
          vpsrad 2048(%rdx), %ymm27, %ymm25

// CHECK: vpsrad -2048(%rdx), %ymm27, %ymm25
// CHECK:  encoding: [0x62,0x61,0x25,0x20,0xe2,0x4a,0x80]
          vpsrad -2048(%rdx), %ymm27, %ymm25

// CHECK: vpsrad -2064(%rdx), %ymm27, %ymm25
// CHECK:  encoding: [0x62,0x61,0x25,0x20,0xe2,0x8a,0xf0,0xf7,0xff,0xff]
          vpsrad -2064(%rdx), %ymm27, %ymm25

// CHECK: vpsraq %xmm24, %xmm24, %xmm29
// CHECK:  encoding: [0x62,0x01,0xbd,0x00,0xe2,0xe8]
          vpsraq %xmm24, %xmm24, %xmm29

// CHECK: vpsraq %xmm24, %xmm24, %xmm29 {%k3}
// CHECK:  encoding: [0x62,0x01,0xbd,0x03,0xe2,0xe8]
          vpsraq %xmm24, %xmm24, %xmm29 {%k3}

// CHECK: vpsraq %xmm24, %xmm24, %xmm29 {%k3} {z}
// CHECK:  encoding: [0x62,0x01,0xbd,0x83,0xe2,0xe8]
          vpsraq %xmm24, %xmm24, %xmm29 {%k3} {z}

// CHECK: vpsraq (%rcx), %xmm24, %xmm29
// CHECK:  encoding: [0x62,0x61,0xbd,0x00,0xe2,0x29]
          vpsraq (%rcx), %xmm24, %xmm29

// CHECK: vpsraq 291(%rax,%r14,8), %xmm24, %xmm29
// CHECK:  encoding: [0x62,0x21,0xbd,0x00,0xe2,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpsraq 291(%rax,%r14,8), %xmm24, %xmm29

// CHECK: vpsraq 2032(%rdx), %xmm24, %xmm29
// CHECK:  encoding: [0x62,0x61,0xbd,0x00,0xe2,0x6a,0x7f]
          vpsraq 2032(%rdx), %xmm24, %xmm29

// CHECK: vpsraq 2048(%rdx), %xmm24, %xmm29
// CHECK:  encoding: [0x62,0x61,0xbd,0x00,0xe2,0xaa,0x00,0x08,0x00,0x00]
          vpsraq 2048(%rdx), %xmm24, %xmm29

// CHECK: vpsraq -2048(%rdx), %xmm24, %xmm29
// CHECK:  encoding: [0x62,0x61,0xbd,0x00,0xe2,0x6a,0x80]
          vpsraq -2048(%rdx), %xmm24, %xmm29

// CHECK: vpsraq -2064(%rdx), %xmm24, %xmm29
// CHECK:  encoding: [0x62,0x61,0xbd,0x00,0xe2,0xaa,0xf0,0xf7,0xff,0xff]
          vpsraq -2064(%rdx), %xmm24, %xmm29

// CHECK: vpsraq %xmm26, %ymm26, %ymm28
// CHECK:  encoding: [0x62,0x01,0xad,0x20,0xe2,0xe2]
          vpsraq %xmm26, %ymm26, %ymm28

// CHECK: vpsraq %xmm26, %ymm26, %ymm28 {%k4}
// CHECK:  encoding: [0x62,0x01,0xad,0x24,0xe2,0xe2]
          vpsraq %xmm26, %ymm26, %ymm28 {%k4}

// CHECK: vpsraq %xmm26, %ymm26, %ymm28 {%k4} {z}
// CHECK:  encoding: [0x62,0x01,0xad,0xa4,0xe2,0xe2]
          vpsraq %xmm26, %ymm26, %ymm28 {%k4} {z}

// CHECK: vpsraq (%rcx), %ymm26, %ymm28
// CHECK:  encoding: [0x62,0x61,0xad,0x20,0xe2,0x21]
          vpsraq (%rcx), %ymm26, %ymm28

// CHECK: vpsraq 291(%rax,%r14,8), %ymm26, %ymm28
// CHECK:  encoding: [0x62,0x21,0xad,0x20,0xe2,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpsraq 291(%rax,%r14,8), %ymm26, %ymm28

// CHECK: vpsraq 2032(%rdx), %ymm26, %ymm28
// CHECK:  encoding: [0x62,0x61,0xad,0x20,0xe2,0x62,0x7f]
          vpsraq 2032(%rdx), %ymm26, %ymm28

// CHECK: vpsraq 2048(%rdx), %ymm26, %ymm28
// CHECK:  encoding: [0x62,0x61,0xad,0x20,0xe2,0xa2,0x00,0x08,0x00,0x00]
          vpsraq 2048(%rdx), %ymm26, %ymm28

// CHECK: vpsraq -2048(%rdx), %ymm26, %ymm28
// CHECK:  encoding: [0x62,0x61,0xad,0x20,0xe2,0x62,0x80]
          vpsraq -2048(%rdx), %ymm26, %ymm28

// CHECK: vpsraq -2064(%rdx), %ymm26, %ymm28
// CHECK:  encoding: [0x62,0x61,0xad,0x20,0xe2,0xa2,0xf0,0xf7,0xff,0xff]
          vpsraq -2064(%rdx), %ymm26, %ymm28

// CHECK: vpsravd %xmm18, %xmm26, %xmm24
// CHECK:  encoding: [0x62,0x22,0x2d,0x00,0x46,0xc2]
          vpsravd %xmm18, %xmm26, %xmm24

// CHECK: vpsravd %xmm18, %xmm26, %xmm24 {%k5}
// CHECK:  encoding: [0x62,0x22,0x2d,0x05,0x46,0xc2]
          vpsravd %xmm18, %xmm26, %xmm24 {%k5}

// CHECK: vpsravd %xmm18, %xmm26, %xmm24 {%k5} {z}
// CHECK:  encoding: [0x62,0x22,0x2d,0x85,0x46,0xc2]
          vpsravd %xmm18, %xmm26, %xmm24 {%k5} {z}

// CHECK: vpsravd (%rcx), %xmm26, %xmm24
// CHECK:  encoding: [0x62,0x62,0x2d,0x00,0x46,0x01]
          vpsravd (%rcx), %xmm26, %xmm24

// CHECK: vpsravd 291(%rax,%r14,8), %xmm26, %xmm24
// CHECK:  encoding: [0x62,0x22,0x2d,0x00,0x46,0x84,0xf0,0x23,0x01,0x00,0x00]
          vpsravd 291(%rax,%r14,8), %xmm26, %xmm24

// CHECK: vpsravd (%rcx){1to4}, %xmm26, %xmm24
// CHECK:  encoding: [0x62,0x62,0x2d,0x10,0x46,0x01]
          vpsravd (%rcx){1to4}, %xmm26, %xmm24

// CHECK: vpsravd 2032(%rdx), %xmm26, %xmm24
// CHECK:  encoding: [0x62,0x62,0x2d,0x00,0x46,0x42,0x7f]
          vpsravd 2032(%rdx), %xmm26, %xmm24

// CHECK: vpsravd 2048(%rdx), %xmm26, %xmm24
// CHECK:  encoding: [0x62,0x62,0x2d,0x00,0x46,0x82,0x00,0x08,0x00,0x00]
          vpsravd 2048(%rdx), %xmm26, %xmm24

// CHECK: vpsravd -2048(%rdx), %xmm26, %xmm24
// CHECK:  encoding: [0x62,0x62,0x2d,0x00,0x46,0x42,0x80]
          vpsravd -2048(%rdx), %xmm26, %xmm24

// CHECK: vpsravd -2064(%rdx), %xmm26, %xmm24
// CHECK:  encoding: [0x62,0x62,0x2d,0x00,0x46,0x82,0xf0,0xf7,0xff,0xff]
          vpsravd -2064(%rdx), %xmm26, %xmm24

// CHECK: vpsravd 508(%rdx){1to4}, %xmm26, %xmm24
// CHECK:  encoding: [0x62,0x62,0x2d,0x10,0x46,0x42,0x7f]
          vpsravd 508(%rdx){1to4}, %xmm26, %xmm24

// CHECK: vpsravd 512(%rdx){1to4}, %xmm26, %xmm24
// CHECK:  encoding: [0x62,0x62,0x2d,0x10,0x46,0x82,0x00,0x02,0x00,0x00]
          vpsravd 512(%rdx){1to4}, %xmm26, %xmm24

// CHECK: vpsravd -512(%rdx){1to4}, %xmm26, %xmm24
// CHECK:  encoding: [0x62,0x62,0x2d,0x10,0x46,0x42,0x80]
          vpsravd -512(%rdx){1to4}, %xmm26, %xmm24

// CHECK: vpsravd -516(%rdx){1to4}, %xmm26, %xmm24
// CHECK:  encoding: [0x62,0x62,0x2d,0x10,0x46,0x82,0xfc,0xfd,0xff,0xff]
          vpsravd -516(%rdx){1to4}, %xmm26, %xmm24

// CHECK: vpsravd %ymm23, %ymm25, %ymm22
// CHECK:  encoding: [0x62,0xa2,0x35,0x20,0x46,0xf7]
          vpsravd %ymm23, %ymm25, %ymm22

// CHECK: vpsravd %ymm23, %ymm25, %ymm22 {%k7}
// CHECK:  encoding: [0x62,0xa2,0x35,0x27,0x46,0xf7]
          vpsravd %ymm23, %ymm25, %ymm22 {%k7}

// CHECK: vpsravd %ymm23, %ymm25, %ymm22 {%k7} {z}
// CHECK:  encoding: [0x62,0xa2,0x35,0xa7,0x46,0xf7]
          vpsravd %ymm23, %ymm25, %ymm22 {%k7} {z}

// CHECK: vpsravd (%rcx), %ymm25, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x35,0x20,0x46,0x31]
          vpsravd (%rcx), %ymm25, %ymm22

// CHECK: vpsravd 291(%rax,%r14,8), %ymm25, %ymm22
// CHECK:  encoding: [0x62,0xa2,0x35,0x20,0x46,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpsravd 291(%rax,%r14,8), %ymm25, %ymm22

// CHECK: vpsravd (%rcx){1to8}, %ymm25, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x35,0x30,0x46,0x31]
          vpsravd (%rcx){1to8}, %ymm25, %ymm22

// CHECK: vpsravd 4064(%rdx), %ymm25, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x35,0x20,0x46,0x72,0x7f]
          vpsravd 4064(%rdx), %ymm25, %ymm22

// CHECK: vpsravd 4096(%rdx), %ymm25, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x35,0x20,0x46,0xb2,0x00,0x10,0x00,0x00]
          vpsravd 4096(%rdx), %ymm25, %ymm22

// CHECK: vpsravd -4096(%rdx), %ymm25, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x35,0x20,0x46,0x72,0x80]
          vpsravd -4096(%rdx), %ymm25, %ymm22

// CHECK: vpsravd -4128(%rdx), %ymm25, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x35,0x20,0x46,0xb2,0xe0,0xef,0xff,0xff]
          vpsravd -4128(%rdx), %ymm25, %ymm22

// CHECK: vpsravd 508(%rdx){1to8}, %ymm25, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x35,0x30,0x46,0x72,0x7f]
          vpsravd 508(%rdx){1to8}, %ymm25, %ymm22

// CHECK: vpsravd 512(%rdx){1to8}, %ymm25, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x35,0x30,0x46,0xb2,0x00,0x02,0x00,0x00]
          vpsravd 512(%rdx){1to8}, %ymm25, %ymm22

// CHECK: vpsravd -512(%rdx){1to8}, %ymm25, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x35,0x30,0x46,0x72,0x80]
          vpsravd -512(%rdx){1to8}, %ymm25, %ymm22

// CHECK: vpsravd -516(%rdx){1to8}, %ymm25, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x35,0x30,0x46,0xb2,0xfc,0xfd,0xff,0xff]
          vpsravd -516(%rdx){1to8}, %ymm25, %ymm22

// CHECK: vpsravq %xmm17, %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x22,0x9d,0x00,0x46,0xe1]
          vpsravq %xmm17, %xmm28, %xmm28

// CHECK: vpsravq %xmm17, %xmm28, %xmm28 {%k1}
// CHECK:  encoding: [0x62,0x22,0x9d,0x01,0x46,0xe1]
          vpsravq %xmm17, %xmm28, %xmm28 {%k1}

// CHECK: vpsravq %xmm17, %xmm28, %xmm28 {%k1} {z}
// CHECK:  encoding: [0x62,0x22,0x9d,0x81,0x46,0xe1]
          vpsravq %xmm17, %xmm28, %xmm28 {%k1} {z}

// CHECK: vpsravq (%rcx), %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x62,0x9d,0x00,0x46,0x21]
          vpsravq (%rcx), %xmm28, %xmm28

// CHECK: vpsravq 291(%rax,%r14,8), %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x22,0x9d,0x00,0x46,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpsravq 291(%rax,%r14,8), %xmm28, %xmm28

// CHECK: vpsravq (%rcx){1to2}, %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x62,0x9d,0x10,0x46,0x21]
          vpsravq (%rcx){1to2}, %xmm28, %xmm28

// CHECK: vpsravq 2032(%rdx), %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x62,0x9d,0x00,0x46,0x62,0x7f]
          vpsravq 2032(%rdx), %xmm28, %xmm28

// CHECK: vpsravq 2048(%rdx), %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x62,0x9d,0x00,0x46,0xa2,0x00,0x08,0x00,0x00]
          vpsravq 2048(%rdx), %xmm28, %xmm28

// CHECK: vpsravq -2048(%rdx), %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x62,0x9d,0x00,0x46,0x62,0x80]
          vpsravq -2048(%rdx), %xmm28, %xmm28

// CHECK: vpsravq -2064(%rdx), %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x62,0x9d,0x00,0x46,0xa2,0xf0,0xf7,0xff,0xff]
          vpsravq -2064(%rdx), %xmm28, %xmm28

// CHECK: vpsravq 1016(%rdx){1to2}, %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x62,0x9d,0x10,0x46,0x62,0x7f]
          vpsravq 1016(%rdx){1to2}, %xmm28, %xmm28

// CHECK: vpsravq 1024(%rdx){1to2}, %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x62,0x9d,0x10,0x46,0xa2,0x00,0x04,0x00,0x00]
          vpsravq 1024(%rdx){1to2}, %xmm28, %xmm28

// CHECK: vpsravq -1024(%rdx){1to2}, %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x62,0x9d,0x10,0x46,0x62,0x80]
          vpsravq -1024(%rdx){1to2}, %xmm28, %xmm28

// CHECK: vpsravq -1032(%rdx){1to2}, %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x62,0x9d,0x10,0x46,0xa2,0xf8,0xfb,0xff,0xff]
          vpsravq -1032(%rdx){1to2}, %xmm28, %xmm28

// CHECK: vpsravq %ymm21, %ymm24, %ymm30
// CHECK:  encoding: [0x62,0x22,0xbd,0x20,0x46,0xf5]
          vpsravq %ymm21, %ymm24, %ymm30

// CHECK: vpsravq %ymm21, %ymm24, %ymm30 {%k7}
// CHECK:  encoding: [0x62,0x22,0xbd,0x27,0x46,0xf5]
          vpsravq %ymm21, %ymm24, %ymm30 {%k7}

// CHECK: vpsravq %ymm21, %ymm24, %ymm30 {%k7} {z}
// CHECK:  encoding: [0x62,0x22,0xbd,0xa7,0x46,0xf5]
          vpsravq %ymm21, %ymm24, %ymm30 {%k7} {z}

// CHECK: vpsravq (%rcx), %ymm24, %ymm30
// CHECK:  encoding: [0x62,0x62,0xbd,0x20,0x46,0x31]
          vpsravq (%rcx), %ymm24, %ymm30

// CHECK: vpsravq 291(%rax,%r14,8), %ymm24, %ymm30
// CHECK:  encoding: [0x62,0x22,0xbd,0x20,0x46,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpsravq 291(%rax,%r14,8), %ymm24, %ymm30

// CHECK: vpsravq (%rcx){1to4}, %ymm24, %ymm30
// CHECK:  encoding: [0x62,0x62,0xbd,0x30,0x46,0x31]
          vpsravq (%rcx){1to4}, %ymm24, %ymm30

// CHECK: vpsravq 4064(%rdx), %ymm24, %ymm30
// CHECK:  encoding: [0x62,0x62,0xbd,0x20,0x46,0x72,0x7f]
          vpsravq 4064(%rdx), %ymm24, %ymm30

// CHECK: vpsravq 4096(%rdx), %ymm24, %ymm30
// CHECK:  encoding: [0x62,0x62,0xbd,0x20,0x46,0xb2,0x00,0x10,0x00,0x00]
          vpsravq 4096(%rdx), %ymm24, %ymm30

// CHECK: vpsravq -4096(%rdx), %ymm24, %ymm30
// CHECK:  encoding: [0x62,0x62,0xbd,0x20,0x46,0x72,0x80]
          vpsravq -4096(%rdx), %ymm24, %ymm30

// CHECK: vpsravq -4128(%rdx), %ymm24, %ymm30
// CHECK:  encoding: [0x62,0x62,0xbd,0x20,0x46,0xb2,0xe0,0xef,0xff,0xff]
          vpsravq -4128(%rdx), %ymm24, %ymm30

// CHECK: vpsravq 1016(%rdx){1to4}, %ymm24, %ymm30
// CHECK:  encoding: [0x62,0x62,0xbd,0x30,0x46,0x72,0x7f]
          vpsravq 1016(%rdx){1to4}, %ymm24, %ymm30

// CHECK: vpsravq 1024(%rdx){1to4}, %ymm24, %ymm30
// CHECK:  encoding: [0x62,0x62,0xbd,0x30,0x46,0xb2,0x00,0x04,0x00,0x00]
          vpsravq 1024(%rdx){1to4}, %ymm24, %ymm30

// CHECK: vpsravq -1024(%rdx){1to4}, %ymm24, %ymm30
// CHECK:  encoding: [0x62,0x62,0xbd,0x30,0x46,0x72,0x80]
          vpsravq -1024(%rdx){1to4}, %ymm24, %ymm30

// CHECK: vpsravq -1032(%rdx){1to4}, %ymm24, %ymm30
// CHECK:  encoding: [0x62,0x62,0xbd,0x30,0x46,0xb2,0xf8,0xfb,0xff,0xff]
          vpsravq -1032(%rdx){1to4}, %ymm24, %ymm30

// CHECK: vpsrld %xmm20, %xmm20, %xmm30
// CHECK:  encoding: [0x62,0x21,0x5d,0x00,0xd2,0xf4]
          vpsrld %xmm20, %xmm20, %xmm30

// CHECK: vpsrld %xmm20, %xmm20, %xmm30 {%k3}
// CHECK:  encoding: [0x62,0x21,0x5d,0x03,0xd2,0xf4]
          vpsrld %xmm20, %xmm20, %xmm30 {%k3}

// CHECK: vpsrld %xmm20, %xmm20, %xmm30 {%k3} {z}
// CHECK:  encoding: [0x62,0x21,0x5d,0x83,0xd2,0xf4]
          vpsrld %xmm20, %xmm20, %xmm30 {%k3} {z}

// CHECK: vpsrld (%rcx), %xmm20, %xmm30
// CHECK:  encoding: [0x62,0x61,0x5d,0x00,0xd2,0x31]
          vpsrld (%rcx), %xmm20, %xmm30

// CHECK: vpsrld 291(%rax,%r14,8), %xmm20, %xmm30
// CHECK:  encoding: [0x62,0x21,0x5d,0x00,0xd2,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpsrld 291(%rax,%r14,8), %xmm20, %xmm30

// CHECK: vpsrld 2032(%rdx), %xmm20, %xmm30
// CHECK:  encoding: [0x62,0x61,0x5d,0x00,0xd2,0x72,0x7f]
          vpsrld 2032(%rdx), %xmm20, %xmm30

// CHECK: vpsrld 2048(%rdx), %xmm20, %xmm30
// CHECK:  encoding: [0x62,0x61,0x5d,0x00,0xd2,0xb2,0x00,0x08,0x00,0x00]
          vpsrld 2048(%rdx), %xmm20, %xmm30

// CHECK: vpsrld -2048(%rdx), %xmm20, %xmm30
// CHECK:  encoding: [0x62,0x61,0x5d,0x00,0xd2,0x72,0x80]
          vpsrld -2048(%rdx), %xmm20, %xmm30

// CHECK: vpsrld -2064(%rdx), %xmm20, %xmm30
// CHECK:  encoding: [0x62,0x61,0x5d,0x00,0xd2,0xb2,0xf0,0xf7,0xff,0xff]
          vpsrld -2064(%rdx), %xmm20, %xmm30

// CHECK: vpsrld %xmm25, %ymm18, %ymm26
// CHECK:  encoding: [0x62,0x01,0x6d,0x20,0xd2,0xd1]
          vpsrld %xmm25, %ymm18, %ymm26

// CHECK: vpsrld %xmm25, %ymm18, %ymm26 {%k1}
// CHECK:  encoding: [0x62,0x01,0x6d,0x21,0xd2,0xd1]
          vpsrld %xmm25, %ymm18, %ymm26 {%k1}

// CHECK: vpsrld %xmm25, %ymm18, %ymm26 {%k1} {z}
// CHECK:  encoding: [0x62,0x01,0x6d,0xa1,0xd2,0xd1]
          vpsrld %xmm25, %ymm18, %ymm26 {%k1} {z}

// CHECK: vpsrld (%rcx), %ymm18, %ymm26
// CHECK:  encoding: [0x62,0x61,0x6d,0x20,0xd2,0x11]
          vpsrld (%rcx), %ymm18, %ymm26

// CHECK: vpsrld 291(%rax,%r14,8), %ymm18, %ymm26
// CHECK:  encoding: [0x62,0x21,0x6d,0x20,0xd2,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpsrld 291(%rax,%r14,8), %ymm18, %ymm26

// CHECK: vpsrld 2032(%rdx), %ymm18, %ymm26
// CHECK:  encoding: [0x62,0x61,0x6d,0x20,0xd2,0x52,0x7f]
          vpsrld 2032(%rdx), %ymm18, %ymm26

// CHECK: vpsrld 2048(%rdx), %ymm18, %ymm26
// CHECK:  encoding: [0x62,0x61,0x6d,0x20,0xd2,0x92,0x00,0x08,0x00,0x00]
          vpsrld 2048(%rdx), %ymm18, %ymm26

// CHECK: vpsrld -2048(%rdx), %ymm18, %ymm26
// CHECK:  encoding: [0x62,0x61,0x6d,0x20,0xd2,0x52,0x80]
          vpsrld -2048(%rdx), %ymm18, %ymm26

// CHECK: vpsrld -2064(%rdx), %ymm18, %ymm26
// CHECK:  encoding: [0x62,0x61,0x6d,0x20,0xd2,0x92,0xf0,0xf7,0xff,0xff]
          vpsrld -2064(%rdx), %ymm18, %ymm26

// CHECK: vpsrlq %xmm17, %xmm21, %xmm28
// CHECK:  encoding: [0x62,0x21,0xd5,0x00,0xd3,0xe1]
          vpsrlq %xmm17, %xmm21, %xmm28

// CHECK: vpsrlq %xmm17, %xmm21, %xmm28 {%k2}
// CHECK:  encoding: [0x62,0x21,0xd5,0x02,0xd3,0xe1]
          vpsrlq %xmm17, %xmm21, %xmm28 {%k2}

// CHECK: vpsrlq %xmm17, %xmm21, %xmm28 {%k2} {z}
// CHECK:  encoding: [0x62,0x21,0xd5,0x82,0xd3,0xe1]
          vpsrlq %xmm17, %xmm21, %xmm28 {%k2} {z}

// CHECK: vpsrlq (%rcx), %xmm21, %xmm28
// CHECK:  encoding: [0x62,0x61,0xd5,0x00,0xd3,0x21]
          vpsrlq (%rcx), %xmm21, %xmm28

// CHECK: vpsrlq 291(%rax,%r14,8), %xmm21, %xmm28
// CHECK:  encoding: [0x62,0x21,0xd5,0x00,0xd3,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpsrlq 291(%rax,%r14,8), %xmm21, %xmm28

// CHECK: vpsrlq 2032(%rdx), %xmm21, %xmm28
// CHECK:  encoding: [0x62,0x61,0xd5,0x00,0xd3,0x62,0x7f]
          vpsrlq 2032(%rdx), %xmm21, %xmm28

// CHECK: vpsrlq 2048(%rdx), %xmm21, %xmm28
// CHECK:  encoding: [0x62,0x61,0xd5,0x00,0xd3,0xa2,0x00,0x08,0x00,0x00]
          vpsrlq 2048(%rdx), %xmm21, %xmm28

// CHECK: vpsrlq -2048(%rdx), %xmm21, %xmm28
// CHECK:  encoding: [0x62,0x61,0xd5,0x00,0xd3,0x62,0x80]
          vpsrlq -2048(%rdx), %xmm21, %xmm28

// CHECK: vpsrlq -2064(%rdx), %xmm21, %xmm28
// CHECK:  encoding: [0x62,0x61,0xd5,0x00,0xd3,0xa2,0xf0,0xf7,0xff,0xff]
          vpsrlq -2064(%rdx), %xmm21, %xmm28

// CHECK: vpsrlq %xmm18, %ymm26, %ymm22
// CHECK:  encoding: [0x62,0xa1,0xad,0x20,0xd3,0xf2]
          vpsrlq %xmm18, %ymm26, %ymm22

// CHECK: vpsrlq %xmm18, %ymm26, %ymm22 {%k2}
// CHECK:  encoding: [0x62,0xa1,0xad,0x22,0xd3,0xf2]
          vpsrlq %xmm18, %ymm26, %ymm22 {%k2}

// CHECK: vpsrlq %xmm18, %ymm26, %ymm22 {%k2} {z}
// CHECK:  encoding: [0x62,0xa1,0xad,0xa2,0xd3,0xf2]
          vpsrlq %xmm18, %ymm26, %ymm22 {%k2} {z}

// CHECK: vpsrlq (%rcx), %ymm26, %ymm22
// CHECK:  encoding: [0x62,0xe1,0xad,0x20,0xd3,0x31]
          vpsrlq (%rcx), %ymm26, %ymm22

// CHECK: vpsrlq 291(%rax,%r14,8), %ymm26, %ymm22
// CHECK:  encoding: [0x62,0xa1,0xad,0x20,0xd3,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpsrlq 291(%rax,%r14,8), %ymm26, %ymm22

// CHECK: vpsrlq 2032(%rdx), %ymm26, %ymm22
// CHECK:  encoding: [0x62,0xe1,0xad,0x20,0xd3,0x72,0x7f]
          vpsrlq 2032(%rdx), %ymm26, %ymm22

// CHECK: vpsrlq 2048(%rdx), %ymm26, %ymm22
// CHECK:  encoding: [0x62,0xe1,0xad,0x20,0xd3,0xb2,0x00,0x08,0x00,0x00]
          vpsrlq 2048(%rdx), %ymm26, %ymm22

// CHECK: vpsrlq -2048(%rdx), %ymm26, %ymm22
// CHECK:  encoding: [0x62,0xe1,0xad,0x20,0xd3,0x72,0x80]
          vpsrlq -2048(%rdx), %ymm26, %ymm22

// CHECK: vpsrlq -2064(%rdx), %ymm26, %ymm22
// CHECK:  encoding: [0x62,0xe1,0xad,0x20,0xd3,0xb2,0xf0,0xf7,0xff,0xff]
          vpsrlq -2064(%rdx), %ymm26, %ymm22

// CHECK: vpsrlvd %xmm18, %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x22,0x35,0x00,0x45,0xea]
          vpsrlvd %xmm18, %xmm25, %xmm29

// CHECK: vpsrlvd %xmm18, %xmm25, %xmm29 {%k3}
// CHECK:  encoding: [0x62,0x22,0x35,0x03,0x45,0xea]
          vpsrlvd %xmm18, %xmm25, %xmm29 {%k3}

// CHECK: vpsrlvd %xmm18, %xmm25, %xmm29 {%k3} {z}
// CHECK:  encoding: [0x62,0x22,0x35,0x83,0x45,0xea]
          vpsrlvd %xmm18, %xmm25, %xmm29 {%k3} {z}

// CHECK: vpsrlvd (%rcx), %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x62,0x35,0x00,0x45,0x29]
          vpsrlvd (%rcx), %xmm25, %xmm29

// CHECK: vpsrlvd 291(%rax,%r14,8), %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x22,0x35,0x00,0x45,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpsrlvd 291(%rax,%r14,8), %xmm25, %xmm29

// CHECK: vpsrlvd (%rcx){1to4}, %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x62,0x35,0x10,0x45,0x29]
          vpsrlvd (%rcx){1to4}, %xmm25, %xmm29

// CHECK: vpsrlvd 2032(%rdx), %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x62,0x35,0x00,0x45,0x6a,0x7f]
          vpsrlvd 2032(%rdx), %xmm25, %xmm29

// CHECK: vpsrlvd 2048(%rdx), %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x62,0x35,0x00,0x45,0xaa,0x00,0x08,0x00,0x00]
          vpsrlvd 2048(%rdx), %xmm25, %xmm29

// CHECK: vpsrlvd -2048(%rdx), %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x62,0x35,0x00,0x45,0x6a,0x80]
          vpsrlvd -2048(%rdx), %xmm25, %xmm29

// CHECK: vpsrlvd -2064(%rdx), %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x62,0x35,0x00,0x45,0xaa,0xf0,0xf7,0xff,0xff]
          vpsrlvd -2064(%rdx), %xmm25, %xmm29

// CHECK: vpsrlvd 508(%rdx){1to4}, %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x62,0x35,0x10,0x45,0x6a,0x7f]
          vpsrlvd 508(%rdx){1to4}, %xmm25, %xmm29

// CHECK: vpsrlvd 512(%rdx){1to4}, %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x62,0x35,0x10,0x45,0xaa,0x00,0x02,0x00,0x00]
          vpsrlvd 512(%rdx){1to4}, %xmm25, %xmm29

// CHECK: vpsrlvd -512(%rdx){1to4}, %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x62,0x35,0x10,0x45,0x6a,0x80]
          vpsrlvd -512(%rdx){1to4}, %xmm25, %xmm29

// CHECK: vpsrlvd -516(%rdx){1to4}, %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x62,0x35,0x10,0x45,0xaa,0xfc,0xfd,0xff,0xff]
          vpsrlvd -516(%rdx){1to4}, %xmm25, %xmm29

// CHECK: vpsrlvd %ymm20, %ymm21, %ymm28
// CHECK:  encoding: [0x62,0x22,0x55,0x20,0x45,0xe4]
          vpsrlvd %ymm20, %ymm21, %ymm28

// CHECK: vpsrlvd %ymm20, %ymm21, %ymm28 {%k5}
// CHECK:  encoding: [0x62,0x22,0x55,0x25,0x45,0xe4]
          vpsrlvd %ymm20, %ymm21, %ymm28 {%k5}

// CHECK: vpsrlvd %ymm20, %ymm21, %ymm28 {%k5} {z}
// CHECK:  encoding: [0x62,0x22,0x55,0xa5,0x45,0xe4]
          vpsrlvd %ymm20, %ymm21, %ymm28 {%k5} {z}

// CHECK: vpsrlvd (%rcx), %ymm21, %ymm28
// CHECK:  encoding: [0x62,0x62,0x55,0x20,0x45,0x21]
          vpsrlvd (%rcx), %ymm21, %ymm28

// CHECK: vpsrlvd 291(%rax,%r14,8), %ymm21, %ymm28
// CHECK:  encoding: [0x62,0x22,0x55,0x20,0x45,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpsrlvd 291(%rax,%r14,8), %ymm21, %ymm28

// CHECK: vpsrlvd (%rcx){1to8}, %ymm21, %ymm28
// CHECK:  encoding: [0x62,0x62,0x55,0x30,0x45,0x21]
          vpsrlvd (%rcx){1to8}, %ymm21, %ymm28

// CHECK: vpsrlvd 4064(%rdx), %ymm21, %ymm28
// CHECK:  encoding: [0x62,0x62,0x55,0x20,0x45,0x62,0x7f]
          vpsrlvd 4064(%rdx), %ymm21, %ymm28

// CHECK: vpsrlvd 4096(%rdx), %ymm21, %ymm28
// CHECK:  encoding: [0x62,0x62,0x55,0x20,0x45,0xa2,0x00,0x10,0x00,0x00]
          vpsrlvd 4096(%rdx), %ymm21, %ymm28

// CHECK: vpsrlvd -4096(%rdx), %ymm21, %ymm28
// CHECK:  encoding: [0x62,0x62,0x55,0x20,0x45,0x62,0x80]
          vpsrlvd -4096(%rdx), %ymm21, %ymm28

// CHECK: vpsrlvd -4128(%rdx), %ymm21, %ymm28
// CHECK:  encoding: [0x62,0x62,0x55,0x20,0x45,0xa2,0xe0,0xef,0xff,0xff]
          vpsrlvd -4128(%rdx), %ymm21, %ymm28

// CHECK: vpsrlvd 508(%rdx){1to8}, %ymm21, %ymm28
// CHECK:  encoding: [0x62,0x62,0x55,0x30,0x45,0x62,0x7f]
          vpsrlvd 508(%rdx){1to8}, %ymm21, %ymm28

// CHECK: vpsrlvd 512(%rdx){1to8}, %ymm21, %ymm28
// CHECK:  encoding: [0x62,0x62,0x55,0x30,0x45,0xa2,0x00,0x02,0x00,0x00]
          vpsrlvd 512(%rdx){1to8}, %ymm21, %ymm28

// CHECK: vpsrlvd -512(%rdx){1to8}, %ymm21, %ymm28
// CHECK:  encoding: [0x62,0x62,0x55,0x30,0x45,0x62,0x80]
          vpsrlvd -512(%rdx){1to8}, %ymm21, %ymm28

// CHECK: vpsrlvd -516(%rdx){1to8}, %ymm21, %ymm28
// CHECK:  encoding: [0x62,0x62,0x55,0x30,0x45,0xa2,0xfc,0xfd,0xff,0xff]
          vpsrlvd -516(%rdx){1to8}, %ymm21, %ymm28

// CHECK: vpsrlvq %xmm27, %xmm28, %xmm21
// CHECK:  encoding: [0x62,0x82,0x9d,0x00,0x45,0xeb]
          vpsrlvq %xmm27, %xmm28, %xmm21

// CHECK: vpsrlvq %xmm27, %xmm28, %xmm21 {%k1}
// CHECK:  encoding: [0x62,0x82,0x9d,0x01,0x45,0xeb]
          vpsrlvq %xmm27, %xmm28, %xmm21 {%k1}

// CHECK: vpsrlvq %xmm27, %xmm28, %xmm21 {%k1} {z}
// CHECK:  encoding: [0x62,0x82,0x9d,0x81,0x45,0xeb]
          vpsrlvq %xmm27, %xmm28, %xmm21 {%k1} {z}

// CHECK: vpsrlvq (%rcx), %xmm28, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x9d,0x00,0x45,0x29]
          vpsrlvq (%rcx), %xmm28, %xmm21

// CHECK: vpsrlvq 291(%rax,%r14,8), %xmm28, %xmm21
// CHECK:  encoding: [0x62,0xa2,0x9d,0x00,0x45,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpsrlvq 291(%rax,%r14,8), %xmm28, %xmm21

// CHECK: vpsrlvq (%rcx){1to2}, %xmm28, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x9d,0x10,0x45,0x29]
          vpsrlvq (%rcx){1to2}, %xmm28, %xmm21

// CHECK: vpsrlvq 2032(%rdx), %xmm28, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x9d,0x00,0x45,0x6a,0x7f]
          vpsrlvq 2032(%rdx), %xmm28, %xmm21

// CHECK: vpsrlvq 2048(%rdx), %xmm28, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x9d,0x00,0x45,0xaa,0x00,0x08,0x00,0x00]
          vpsrlvq 2048(%rdx), %xmm28, %xmm21

// CHECK: vpsrlvq -2048(%rdx), %xmm28, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x9d,0x00,0x45,0x6a,0x80]
          vpsrlvq -2048(%rdx), %xmm28, %xmm21

// CHECK: vpsrlvq -2064(%rdx), %xmm28, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x9d,0x00,0x45,0xaa,0xf0,0xf7,0xff,0xff]
          vpsrlvq -2064(%rdx), %xmm28, %xmm21

// CHECK: vpsrlvq 1016(%rdx){1to2}, %xmm28, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x9d,0x10,0x45,0x6a,0x7f]
          vpsrlvq 1016(%rdx){1to2}, %xmm28, %xmm21

// CHECK: vpsrlvq 1024(%rdx){1to2}, %xmm28, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x9d,0x10,0x45,0xaa,0x00,0x04,0x00,0x00]
          vpsrlvq 1024(%rdx){1to2}, %xmm28, %xmm21

// CHECK: vpsrlvq -1024(%rdx){1to2}, %xmm28, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x9d,0x10,0x45,0x6a,0x80]
          vpsrlvq -1024(%rdx){1to2}, %xmm28, %xmm21

// CHECK: vpsrlvq -1032(%rdx){1to2}, %xmm28, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x9d,0x10,0x45,0xaa,0xf8,0xfb,0xff,0xff]
          vpsrlvq -1032(%rdx){1to2}, %xmm28, %xmm21

// CHECK: vpsrlvq %ymm26, %ymm27, %ymm28
// CHECK:  encoding: [0x62,0x02,0xa5,0x20,0x45,0xe2]
          vpsrlvq %ymm26, %ymm27, %ymm28

// CHECK: vpsrlvq %ymm26, %ymm27, %ymm28 {%k7}
// CHECK:  encoding: [0x62,0x02,0xa5,0x27,0x45,0xe2]
          vpsrlvq %ymm26, %ymm27, %ymm28 {%k7}

// CHECK: vpsrlvq %ymm26, %ymm27, %ymm28 {%k7} {z}
// CHECK:  encoding: [0x62,0x02,0xa5,0xa7,0x45,0xe2]
          vpsrlvq %ymm26, %ymm27, %ymm28 {%k7} {z}

// CHECK: vpsrlvq (%rcx), %ymm27, %ymm28
// CHECK:  encoding: [0x62,0x62,0xa5,0x20,0x45,0x21]
          vpsrlvq (%rcx), %ymm27, %ymm28

// CHECK: vpsrlvq 291(%rax,%r14,8), %ymm27, %ymm28
// CHECK:  encoding: [0x62,0x22,0xa5,0x20,0x45,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpsrlvq 291(%rax,%r14,8), %ymm27, %ymm28

// CHECK: vpsrlvq (%rcx){1to4}, %ymm27, %ymm28
// CHECK:  encoding: [0x62,0x62,0xa5,0x30,0x45,0x21]
          vpsrlvq (%rcx){1to4}, %ymm27, %ymm28

// CHECK: vpsrlvq 4064(%rdx), %ymm27, %ymm28
// CHECK:  encoding: [0x62,0x62,0xa5,0x20,0x45,0x62,0x7f]
          vpsrlvq 4064(%rdx), %ymm27, %ymm28

// CHECK: vpsrlvq 4096(%rdx), %ymm27, %ymm28
// CHECK:  encoding: [0x62,0x62,0xa5,0x20,0x45,0xa2,0x00,0x10,0x00,0x00]
          vpsrlvq 4096(%rdx), %ymm27, %ymm28

// CHECK: vpsrlvq -4096(%rdx), %ymm27, %ymm28
// CHECK:  encoding: [0x62,0x62,0xa5,0x20,0x45,0x62,0x80]
          vpsrlvq -4096(%rdx), %ymm27, %ymm28

// CHECK: vpsrlvq -4128(%rdx), %ymm27, %ymm28
// CHECK:  encoding: [0x62,0x62,0xa5,0x20,0x45,0xa2,0xe0,0xef,0xff,0xff]
          vpsrlvq -4128(%rdx), %ymm27, %ymm28

// CHECK: vpsrlvq 1016(%rdx){1to4}, %ymm27, %ymm28
// CHECK:  encoding: [0x62,0x62,0xa5,0x30,0x45,0x62,0x7f]
          vpsrlvq 1016(%rdx){1to4}, %ymm27, %ymm28

// CHECK: vpsrlvq 1024(%rdx){1to4}, %ymm27, %ymm28
// CHECK:  encoding: [0x62,0x62,0xa5,0x30,0x45,0xa2,0x00,0x04,0x00,0x00]
          vpsrlvq 1024(%rdx){1to4}, %ymm27, %ymm28

// CHECK: vpsrlvq -1024(%rdx){1to4}, %ymm27, %ymm28
// CHECK:  encoding: [0x62,0x62,0xa5,0x30,0x45,0x62,0x80]
          vpsrlvq -1024(%rdx){1to4}, %ymm27, %ymm28

// CHECK: vpsrlvq -1032(%rdx){1to4}, %ymm27, %ymm28
// CHECK:  encoding: [0x62,0x62,0xa5,0x30,0x45,0xa2,0xf8,0xfb,0xff,0xff]
          vpsrlvq -1032(%rdx){1to4}, %ymm27, %ymm28

// CHECK: vpsrld $171, %xmm23, %xmm30
// CHECK:  encoding: [0x62,0xb1,0x0d,0x00,0x72,0xd7,0xab]
          vpsrld $171, %xmm23, %xmm30

// CHECK: vpsrld $171, %xmm23, %xmm30 {%k3}
// CHECK:  encoding: [0x62,0xb1,0x0d,0x03,0x72,0xd7,0xab]
          vpsrld $171, %xmm23, %xmm30 {%k3}

// CHECK: vpsrld $171, %xmm23, %xmm30 {%k3} {z}
// CHECK:  encoding: [0x62,0xb1,0x0d,0x83,0x72,0xd7,0xab]
          vpsrld $171, %xmm23, %xmm30 {%k3} {z}

// CHECK: vpsrld $123, %xmm23, %xmm30
// CHECK:  encoding: [0x62,0xb1,0x0d,0x00,0x72,0xd7,0x7b]
          vpsrld $123, %xmm23, %xmm30

// CHECK: vpsrld $123, (%rcx), %xmm30
// CHECK:  encoding: [0x62,0xf1,0x0d,0x00,0x72,0x11,0x7b]
          vpsrld $123, (%rcx), %xmm30

// CHECK: vpsrld $123, 291(%rax,%r14,8), %xmm30
// CHECK:  encoding: [0x62,0xb1,0x0d,0x00,0x72,0x94,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpsrld $123, 291(%rax,%r14,8), %xmm30

// CHECK: vpsrld $123, (%rcx){1to4}, %xmm30
// CHECK:  encoding: [0x62,0xf1,0x0d,0x10,0x72,0x11,0x7b]
          vpsrld $123, (%rcx){1to4}, %xmm30

// CHECK: vpsrld $123, 2032(%rdx), %xmm30
// CHECK:  encoding: [0x62,0xf1,0x0d,0x00,0x72,0x52,0x7f,0x7b]
          vpsrld $123, 2032(%rdx), %xmm30

// CHECK: vpsrld $123, 2048(%rdx), %xmm30
// CHECK:  encoding: [0x62,0xf1,0x0d,0x00,0x72,0x92,0x00,0x08,0x00,0x00,0x7b]
          vpsrld $123, 2048(%rdx), %xmm30

// CHECK: vpsrld $123, -2048(%rdx), %xmm30
// CHECK:  encoding: [0x62,0xf1,0x0d,0x00,0x72,0x52,0x80,0x7b]
          vpsrld $123, -2048(%rdx), %xmm30

// CHECK: vpsrld $123, -2064(%rdx), %xmm30
// CHECK:  encoding: [0x62,0xf1,0x0d,0x00,0x72,0x92,0xf0,0xf7,0xff,0xff,0x7b]
          vpsrld $123, -2064(%rdx), %xmm30

// CHECK: vpsrld $123, 508(%rdx){1to4}, %xmm30
// CHECK:  encoding: [0x62,0xf1,0x0d,0x10,0x72,0x52,0x7f,0x7b]
          vpsrld $123, 508(%rdx){1to4}, %xmm30

// CHECK: vpsrld $123, 512(%rdx){1to4}, %xmm30
// CHECK:  encoding: [0x62,0xf1,0x0d,0x10,0x72,0x92,0x00,0x02,0x00,0x00,0x7b]
          vpsrld $123, 512(%rdx){1to4}, %xmm30

// CHECK: vpsrld $123, -512(%rdx){1to4}, %xmm30
// CHECK:  encoding: [0x62,0xf1,0x0d,0x10,0x72,0x52,0x80,0x7b]
          vpsrld $123, -512(%rdx){1to4}, %xmm30

// CHECK: vpsrld $123, -516(%rdx){1to4}, %xmm30
// CHECK:  encoding: [0x62,0xf1,0x0d,0x10,0x72,0x92,0xfc,0xfd,0xff,0xff,0x7b]
          vpsrld $123, -516(%rdx){1to4}, %xmm30

// CHECK: vpsrld $171, %ymm24, %ymm22
// CHECK:  encoding: [0x62,0x91,0x4d,0x20,0x72,0xd0,0xab]
          vpsrld $171, %ymm24, %ymm22

// CHECK: vpsrld $171, %ymm24, %ymm22 {%k2}
// CHECK:  encoding: [0x62,0x91,0x4d,0x22,0x72,0xd0,0xab]
          vpsrld $171, %ymm24, %ymm22 {%k2}

// CHECK: vpsrld $171, %ymm24, %ymm22 {%k2} {z}
// CHECK:  encoding: [0x62,0x91,0x4d,0xa2,0x72,0xd0,0xab]
          vpsrld $171, %ymm24, %ymm22 {%k2} {z}

// CHECK: vpsrld $123, %ymm24, %ymm22
// CHECK:  encoding: [0x62,0x91,0x4d,0x20,0x72,0xd0,0x7b]
          vpsrld $123, %ymm24, %ymm22

// CHECK: vpsrld $123, (%rcx), %ymm22
// CHECK:  encoding: [0x62,0xf1,0x4d,0x20,0x72,0x11,0x7b]
          vpsrld $123, (%rcx), %ymm22

// CHECK: vpsrld $123, 291(%rax,%r14,8), %ymm22
// CHECK:  encoding: [0x62,0xb1,0x4d,0x20,0x72,0x94,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpsrld $123, 291(%rax,%r14,8), %ymm22

// CHECK: vpsrld $123, (%rcx){1to8}, %ymm22
// CHECK:  encoding: [0x62,0xf1,0x4d,0x30,0x72,0x11,0x7b]
          vpsrld $123, (%rcx){1to8}, %ymm22

// CHECK: vpsrld $123, 4064(%rdx), %ymm22
// CHECK:  encoding: [0x62,0xf1,0x4d,0x20,0x72,0x52,0x7f,0x7b]
          vpsrld $123, 4064(%rdx), %ymm22

// CHECK: vpsrld $123, 4096(%rdx), %ymm22
// CHECK:  encoding: [0x62,0xf1,0x4d,0x20,0x72,0x92,0x00,0x10,0x00,0x00,0x7b]
          vpsrld $123, 4096(%rdx), %ymm22

// CHECK: vpsrld $123, -4096(%rdx), %ymm22
// CHECK:  encoding: [0x62,0xf1,0x4d,0x20,0x72,0x52,0x80,0x7b]
          vpsrld $123, -4096(%rdx), %ymm22

// CHECK: vpsrld $123, -4128(%rdx), %ymm22
// CHECK:  encoding: [0x62,0xf1,0x4d,0x20,0x72,0x92,0xe0,0xef,0xff,0xff,0x7b]
          vpsrld $123, -4128(%rdx), %ymm22

// CHECK: vpsrld $123, 508(%rdx){1to8}, %ymm22
// CHECK:  encoding: [0x62,0xf1,0x4d,0x30,0x72,0x52,0x7f,0x7b]
          vpsrld $123, 508(%rdx){1to8}, %ymm22

// CHECK: vpsrld $123, 512(%rdx){1to8}, %ymm22
// CHECK:  encoding: [0x62,0xf1,0x4d,0x30,0x72,0x92,0x00,0x02,0x00,0x00,0x7b]
          vpsrld $123, 512(%rdx){1to8}, %ymm22

// CHECK: vpsrld $123, -512(%rdx){1to8}, %ymm22
// CHECK:  encoding: [0x62,0xf1,0x4d,0x30,0x72,0x52,0x80,0x7b]
          vpsrld $123, -512(%rdx){1to8}, %ymm22

// CHECK: vpsrld $123, -516(%rdx){1to8}, %ymm22
// CHECK:  encoding: [0x62,0xf1,0x4d,0x30,0x72,0x92,0xfc,0xfd,0xff,0xff,0x7b]
          vpsrld $123, -516(%rdx){1to8}, %ymm22

// CHECK: vpsrlq $171, %xmm24, %xmm17
// CHECK:  encoding: [0x62,0x91,0xf5,0x00,0x73,0xd0,0xab]
          vpsrlq $171, %xmm24, %xmm17

// CHECK: vpsrlq $171, %xmm24, %xmm17 {%k6}
// CHECK:  encoding: [0x62,0x91,0xf5,0x06,0x73,0xd0,0xab]
          vpsrlq $171, %xmm24, %xmm17 {%k6}

// CHECK: vpsrlq $171, %xmm24, %xmm17 {%k6} {z}
// CHECK:  encoding: [0x62,0x91,0xf5,0x86,0x73,0xd0,0xab]
          vpsrlq $171, %xmm24, %xmm17 {%k6} {z}

// CHECK: vpsrlq $123, %xmm24, %xmm17
// CHECK:  encoding: [0x62,0x91,0xf5,0x00,0x73,0xd0,0x7b]
          vpsrlq $123, %xmm24, %xmm17

// CHECK: vpsrlq $123, (%rcx), %xmm17
// CHECK:  encoding: [0x62,0xf1,0xf5,0x00,0x73,0x11,0x7b]
          vpsrlq $123, (%rcx), %xmm17

// CHECK: vpsrlq $123, 291(%rax,%r14,8), %xmm17
// CHECK:  encoding: [0x62,0xb1,0xf5,0x00,0x73,0x94,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpsrlq $123, 291(%rax,%r14,8), %xmm17

// CHECK: vpsrlq $123, (%rcx){1to2}, %xmm17
// CHECK:  encoding: [0x62,0xf1,0xf5,0x10,0x73,0x11,0x7b]
          vpsrlq $123, (%rcx){1to2}, %xmm17

// CHECK: vpsrlq $123, 2032(%rdx), %xmm17
// CHECK:  encoding: [0x62,0xf1,0xf5,0x00,0x73,0x52,0x7f,0x7b]
          vpsrlq $123, 2032(%rdx), %xmm17

// CHECK: vpsrlq $123, 2048(%rdx), %xmm17
// CHECK:  encoding: [0x62,0xf1,0xf5,0x00,0x73,0x92,0x00,0x08,0x00,0x00,0x7b]
          vpsrlq $123, 2048(%rdx), %xmm17

// CHECK: vpsrlq $123, -2048(%rdx), %xmm17
// CHECK:  encoding: [0x62,0xf1,0xf5,0x00,0x73,0x52,0x80,0x7b]
          vpsrlq $123, -2048(%rdx), %xmm17

// CHECK: vpsrlq $123, -2064(%rdx), %xmm17
// CHECK:  encoding: [0x62,0xf1,0xf5,0x00,0x73,0x92,0xf0,0xf7,0xff,0xff,0x7b]
          vpsrlq $123, -2064(%rdx), %xmm17

// CHECK: vpsrlq $123, 1016(%rdx){1to2}, %xmm17
// CHECK:  encoding: [0x62,0xf1,0xf5,0x10,0x73,0x52,0x7f,0x7b]
          vpsrlq $123, 1016(%rdx){1to2}, %xmm17

// CHECK: vpsrlq $123, 1024(%rdx){1to2}, %xmm17
// CHECK:  encoding: [0x62,0xf1,0xf5,0x10,0x73,0x92,0x00,0x04,0x00,0x00,0x7b]
          vpsrlq $123, 1024(%rdx){1to2}, %xmm17

// CHECK: vpsrlq $123, -1024(%rdx){1to2}, %xmm17
// CHECK:  encoding: [0x62,0xf1,0xf5,0x10,0x73,0x52,0x80,0x7b]
          vpsrlq $123, -1024(%rdx){1to2}, %xmm17

// CHECK: vpsrlq $123, -1032(%rdx){1to2}, %xmm17
// CHECK:  encoding: [0x62,0xf1,0xf5,0x10,0x73,0x92,0xf8,0xfb,0xff,0xff,0x7b]
          vpsrlq $123, -1032(%rdx){1to2}, %xmm17

// CHECK: vpsrlq $171, %ymm27, %ymm29
// CHECK:  encoding: [0x62,0x91,0x95,0x20,0x73,0xd3,0xab]
          vpsrlq $171, %ymm27, %ymm29

// CHECK: vpsrlq $171, %ymm27, %ymm29 {%k3}
// CHECK:  encoding: [0x62,0x91,0x95,0x23,0x73,0xd3,0xab]
          vpsrlq $171, %ymm27, %ymm29 {%k3}

// CHECK: vpsrlq $171, %ymm27, %ymm29 {%k3} {z}
// CHECK:  encoding: [0x62,0x91,0x95,0xa3,0x73,0xd3,0xab]
          vpsrlq $171, %ymm27, %ymm29 {%k3} {z}

// CHECK: vpsrlq $123, %ymm27, %ymm29
// CHECK:  encoding: [0x62,0x91,0x95,0x20,0x73,0xd3,0x7b]
          vpsrlq $123, %ymm27, %ymm29

// CHECK: vpsrlq $123, (%rcx), %ymm29
// CHECK:  encoding: [0x62,0xf1,0x95,0x20,0x73,0x11,0x7b]
          vpsrlq $123, (%rcx), %ymm29

// CHECK: vpsrlq $123, 291(%rax,%r14,8), %ymm29
// CHECK:  encoding: [0x62,0xb1,0x95,0x20,0x73,0x94,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpsrlq $123, 291(%rax,%r14,8), %ymm29

// CHECK: vpsrlq $123, (%rcx){1to4}, %ymm29
// CHECK:  encoding: [0x62,0xf1,0x95,0x30,0x73,0x11,0x7b]
          vpsrlq $123, (%rcx){1to4}, %ymm29

// CHECK: vpsrlq $123, 4064(%rdx), %ymm29
// CHECK:  encoding: [0x62,0xf1,0x95,0x20,0x73,0x52,0x7f,0x7b]
          vpsrlq $123, 4064(%rdx), %ymm29

// CHECK: vpsrlq $123, 4096(%rdx), %ymm29
// CHECK:  encoding: [0x62,0xf1,0x95,0x20,0x73,0x92,0x00,0x10,0x00,0x00,0x7b]
          vpsrlq $123, 4096(%rdx), %ymm29

// CHECK: vpsrlq $123, -4096(%rdx), %ymm29
// CHECK:  encoding: [0x62,0xf1,0x95,0x20,0x73,0x52,0x80,0x7b]
          vpsrlq $123, -4096(%rdx), %ymm29

// CHECK: vpsrlq $123, -4128(%rdx), %ymm29
// CHECK:  encoding: [0x62,0xf1,0x95,0x20,0x73,0x92,0xe0,0xef,0xff,0xff,0x7b]
          vpsrlq $123, -4128(%rdx), %ymm29

// CHECK: vpsrlq $123, 1016(%rdx){1to4}, %ymm29
// CHECK:  encoding: [0x62,0xf1,0x95,0x30,0x73,0x52,0x7f,0x7b]
          vpsrlq $123, 1016(%rdx){1to4}, %ymm29

// CHECK: vpsrlq $123, 1024(%rdx){1to4}, %ymm29
// CHECK:  encoding: [0x62,0xf1,0x95,0x30,0x73,0x92,0x00,0x04,0x00,0x00,0x7b]
          vpsrlq $123, 1024(%rdx){1to4}, %ymm29

// CHECK: vpsrlq $123, -1024(%rdx){1to4}, %ymm29
// CHECK:  encoding: [0x62,0xf1,0x95,0x30,0x73,0x52,0x80,0x7b]
          vpsrlq $123, -1024(%rdx){1to4}, %ymm29

// CHECK: vpsrlq $123, -1032(%rdx){1to4}, %ymm29
// CHECK:  encoding: [0x62,0xf1,0x95,0x30,0x73,0x92,0xf8,0xfb,0xff,0xff,0x7b]
          vpsrlq $123, -1032(%rdx){1to4}, %ymm29

// CHECK: vprolvd %xmm20, %xmm20, %xmm30
// CHECK:  encoding: [0x62,0x22,0x5d,0x00,0x15,0xf4]
          vprolvd %xmm20, %xmm20, %xmm30

// CHECK: vprolvd %xmm20, %xmm20, %xmm30 {%k2}
// CHECK:  encoding: [0x62,0x22,0x5d,0x02,0x15,0xf4]
          vprolvd %xmm20, %xmm20, %xmm30 {%k2}

// CHECK: vprolvd %xmm20, %xmm20, %xmm30 {%k2} {z}
// CHECK:  encoding: [0x62,0x22,0x5d,0x82,0x15,0xf4]
          vprolvd %xmm20, %xmm20, %xmm30 {%k2} {z}

// CHECK: vprolvd (%rcx), %xmm20, %xmm30
// CHECK:  encoding: [0x62,0x62,0x5d,0x00,0x15,0x31]
          vprolvd (%rcx), %xmm20, %xmm30

// CHECK: vprolvd 291(%rax,%r14,8), %xmm20, %xmm30
// CHECK:  encoding: [0x62,0x22,0x5d,0x00,0x15,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vprolvd 291(%rax,%r14,8), %xmm20, %xmm30

// CHECK: vprolvd (%rcx){1to4}, %xmm20, %xmm30
// CHECK:  encoding: [0x62,0x62,0x5d,0x10,0x15,0x31]
          vprolvd (%rcx){1to4}, %xmm20, %xmm30

// CHECK: vprolvd 2032(%rdx), %xmm20, %xmm30
// CHECK:  encoding: [0x62,0x62,0x5d,0x00,0x15,0x72,0x7f]
          vprolvd 2032(%rdx), %xmm20, %xmm30

// CHECK: vprolvd 2048(%rdx), %xmm20, %xmm30
// CHECK:  encoding: [0x62,0x62,0x5d,0x00,0x15,0xb2,0x00,0x08,0x00,0x00]
          vprolvd 2048(%rdx), %xmm20, %xmm30

// CHECK: vprolvd -2048(%rdx), %xmm20, %xmm30
// CHECK:  encoding: [0x62,0x62,0x5d,0x00,0x15,0x72,0x80]
          vprolvd -2048(%rdx), %xmm20, %xmm30

// CHECK: vprolvd -2064(%rdx), %xmm20, %xmm30
// CHECK:  encoding: [0x62,0x62,0x5d,0x00,0x15,0xb2,0xf0,0xf7,0xff,0xff]
          vprolvd -2064(%rdx), %xmm20, %xmm30

// CHECK: vprolvd 508(%rdx){1to4}, %xmm20, %xmm30
// CHECK:  encoding: [0x62,0x62,0x5d,0x10,0x15,0x72,0x7f]
          vprolvd 508(%rdx){1to4}, %xmm20, %xmm30

// CHECK: vprolvd 512(%rdx){1to4}, %xmm20, %xmm30
// CHECK:  encoding: [0x62,0x62,0x5d,0x10,0x15,0xb2,0x00,0x02,0x00,0x00]
          vprolvd 512(%rdx){1to4}, %xmm20, %xmm30

// CHECK: vprolvd -512(%rdx){1to4}, %xmm20, %xmm30
// CHECK:  encoding: [0x62,0x62,0x5d,0x10,0x15,0x72,0x80]
          vprolvd -512(%rdx){1to4}, %xmm20, %xmm30

// CHECK: vprolvd -516(%rdx){1to4}, %xmm20, %xmm30
// CHECK:  encoding: [0x62,0x62,0x5d,0x10,0x15,0xb2,0xfc,0xfd,0xff,0xff]
          vprolvd -516(%rdx){1to4}, %xmm20, %xmm30

// CHECK: vprolvd %ymm19, %ymm23, %ymm26
// CHECK:  encoding: [0x62,0x22,0x45,0x20,0x15,0xd3]
          vprolvd %ymm19, %ymm23, %ymm26

// CHECK: vprolvd %ymm19, %ymm23, %ymm26 {%k1}
// CHECK:  encoding: [0x62,0x22,0x45,0x21,0x15,0xd3]
          vprolvd %ymm19, %ymm23, %ymm26 {%k1}

// CHECK: vprolvd %ymm19, %ymm23, %ymm26 {%k1} {z}
// CHECK:  encoding: [0x62,0x22,0x45,0xa1,0x15,0xd3]
          vprolvd %ymm19, %ymm23, %ymm26 {%k1} {z}

// CHECK: vprolvd (%rcx), %ymm23, %ymm26
// CHECK:  encoding: [0x62,0x62,0x45,0x20,0x15,0x11]
          vprolvd (%rcx), %ymm23, %ymm26

// CHECK: vprolvd 291(%rax,%r14,8), %ymm23, %ymm26
// CHECK:  encoding: [0x62,0x22,0x45,0x20,0x15,0x94,0xf0,0x23,0x01,0x00,0x00]
          vprolvd 291(%rax,%r14,8), %ymm23, %ymm26

// CHECK: vprolvd (%rcx){1to8}, %ymm23, %ymm26
// CHECK:  encoding: [0x62,0x62,0x45,0x30,0x15,0x11]
          vprolvd (%rcx){1to8}, %ymm23, %ymm26

// CHECK: vprolvd 4064(%rdx), %ymm23, %ymm26
// CHECK:  encoding: [0x62,0x62,0x45,0x20,0x15,0x52,0x7f]
          vprolvd 4064(%rdx), %ymm23, %ymm26

// CHECK: vprolvd 4096(%rdx), %ymm23, %ymm26
// CHECK:  encoding: [0x62,0x62,0x45,0x20,0x15,0x92,0x00,0x10,0x00,0x00]
          vprolvd 4096(%rdx), %ymm23, %ymm26

// CHECK: vprolvd -4096(%rdx), %ymm23, %ymm26
// CHECK:  encoding: [0x62,0x62,0x45,0x20,0x15,0x52,0x80]
          vprolvd -4096(%rdx), %ymm23, %ymm26

// CHECK: vprolvd -4128(%rdx), %ymm23, %ymm26
// CHECK:  encoding: [0x62,0x62,0x45,0x20,0x15,0x92,0xe0,0xef,0xff,0xff]
          vprolvd -4128(%rdx), %ymm23, %ymm26

// CHECK: vprolvd 508(%rdx){1to8}, %ymm23, %ymm26
// CHECK:  encoding: [0x62,0x62,0x45,0x30,0x15,0x52,0x7f]
          vprolvd 508(%rdx){1to8}, %ymm23, %ymm26

// CHECK: vprolvd 512(%rdx){1to8}, %ymm23, %ymm26
// CHECK:  encoding: [0x62,0x62,0x45,0x30,0x15,0x92,0x00,0x02,0x00,0x00]
          vprolvd 512(%rdx){1to8}, %ymm23, %ymm26

// CHECK: vprolvd -512(%rdx){1to8}, %ymm23, %ymm26
// CHECK:  encoding: [0x62,0x62,0x45,0x30,0x15,0x52,0x80]
          vprolvd -512(%rdx){1to8}, %ymm23, %ymm26

// CHECK: vprolvd -516(%rdx){1to8}, %ymm23, %ymm26
// CHECK:  encoding: [0x62,0x62,0x45,0x30,0x15,0x92,0xfc,0xfd,0xff,0xff]
          vprolvd -516(%rdx){1to8}, %ymm23, %ymm26

// CHECK: vprold $171, %xmm23, %xmm18
// CHECK:  encoding: [0x62,0xb1,0x6d,0x00,0x72,0xcf,0xab]
          vprold $171, %xmm23, %xmm18

// CHECK: vprold $171, %xmm23, %xmm18 {%k3}
// CHECK:  encoding: [0x62,0xb1,0x6d,0x03,0x72,0xcf,0xab]
          vprold $171, %xmm23, %xmm18 {%k3}

// CHECK: vprold $171, %xmm23, %xmm18 {%k3} {z}
// CHECK:  encoding: [0x62,0xb1,0x6d,0x83,0x72,0xcf,0xab]
          vprold $171, %xmm23, %xmm18 {%k3} {z}

// CHECK: vprold $123, %xmm23, %xmm18
// CHECK:  encoding: [0x62,0xb1,0x6d,0x00,0x72,0xcf,0x7b]
          vprold $123, %xmm23, %xmm18

// CHECK: vprold $123, (%rcx), %xmm18
// CHECK:  encoding: [0x62,0xf1,0x6d,0x00,0x72,0x09,0x7b]
          vprold $123, (%rcx), %xmm18

// CHECK: vprold $123, 291(%rax,%r14,8), %xmm18
// CHECK:  encoding: [0x62,0xb1,0x6d,0x00,0x72,0x8c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vprold $123, 291(%rax,%r14,8), %xmm18

// CHECK: vprold $123, (%rcx){1to4}, %xmm18
// CHECK:  encoding: [0x62,0xf1,0x6d,0x10,0x72,0x09,0x7b]
          vprold $123, (%rcx){1to4}, %xmm18

// CHECK: vprold $123, 2032(%rdx), %xmm18
// CHECK:  encoding: [0x62,0xf1,0x6d,0x00,0x72,0x4a,0x7f,0x7b]
          vprold $123, 2032(%rdx), %xmm18

// CHECK: vprold $123, 2048(%rdx), %xmm18
// CHECK:  encoding: [0x62,0xf1,0x6d,0x00,0x72,0x8a,0x00,0x08,0x00,0x00,0x7b]
          vprold $123, 2048(%rdx), %xmm18

// CHECK: vprold $123, -2048(%rdx), %xmm18
// CHECK:  encoding: [0x62,0xf1,0x6d,0x00,0x72,0x4a,0x80,0x7b]
          vprold $123, -2048(%rdx), %xmm18

// CHECK: vprold $123, -2064(%rdx), %xmm18
// CHECK:  encoding: [0x62,0xf1,0x6d,0x00,0x72,0x8a,0xf0,0xf7,0xff,0xff,0x7b]
          vprold $123, -2064(%rdx), %xmm18

// CHECK: vprold $123, 508(%rdx){1to4}, %xmm18
// CHECK:  encoding: [0x62,0xf1,0x6d,0x10,0x72,0x4a,0x7f,0x7b]
          vprold $123, 508(%rdx){1to4}, %xmm18

// CHECK: vprold $123, 512(%rdx){1to4}, %xmm18
// CHECK:  encoding: [0x62,0xf1,0x6d,0x10,0x72,0x8a,0x00,0x02,0x00,0x00,0x7b]
          vprold $123, 512(%rdx){1to4}, %xmm18

// CHECK: vprold $123, -512(%rdx){1to4}, %xmm18
// CHECK:  encoding: [0x62,0xf1,0x6d,0x10,0x72,0x4a,0x80,0x7b]
          vprold $123, -512(%rdx){1to4}, %xmm18

// CHECK: vprold $123, -516(%rdx){1to4}, %xmm18
// CHECK:  encoding: [0x62,0xf1,0x6d,0x10,0x72,0x8a,0xfc,0xfd,0xff,0xff,0x7b]
          vprold $123, -516(%rdx){1to4}, %xmm18

// CHECK: vprold $171, %ymm19, %ymm29
// CHECK:  encoding: [0x62,0xb1,0x15,0x20,0x72,0xcb,0xab]
          vprold $171, %ymm19, %ymm29

// CHECK: vprold $171, %ymm19, %ymm29 {%k1}
// CHECK:  encoding: [0x62,0xb1,0x15,0x21,0x72,0xcb,0xab]
          vprold $171, %ymm19, %ymm29 {%k1}

// CHECK: vprold $171, %ymm19, %ymm29 {%k1} {z}
// CHECK:  encoding: [0x62,0xb1,0x15,0xa1,0x72,0xcb,0xab]
          vprold $171, %ymm19, %ymm29 {%k1} {z}

// CHECK: vprold $123, %ymm19, %ymm29
// CHECK:  encoding: [0x62,0xb1,0x15,0x20,0x72,0xcb,0x7b]
          vprold $123, %ymm19, %ymm29

// CHECK: vprold $123, (%rcx), %ymm29
// CHECK:  encoding: [0x62,0xf1,0x15,0x20,0x72,0x09,0x7b]
          vprold $123, (%rcx), %ymm29

// CHECK: vprold $123, 291(%rax,%r14,8), %ymm29
// CHECK:  encoding: [0x62,0xb1,0x15,0x20,0x72,0x8c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vprold $123, 291(%rax,%r14,8), %ymm29

// CHECK: vprold $123, (%rcx){1to8}, %ymm29
// CHECK:  encoding: [0x62,0xf1,0x15,0x30,0x72,0x09,0x7b]
          vprold $123, (%rcx){1to8}, %ymm29

// CHECK: vprold $123, 4064(%rdx), %ymm29
// CHECK:  encoding: [0x62,0xf1,0x15,0x20,0x72,0x4a,0x7f,0x7b]
          vprold $123, 4064(%rdx), %ymm29

// CHECK: vprold $123, 4096(%rdx), %ymm29
// CHECK:  encoding: [0x62,0xf1,0x15,0x20,0x72,0x8a,0x00,0x10,0x00,0x00,0x7b]
          vprold $123, 4096(%rdx), %ymm29

// CHECK: vprold $123, -4096(%rdx), %ymm29
// CHECK:  encoding: [0x62,0xf1,0x15,0x20,0x72,0x4a,0x80,0x7b]
          vprold $123, -4096(%rdx), %ymm29

// CHECK: vprold $123, -4128(%rdx), %ymm29
// CHECK:  encoding: [0x62,0xf1,0x15,0x20,0x72,0x8a,0xe0,0xef,0xff,0xff,0x7b]
          vprold $123, -4128(%rdx), %ymm29

// CHECK: vprold $123, 508(%rdx){1to8}, %ymm29
// CHECK:  encoding: [0x62,0xf1,0x15,0x30,0x72,0x4a,0x7f,0x7b]
          vprold $123, 508(%rdx){1to8}, %ymm29

// CHECK: vprold $123, 512(%rdx){1to8}, %ymm29
// CHECK:  encoding: [0x62,0xf1,0x15,0x30,0x72,0x8a,0x00,0x02,0x00,0x00,0x7b]
          vprold $123, 512(%rdx){1to8}, %ymm29

// CHECK: vprold $123, -512(%rdx){1to8}, %ymm29
// CHECK:  encoding: [0x62,0xf1,0x15,0x30,0x72,0x4a,0x80,0x7b]
          vprold $123, -512(%rdx){1to8}, %ymm29

// CHECK: vprold $123, -516(%rdx){1to8}, %ymm29
// CHECK:  encoding: [0x62,0xf1,0x15,0x30,0x72,0x8a,0xfc,0xfd,0xff,0xff,0x7b]
          vprold $123, -516(%rdx){1to8}, %ymm29

// CHECK: vprolvq %xmm17, %xmm22, %xmm25
// CHECK:  encoding: [0x62,0x22,0xcd,0x00,0x15,0xc9]
          vprolvq %xmm17, %xmm22, %xmm25

// CHECK: vprolvq %xmm17, %xmm22, %xmm25 {%k5}
// CHECK:  encoding: [0x62,0x22,0xcd,0x05,0x15,0xc9]
          vprolvq %xmm17, %xmm22, %xmm25 {%k5}

// CHECK: vprolvq %xmm17, %xmm22, %xmm25 {%k5} {z}
// CHECK:  encoding: [0x62,0x22,0xcd,0x85,0x15,0xc9]
          vprolvq %xmm17, %xmm22, %xmm25 {%k5} {z}

// CHECK: vprolvq (%rcx), %xmm22, %xmm25
// CHECK:  encoding: [0x62,0x62,0xcd,0x00,0x15,0x09]
          vprolvq (%rcx), %xmm22, %xmm25

// CHECK: vprolvq 291(%rax,%r14,8), %xmm22, %xmm25
// CHECK:  encoding: [0x62,0x22,0xcd,0x00,0x15,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vprolvq 291(%rax,%r14,8), %xmm22, %xmm25

// CHECK: vprolvq (%rcx){1to2}, %xmm22, %xmm25
// CHECK:  encoding: [0x62,0x62,0xcd,0x10,0x15,0x09]
          vprolvq (%rcx){1to2}, %xmm22, %xmm25

// CHECK: vprolvq 2032(%rdx), %xmm22, %xmm25
// CHECK:  encoding: [0x62,0x62,0xcd,0x00,0x15,0x4a,0x7f]
          vprolvq 2032(%rdx), %xmm22, %xmm25

// CHECK: vprolvq 2048(%rdx), %xmm22, %xmm25
// CHECK:  encoding: [0x62,0x62,0xcd,0x00,0x15,0x8a,0x00,0x08,0x00,0x00]
          vprolvq 2048(%rdx), %xmm22, %xmm25

// CHECK: vprolvq -2048(%rdx), %xmm22, %xmm25
// CHECK:  encoding: [0x62,0x62,0xcd,0x00,0x15,0x4a,0x80]
          vprolvq -2048(%rdx), %xmm22, %xmm25

// CHECK: vprolvq -2064(%rdx), %xmm22, %xmm25
// CHECK:  encoding: [0x62,0x62,0xcd,0x00,0x15,0x8a,0xf0,0xf7,0xff,0xff]
          vprolvq -2064(%rdx), %xmm22, %xmm25

// CHECK: vprolvq 1016(%rdx){1to2}, %xmm22, %xmm25
// CHECK:  encoding: [0x62,0x62,0xcd,0x10,0x15,0x4a,0x7f]
          vprolvq 1016(%rdx){1to2}, %xmm22, %xmm25

// CHECK: vprolvq 1024(%rdx){1to2}, %xmm22, %xmm25
// CHECK:  encoding: [0x62,0x62,0xcd,0x10,0x15,0x8a,0x00,0x04,0x00,0x00]
          vprolvq 1024(%rdx){1to2}, %xmm22, %xmm25

// CHECK: vprolvq -1024(%rdx){1to2}, %xmm22, %xmm25
// CHECK:  encoding: [0x62,0x62,0xcd,0x10,0x15,0x4a,0x80]
          vprolvq -1024(%rdx){1to2}, %xmm22, %xmm25

// CHECK: vprolvq -1032(%rdx){1to2}, %xmm22, %xmm25
// CHECK:  encoding: [0x62,0x62,0xcd,0x10,0x15,0x8a,0xf8,0xfb,0xff,0xff]
          vprolvq -1032(%rdx){1to2}, %xmm22, %xmm25

// CHECK: vprolvq %ymm28, %ymm17, %ymm17
// CHECK:  encoding: [0x62,0x82,0xf5,0x20,0x15,0xcc]
          vprolvq %ymm28, %ymm17, %ymm17

// CHECK: vprolvq %ymm28, %ymm17, %ymm17 {%k3}
// CHECK:  encoding: [0x62,0x82,0xf5,0x23,0x15,0xcc]
          vprolvq %ymm28, %ymm17, %ymm17 {%k3}

// CHECK: vprolvq %ymm28, %ymm17, %ymm17 {%k3} {z}
// CHECK:  encoding: [0x62,0x82,0xf5,0xa3,0x15,0xcc]
          vprolvq %ymm28, %ymm17, %ymm17 {%k3} {z}

// CHECK: vprolvq (%rcx), %ymm17, %ymm17
// CHECK:  encoding: [0x62,0xe2,0xf5,0x20,0x15,0x09]
          vprolvq (%rcx), %ymm17, %ymm17

// CHECK: vprolvq 291(%rax,%r14,8), %ymm17, %ymm17
// CHECK:  encoding: [0x62,0xa2,0xf5,0x20,0x15,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vprolvq 291(%rax,%r14,8), %ymm17, %ymm17

// CHECK: vprolvq (%rcx){1to4}, %ymm17, %ymm17
// CHECK:  encoding: [0x62,0xe2,0xf5,0x30,0x15,0x09]
          vprolvq (%rcx){1to4}, %ymm17, %ymm17

// CHECK: vprolvq 4064(%rdx), %ymm17, %ymm17
// CHECK:  encoding: [0x62,0xe2,0xf5,0x20,0x15,0x4a,0x7f]
          vprolvq 4064(%rdx), %ymm17, %ymm17

// CHECK: vprolvq 4096(%rdx), %ymm17, %ymm17
// CHECK:  encoding: [0x62,0xe2,0xf5,0x20,0x15,0x8a,0x00,0x10,0x00,0x00]
          vprolvq 4096(%rdx), %ymm17, %ymm17

// CHECK: vprolvq -4096(%rdx), %ymm17, %ymm17
// CHECK:  encoding: [0x62,0xe2,0xf5,0x20,0x15,0x4a,0x80]
          vprolvq -4096(%rdx), %ymm17, %ymm17

// CHECK: vprolvq -4128(%rdx), %ymm17, %ymm17
// CHECK:  encoding: [0x62,0xe2,0xf5,0x20,0x15,0x8a,0xe0,0xef,0xff,0xff]
          vprolvq -4128(%rdx), %ymm17, %ymm17

// CHECK: vprolvq 1016(%rdx){1to4}, %ymm17, %ymm17
// CHECK:  encoding: [0x62,0xe2,0xf5,0x30,0x15,0x4a,0x7f]
          vprolvq 1016(%rdx){1to4}, %ymm17, %ymm17

// CHECK: vprolvq 1024(%rdx){1to4}, %ymm17, %ymm17
// CHECK:  encoding: [0x62,0xe2,0xf5,0x30,0x15,0x8a,0x00,0x04,0x00,0x00]
          vprolvq 1024(%rdx){1to4}, %ymm17, %ymm17

// CHECK: vprolvq -1024(%rdx){1to4}, %ymm17, %ymm17
// CHECK:  encoding: [0x62,0xe2,0xf5,0x30,0x15,0x4a,0x80]
          vprolvq -1024(%rdx){1to4}, %ymm17, %ymm17

// CHECK: vprolvq -1032(%rdx){1to4}, %ymm17, %ymm17
// CHECK:  encoding: [0x62,0xe2,0xf5,0x30,0x15,0x8a,0xf8,0xfb,0xff,0xff]
          vprolvq -1032(%rdx){1to4}, %ymm17, %ymm17

// CHECK: vprolq $171, %xmm19, %xmm28
// CHECK:  encoding: [0x62,0xb1,0x9d,0x00,0x72,0xcb,0xab]
          vprolq $171, %xmm19, %xmm28

// CHECK: vprolq $171, %xmm19, %xmm28 {%k2}
// CHECK:  encoding: [0x62,0xb1,0x9d,0x02,0x72,0xcb,0xab]
          vprolq $171, %xmm19, %xmm28 {%k2}

// CHECK: vprolq $171, %xmm19, %xmm28 {%k2} {z}
// CHECK:  encoding: [0x62,0xb1,0x9d,0x82,0x72,0xcb,0xab]
          vprolq $171, %xmm19, %xmm28 {%k2} {z}

// CHECK: vprolq $123, %xmm19, %xmm28
// CHECK:  encoding: [0x62,0xb1,0x9d,0x00,0x72,0xcb,0x7b]
          vprolq $123, %xmm19, %xmm28

// CHECK: vprolq $123, (%rcx), %xmm28
// CHECK:  encoding: [0x62,0xf1,0x9d,0x00,0x72,0x09,0x7b]
          vprolq $123, (%rcx), %xmm28

// CHECK: vprolq $123, 291(%rax,%r14,8), %xmm28
// CHECK:  encoding: [0x62,0xb1,0x9d,0x00,0x72,0x8c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vprolq $123, 291(%rax,%r14,8), %xmm28

// CHECK: vprolq $123, (%rcx){1to2}, %xmm28
// CHECK:  encoding: [0x62,0xf1,0x9d,0x10,0x72,0x09,0x7b]
          vprolq $123, (%rcx){1to2}, %xmm28

// CHECK: vprolq $123, 2032(%rdx), %xmm28
// CHECK:  encoding: [0x62,0xf1,0x9d,0x00,0x72,0x4a,0x7f,0x7b]
          vprolq $123, 2032(%rdx), %xmm28

// CHECK: vprolq $123, 2048(%rdx), %xmm28
// CHECK:  encoding: [0x62,0xf1,0x9d,0x00,0x72,0x8a,0x00,0x08,0x00,0x00,0x7b]
          vprolq $123, 2048(%rdx), %xmm28

// CHECK: vprolq $123, -2048(%rdx), %xmm28
// CHECK:  encoding: [0x62,0xf1,0x9d,0x00,0x72,0x4a,0x80,0x7b]
          vprolq $123, -2048(%rdx), %xmm28

// CHECK: vprolq $123, -2064(%rdx), %xmm28
// CHECK:  encoding: [0x62,0xf1,0x9d,0x00,0x72,0x8a,0xf0,0xf7,0xff,0xff,0x7b]
          vprolq $123, -2064(%rdx), %xmm28

// CHECK: vprolq $123, 1016(%rdx){1to2}, %xmm28
// CHECK:  encoding: [0x62,0xf1,0x9d,0x10,0x72,0x4a,0x7f,0x7b]
          vprolq $123, 1016(%rdx){1to2}, %xmm28

// CHECK: vprolq $123, 1024(%rdx){1to2}, %xmm28
// CHECK:  encoding: [0x62,0xf1,0x9d,0x10,0x72,0x8a,0x00,0x04,0x00,0x00,0x7b]
          vprolq $123, 1024(%rdx){1to2}, %xmm28

// CHECK: vprolq $123, -1024(%rdx){1to2}, %xmm28
// CHECK:  encoding: [0x62,0xf1,0x9d,0x10,0x72,0x4a,0x80,0x7b]
          vprolq $123, -1024(%rdx){1to2}, %xmm28

// CHECK: vprolq $123, -1032(%rdx){1to2}, %xmm28
// CHECK:  encoding: [0x62,0xf1,0x9d,0x10,0x72,0x8a,0xf8,0xfb,0xff,0xff,0x7b]
          vprolq $123, -1032(%rdx){1to2}, %xmm28

// CHECK: vprolq $171, %ymm24, %ymm25
// CHECK:  encoding: [0x62,0x91,0xb5,0x20,0x72,0xc8,0xab]
          vprolq $171, %ymm24, %ymm25

// CHECK: vprolq $171, %ymm24, %ymm25 {%k5}
// CHECK:  encoding: [0x62,0x91,0xb5,0x25,0x72,0xc8,0xab]
          vprolq $171, %ymm24, %ymm25 {%k5}

// CHECK: vprolq $171, %ymm24, %ymm25 {%k5} {z}
// CHECK:  encoding: [0x62,0x91,0xb5,0xa5,0x72,0xc8,0xab]
          vprolq $171, %ymm24, %ymm25 {%k5} {z}

// CHECK: vprolq $123, %ymm24, %ymm25
// CHECK:  encoding: [0x62,0x91,0xb5,0x20,0x72,0xc8,0x7b]
          vprolq $123, %ymm24, %ymm25

// CHECK: vprolq $123, (%rcx), %ymm25
// CHECK:  encoding: [0x62,0xf1,0xb5,0x20,0x72,0x09,0x7b]
          vprolq $123, (%rcx), %ymm25

// CHECK: vprolq $123, 291(%rax,%r14,8), %ymm25
// CHECK:  encoding: [0x62,0xb1,0xb5,0x20,0x72,0x8c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vprolq $123, 291(%rax,%r14,8), %ymm25

// CHECK: vprolq $123, (%rcx){1to4}, %ymm25
// CHECK:  encoding: [0x62,0xf1,0xb5,0x30,0x72,0x09,0x7b]
          vprolq $123, (%rcx){1to4}, %ymm25

// CHECK: vprolq $123, 4064(%rdx), %ymm25
// CHECK:  encoding: [0x62,0xf1,0xb5,0x20,0x72,0x4a,0x7f,0x7b]
          vprolq $123, 4064(%rdx), %ymm25

// CHECK: vprolq $123, 4096(%rdx), %ymm25
// CHECK:  encoding: [0x62,0xf1,0xb5,0x20,0x72,0x8a,0x00,0x10,0x00,0x00,0x7b]
          vprolq $123, 4096(%rdx), %ymm25

// CHECK: vprolq $123, -4096(%rdx), %ymm25
// CHECK:  encoding: [0x62,0xf1,0xb5,0x20,0x72,0x4a,0x80,0x7b]
          vprolq $123, -4096(%rdx), %ymm25

// CHECK: vprolq $123, -4128(%rdx), %ymm25
// CHECK:  encoding: [0x62,0xf1,0xb5,0x20,0x72,0x8a,0xe0,0xef,0xff,0xff,0x7b]
          vprolq $123, -4128(%rdx), %ymm25

// CHECK: vprolq $123, 1016(%rdx){1to4}, %ymm25
// CHECK:  encoding: [0x62,0xf1,0xb5,0x30,0x72,0x4a,0x7f,0x7b]
          vprolq $123, 1016(%rdx){1to4}, %ymm25

// CHECK: vprolq $123, 1024(%rdx){1to4}, %ymm25
// CHECK:  encoding: [0x62,0xf1,0xb5,0x30,0x72,0x8a,0x00,0x04,0x00,0x00,0x7b]
          vprolq $123, 1024(%rdx){1to4}, %ymm25

// CHECK: vprolq $123, -1024(%rdx){1to4}, %ymm25
// CHECK:  encoding: [0x62,0xf1,0xb5,0x30,0x72,0x4a,0x80,0x7b]
          vprolq $123, -1024(%rdx){1to4}, %ymm25

// CHECK: vprolq $123, -1032(%rdx){1to4}, %ymm25
// CHECK:  encoding: [0x62,0xf1,0xb5,0x30,0x72,0x8a,0xf8,0xfb,0xff,0xff,0x7b]
          vprolq $123, -1032(%rdx){1to4}, %ymm25

// CHECK: vprorvd %xmm22, %xmm26, %xmm25
// CHECK:  encoding: [0x62,0x22,0x2d,0x00,0x14,0xce]
          vprorvd %xmm22, %xmm26, %xmm25

// CHECK: vprorvd %xmm22, %xmm26, %xmm25 {%k4}
// CHECK:  encoding: [0x62,0x22,0x2d,0x04,0x14,0xce]
          vprorvd %xmm22, %xmm26, %xmm25 {%k4}

// CHECK: vprorvd %xmm22, %xmm26, %xmm25 {%k4} {z}
// CHECK:  encoding: [0x62,0x22,0x2d,0x84,0x14,0xce]
          vprorvd %xmm22, %xmm26, %xmm25 {%k4} {z}

// CHECK: vprorvd (%rcx), %xmm26, %xmm25
// CHECK:  encoding: [0x62,0x62,0x2d,0x00,0x14,0x09]
          vprorvd (%rcx), %xmm26, %xmm25

// CHECK: vprorvd 291(%rax,%r14,8), %xmm26, %xmm25
// CHECK:  encoding: [0x62,0x22,0x2d,0x00,0x14,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vprorvd 291(%rax,%r14,8), %xmm26, %xmm25

// CHECK: vprorvd (%rcx){1to4}, %xmm26, %xmm25
// CHECK:  encoding: [0x62,0x62,0x2d,0x10,0x14,0x09]
          vprorvd (%rcx){1to4}, %xmm26, %xmm25

// CHECK: vprorvd 2032(%rdx), %xmm26, %xmm25
// CHECK:  encoding: [0x62,0x62,0x2d,0x00,0x14,0x4a,0x7f]
          vprorvd 2032(%rdx), %xmm26, %xmm25

// CHECK: vprorvd 2048(%rdx), %xmm26, %xmm25
// CHECK:  encoding: [0x62,0x62,0x2d,0x00,0x14,0x8a,0x00,0x08,0x00,0x00]
          vprorvd 2048(%rdx), %xmm26, %xmm25

// CHECK: vprorvd -2048(%rdx), %xmm26, %xmm25
// CHECK:  encoding: [0x62,0x62,0x2d,0x00,0x14,0x4a,0x80]
          vprorvd -2048(%rdx), %xmm26, %xmm25

// CHECK: vprorvd -2064(%rdx), %xmm26, %xmm25
// CHECK:  encoding: [0x62,0x62,0x2d,0x00,0x14,0x8a,0xf0,0xf7,0xff,0xff]
          vprorvd -2064(%rdx), %xmm26, %xmm25

// CHECK: vprorvd 508(%rdx){1to4}, %xmm26, %xmm25
// CHECK:  encoding: [0x62,0x62,0x2d,0x10,0x14,0x4a,0x7f]
          vprorvd 508(%rdx){1to4}, %xmm26, %xmm25

// CHECK: vprorvd 512(%rdx){1to4}, %xmm26, %xmm25
// CHECK:  encoding: [0x62,0x62,0x2d,0x10,0x14,0x8a,0x00,0x02,0x00,0x00]
          vprorvd 512(%rdx){1to4}, %xmm26, %xmm25

// CHECK: vprorvd -512(%rdx){1to4}, %xmm26, %xmm25
// CHECK:  encoding: [0x62,0x62,0x2d,0x10,0x14,0x4a,0x80]
          vprorvd -512(%rdx){1to4}, %xmm26, %xmm25

// CHECK: vprorvd -516(%rdx){1to4}, %xmm26, %xmm25
// CHECK:  encoding: [0x62,0x62,0x2d,0x10,0x14,0x8a,0xfc,0xfd,0xff,0xff]
          vprorvd -516(%rdx){1to4}, %xmm26, %xmm25

// CHECK: vprorvd %ymm25, %ymm28, %ymm24
// CHECK:  encoding: [0x62,0x02,0x1d,0x20,0x14,0xc1]
          vprorvd %ymm25, %ymm28, %ymm24

// CHECK: vprorvd %ymm25, %ymm28, %ymm24 {%k4}
// CHECK:  encoding: [0x62,0x02,0x1d,0x24,0x14,0xc1]
          vprorvd %ymm25, %ymm28, %ymm24 {%k4}

// CHECK: vprorvd %ymm25, %ymm28, %ymm24 {%k4} {z}
// CHECK:  encoding: [0x62,0x02,0x1d,0xa4,0x14,0xc1]
          vprorvd %ymm25, %ymm28, %ymm24 {%k4} {z}

// CHECK: vprorvd (%rcx), %ymm28, %ymm24
// CHECK:  encoding: [0x62,0x62,0x1d,0x20,0x14,0x01]
          vprorvd (%rcx), %ymm28, %ymm24

// CHECK: vprorvd 291(%rax,%r14,8), %ymm28, %ymm24
// CHECK:  encoding: [0x62,0x22,0x1d,0x20,0x14,0x84,0xf0,0x23,0x01,0x00,0x00]
          vprorvd 291(%rax,%r14,8), %ymm28, %ymm24

// CHECK: vprorvd (%rcx){1to8}, %ymm28, %ymm24
// CHECK:  encoding: [0x62,0x62,0x1d,0x30,0x14,0x01]
          vprorvd (%rcx){1to8}, %ymm28, %ymm24

// CHECK: vprorvd 4064(%rdx), %ymm28, %ymm24
// CHECK:  encoding: [0x62,0x62,0x1d,0x20,0x14,0x42,0x7f]
          vprorvd 4064(%rdx), %ymm28, %ymm24

// CHECK: vprorvd 4096(%rdx), %ymm28, %ymm24
// CHECK:  encoding: [0x62,0x62,0x1d,0x20,0x14,0x82,0x00,0x10,0x00,0x00]
          vprorvd 4096(%rdx), %ymm28, %ymm24

// CHECK: vprorvd -4096(%rdx), %ymm28, %ymm24
// CHECK:  encoding: [0x62,0x62,0x1d,0x20,0x14,0x42,0x80]
          vprorvd -4096(%rdx), %ymm28, %ymm24

// CHECK: vprorvd -4128(%rdx), %ymm28, %ymm24
// CHECK:  encoding: [0x62,0x62,0x1d,0x20,0x14,0x82,0xe0,0xef,0xff,0xff]
          vprorvd -4128(%rdx), %ymm28, %ymm24

// CHECK: vprorvd 508(%rdx){1to8}, %ymm28, %ymm24
// CHECK:  encoding: [0x62,0x62,0x1d,0x30,0x14,0x42,0x7f]
          vprorvd 508(%rdx){1to8}, %ymm28, %ymm24

// CHECK: vprorvd 512(%rdx){1to8}, %ymm28, %ymm24
// CHECK:  encoding: [0x62,0x62,0x1d,0x30,0x14,0x82,0x00,0x02,0x00,0x00]
          vprorvd 512(%rdx){1to8}, %ymm28, %ymm24

// CHECK: vprorvd -512(%rdx){1to8}, %ymm28, %ymm24
// CHECK:  encoding: [0x62,0x62,0x1d,0x30,0x14,0x42,0x80]
          vprorvd -512(%rdx){1to8}, %ymm28, %ymm24

// CHECK: vprorvd -516(%rdx){1to8}, %ymm28, %ymm24
// CHECK:  encoding: [0x62,0x62,0x1d,0x30,0x14,0x82,0xfc,0xfd,0xff,0xff]
          vprorvd -516(%rdx){1to8}, %ymm28, %ymm24

// CHECK: vprord $171, %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x91,0x15,0x00,0x72,0xc1,0xab]
          vprord $171, %xmm25, %xmm29

// CHECK: vprord $171, %xmm25, %xmm29 {%k3}
// CHECK:  encoding: [0x62,0x91,0x15,0x03,0x72,0xc1,0xab]
          vprord $171, %xmm25, %xmm29 {%k3}

// CHECK: vprord $171, %xmm25, %xmm29 {%k3} {z}
// CHECK:  encoding: [0x62,0x91,0x15,0x83,0x72,0xc1,0xab]
          vprord $171, %xmm25, %xmm29 {%k3} {z}

// CHECK: vprord $123, %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x91,0x15,0x00,0x72,0xc1,0x7b]
          vprord $123, %xmm25, %xmm29

// CHECK: vprord $123, (%rcx), %xmm29
// CHECK:  encoding: [0x62,0xf1,0x15,0x00,0x72,0x01,0x7b]
          vprord $123, (%rcx), %xmm29

// CHECK: vprord $123, 291(%rax,%r14,8), %xmm29
// CHECK:  encoding: [0x62,0xb1,0x15,0x00,0x72,0x84,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vprord $123, 291(%rax,%r14,8), %xmm29

// CHECK: vprord $123, (%rcx){1to4}, %xmm29
// CHECK:  encoding: [0x62,0xf1,0x15,0x10,0x72,0x01,0x7b]
          vprord $123, (%rcx){1to4}, %xmm29

// CHECK: vprord $123, 2032(%rdx), %xmm29
// CHECK:  encoding: [0x62,0xf1,0x15,0x00,0x72,0x42,0x7f,0x7b]
          vprord $123, 2032(%rdx), %xmm29

// CHECK: vprord $123, 2048(%rdx), %xmm29
// CHECK:  encoding: [0x62,0xf1,0x15,0x00,0x72,0x82,0x00,0x08,0x00,0x00,0x7b]
          vprord $123, 2048(%rdx), %xmm29

// CHECK: vprord $123, -2048(%rdx), %xmm29
// CHECK:  encoding: [0x62,0xf1,0x15,0x00,0x72,0x42,0x80,0x7b]
          vprord $123, -2048(%rdx), %xmm29

// CHECK: vprord $123, -2064(%rdx), %xmm29
// CHECK:  encoding: [0x62,0xf1,0x15,0x00,0x72,0x82,0xf0,0xf7,0xff,0xff,0x7b]
          vprord $123, -2064(%rdx), %xmm29

// CHECK: vprord $123, 508(%rdx){1to4}, %xmm29
// CHECK:  encoding: [0x62,0xf1,0x15,0x10,0x72,0x42,0x7f,0x7b]
          vprord $123, 508(%rdx){1to4}, %xmm29

// CHECK: vprord $123, 512(%rdx){1to4}, %xmm29
// CHECK:  encoding: [0x62,0xf1,0x15,0x10,0x72,0x82,0x00,0x02,0x00,0x00,0x7b]
          vprord $123, 512(%rdx){1to4}, %xmm29

// CHECK: vprord $123, -512(%rdx){1to4}, %xmm29
// CHECK:  encoding: [0x62,0xf1,0x15,0x10,0x72,0x42,0x80,0x7b]
          vprord $123, -512(%rdx){1to4}, %xmm29

// CHECK: vprord $123, -516(%rdx){1to4}, %xmm29
// CHECK:  encoding: [0x62,0xf1,0x15,0x10,0x72,0x82,0xfc,0xfd,0xff,0xff,0x7b]
          vprord $123, -516(%rdx){1to4}, %xmm29

// CHECK: vprord $171, %ymm29, %ymm30
// CHECK:  encoding: [0x62,0x91,0x0d,0x20,0x72,0xc5,0xab]
          vprord $171, %ymm29, %ymm30

// CHECK: vprord $171, %ymm29, %ymm30 {%k6}
// CHECK:  encoding: [0x62,0x91,0x0d,0x26,0x72,0xc5,0xab]
          vprord $171, %ymm29, %ymm30 {%k6}

// CHECK: vprord $171, %ymm29, %ymm30 {%k6} {z}
// CHECK:  encoding: [0x62,0x91,0x0d,0xa6,0x72,0xc5,0xab]
          vprord $171, %ymm29, %ymm30 {%k6} {z}

// CHECK: vprord $123, %ymm29, %ymm30
// CHECK:  encoding: [0x62,0x91,0x0d,0x20,0x72,0xc5,0x7b]
          vprord $123, %ymm29, %ymm30

// CHECK: vprord $123, (%rcx), %ymm30
// CHECK:  encoding: [0x62,0xf1,0x0d,0x20,0x72,0x01,0x7b]
          vprord $123, (%rcx), %ymm30

// CHECK: vprord $123, 291(%rax,%r14,8), %ymm30
// CHECK:  encoding: [0x62,0xb1,0x0d,0x20,0x72,0x84,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vprord $123, 291(%rax,%r14,8), %ymm30

// CHECK: vprord $123, (%rcx){1to8}, %ymm30
// CHECK:  encoding: [0x62,0xf1,0x0d,0x30,0x72,0x01,0x7b]
          vprord $123, (%rcx){1to8}, %ymm30

// CHECK: vprord $123, 4064(%rdx), %ymm30
// CHECK:  encoding: [0x62,0xf1,0x0d,0x20,0x72,0x42,0x7f,0x7b]
          vprord $123, 4064(%rdx), %ymm30

// CHECK: vprord $123, 4096(%rdx), %ymm30
// CHECK:  encoding: [0x62,0xf1,0x0d,0x20,0x72,0x82,0x00,0x10,0x00,0x00,0x7b]
          vprord $123, 4096(%rdx), %ymm30

// CHECK: vprord $123, -4096(%rdx), %ymm30
// CHECK:  encoding: [0x62,0xf1,0x0d,0x20,0x72,0x42,0x80,0x7b]
          vprord $123, -4096(%rdx), %ymm30

// CHECK: vprord $123, -4128(%rdx), %ymm30
// CHECK:  encoding: [0x62,0xf1,0x0d,0x20,0x72,0x82,0xe0,0xef,0xff,0xff,0x7b]
          vprord $123, -4128(%rdx), %ymm30

// CHECK: vprord $123, 508(%rdx){1to8}, %ymm30
// CHECK:  encoding: [0x62,0xf1,0x0d,0x30,0x72,0x42,0x7f,0x7b]
          vprord $123, 508(%rdx){1to8}, %ymm30

// CHECK: vprord $123, 512(%rdx){1to8}, %ymm30
// CHECK:  encoding: [0x62,0xf1,0x0d,0x30,0x72,0x82,0x00,0x02,0x00,0x00,0x7b]
          vprord $123, 512(%rdx){1to8}, %ymm30

// CHECK: vprord $123, -512(%rdx){1to8}, %ymm30
// CHECK:  encoding: [0x62,0xf1,0x0d,0x30,0x72,0x42,0x80,0x7b]
          vprord $123, -512(%rdx){1to8}, %ymm30

// CHECK: vprord $123, -516(%rdx){1to8}, %ymm30
// CHECK:  encoding: [0x62,0xf1,0x0d,0x30,0x72,0x82,0xfc,0xfd,0xff,0xff,0x7b]
          vprord $123, -516(%rdx){1to8}, %ymm30

// CHECK: vprorvq %xmm24, %xmm21, %xmm26
// CHECK:  encoding: [0x62,0x02,0xd5,0x00,0x14,0xd0]
          vprorvq %xmm24, %xmm21, %xmm26

// CHECK: vprorvq %xmm24, %xmm21, %xmm26 {%k4}
// CHECK:  encoding: [0x62,0x02,0xd5,0x04,0x14,0xd0]
          vprorvq %xmm24, %xmm21, %xmm26 {%k4}

// CHECK: vprorvq %xmm24, %xmm21, %xmm26 {%k4} {z}
// CHECK:  encoding: [0x62,0x02,0xd5,0x84,0x14,0xd0]
          vprorvq %xmm24, %xmm21, %xmm26 {%k4} {z}

// CHECK: vprorvq (%rcx), %xmm21, %xmm26
// CHECK:  encoding: [0x62,0x62,0xd5,0x00,0x14,0x11]
          vprorvq (%rcx), %xmm21, %xmm26

// CHECK: vprorvq 291(%rax,%r14,8), %xmm21, %xmm26
// CHECK:  encoding: [0x62,0x22,0xd5,0x00,0x14,0x94,0xf0,0x23,0x01,0x00,0x00]
          vprorvq 291(%rax,%r14,8), %xmm21, %xmm26

// CHECK: vprorvq (%rcx){1to2}, %xmm21, %xmm26
// CHECK:  encoding: [0x62,0x62,0xd5,0x10,0x14,0x11]
          vprorvq (%rcx){1to2}, %xmm21, %xmm26

// CHECK: vprorvq 2032(%rdx), %xmm21, %xmm26
// CHECK:  encoding: [0x62,0x62,0xd5,0x00,0x14,0x52,0x7f]
          vprorvq 2032(%rdx), %xmm21, %xmm26

// CHECK: vprorvq 2048(%rdx), %xmm21, %xmm26
// CHECK:  encoding: [0x62,0x62,0xd5,0x00,0x14,0x92,0x00,0x08,0x00,0x00]
          vprorvq 2048(%rdx), %xmm21, %xmm26

// CHECK: vprorvq -2048(%rdx), %xmm21, %xmm26
// CHECK:  encoding: [0x62,0x62,0xd5,0x00,0x14,0x52,0x80]
          vprorvq -2048(%rdx), %xmm21, %xmm26

// CHECK: vprorvq -2064(%rdx), %xmm21, %xmm26
// CHECK:  encoding: [0x62,0x62,0xd5,0x00,0x14,0x92,0xf0,0xf7,0xff,0xff]
          vprorvq -2064(%rdx), %xmm21, %xmm26

// CHECK: vprorvq 1016(%rdx){1to2}, %xmm21, %xmm26
// CHECK:  encoding: [0x62,0x62,0xd5,0x10,0x14,0x52,0x7f]
          vprorvq 1016(%rdx){1to2}, %xmm21, %xmm26

// CHECK: vprorvq 1024(%rdx){1to2}, %xmm21, %xmm26
// CHECK:  encoding: [0x62,0x62,0xd5,0x10,0x14,0x92,0x00,0x04,0x00,0x00]
          vprorvq 1024(%rdx){1to2}, %xmm21, %xmm26

// CHECK: vprorvq -1024(%rdx){1to2}, %xmm21, %xmm26
// CHECK:  encoding: [0x62,0x62,0xd5,0x10,0x14,0x52,0x80]
          vprorvq -1024(%rdx){1to2}, %xmm21, %xmm26

// CHECK: vprorvq -1032(%rdx){1to2}, %xmm21, %xmm26
// CHECK:  encoding: [0x62,0x62,0xd5,0x10,0x14,0x92,0xf8,0xfb,0xff,0xff]
          vprorvq -1032(%rdx){1to2}, %xmm21, %xmm26

// CHECK: vprorvq %ymm28, %ymm24, %ymm20
// CHECK:  encoding: [0x62,0x82,0xbd,0x20,0x14,0xe4]
          vprorvq %ymm28, %ymm24, %ymm20

// CHECK: vprorvq %ymm28, %ymm24, %ymm20 {%k7}
// CHECK:  encoding: [0x62,0x82,0xbd,0x27,0x14,0xe4]
          vprorvq %ymm28, %ymm24, %ymm20 {%k7}

// CHECK: vprorvq %ymm28, %ymm24, %ymm20 {%k7} {z}
// CHECK:  encoding: [0x62,0x82,0xbd,0xa7,0x14,0xe4]
          vprorvq %ymm28, %ymm24, %ymm20 {%k7} {z}

// CHECK: vprorvq (%rcx), %ymm24, %ymm20
// CHECK:  encoding: [0x62,0xe2,0xbd,0x20,0x14,0x21]
          vprorvq (%rcx), %ymm24, %ymm20

// CHECK: vprorvq 291(%rax,%r14,8), %ymm24, %ymm20
// CHECK:  encoding: [0x62,0xa2,0xbd,0x20,0x14,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vprorvq 291(%rax,%r14,8), %ymm24, %ymm20

// CHECK: vprorvq (%rcx){1to4}, %ymm24, %ymm20
// CHECK:  encoding: [0x62,0xe2,0xbd,0x30,0x14,0x21]
          vprorvq (%rcx){1to4}, %ymm24, %ymm20

// CHECK: vprorvq 4064(%rdx), %ymm24, %ymm20
// CHECK:  encoding: [0x62,0xe2,0xbd,0x20,0x14,0x62,0x7f]
          vprorvq 4064(%rdx), %ymm24, %ymm20

// CHECK: vprorvq 4096(%rdx), %ymm24, %ymm20
// CHECK:  encoding: [0x62,0xe2,0xbd,0x20,0x14,0xa2,0x00,0x10,0x00,0x00]
          vprorvq 4096(%rdx), %ymm24, %ymm20

// CHECK: vprorvq -4096(%rdx), %ymm24, %ymm20
// CHECK:  encoding: [0x62,0xe2,0xbd,0x20,0x14,0x62,0x80]
          vprorvq -4096(%rdx), %ymm24, %ymm20

// CHECK: vprorvq -4128(%rdx), %ymm24, %ymm20
// CHECK:  encoding: [0x62,0xe2,0xbd,0x20,0x14,0xa2,0xe0,0xef,0xff,0xff]
          vprorvq -4128(%rdx), %ymm24, %ymm20

// CHECK: vprorvq 1016(%rdx){1to4}, %ymm24, %ymm20
// CHECK:  encoding: [0x62,0xe2,0xbd,0x30,0x14,0x62,0x7f]
          vprorvq 1016(%rdx){1to4}, %ymm24, %ymm20

// CHECK: vprorvq 1024(%rdx){1to4}, %ymm24, %ymm20
// CHECK:  encoding: [0x62,0xe2,0xbd,0x30,0x14,0xa2,0x00,0x04,0x00,0x00]
          vprorvq 1024(%rdx){1to4}, %ymm24, %ymm20

// CHECK: vprorvq -1024(%rdx){1to4}, %ymm24, %ymm20
// CHECK:  encoding: [0x62,0xe2,0xbd,0x30,0x14,0x62,0x80]
          vprorvq -1024(%rdx){1to4}, %ymm24, %ymm20

// CHECK: vprorvq -1032(%rdx){1to4}, %ymm24, %ymm20
// CHECK:  encoding: [0x62,0xe2,0xbd,0x30,0x14,0xa2,0xf8,0xfb,0xff,0xff]
          vprorvq -1032(%rdx){1to4}, %ymm24, %ymm20

// CHECK: vprorq $171, %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x91,0x9d,0x00,0x72,0xc4,0xab]
          vprorq $171, %xmm28, %xmm28

// CHECK: vprorq $171, %xmm28, %xmm28 {%k1}
// CHECK:  encoding: [0x62,0x91,0x9d,0x01,0x72,0xc4,0xab]
          vprorq $171, %xmm28, %xmm28 {%k1}

// CHECK: vprorq $171, %xmm28, %xmm28 {%k1} {z}
// CHECK:  encoding: [0x62,0x91,0x9d,0x81,0x72,0xc4,0xab]
          vprorq $171, %xmm28, %xmm28 {%k1} {z}

// CHECK: vprorq $123, %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x91,0x9d,0x00,0x72,0xc4,0x7b]
          vprorq $123, %xmm28, %xmm28

// CHECK: vprorq $123, (%rcx), %xmm28
// CHECK:  encoding: [0x62,0xf1,0x9d,0x00,0x72,0x01,0x7b]
          vprorq $123, (%rcx), %xmm28

// CHECK: vprorq $123, 291(%rax,%r14,8), %xmm28
// CHECK:  encoding: [0x62,0xb1,0x9d,0x00,0x72,0x84,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vprorq $123, 291(%rax,%r14,8), %xmm28

// CHECK: vprorq $123, (%rcx){1to2}, %xmm28
// CHECK:  encoding: [0x62,0xf1,0x9d,0x10,0x72,0x01,0x7b]
          vprorq $123, (%rcx){1to2}, %xmm28

// CHECK: vprorq $123, 2032(%rdx), %xmm28
// CHECK:  encoding: [0x62,0xf1,0x9d,0x00,0x72,0x42,0x7f,0x7b]
          vprorq $123, 2032(%rdx), %xmm28

// CHECK: vprorq $123, 2048(%rdx), %xmm28
// CHECK:  encoding: [0x62,0xf1,0x9d,0x00,0x72,0x82,0x00,0x08,0x00,0x00,0x7b]
          vprorq $123, 2048(%rdx), %xmm28

// CHECK: vprorq $123, -2048(%rdx), %xmm28
// CHECK:  encoding: [0x62,0xf1,0x9d,0x00,0x72,0x42,0x80,0x7b]
          vprorq $123, -2048(%rdx), %xmm28

// CHECK: vprorq $123, -2064(%rdx), %xmm28
// CHECK:  encoding: [0x62,0xf1,0x9d,0x00,0x72,0x82,0xf0,0xf7,0xff,0xff,0x7b]
          vprorq $123, -2064(%rdx), %xmm28

// CHECK: vprorq $123, 1016(%rdx){1to2}, %xmm28
// CHECK:  encoding: [0x62,0xf1,0x9d,0x10,0x72,0x42,0x7f,0x7b]
          vprorq $123, 1016(%rdx){1to2}, %xmm28

// CHECK: vprorq $123, 1024(%rdx){1to2}, %xmm28
// CHECK:  encoding: [0x62,0xf1,0x9d,0x10,0x72,0x82,0x00,0x04,0x00,0x00,0x7b]
          vprorq $123, 1024(%rdx){1to2}, %xmm28

// CHECK: vprorq $123, -1024(%rdx){1to2}, %xmm28
// CHECK:  encoding: [0x62,0xf1,0x9d,0x10,0x72,0x42,0x80,0x7b]
          vprorq $123, -1024(%rdx){1to2}, %xmm28

// CHECK: vprorq $123, -1032(%rdx){1to2}, %xmm28
// CHECK:  encoding: [0x62,0xf1,0x9d,0x10,0x72,0x82,0xf8,0xfb,0xff,0xff,0x7b]
          vprorq $123, -1032(%rdx){1to2}, %xmm28

// CHECK: vprorq $171, %ymm17, %ymm21
// CHECK:  encoding: [0x62,0xb1,0xd5,0x20,0x72,0xc1,0xab]
          vprorq $171, %ymm17, %ymm21

// CHECK: vprorq $171, %ymm17, %ymm21 {%k1}
// CHECK:  encoding: [0x62,0xb1,0xd5,0x21,0x72,0xc1,0xab]
          vprorq $171, %ymm17, %ymm21 {%k1}

// CHECK: vprorq $171, %ymm17, %ymm21 {%k1} {z}
// CHECK:  encoding: [0x62,0xb1,0xd5,0xa1,0x72,0xc1,0xab]
          vprorq $171, %ymm17, %ymm21 {%k1} {z}

// CHECK: vprorq $123, %ymm17, %ymm21
// CHECK:  encoding: [0x62,0xb1,0xd5,0x20,0x72,0xc1,0x7b]
          vprorq $123, %ymm17, %ymm21

// CHECK: vprorq $123, (%rcx), %ymm21
// CHECK:  encoding: [0x62,0xf1,0xd5,0x20,0x72,0x01,0x7b]
          vprorq $123, (%rcx), %ymm21

// CHECK: vprorq $123, 291(%rax,%r14,8), %ymm21
// CHECK:  encoding: [0x62,0xb1,0xd5,0x20,0x72,0x84,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vprorq $123, 291(%rax,%r14,8), %ymm21

// CHECK: vprorq $123, (%rcx){1to4}, %ymm21
// CHECK:  encoding: [0x62,0xf1,0xd5,0x30,0x72,0x01,0x7b]
          vprorq $123, (%rcx){1to4}, %ymm21

// CHECK: vprorq $123, 4064(%rdx), %ymm21
// CHECK:  encoding: [0x62,0xf1,0xd5,0x20,0x72,0x42,0x7f,0x7b]
          vprorq $123, 4064(%rdx), %ymm21

// CHECK: vprorq $123, 4096(%rdx), %ymm21
// CHECK:  encoding: [0x62,0xf1,0xd5,0x20,0x72,0x82,0x00,0x10,0x00,0x00,0x7b]
          vprorq $123, 4096(%rdx), %ymm21

// CHECK: vprorq $123, -4096(%rdx), %ymm21
// CHECK:  encoding: [0x62,0xf1,0xd5,0x20,0x72,0x42,0x80,0x7b]
          vprorq $123, -4096(%rdx), %ymm21

// CHECK: vprorq $123, -4128(%rdx), %ymm21
// CHECK:  encoding: [0x62,0xf1,0xd5,0x20,0x72,0x82,0xe0,0xef,0xff,0xff,0x7b]
          vprorq $123, -4128(%rdx), %ymm21

// CHECK: vprorq $123, 1016(%rdx){1to4}, %ymm21
// CHECK:  encoding: [0x62,0xf1,0xd5,0x30,0x72,0x42,0x7f,0x7b]
          vprorq $123, 1016(%rdx){1to4}, %ymm21

// CHECK: vprorq $123, 1024(%rdx){1to4}, %ymm21
// CHECK:  encoding: [0x62,0xf1,0xd5,0x30,0x72,0x82,0x00,0x04,0x00,0x00,0x7b]
          vprorq $123, 1024(%rdx){1to4}, %ymm21

// CHECK: vprorq $123, -1024(%rdx){1to4}, %ymm21
// CHECK:  encoding: [0x62,0xf1,0xd5,0x30,0x72,0x42,0x80,0x7b]
          vprorq $123, -1024(%rdx){1to4}, %ymm21

// CHECK: vprorq $123, -1032(%rdx){1to4}, %ymm21
// CHECK:  encoding: [0x62,0xf1,0xd5,0x30,0x72,0x82,0xf8,0xfb,0xff,0xff,0x7b]
          vprorq $123, -1032(%rdx){1to4}, %ymm21

// CHECK: vpmuludq %xmm18, %xmm22, %xmm27
// CHECK:  encoding: [0x62,0x21,0xcd,0x00,0xf4,0xda]
          vpmuludq %xmm18, %xmm22, %xmm27

// CHECK: vpmuludq %xmm18, %xmm22, %xmm27 {%k5}
// CHECK:  encoding: [0x62,0x21,0xcd,0x05,0xf4,0xda]
          vpmuludq %xmm18, %xmm22, %xmm27 {%k5}

// CHECK: vpmuludq %xmm18, %xmm22, %xmm27 {%k5} {z}
// CHECK:  encoding: [0x62,0x21,0xcd,0x85,0xf4,0xda]
          vpmuludq %xmm18, %xmm22, %xmm27 {%k5} {z}

// CHECK: vpmuludq (%rcx), %xmm22, %xmm27
// CHECK:  encoding: [0x62,0x61,0xcd,0x00,0xf4,0x19]
          vpmuludq (%rcx), %xmm22, %xmm27

// CHECK: vpmuludq 291(%rax,%r14,8), %xmm22, %xmm27
// CHECK:  encoding: [0x62,0x21,0xcd,0x00,0xf4,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpmuludq 291(%rax,%r14,8), %xmm22, %xmm27

// CHECK: vpmuludq (%rcx){1to2}, %xmm22, %xmm27
// CHECK:  encoding: [0x62,0x61,0xcd,0x10,0xf4,0x19]
          vpmuludq (%rcx){1to2}, %xmm22, %xmm27

// CHECK: vpmuludq 2032(%rdx), %xmm22, %xmm27
// CHECK:  encoding: [0x62,0x61,0xcd,0x00,0xf4,0x5a,0x7f]
          vpmuludq 2032(%rdx), %xmm22, %xmm27

// CHECK: vpmuludq 2048(%rdx), %xmm22, %xmm27
// CHECK:  encoding: [0x62,0x61,0xcd,0x00,0xf4,0x9a,0x00,0x08,0x00,0x00]
          vpmuludq 2048(%rdx), %xmm22, %xmm27

// CHECK: vpmuludq -2048(%rdx), %xmm22, %xmm27
// CHECK:  encoding: [0x62,0x61,0xcd,0x00,0xf4,0x5a,0x80]
          vpmuludq -2048(%rdx), %xmm22, %xmm27

// CHECK: vpmuludq -2064(%rdx), %xmm22, %xmm27
// CHECK:  encoding: [0x62,0x61,0xcd,0x00,0xf4,0x9a,0xf0,0xf7,0xff,0xff]
          vpmuludq -2064(%rdx), %xmm22, %xmm27

// CHECK: vpmuludq 1016(%rdx){1to2}, %xmm22, %xmm27
// CHECK:  encoding: [0x62,0x61,0xcd,0x10,0xf4,0x5a,0x7f]
          vpmuludq 1016(%rdx){1to2}, %xmm22, %xmm27

// CHECK: vpmuludq 1024(%rdx){1to2}, %xmm22, %xmm27
// CHECK:  encoding: [0x62,0x61,0xcd,0x10,0xf4,0x9a,0x00,0x04,0x00,0x00]
          vpmuludq 1024(%rdx){1to2}, %xmm22, %xmm27

// CHECK: vpmuludq -1024(%rdx){1to2}, %xmm22, %xmm27
// CHECK:  encoding: [0x62,0x61,0xcd,0x10,0xf4,0x5a,0x80]
          vpmuludq -1024(%rdx){1to2}, %xmm22, %xmm27

// CHECK: vpmuludq -1032(%rdx){1to2}, %xmm22, %xmm27
// CHECK:  encoding: [0x62,0x61,0xcd,0x10,0xf4,0x9a,0xf8,0xfb,0xff,0xff]
          vpmuludq -1032(%rdx){1to2}, %xmm22, %xmm27

// CHECK: vpmuludq %ymm18, %ymm27, %ymm30
// CHECK:  encoding: [0x62,0x21,0xa5,0x20,0xf4,0xf2]
          vpmuludq %ymm18, %ymm27, %ymm30

// CHECK: vpmuludq %ymm18, %ymm27, %ymm30 {%k7}
// CHECK:  encoding: [0x62,0x21,0xa5,0x27,0xf4,0xf2]
          vpmuludq %ymm18, %ymm27, %ymm30 {%k7}

// CHECK: vpmuludq %ymm18, %ymm27, %ymm30 {%k7} {z}
// CHECK:  encoding: [0x62,0x21,0xa5,0xa7,0xf4,0xf2]
          vpmuludq %ymm18, %ymm27, %ymm30 {%k7} {z}

// CHECK: vpmuludq (%rcx), %ymm27, %ymm30
// CHECK:  encoding: [0x62,0x61,0xa5,0x20,0xf4,0x31]
          vpmuludq (%rcx), %ymm27, %ymm30

// CHECK: vpmuludq 291(%rax,%r14,8), %ymm27, %ymm30
// CHECK:  encoding: [0x62,0x21,0xa5,0x20,0xf4,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpmuludq 291(%rax,%r14,8), %ymm27, %ymm30

// CHECK: vpmuludq (%rcx){1to4}, %ymm27, %ymm30
// CHECK:  encoding: [0x62,0x61,0xa5,0x30,0xf4,0x31]
          vpmuludq (%rcx){1to4}, %ymm27, %ymm30

// CHECK: vpmuludq 4064(%rdx), %ymm27, %ymm30
// CHECK:  encoding: [0x62,0x61,0xa5,0x20,0xf4,0x72,0x7f]
          vpmuludq 4064(%rdx), %ymm27, %ymm30

// CHECK: vpmuludq 4096(%rdx), %ymm27, %ymm30
// CHECK:  encoding: [0x62,0x61,0xa5,0x20,0xf4,0xb2,0x00,0x10,0x00,0x00]
          vpmuludq 4096(%rdx), %ymm27, %ymm30

// CHECK: vpmuludq -4096(%rdx), %ymm27, %ymm30
// CHECK:  encoding: [0x62,0x61,0xa5,0x20,0xf4,0x72,0x80]
          vpmuludq -4096(%rdx), %ymm27, %ymm30

// CHECK: vpmuludq -4128(%rdx), %ymm27, %ymm30
// CHECK:  encoding: [0x62,0x61,0xa5,0x20,0xf4,0xb2,0xe0,0xef,0xff,0xff]
          vpmuludq -4128(%rdx), %ymm27, %ymm30

// CHECK: vpmuludq 1016(%rdx){1to4}, %ymm27, %ymm30
// CHECK:  encoding: [0x62,0x61,0xa5,0x30,0xf4,0x72,0x7f]
          vpmuludq 1016(%rdx){1to4}, %ymm27, %ymm30

// CHECK: vpmuludq 1024(%rdx){1to4}, %ymm27, %ymm30
// CHECK:  encoding: [0x62,0x61,0xa5,0x30,0xf4,0xb2,0x00,0x04,0x00,0x00]
          vpmuludq 1024(%rdx){1to4}, %ymm27, %ymm30

// CHECK: vpmuludq -1024(%rdx){1to4}, %ymm27, %ymm30
// CHECK:  encoding: [0x62,0x61,0xa5,0x30,0xf4,0x72,0x80]
          vpmuludq -1024(%rdx){1to4}, %ymm27, %ymm30

// CHECK: vpmuludq -1032(%rdx){1to4}, %ymm27, %ymm30
// CHECK:  encoding: [0x62,0x61,0xa5,0x30,0xf4,0xb2,0xf8,0xfb,0xff,0xff]
          vpmuludq -1032(%rdx){1to4}, %ymm27, %ymm30
          
// CHECK: vpmuldq %xmm26, %xmm24, %xmm25
// CHECK:  encoding: [0x62,0x02,0xbd,0x00,0x28,0xca]
          vpmuldq %xmm26, %xmm24, %xmm25

// CHECK: vpmuldq %xmm26, %xmm24, %xmm25 {%k3}
// CHECK:  encoding: [0x62,0x02,0xbd,0x03,0x28,0xca]
          vpmuldq %xmm26, %xmm24, %xmm25 {%k3}

// CHECK: vpmuldq %xmm26, %xmm24, %xmm25 {%k3} {z}
// CHECK:  encoding: [0x62,0x02,0xbd,0x83,0x28,0xca]
          vpmuldq %xmm26, %xmm24, %xmm25 {%k3} {z}

// CHECK: vpmuldq (%rcx), %xmm24, %xmm25
// CHECK:  encoding: [0x62,0x62,0xbd,0x00,0x28,0x09]
          vpmuldq (%rcx), %xmm24, %xmm25

// CHECK: vpmuldq 291(%rax,%r14,8), %xmm24, %xmm25
// CHECK:  encoding: [0x62,0x22,0xbd,0x00,0x28,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpmuldq 291(%rax,%r14,8), %xmm24, %xmm25

// CHECK: vpmuldq (%rcx){1to2}, %xmm24, %xmm25
// CHECK:  encoding: [0x62,0x62,0xbd,0x10,0x28,0x09]
          vpmuldq (%rcx){1to2}, %xmm24, %xmm25

// CHECK: vpmuldq 2032(%rdx), %xmm24, %xmm25
// CHECK:  encoding: [0x62,0x62,0xbd,0x00,0x28,0x4a,0x7f]
          vpmuldq 2032(%rdx), %xmm24, %xmm25

// CHECK: vpmuldq 2048(%rdx), %xmm24, %xmm25
// CHECK:  encoding: [0x62,0x62,0xbd,0x00,0x28,0x8a,0x00,0x08,0x00,0x00]
          vpmuldq 2048(%rdx), %xmm24, %xmm25

// CHECK: vpmuldq -2048(%rdx), %xmm24, %xmm25
// CHECK:  encoding: [0x62,0x62,0xbd,0x00,0x28,0x4a,0x80]
          vpmuldq -2048(%rdx), %xmm24, %xmm25

// CHECK: vpmuldq -2064(%rdx), %xmm24, %xmm25
// CHECK:  encoding: [0x62,0x62,0xbd,0x00,0x28,0x8a,0xf0,0xf7,0xff,0xff]
          vpmuldq -2064(%rdx), %xmm24, %xmm25

// CHECK: vpmuldq 1016(%rdx){1to2}, %xmm24, %xmm25
// CHECK:  encoding: [0x62,0x62,0xbd,0x10,0x28,0x4a,0x7f]
          vpmuldq 1016(%rdx){1to2}, %xmm24, %xmm25

// CHECK: vpmuldq 1024(%rdx){1to2}, %xmm24, %xmm25
// CHECK:  encoding: [0x62,0x62,0xbd,0x10,0x28,0x8a,0x00,0x04,0x00,0x00]
          vpmuldq 1024(%rdx){1to2}, %xmm24, %xmm25

// CHECK: vpmuldq -1024(%rdx){1to2}, %xmm24, %xmm25
// CHECK:  encoding: [0x62,0x62,0xbd,0x10,0x28,0x4a,0x80]
          vpmuldq -1024(%rdx){1to2}, %xmm24, %xmm25

// CHECK: vpmuldq -1032(%rdx){1to2}, %xmm24, %xmm25
// CHECK:  encoding: [0x62,0x62,0xbd,0x10,0x28,0x8a,0xf8,0xfb,0xff,0xff]
          vpmuldq -1032(%rdx){1to2}, %xmm24, %xmm25

// CHECK: vpmuldq %ymm26, %ymm18, %ymm19
// CHECK:  encoding: [0x62,0x82,0xed,0x20,0x28,0xda]
          vpmuldq %ymm26, %ymm18, %ymm19

// CHECK: vpmuldq %ymm26, %ymm18, %ymm19 {%k6}
// CHECK:  encoding: [0x62,0x82,0xed,0x26,0x28,0xda]
          vpmuldq %ymm26, %ymm18, %ymm19 {%k6}

// CHECK: vpmuldq %ymm26, %ymm18, %ymm19 {%k6} {z}
// CHECK:  encoding: [0x62,0x82,0xed,0xa6,0x28,0xda]
          vpmuldq %ymm26, %ymm18, %ymm19 {%k6} {z}

// CHECK: vpmuldq (%rcx), %ymm18, %ymm19
// CHECK:  encoding: [0x62,0xe2,0xed,0x20,0x28,0x19]
          vpmuldq (%rcx), %ymm18, %ymm19

// CHECK: vpmuldq 291(%rax,%r14,8), %ymm18, %ymm19
// CHECK:  encoding: [0x62,0xa2,0xed,0x20,0x28,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpmuldq 291(%rax,%r14,8), %ymm18, %ymm19

// CHECK: vpmuldq (%rcx){1to4}, %ymm18, %ymm19
// CHECK:  encoding: [0x62,0xe2,0xed,0x30,0x28,0x19]
          vpmuldq (%rcx){1to4}, %ymm18, %ymm19

// CHECK: vpmuldq 4064(%rdx), %ymm18, %ymm19
// CHECK:  encoding: [0x62,0xe2,0xed,0x20,0x28,0x5a,0x7f]
          vpmuldq 4064(%rdx), %ymm18, %ymm19

// CHECK: vpmuldq 4096(%rdx), %ymm18, %ymm19
// CHECK:  encoding: [0x62,0xe2,0xed,0x20,0x28,0x9a,0x00,0x10,0x00,0x00]
          vpmuldq 4096(%rdx), %ymm18, %ymm19

// CHECK: vpmuldq -4096(%rdx), %ymm18, %ymm19
// CHECK:  encoding: [0x62,0xe2,0xed,0x20,0x28,0x5a,0x80]
          vpmuldq -4096(%rdx), %ymm18, %ymm19

// CHECK: vpmuldq -4128(%rdx), %ymm18, %ymm19
// CHECK:  encoding: [0x62,0xe2,0xed,0x20,0x28,0x9a,0xe0,0xef,0xff,0xff]
          vpmuldq -4128(%rdx), %ymm18, %ymm19

// CHECK: vpmuldq 1016(%rdx){1to4}, %ymm18, %ymm19
// CHECK:  encoding: [0x62,0xe2,0xed,0x30,0x28,0x5a,0x7f]
          vpmuldq 1016(%rdx){1to4}, %ymm18, %ymm19

// CHECK: vpmuldq 1024(%rdx){1to4}, %ymm18, %ymm19
// CHECK:  encoding: [0x62,0xe2,0xed,0x30,0x28,0x9a,0x00,0x04,0x00,0x00]
          vpmuldq 1024(%rdx){1to4}, %ymm18, %ymm19

// CHECK: vpmuldq -1024(%rdx){1to4}, %ymm18, %ymm19
// CHECK:  encoding: [0x62,0xe2,0xed,0x30,0x28,0x5a,0x80]
          vpmuldq -1024(%rdx){1to4}, %ymm18, %ymm19

// CHECK: vpmuldq -1032(%rdx){1to4}, %ymm18, %ymm19
// CHECK:  encoding: [0x62,0xe2,0xed,0x30,0x28,0x9a,0xf8,0xfb,0xff,0xff]
          vpmuldq -1032(%rdx){1to4}, %ymm18, %ymm19

// CHECK: vcmppd $171, %xmm23, %xmm27, %k3
// CHECK:  encoding: [0x62,0xb1,0xa5,0x00,0xc2,0xdf,0xab]
          vcmppd $0xab, %xmm23, %xmm27, %k3

// CHECK: vcmppd $171, %xmm23, %xmm27, %k3 {%k5}
// CHECK:  encoding: [0x62,0xb1,0xa5,0x05,0xc2,0xdf,0xab]
          vcmppd $0xab, %xmm23, %xmm27, %k3 {%k5}

// CHECK: vcmppd $123, %xmm23, %xmm27, %k3
// CHECK:  encoding: [0x62,0xb1,0xa5,0x00,0xc2,0xdf,0x7b]
          vcmppd $0x7b, %xmm23, %xmm27, %k3

// CHECK: vcmppd $123, (%rcx), %xmm27, %k3
// CHECK:  encoding: [0x62,0xf1,0xa5,0x00,0xc2,0x19,0x7b]
          vcmppd $0x7b, (%rcx), %xmm27, %k3

// CHECK: vcmppd $123, 291(%rax,%r14,8), %xmm27, %k3
// CHECK:  encoding: [0x62,0xb1,0xa5,0x00,0xc2,0x9c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vcmppd $0x7b, 291(%rax,%r14,8), %xmm27, %k3

// CHECK: vcmppd $123, (%rcx){1to2}, %xmm27, %k3
// CHECK:  encoding: [0x62,0xf1,0xa5,0x10,0xc2,0x19,0x7b]
          vcmppd $0x7b, (%rcx){1to2}, %xmm27, %k3

// CHECK: vcmppd $123, 2032(%rdx), %xmm27, %k3
// CHECK:  encoding: [0x62,0xf1,0xa5,0x00,0xc2,0x5a,0x7f,0x7b]
          vcmppd $0x7b, 2032(%rdx), %xmm27, %k3

// CHECK: vcmppd $123, 2048(%rdx), %xmm27, %k3
// CHECK:  encoding: [0x62,0xf1,0xa5,0x00,0xc2,0x9a,0x00,0x08,0x00,0x00,0x7b]
          vcmppd $0x7b, 2048(%rdx), %xmm27, %k3

// CHECK: vcmppd $123, -2048(%rdx), %xmm27, %k3
// CHECK:  encoding: [0x62,0xf1,0xa5,0x00,0xc2,0x5a,0x80,0x7b]
          vcmppd $0x7b, -2048(%rdx), %xmm27, %k3

// CHECK: vcmppd $123, -2064(%rdx), %xmm27, %k3
// CHECK:  encoding: [0x62,0xf1,0xa5,0x00,0xc2,0x9a,0xf0,0xf7,0xff,0xff,0x7b]
          vcmppd $0x7b, -2064(%rdx), %xmm27, %k3

// CHECK: vcmppd $123, 1016(%rdx){1to2}, %xmm27, %k3
// CHECK:  encoding: [0x62,0xf1,0xa5,0x10,0xc2,0x5a,0x7f,0x7b]
          vcmppd $0x7b, 1016(%rdx){1to2}, %xmm27, %k3

// CHECK: vcmppd $123, 1024(%rdx){1to2}, %xmm27, %k3
// CHECK:  encoding: [0x62,0xf1,0xa5,0x10,0xc2,0x9a,0x00,0x04,0x00,0x00,0x7b]
          vcmppd $0x7b, 1024(%rdx){1to2}, %xmm27, %k3

// CHECK: vcmppd $123, -1024(%rdx){1to2}, %xmm27, %k3
// CHECK:  encoding: [0x62,0xf1,0xa5,0x10,0xc2,0x5a,0x80,0x7b]
          vcmppd $0x7b, -1024(%rdx){1to2}, %xmm27, %k3

// CHECK: vcmppd $123, -1032(%rdx){1to2}, %xmm27, %k3
// CHECK:  encoding: [0x62,0xf1,0xa5,0x10,0xc2,0x9a,0xf8,0xfb,0xff,0xff,0x7b]
          vcmppd $0x7b, -1032(%rdx){1to2}, %xmm27, %k3

// CHECK: vcmppd $171, %ymm27, %ymm17, %k4
// CHECK:  encoding: [0x62,0x91,0xf5,0x20,0xc2,0xe3,0xab]
          vcmppd $0xab, %ymm27, %ymm17, %k4

// CHECK: vcmppd $171, %ymm27, %ymm17, %k4 {%k7}
// CHECK:  encoding: [0x62,0x91,0xf5,0x27,0xc2,0xe3,0xab]
          vcmppd $0xab, %ymm27, %ymm17, %k4 {%k7}

// CHECK: vcmppd $123, %ymm27, %ymm17, %k4
// CHECK:  encoding: [0x62,0x91,0xf5,0x20,0xc2,0xe3,0x7b]
          vcmppd $0x7b, %ymm27, %ymm17, %k4

// CHECK: vcmppd $123, (%rcx), %ymm17, %k4
// CHECK:  encoding: [0x62,0xf1,0xf5,0x20,0xc2,0x21,0x7b]
          vcmppd $0x7b, (%rcx), %ymm17, %k4

// CHECK: vcmppd $123, 291(%rax,%r14,8), %ymm17, %k4
// CHECK:  encoding: [0x62,0xb1,0xf5,0x20,0xc2,0xa4,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vcmppd $0x7b, 291(%rax,%r14,8), %ymm17, %k4

// CHECK: vcmppd $123, (%rcx){1to4}, %ymm17, %k4
// CHECK:  encoding: [0x62,0xf1,0xf5,0x30,0xc2,0x21,0x7b]
          vcmppd $0x7b, (%rcx){1to4}, %ymm17, %k4

// CHECK: vcmppd $123, 4064(%rdx), %ymm17, %k4
// CHECK:  encoding: [0x62,0xf1,0xf5,0x20,0xc2,0x62,0x7f,0x7b]
          vcmppd $123, 4064(%rdx), %ymm17, %k4

// CHECK: vcmppd $123, 4096(%rdx), %ymm17, %k4
// CHECK:  encoding: [0x62,0xf1,0xf5,0x20,0xc2,0xa2,0x00,0x10,0x00,0x00,0x7b]
          vcmppd $0x7b, 4096(%rdx), %ymm17, %k4

// CHECK: vcmppd $123, -4096(%rdx), %ymm17, %k4
// CHECK:  encoding: [0x62,0xf1,0xf5,0x20,0xc2,0x62,0x80,0x7b]
          vcmppd $0x7b, -4096(%rdx), %ymm17, %k4

// CHECK: vcmppd $123, -4128(%rdx), %ymm17, %k4
// CHECK:  encoding: [0x62,0xf1,0xf5,0x20,0xc2,0xa2,0xe0,0xef,0xff,0xff,0x7b]
          vcmppd $0x7b, -4128(%rdx), %ymm17, %k4

// CHECK: vcmppd $123, 1016(%rdx){1to4}, %ymm17, %k4
// CHECK:  encoding: [0x62,0xf1,0xf5,0x30,0xc2,0x62,0x7f,0x7b]
          vcmppd $0x7b, 1016(%rdx){1to4}, %ymm17, %k4

// CHECK: vcmppd $123, 1024(%rdx){1to4}, %ymm17, %k4
// CHECK:  encoding: [0x62,0xf1,0xf5,0x30,0xc2,0xa2,0x00,0x04,0x00,0x00,0x7b]
          vcmppd $0x7b, 1024(%rdx){1to4}, %ymm17, %k4

// CHECK: vcmppd $123, -1024(%rdx){1to4}, %ymm17, %k4
// CHECK:  encoding: [0x62,0xf1,0xf5,0x30,0xc2,0x62,0x80,0x7b]
          vcmppd $0x7b, -1024(%rdx){1to4}, %ymm17, %k4

// CHECK: vcmppd $123, -1032(%rdx){1to4}, %ymm17, %k4
// CHECK:  encoding: [0x62,0xf1,0xf5,0x30,0xc2,0xa2,0xf8,0xfb,0xff,0xff,0x7b]
          vcmppd $0x7b, -1032(%rdx){1to4}, %ymm17, %k4

// CHECK: vcmpps $171, %xmm28, %xmm29, %k4
// CHECK:  encoding: [0x62,0x91,0x14,0x00,0xc2,0xe4,0xab]
          vcmpps $0xab, %xmm28, %xmm29, %k4

// CHECK: vcmpps $171, %xmm28, %xmm29, %k4 {%k2}
// CHECK:  encoding: [0x62,0x91,0x14,0x02,0xc2,0xe4,0xab]
          vcmpps $0xab, %xmm28, %xmm29, %k4 {%k2}

// CHECK: vcmpps $123, %xmm28, %xmm29, %k4
// CHECK:  encoding: [0x62,0x91,0x14,0x00,0xc2,0xe4,0x7b]
          vcmpps $0x7b, %xmm28, %xmm29, %k4

// CHECK: vcmpps $123, (%rcx), %xmm29, %k4
// CHECK:  encoding: [0x62,0xf1,0x14,0x00,0xc2,0x21,0x7b]
          vcmpps $0x7b, (%rcx), %xmm29, %k4

// CHECK: vcmpps $123, 291(%rax,%r14,8), %xmm29, %k4
// CHECK:  encoding: [0x62,0xb1,0x14,0x00,0xc2,0xa4,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vcmpps $0x7b, 291(%rax,%r14,8), %xmm29, %k4

// CHECK: vcmpps $123, (%rcx){1to4}, %xmm29, %k4
// CHECK:  encoding: [0x62,0xf1,0x14,0x10,0xc2,0x21,0x7b]
          vcmpps $0x7b, (%rcx){1to4}, %xmm29, %k4

// CHECK: vcmpps $123, 2032(%rdx), %xmm29, %k4
// CHECK:  encoding: [0x62,0xf1,0x14,0x00,0xc2,0x62,0x7f,0x7b]
          vcmpps $0x7b, 2032(%rdx), %xmm29, %k4

// CHECK: vcmpps $123, 2048(%rdx), %xmm29, %k4
// CHECK:  encoding: [0x62,0xf1,0x14,0x00,0xc2,0xa2,0x00,0x08,0x00,0x00,0x7b]
          vcmpps $0x7b, 2048(%rdx), %xmm29, %k4

// CHECK: vcmpps $123, -2048(%rdx), %xmm29, %k4
// CHECK:  encoding: [0x62,0xf1,0x14,0x00,0xc2,0x62,0x80,0x7b]
          vcmpps $0x7b, -2048(%rdx), %xmm29, %k4

// CHECK: vcmpps $123, -2064(%rdx), %xmm29, %k4
// CHECK:  encoding: [0x62,0xf1,0x14,0x00,0xc2,0xa2,0xf0,0xf7,0xff,0xff,0x7b]
          vcmpps $0x7b, -2064(%rdx), %xmm29, %k4

// CHECK: vcmpps $123, 508(%rdx){1to4}, %xmm29, %k4
// CHECK:  encoding: [0x62,0xf1,0x14,0x10,0xc2,0x62,0x7f,0x7b]
          vcmpps $123, 508(%rdx){1to4}, %xmm29, %k4

// CHECK: vcmpps $123, 512(%rdx){1to4}, %xmm29, %k4
// CHECK:  encoding: [0x62,0xf1,0x14,0x10,0xc2,0xa2,0x00,0x02,0x00,0x00,0x7b]
          vcmpps $123, 512(%rdx){1to4}, %xmm29, %k4

// CHECK: vcmpps $123, -512(%rdx){1to4}, %xmm29, %k4
// CHECK:  encoding: [0x62,0xf1,0x14,0x10,0xc2,0x62,0x80,0x7b]
          vcmpps $0x7b, -512(%rdx){1to4}, %xmm29, %k4

// CHECK: vcmpps $123, -516(%rdx){1to4}, %xmm29, %k4
// CHECK:  encoding: [0x62,0xf1,0x14,0x10,0xc2,0xa2,0xfc,0xfd,0xff,0xff,0x7b]
          vcmpps $0x7b, -516(%rdx){1to4}, %xmm29, %k4

// CHECK: vcmpps $171, %ymm18, %ymm19, %k4
// CHECK:  encoding: [0x62,0xb1,0x64,0x20,0xc2,0xe2,0xab]
          vcmpps $0xab, %ymm18, %ymm19, %k4

// CHECK: vcmpps $171, %ymm18, %ymm19, %k4 {%k1}
// CHECK:  encoding: [0x62,0xb1,0x64,0x21,0xc2,0xe2,0xab]
          vcmpps $0xab, %ymm18, %ymm19, %k4 {%k1}

// CHECK: vcmpps $123, %ymm18, %ymm19, %k4
// CHECK:  encoding: [0x62,0xb1,0x64,0x20,0xc2,0xe2,0x7b]
          vcmpps $0x7b, %ymm18, %ymm19, %k4

// CHECK: vcmpps $123, (%rcx), %ymm19, %k4
// CHECK:  encoding: [0x62,0xf1,0x64,0x20,0xc2,0x21,0x7b]
          vcmpps $0x7b, (%rcx), %ymm19, %k4

// CHECK: vcmpps $123, 291(%rax,%r14,8), %ymm19, %k4
// CHECK:  encoding: [0x62,0xb1,0x64,0x20,0xc2,0xa4,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vcmpps $0x7b, 291(%rax,%r14,8), %ymm19, %k4

// CHECK: vcmpps $123, (%rcx){1to8}, %ymm19, %k4
// CHECK:  encoding: [0x62,0xf1,0x64,0x30,0xc2,0x21,0x7b]
          vcmpps $0x7b, (%rcx){1to8}, %ymm19, %k4

// CHECK: vcmpps $123, 4064(%rdx), %ymm19, %k4
// CHECK:  encoding: [0x62,0xf1,0x64,0x20,0xc2,0x62,0x7f,0x7b]
          vcmpps $0x7b, 4064(%rdx), %ymm19, %k4

// CHECK: vcmpps $123, 4096(%rdx), %ymm19, %k4
// CHECK:  encoding: [0x62,0xf1,0x64,0x20,0xc2,0xa2,0x00,0x10,0x00,0x00,0x7b]
          vcmpps $0x7b, 4096(%rdx), %ymm19, %k4

// CHECK: vcmpps $123, -4096(%rdx), %ymm19, %k4
// CHECK:  encoding: [0x62,0xf1,0x64,0x20,0xc2,0x62,0x80,0x7b]
          vcmpps $0x7b, -4096(%rdx), %ymm19, %k4

// CHECK: vcmpps $123, -4128(%rdx), %ymm19, %k4
// CHECK:  encoding: [0x62,0xf1,0x64,0x20,0xc2,0xa2,0xe0,0xef,0xff,0xff,0x7b]
          vcmpps $0x7b, -4128(%rdx), %ymm19, %k4

// CHECK: vcmpps $123, 508(%rdx){1to8}, %ymm19, %k4
// CHECK:  encoding: [0x62,0xf1,0x64,0x30,0xc2,0x62,0x7f,0x7b]
          vcmpps $0x7b, 508(%rdx){1to8}, %ymm19, %k4

// CHECK: vcmpps $123, 512(%rdx){1to8}, %ymm19, %k4
// CHECK:  encoding: [0x62,0xf1,0x64,0x30,0xc2,0xa2,0x00,0x02,0x00,0x00,0x7b]
          vcmpps $0x7b, 512(%rdx){1to8}, %ymm19, %k4

// CHECK: vcmpps $123, -512(%rdx){1to8}, %ymm19, %k4
// CHECK:  encoding: [0x62,0xf1,0x64,0x30,0xc2,0x62,0x80,0x7b]
          vcmpps $0x7b, -512(%rdx){1to8}, %ymm19, %k4

// CHECK: vcmpps $123, -516(%rdx){1to8}, %ymm19, %k4
// CHECK:  encoding: [0x62,0xf1,0x64,0x30,0xc2,0xa2,0xfc,0xfd,0xff,0xff,0x7b]
          vcmpps $0x7b, -516(%rdx){1to8}, %ymm19, %k4

// CHECK: vbroadcastf32x4 (%rcx), %ymm28
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x1a,0x21]
          vbroadcastf32x4 (%rcx), %ymm28

// CHECK: vbroadcastf32x4 (%rcx), %ymm28 {%k4}
// CHECK:  encoding: [0x62,0x62,0x7d,0x2c,0x1a,0x21]
          vbroadcastf32x4 (%rcx), %ymm28 {%k4}

// CHECK: vbroadcastf32x4 (%rcx), %ymm28 {%k4} {z}
// CHECK:  encoding: [0x62,0x62,0x7d,0xac,0x1a,0x21]
          vbroadcastf32x4 (%rcx), %ymm28 {%k4} {z}

// CHECK: vbroadcastf32x4 291(%rax,%r14,8), %ymm28
// CHECK:  encoding: [0x62,0x22,0x7d,0x28,0x1a,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vbroadcastf32x4 291(%rax,%r14,8), %ymm28

// CHECK: vbroadcastf32x4 2032(%rdx), %ymm28
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x1a,0x62,0x7f]
          vbroadcastf32x4 2032(%rdx), %ymm28

// CHECK: vbroadcastf32x4 2048(%rdx), %ymm28
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x1a,0xa2,0x00,0x08,0x00,0x00]
          vbroadcastf32x4 2048(%rdx), %ymm28

// CHECK: vbroadcastf32x4 -2048(%rdx), %ymm28
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x1a,0x62,0x80]
          vbroadcastf32x4 -2048(%rdx), %ymm28

// CHECK: vbroadcastf32x4 -2064(%rdx), %ymm28
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x1a,0xa2,0xf0,0xf7,0xff,0xff]
          vbroadcastf32x4 -2064(%rdx), %ymm28

// CHECK: vbroadcasti32x4 (%rcx), %ymm19
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x5a,0x19]
          vbroadcasti32x4 (%rcx), %ymm19

// CHECK: vbroadcasti32x4 (%rcx), %ymm19 {%k5}
// CHECK:  encoding: [0x62,0xe2,0x7d,0x2d,0x5a,0x19]
          vbroadcasti32x4 (%rcx), %ymm19 {%k5}

// CHECK: vbroadcasti32x4 (%rcx), %ymm19 {%k5} {z}
// CHECK:  encoding: [0x62,0xe2,0x7d,0xad,0x5a,0x19]
          vbroadcasti32x4 (%rcx), %ymm19 {%k5} {z}

// CHECK: vbroadcasti32x4 291(%rax,%r14,8), %ymm19
// CHECK:  encoding: [0x62,0xa2,0x7d,0x28,0x5a,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vbroadcasti32x4 291(%rax,%r14,8), %ymm19

// CHECK: vbroadcasti32x4 2032(%rdx), %ymm19
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x5a,0x5a,0x7f]
          vbroadcasti32x4 2032(%rdx), %ymm19

// CHECK: vbroadcasti32x4 2048(%rdx), %ymm19
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x5a,0x9a,0x00,0x08,0x00,0x00]
          vbroadcasti32x4 2048(%rdx), %ymm19

// CHECK: vbroadcasti32x4 -2048(%rdx), %ymm19
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x5a,0x5a,0x80]
          vbroadcasti32x4 -2048(%rdx), %ymm19

// CHECK: vbroadcasti32x4 -2064(%rdx), %ymm19
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x5a,0x9a,0xf0,0xf7,0xff,0xff]
          vbroadcasti32x4 -2064(%rdx), %ymm19

// CHECK: vfixupimmps $171, %xmm17, %xmm17, %xmm25
// CHECK:  encoding: [0x62,0x23,0x75,0x00,0x54,0xc9,0xab]
          vfixupimmps $0xab, %xmm17, %xmm17, %xmm25

// CHECK: vfixupimmps $171, %xmm17, %xmm17, %xmm25 {%k3}
// CHECK:  encoding: [0x62,0x23,0x75,0x03,0x54,0xc9,0xab]
          vfixupimmps $0xab, %xmm17, %xmm17, %xmm25 {%k3}

// CHECK: vfixupimmps $171, %xmm17, %xmm17, %xmm25 {%k3} {z}
// CHECK:  encoding: [0x62,0x23,0x75,0x83,0x54,0xc9,0xab]
          vfixupimmps $0xab, %xmm17, %xmm17, %xmm25 {%k3} {z}

// CHECK: vfixupimmps $123, %xmm17, %xmm17, %xmm25
// CHECK:  encoding: [0x62,0x23,0x75,0x00,0x54,0xc9,0x7b]
          vfixupimmps $0x7b, %xmm17, %xmm17, %xmm25

// CHECK: vfixupimmps $123, (%rcx), %xmm17, %xmm25
// CHECK:  encoding: [0x62,0x63,0x75,0x00,0x54,0x09,0x7b]
          vfixupimmps $0x7b, (%rcx), %xmm17, %xmm25

// CHECK: vfixupimmps $123, 291(%rax,%r14,8), %xmm17, %xmm25
// CHECK:  encoding: [0x62,0x23,0x75,0x00,0x54,0x8c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vfixupimmps $0x7b, 291(%rax,%r14,8), %xmm17, %xmm25

// CHECK: vfixupimmps $123, (%rcx){1to4}, %xmm17, %xmm25
// CHECK:  encoding: [0x62,0x63,0x75,0x10,0x54,0x09,0x7b]
          vfixupimmps $0x7b, (%rcx){1to4}, %xmm17, %xmm25

// CHECK: vfixupimmps $123, 2032(%rdx), %xmm17, %xmm25
// CHECK:  encoding: [0x62,0x63,0x75,0x00,0x54,0x4a,0x7f,0x7b]
          vfixupimmps $0x7b, 2032(%rdx), %xmm17, %xmm25

// CHECK: vfixupimmps $123, 2048(%rdx), %xmm17, %xmm25
// CHECK:  encoding: [0x62,0x63,0x75,0x00,0x54,0x8a,0x00,0x08,0x00,0x00,0x7b]
          vfixupimmps $0x7b, 2048(%rdx), %xmm17, %xmm25

// CHECK: vfixupimmps $123, -2048(%rdx), %xmm17, %xmm25
// CHECK:  encoding: [0x62,0x63,0x75,0x00,0x54,0x4a,0x80,0x7b]
          vfixupimmps $0x7b, -2048(%rdx), %xmm17, %xmm25

// CHECK: vfixupimmps $123, -2064(%rdx), %xmm17, %xmm25
// CHECK:  encoding: [0x62,0x63,0x75,0x00,0x54,0x8a,0xf0,0xf7,0xff,0xff,0x7b]
          vfixupimmps $0x7b, -2064(%rdx), %xmm17, %xmm25

// CHECK: vfixupimmps $123, 508(%rdx){1to4}, %xmm17, %xmm25
// CHECK:  encoding: [0x62,0x63,0x75,0x10,0x54,0x4a,0x7f,0x7b]
          vfixupimmps $0x7b, 508(%rdx){1to4}, %xmm17, %xmm25

// CHECK: vfixupimmps $123, 512(%rdx){1to4}, %xmm17, %xmm25
// CHECK:  encoding: [0x62,0x63,0x75,0x10,0x54,0x8a,0x00,0x02,0x00,0x00,0x7b]
          vfixupimmps $0x7b, 512(%rdx){1to4}, %xmm17, %xmm25

// CHECK: vfixupimmps $123, -512(%rdx){1to4}, %xmm17, %xmm25
// CHECK:  encoding: [0x62,0x63,0x75,0x10,0x54,0x4a,0x80,0x7b]
          vfixupimmps $0x7b, -512(%rdx){1to4}, %xmm17, %xmm25

// CHECK: vfixupimmps $123, -516(%rdx){1to4}, %xmm17, %xmm25
// CHECK:  encoding: [0x62,0x63,0x75,0x10,0x54,0x8a,0xfc,0xfd,0xff,0xff,0x7b]
          vfixupimmps $0x7b, -516(%rdx){1to4}, %xmm17, %xmm25

// CHECK: vfixupimmps $171, %ymm28, %ymm21, %ymm30
// CHECK:  encoding: [0x62,0x03,0x55,0x20,0x54,0xf4,0xab]
          vfixupimmps $0xab, %ymm28, %ymm21, %ymm30

// CHECK: vfixupimmps $171, %ymm28, %ymm21, %ymm30 {%k4}
// CHECK:  encoding: [0x62,0x03,0x55,0x24,0x54,0xf4,0xab]
          vfixupimmps $0xab, %ymm28, %ymm21, %ymm30 {%k4}

// CHECK: vfixupimmps $171, %ymm28, %ymm21, %ymm30 {%k4} {z}
// CHECK:  encoding: [0x62,0x03,0x55,0xa4,0x54,0xf4,0xab]
          vfixupimmps $0xab, %ymm28, %ymm21, %ymm30 {%k4} {z}

// CHECK: vfixupimmps $123, %ymm28, %ymm21, %ymm30
// CHECK:  encoding: [0x62,0x03,0x55,0x20,0x54,0xf4,0x7b]
          vfixupimmps $0x7b, %ymm28, %ymm21, %ymm30

// CHECK: vfixupimmps $123, (%rcx), %ymm21, %ymm30
// CHECK:  encoding: [0x62,0x63,0x55,0x20,0x54,0x31,0x7b]
          vfixupimmps $0x7b, (%rcx), %ymm21, %ymm30

// CHECK: vfixupimmps $123, 291(%rax,%r14,8), %ymm21, %ymm30
// CHECK:  encoding: [0x62,0x23,0x55,0x20,0x54,0xb4,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vfixupimmps $0x7b, 291(%rax,%r14,8), %ymm21, %ymm30

// CHECK: vfixupimmps $123, (%rcx){1to8}, %ymm21, %ymm30
// CHECK:  encoding: [0x62,0x63,0x55,0x30,0x54,0x31,0x7b]
          vfixupimmps $0x7b, (%rcx){1to8}, %ymm21, %ymm30

// CHECK: vfixupimmps $123, 4064(%rdx), %ymm21, %ymm30
// CHECK:  encoding: [0x62,0x63,0x55,0x20,0x54,0x72,0x7f,0x7b]
          vfixupimmps $0x7b, 4064(%rdx), %ymm21, %ymm30

// CHECK: vfixupimmps $123, 4096(%rdx), %ymm21, %ymm30
// CHECK:  encoding: [0x62,0x63,0x55,0x20,0x54,0xb2,0x00,0x10,0x00,0x00,0x7b]
          vfixupimmps $0x7b, 4096(%rdx), %ymm21, %ymm30

// CHECK: vfixupimmps $123, -4096(%rdx), %ymm21, %ymm30
// CHECK:  encoding: [0x62,0x63,0x55,0x20,0x54,0x72,0x80,0x7b]
          vfixupimmps $0x7b, -4096(%rdx), %ymm21, %ymm30

// CHECK: vfixupimmps $123, -4128(%rdx), %ymm21, %ymm30
// CHECK:  encoding: [0x62,0x63,0x55,0x20,0x54,0xb2,0xe0,0xef,0xff,0xff,0x7b]
          vfixupimmps $0x7b, -4128(%rdx), %ymm21, %ymm30

// CHECK: vfixupimmps $123, 508(%rdx){1to8}, %ymm21, %ymm30
// CHECK:  encoding: [0x62,0x63,0x55,0x30,0x54,0x72,0x7f,0x7b]
          vfixupimmps $0x7b, 508(%rdx){1to8}, %ymm21, %ymm30

// CHECK: vfixupimmps $123, 512(%rdx){1to8}, %ymm21, %ymm30
// CHECK:  encoding: [0x62,0x63,0x55,0x30,0x54,0xb2,0x00,0x02,0x00,0x00,0x7b]
          vfixupimmps $0x7b, 512(%rdx){1to8}, %ymm21, %ymm30

// CHECK: vfixupimmps $123, -512(%rdx){1to8}, %ymm21, %ymm30
// CHECK:  encoding: [0x62,0x63,0x55,0x30,0x54,0x72,0x80,0x7b]
          vfixupimmps $0x7b, -512(%rdx){1to8}, %ymm21, %ymm30

// CHECK: vfixupimmps $123, -516(%rdx){1to8}, %ymm21, %ymm30
// CHECK:  encoding: [0x62,0x63,0x55,0x30,0x54,0xb2,0xfc,0xfd,0xff,0xff,0x7b]
          vfixupimmps $0x7b, -516(%rdx){1to8}, %ymm21, %ymm30

// CHECK: vfixupimmpd $171, %xmm25, %xmm18, %xmm24
// CHECK:  encoding: [0x62,0x03,0xed,0x00,0x54,0xc1,0xab]
          vfixupimmpd $0xab, %xmm25, %xmm18, %xmm24

// CHECK: vfixupimmpd $171, %xmm25, %xmm18, %xmm24 {%k3}
// CHECK:  encoding: [0x62,0x03,0xed,0x03,0x54,0xc1,0xab]
          vfixupimmpd $0xab, %xmm25, %xmm18, %xmm24 {%k3}

// CHECK: vfixupimmpd $171, %xmm25, %xmm18, %xmm24 {%k3} {z}
// CHECK:  encoding: [0x62,0x03,0xed,0x83,0x54,0xc1,0xab]
          vfixupimmpd $0xab, %xmm25, %xmm18, %xmm24 {%k3} {z}

// CHECK: vfixupimmpd $123, %xmm25, %xmm18, %xmm24
// CHECK:  encoding: [0x62,0x03,0xed,0x00,0x54,0xc1,0x7b]
          vfixupimmpd $0x7b, %xmm25, %xmm18, %xmm24

// CHECK: vfixupimmpd $123, (%rcx), %xmm18, %xmm24
// CHECK:  encoding: [0x62,0x63,0xed,0x00,0x54,0x01,0x7b]
          vfixupimmpd $0x7b, (%rcx), %xmm18, %xmm24

// CHECK: vfixupimmpd $123, 291(%rax,%r14,8), %xmm18, %xmm24
// CHECK:  encoding: [0x62,0x23,0xed,0x00,0x54,0x84,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vfixupimmpd $0x7b, 291(%rax,%r14,8), %xmm18, %xmm24

// CHECK: vfixupimmpd $123, (%rcx){1to2}, %xmm18, %xmm24
// CHECK:  encoding: [0x62,0x63,0xed,0x10,0x54,0x01,0x7b]
          vfixupimmpd $0x7b, (%rcx){1to2}, %xmm18, %xmm24

// CHECK: vfixupimmpd $123, 2032(%rdx), %xmm18, %xmm24
// CHECK:  encoding: [0x62,0x63,0xed,0x00,0x54,0x42,0x7f,0x7b]
          vfixupimmpd $0x7b, 2032(%rdx), %xmm18, %xmm24

// CHECK: vfixupimmpd $123, 2048(%rdx), %xmm18, %xmm24
// CHECK:  encoding: [0x62,0x63,0xed,0x00,0x54,0x82,0x00,0x08,0x00,0x00,0x7b]
          vfixupimmpd $0x7b, 2048(%rdx), %xmm18, %xmm24

// CHECK: vfixupimmpd $123, -2048(%rdx), %xmm18, %xmm24
// CHECK:  encoding: [0x62,0x63,0xed,0x00,0x54,0x42,0x80,0x7b]
          vfixupimmpd $0x7b, -2048(%rdx), %xmm18, %xmm24

// CHECK: vfixupimmpd $123, -2064(%rdx), %xmm18, %xmm24
// CHECK:  encoding: [0x62,0x63,0xed,0x00,0x54,0x82,0xf0,0xf7,0xff,0xff,0x7b]
          vfixupimmpd $0x7b, -2064(%rdx), %xmm18, %xmm24

// CHECK: vfixupimmpd $123, 1016(%rdx){1to2}, %xmm18, %xmm24
// CHECK:  encoding: [0x62,0x63,0xed,0x10,0x54,0x42,0x7f,0x7b]
          vfixupimmpd $0x7b, 1016(%rdx){1to2}, %xmm18, %xmm24

// CHECK: vfixupimmpd $123, 1024(%rdx){1to2}, %xmm18, %xmm24
// CHECK:  encoding: [0x62,0x63,0xed,0x10,0x54,0x82,0x00,0x04,0x00,0x00,0x7b]
          vfixupimmpd $0x7b, 1024(%rdx){1to2}, %xmm18, %xmm24

// CHECK: vfixupimmpd $123, -1024(%rdx){1to2}, %xmm18, %xmm24
// CHECK:  encoding: [0x62,0x63,0xed,0x10,0x54,0x42,0x80,0x7b]
          vfixupimmpd $0x7b, -1024(%rdx){1to2}, %xmm18, %xmm24

// CHECK: vfixupimmpd $123, -1032(%rdx){1to2}, %xmm18, %xmm24
// CHECK:  encoding: [0x62,0x63,0xed,0x10,0x54,0x82,0xf8,0xfb,0xff,0xff,0x7b]
          vfixupimmpd $0x7b, -1032(%rdx){1to2}, %xmm18, %xmm24

// CHECK: vfixupimmpd $171, %ymm28, %ymm22, %ymm18
// CHECK:  encoding: [0x62,0x83,0xcd,0x20,0x54,0xd4,0xab]
          vfixupimmpd $0xab, %ymm28, %ymm22, %ymm18

// CHECK: vfixupimmpd $171, %ymm28, %ymm22, %ymm18 {%k2}
// CHECK:  encoding: [0x62,0x83,0xcd,0x22,0x54,0xd4,0xab]
          vfixupimmpd $0xab, %ymm28, %ymm22, %ymm18 {%k2}

// CHECK: vfixupimmpd $171, %ymm28, %ymm22, %ymm18 {%k2} {z}
// CHECK:  encoding: [0x62,0x83,0xcd,0xa2,0x54,0xd4,0xab]
          vfixupimmpd $0xab, %ymm28, %ymm22, %ymm18 {%k2} {z}

// CHECK: vfixupimmpd $123, %ymm28, %ymm22, %ymm18
// CHECK:  encoding: [0x62,0x83,0xcd,0x20,0x54,0xd4,0x7b]
          vfixupimmpd $0x7b, %ymm28, %ymm22, %ymm18

// CHECK: vfixupimmpd $123, (%rcx), %ymm22, %ymm18
// CHECK:  encoding: [0x62,0xe3,0xcd,0x20,0x54,0x11,0x7b]
          vfixupimmpd $0x7b, (%rcx), %ymm22, %ymm18

// CHECK: vfixupimmpd $123, 291(%rax,%r14,8), %ymm22, %ymm18
// CHECK:  encoding: [0x62,0xa3,0xcd,0x20,0x54,0x94,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vfixupimmpd $0x7b, 291(%rax,%r14,8), %ymm22, %ymm18

// CHECK: vfixupimmpd $123, (%rcx){1to4}, %ymm22, %ymm18
// CHECK:  encoding: [0x62,0xe3,0xcd,0x30,0x54,0x11,0x7b]
          vfixupimmpd $0x7b, (%rcx){1to4}, %ymm22, %ymm18

// CHECK: vfixupimmpd $123, 4064(%rdx), %ymm22, %ymm18
// CHECK:  encoding: [0x62,0xe3,0xcd,0x20,0x54,0x52,0x7f,0x7b]
          vfixupimmpd $0x7b, 4064(%rdx), %ymm22, %ymm18

// CHECK: vfixupimmpd $123, 4096(%rdx), %ymm22, %ymm18
// CHECK:  encoding: [0x62,0xe3,0xcd,0x20,0x54,0x92,0x00,0x10,0x00,0x00,0x7b]
          vfixupimmpd $0x7b, 4096(%rdx), %ymm22, %ymm18

// CHECK: vfixupimmpd $123, -4096(%rdx), %ymm22, %ymm18
// CHECK:  encoding: [0x62,0xe3,0xcd,0x20,0x54,0x52,0x80,0x7b]
          vfixupimmpd $0x7b, -4096(%rdx), %ymm22, %ymm18

// CHECK: vfixupimmpd $123, -4128(%rdx), %ymm22, %ymm18
// CHECK:  encoding: [0x62,0xe3,0xcd,0x20,0x54,0x92,0xe0,0xef,0xff,0xff,0x7b]
          vfixupimmpd $0x7b, -4128(%rdx), %ymm22, %ymm18

// CHECK: vfixupimmpd $123, 1016(%rdx){1to4}, %ymm22, %ymm18
// CHECK:  encoding: [0x62,0xe3,0xcd,0x30,0x54,0x52,0x7f,0x7b]
          vfixupimmpd $0x7b, 1016(%rdx){1to4}, %ymm22, %ymm18

// CHECK: vfixupimmpd $123, 1024(%rdx){1to4}, %ymm22, %ymm18
// CHECK:  encoding: [0x62,0xe3,0xcd,0x30,0x54,0x92,0x00,0x04,0x00,0x00,0x7b]
          vfixupimmpd $0x7b, 1024(%rdx){1to4}, %ymm22, %ymm18

// CHECK: vfixupimmpd $123, -1024(%rdx){1to4}, %ymm22, %ymm18
// CHECK:  encoding: [0x62,0xe3,0xcd,0x30,0x54,0x52,0x80,0x7b]
          vfixupimmpd $0x7b, -1024(%rdx){1to4}, %ymm22, %ymm18

// CHECK: vfixupimmpd $123, -1032(%rdx){1to4}, %ymm22, %ymm18
// CHECK:  encoding: [0x62,0xe3,0xcd,0x30,0x54,0x92,0xf8,0xfb,0xff,0xff,0x7b]
          vfixupimmpd $0x7b, -1032(%rdx){1to4}, %ymm22, %ymm18

// CHECK: vpshufd $171, %xmm23, %xmm17
// CHECK:  encoding: [0x62,0xa1,0x7d,0x08,0x70,0xcf,0xab]
          vpshufd $171, %xmm23, %xmm17

// CHECK: vpshufd $171, %xmm23, %xmm17 {%k1}
// CHECK:  encoding: [0x62,0xa1,0x7d,0x09,0x70,0xcf,0xab]
          vpshufd $171, %xmm23, %xmm17 {%k1}

// CHECK: vpshufd $171, %xmm23, %xmm17 {%k1} {z}
// CHECK:  encoding: [0x62,0xa1,0x7d,0x89,0x70,0xcf,0xab]
          vpshufd $171, %xmm23, %xmm17 {%k1} {z}

// CHECK: vpshufd $123, %xmm23, %xmm17
// CHECK:  encoding: [0x62,0xa1,0x7d,0x08,0x70,0xcf,0x7b]
          vpshufd $123, %xmm23, %xmm17

// CHECK: vpshufd $123, (%rcx), %xmm17
// CHECK:  encoding: [0x62,0xe1,0x7d,0x08,0x70,0x09,0x7b]
          vpshufd $123, (%rcx), %xmm17

// CHECK: vpshufd $123, 291(%rax,%r14,8), %xmm17
// CHECK:  encoding: [0x62,0xa1,0x7d,0x08,0x70,0x8c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpshufd $123, 291(%rax,%r14,8), %xmm17


// CHECK: vpshufd $123, 2032(%rdx), %xmm17
// CHECK:  encoding: [0x62,0xe1,0x7d,0x08,0x70,0x4a,0x7f,0x7b]
          vpshufd $123, 2032(%rdx), %xmm17

// CHECK: vpshufd $123, (%rcx){1to4}, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x7d,0x18,0x70,0x09,0x7b]
          vpshufd $123, (%rcx){1to4}, %xmm17

// CHECK: vpshufd $123, 2048(%rdx), %xmm17
// CHECK:  encoding: [0x62,0xe1,0x7d,0x08,0x70,0x8a,0x00,0x08,0x00,0x00,0x7b]
          vpshufd $123, 2048(%rdx), %xmm17

// CHECK: vpshufd $123, -2048(%rdx), %xmm17
// CHECK:  encoding: [0x62,0xe1,0x7d,0x08,0x70,0x4a,0x80,0x7b]
          vpshufd $123, -2048(%rdx), %xmm17

// CHECK: vpshufd $123, -2064(%rdx), %xmm17
// CHECK:  encoding: [0x62,0xe1,0x7d,0x08,0x70,0x8a,0xf0,0xf7,0xff,0xff,0x7b]
          vpshufd $123, -2064(%rdx), %xmm17

// CHECK: vpshufd $123, 508(%rdx){1to4}, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x7d,0x18,0x70,0x4a,0x7f,0x7b]
          vpshufd $123, 508(%rdx){1to4}, %xmm17

// CHECK: vpshufd $123, 512(%rdx){1to4}, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x7d,0x18,0x70,0x8a,0x00,0x02,0x00,0x00,0x7b]
          vpshufd $123, 512(%rdx){1to4}, %xmm17

// CHECK: vpshufd $123, -512(%rdx){1to4}, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x7d,0x18,0x70,0x4a,0x80,0x7b]
          vpshufd $123, -512(%rdx){1to4}, %xmm17

// CHECK: vpshufd $123, -516(%rdx){1to4}, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x7d,0x18,0x70,0x8a,0xfc,0xfd,0xff,0xff,0x7b]
          vpshufd $123, -516(%rdx){1to4}, %xmm17

// CHECK: vpshufd $171, %ymm22, %ymm20
// CHECK:  encoding: [0x62,0xa1,0x7d,0x28,0x70,0xe6,0xab]
          vpshufd $171, %ymm22, %ymm20

// CHECK: vpshufd $171, %ymm22, %ymm20 {%k2}
// CHECK:  encoding: [0x62,0xa1,0x7d,0x2a,0x70,0xe6,0xab]
          vpshufd $171, %ymm22, %ymm20 {%k2}

// CHECK: vpshufd $171, %ymm22, %ymm20 {%k2} {z}
// CHECK:  encoding: [0x62,0xa1,0x7d,0xaa,0x70,0xe6,0xab]
          vpshufd $171, %ymm22, %ymm20 {%k2} {z}

// CHECK: vpshufd $123, %ymm22, %ymm20
// CHECK:  encoding: [0x62,0xa1,0x7d,0x28,0x70,0xe6,0x7b]
          vpshufd $123, %ymm22, %ymm20

// CHECK: vpshufd $123, (%rcx), %ymm20
// CHECK:  encoding: [0x62,0xe1,0x7d,0x28,0x70,0x21,0x7b]
          vpshufd $123, (%rcx), %ymm20

// CHECK: vpshufd $123, 291(%rax,%r14,8), %ymm20
// CHECK:  encoding: [0x62,0xa1,0x7d,0x28,0x70,0xa4,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpshufd $123, 291(%rax,%r14,8), %ymm20

// CHECK: vpshufd $123, (%rcx){1to8}, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x7d,0x38,0x70,0x21,0x7b]
          vpshufd $123, (%rcx){1to8}, %ymm20

// CHECK: vpshufd $123, 4064(%rdx), %ymm20
// CHECK:  encoding: [0x62,0xe1,0x7d,0x28,0x70,0x62,0x7f,0x7b]
          vpshufd $123, 4064(%rdx), %ymm20

// CHECK: vpshufd $123, 4096(%rdx), %ymm20
// CHECK:  encoding: [0x62,0xe1,0x7d,0x28,0x70,0xa2,0x00,0x10,0x00,0x00,0x7b]
          vpshufd $123, 4096(%rdx), %ymm20

// CHECK: vpshufd $123, -4096(%rdx), %ymm20
// CHECK:  encoding: [0x62,0xe1,0x7d,0x28,0x70,0x62,0x80,0x7b]
          vpshufd $123, -4096(%rdx), %ymm20

// CHECK: vpshufd $123, -4128(%rdx), %ymm20
// CHECK:  encoding: [0x62,0xe1,0x7d,0x28,0x70,0xa2,0xe0,0xef,0xff,0xff,0x7b]
          vpshufd $123, -4128(%rdx), %ymm20

// CHECK: vpshufd $123, 508(%rdx){1to8}, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x7d,0x38,0x70,0x62,0x7f,0x7b]
          vpshufd $123, 508(%rdx){1to8}, %ymm20

// CHECK: vpshufd $123, 512(%rdx){1to8}, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x7d,0x38,0x70,0xa2,0x00,0x02,0x00,0x00,0x7b]
          vpshufd $123, 512(%rdx){1to8}, %ymm20

// CHECK: vpshufd $123, -512(%rdx){1to8}, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x7d,0x38,0x70,0x62,0x80,0x7b]
          vpshufd $123, -512(%rdx){1to8}, %ymm20

// CHECK: vpshufd $123, -516(%rdx){1to8}, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x7d,0x38,0x70,0xa2,0xfc,0xfd,0xff,0xff,0x7b]
          vpshufd $123, -516(%rdx){1to8}, %ymm20

// CHECK: vgetexppd %xmm18, %xmm17
// CHECK:  encoding: [0x62,0xa2,0xfd,0x08,0x42,0xca]
          vgetexppd %xmm18, %xmm17

// CHECK: vgetexppd %xmm18, %xmm17 {%k1}
// CHECK:  encoding: [0x62,0xa2,0xfd,0x09,0x42,0xca]
          vgetexppd %xmm18, %xmm17 {%k1}

// CHECK: vgetexppd %xmm18, %xmm17 {%k1} {z}
// CHECK:  encoding: [0x62,0xa2,0xfd,0x89,0x42,0xca]
          vgetexppd %xmm18, %xmm17 {%k1} {z}

// CHECK: vgetexppd (%rcx), %xmm17
// CHECK:  encoding: [0x62,0xe2,0xfd,0x08,0x42,0x09]
          vgetexppd (%rcx), %xmm17

// CHECK: vgetexppd 291(%rax,%r14,8), %xmm17
// CHECK:  encoding: [0x62,0xa2,0xfd,0x08,0x42,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vgetexppd 291(%rax,%r14,8), %xmm17

// CHECK: vgetexppd (%rcx){1to2}, %xmm17
// CHECK:  encoding: [0x62,0xe2,0xfd,0x18,0x42,0x09]
          vgetexppd (%rcx){1to2}, %xmm17

// CHECK: vgetexppd 2032(%rdx), %xmm17
// CHECK:  encoding: [0x62,0xe2,0xfd,0x08,0x42,0x4a,0x7f]
          vgetexppd 2032(%rdx), %xmm17

// CHECK: vgetexppd 2048(%rdx), %xmm17
// CHECK:  encoding: [0x62,0xe2,0xfd,0x08,0x42,0x8a,0x00,0x08,0x00,0x00]
          vgetexppd 2048(%rdx), %xmm17

// CHECK: vgetexppd -2048(%rdx), %xmm17
// CHECK:  encoding: [0x62,0xe2,0xfd,0x08,0x42,0x4a,0x80]
          vgetexppd -2048(%rdx), %xmm17

// CHECK: vgetexppd -2064(%rdx), %xmm17
// CHECK:  encoding: [0x62,0xe2,0xfd,0x08,0x42,0x8a,0xf0,0xf7,0xff,0xff]
          vgetexppd -2064(%rdx), %xmm17

// CHECK: vgetexppd 1016(%rdx){1to2}, %xmm17
// CHECK:  encoding: [0x62,0xe2,0xfd,0x18,0x42,0x4a,0x7f]
          vgetexppd 1016(%rdx){1to2}, %xmm17

// CHECK: vgetexppd 1024(%rdx){1to2}, %xmm17
// CHECK:  encoding: [0x62,0xe2,0xfd,0x18,0x42,0x8a,0x00,0x04,0x00,0x00]
          vgetexppd 1024(%rdx){1to2}, %xmm17

// CHECK: vgetexppd -1024(%rdx){1to2}, %xmm17
// CHECK:  encoding: [0x62,0xe2,0xfd,0x18,0x42,0x4a,0x80]
          vgetexppd -1024(%rdx){1to2}, %xmm17

// CHECK: vgetexppd -1032(%rdx){1to2}, %xmm17
// CHECK:  encoding: [0x62,0xe2,0xfd,0x18,0x42,0x8a,0xf8,0xfb,0xff,0xff]
          vgetexppd -1032(%rdx){1to2}, %xmm17

// CHECK: vgetexppd %ymm17, %ymm20
// CHECK:  encoding: [0x62,0xa2,0xfd,0x28,0x42,0xe1]
          vgetexppd %ymm17, %ymm20

// CHECK: vgetexppd %ymm17, %ymm20 {%k3}
// CHECK:  encoding: [0x62,0xa2,0xfd,0x2b,0x42,0xe1]
          vgetexppd %ymm17, %ymm20 {%k3}

// CHECK: vgetexppd %ymm17, %ymm20 {%k3} {z}
// CHECK:  encoding: [0x62,0xa2,0xfd,0xab,0x42,0xe1]
          vgetexppd %ymm17, %ymm20 {%k3} {z}

// CHECK: vgetexppd (%rcx), %ymm20
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0x42,0x21]
          vgetexppd (%rcx), %ymm20

// CHECK: vgetexppd 291(%rax,%r14,8), %ymm20
// CHECK:  encoding: [0x62,0xa2,0xfd,0x28,0x42,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vgetexppd 291(%rax,%r14,8), %ymm20

// CHECK: vgetexppd (%rcx){1to4}, %ymm20
// CHECK:  encoding: [0x62,0xe2,0xfd,0x38,0x42,0x21]
          vgetexppd (%rcx){1to4}, %ymm20

// CHECK: vgetexppd 4064(%rdx), %ymm20
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0x42,0x62,0x7f]
          vgetexppd 4064(%rdx), %ymm20

// CHECK: vgetexppd 4096(%rdx), %ymm20
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0x42,0xa2,0x00,0x10,0x00,0x00]
          vgetexppd 4096(%rdx), %ymm20

// CHECK: vgetexppd -4096(%rdx), %ymm20
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0x42,0x62,0x80]
          vgetexppd -4096(%rdx), %ymm20

// CHECK: vgetexppd -4128(%rdx), %ymm20
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0x42,0xa2,0xe0,0xef,0xff,0xff]
          vgetexppd -4128(%rdx), %ymm20

// CHECK: vgetexppd 1016(%rdx){1to4}, %ymm20
// CHECK:  encoding: [0x62,0xe2,0xfd,0x38,0x42,0x62,0x7f]
          vgetexppd 1016(%rdx){1to4}, %ymm20

// CHECK: vgetexppd 1024(%rdx){1to4}, %ymm20
// CHECK:  encoding: [0x62,0xe2,0xfd,0x38,0x42,0xa2,0x00,0x04,0x00,0x00]
          vgetexppd 1024(%rdx){1to4}, %ymm20

// CHECK: vgetexppd -1024(%rdx){1to4}, %ymm20
// CHECK:  encoding: [0x62,0xe2,0xfd,0x38,0x42,0x62,0x80]
          vgetexppd -1024(%rdx){1to4}, %ymm20

// CHECK: vgetexppd -1032(%rdx){1to4}, %ymm20
// CHECK:  encoding: [0x62,0xe2,0xfd,0x38,0x42,0xa2,0xf8,0xfb,0xff,0xff]
          vgetexppd -1032(%rdx){1to4}, %ymm20

// CHECK: vgetexpps %xmm27, %xmm17
// CHECK:  encoding: [0x62,0x82,0x7d,0x08,0x42,0xcb]
          vgetexpps %xmm27, %xmm17

// CHECK: vgetexpps %xmm27, %xmm17 {%k2}
// CHECK:  encoding: [0x62,0x82,0x7d,0x0a,0x42,0xcb]
          vgetexpps %xmm27, %xmm17 {%k2}

// CHECK: vgetexpps %xmm27, %xmm17 {%k2} {z}
// CHECK:  encoding: [0x62,0x82,0x7d,0x8a,0x42,0xcb]
          vgetexpps %xmm27, %xmm17 {%k2} {z}

// CHECK: vgetexpps (%rcx), %xmm17
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x42,0x09]
          vgetexpps (%rcx), %xmm17

// CHECK: vgetexpps 291(%rax,%r14,8), %xmm17
// CHECK:  encoding: [0x62,0xa2,0x7d,0x08,0x42,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vgetexpps 291(%rax,%r14,8), %xmm17

// CHECK: vgetexpps (%rcx){1to4}, %xmm17
// CHECK:  encoding: [0x62,0xe2,0x7d,0x18,0x42,0x09]
          vgetexpps (%rcx){1to4}, %xmm17

// CHECK: vgetexpps 2032(%rdx), %xmm17
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x42,0x4a,0x7f]
          vgetexpps 2032(%rdx), %xmm17

// CHECK: vgetexpps 2048(%rdx), %xmm17
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x42,0x8a,0x00,0x08,0x00,0x00]
          vgetexpps 2048(%rdx), %xmm17

// CHECK: vgetexpps -2048(%rdx), %xmm17
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x42,0x4a,0x80]
          vgetexpps -2048(%rdx), %xmm17

// CHECK: vgetexpps -2064(%rdx), %xmm17
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x42,0x8a,0xf0,0xf7,0xff,0xff]
          vgetexpps -2064(%rdx), %xmm17

// CHECK: vgetexpps 508(%rdx){1to4}, %xmm17
// CHECK:  encoding: [0x62,0xe2,0x7d,0x18,0x42,0x4a,0x7f]
          vgetexpps 508(%rdx){1to4}, %xmm17

// CHECK: vgetexpps 512(%rdx){1to4}, %xmm17
// CHECK:  encoding: [0x62,0xe2,0x7d,0x18,0x42,0x8a,0x00,0x02,0x00,0x00]
          vgetexpps 512(%rdx){1to4}, %xmm17

// CHECK: vgetexpps -512(%rdx){1to4}, %xmm17
// CHECK:  encoding: [0x62,0xe2,0x7d,0x18,0x42,0x4a,0x80]
          vgetexpps -512(%rdx){1to4}, %xmm17

// CHECK: vgetexpps -516(%rdx){1to4}, %xmm17
// CHECK:  encoding: [0x62,0xe2,0x7d,0x18,0x42,0x8a,0xfc,0xfd,0xff,0xff]
          vgetexpps -516(%rdx){1to4}, %xmm17

// CHECK: vgetexpps %ymm29, %ymm30
// CHECK:  encoding: [0x62,0x02,0x7d,0x28,0x42,0xf5]
          vgetexpps %ymm29, %ymm30

// CHECK: vgetexpps %ymm29, %ymm30 {%k6}
// CHECK:  encoding: [0x62,0x02,0x7d,0x2e,0x42,0xf5]
          vgetexpps %ymm29, %ymm30 {%k6}

// CHECK: vgetexpps %ymm29, %ymm30 {%k6} {z}
// CHECK:  encoding: [0x62,0x02,0x7d,0xae,0x42,0xf5]
          vgetexpps %ymm29, %ymm30 {%k6} {z}

// CHECK: vgetexpps (%rcx), %ymm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x42,0x31]
          vgetexpps (%rcx), %ymm30

// CHECK: vgetexpps 291(%rax,%r14,8), %ymm30
// CHECK:  encoding: [0x62,0x22,0x7d,0x28,0x42,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vgetexpps 291(%rax,%r14,8), %ymm30

// CHECK: vgetexpps (%rcx){1to8}, %ymm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x38,0x42,0x31]
          vgetexpps (%rcx){1to8}, %ymm30

// CHECK: vgetexpps 4064(%rdx), %ymm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x42,0x72,0x7f]
          vgetexpps 4064(%rdx), %ymm30

// CHECK: vgetexpps 4096(%rdx), %ymm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x42,0xb2,0x00,0x10,0x00,0x00]
          vgetexpps 4096(%rdx), %ymm30

// CHECK: vgetexpps -4096(%rdx), %ymm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x42,0x72,0x80]
          vgetexpps -4096(%rdx), %ymm30

// CHECK: vgetexpps -4128(%rdx), %ymm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x42,0xb2,0xe0,0xef,0xff,0xff]
          vgetexpps -4128(%rdx), %ymm30

// CHECK: vgetexpps 508(%rdx){1to8}, %ymm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x38,0x42,0x72,0x7f]
          vgetexpps 508(%rdx){1to8}, %ymm30

// CHECK: vgetexpps 512(%rdx){1to8}, %ymm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x38,0x42,0xb2,0x00,0x02,0x00,0x00]
          vgetexpps 512(%rdx){1to8}, %ymm30

// CHECK: vgetexpps -512(%rdx){1to8}, %ymm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x38,0x42,0x72,0x80]
          vgetexpps -512(%rdx){1to8}, %ymm30

// CHECK: vgetexpps -516(%rdx){1to8}, %ymm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x38,0x42,0xb2,0xfc,0xfd,0xff,0xff]
          vgetexpps -516(%rdx){1to8}, %ymm30

// CHECK: vshuff32x4 $171, %ymm18, %ymm27, %ymm29
// CHECK:  encoding: [0x62,0x23,0x25,0x20,0x23,0xea,0xab]
          vshuff32x4 $0xab, %ymm18, %ymm27, %ymm29

// CHECK: vshuff32x4 $171, %ymm18, %ymm27, %ymm29 {%k7}
// CHECK:  encoding: [0x62,0x23,0x25,0x27,0x23,0xea,0xab]
          vshuff32x4 $0xab, %ymm18, %ymm27, %ymm29 {%k7}

// CHECK: vshuff32x4 $171, %ymm18, %ymm27, %ymm29 {%k7} {z}
// CHECK:  encoding: [0x62,0x23,0x25,0xa7,0x23,0xea,0xab]
          vshuff32x4 $0xab, %ymm18, %ymm27, %ymm29 {%k7} {z}

// CHECK: vshuff32x4 $123, %ymm18, %ymm27, %ymm29
// CHECK:  encoding: [0x62,0x23,0x25,0x20,0x23,0xea,0x7b]
          vshuff32x4 $0x7b, %ymm18, %ymm27, %ymm29

// CHECK: vshuff32x4 $123, (%rcx), %ymm27, %ymm29
// CHECK:  encoding: [0x62,0x63,0x25,0x20,0x23,0x29,0x7b]
          vshuff32x4 $0x7b, (%rcx), %ymm27, %ymm29

// CHECK: vshuff32x4 $123, 291(%rax,%r14,8), %ymm27, %ymm29
// CHECK:  encoding: [0x62,0x23,0x25,0x20,0x23,0xac,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vshuff32x4 $0x7b, 291(%rax,%r14,8), %ymm27, %ymm29

// CHECK: vshuff32x4 $123, (%rcx){1to8}, %ymm27, %ymm29
// CHECK:  encoding: [0x62,0x63,0x25,0x30,0x23,0x29,0x7b]
          vshuff32x4 $0x7b, (%rcx){1to8}, %ymm27, %ymm29

// CHECK: vshuff32x4 $123, 4064(%rdx), %ymm27, %ymm29
// CHECK:  encoding: [0x62,0x63,0x25,0x20,0x23,0x6a,0x7f,0x7b]
          vshuff32x4 $0x7b, 4064(%rdx), %ymm27, %ymm29

// CHECK: vshuff32x4 $123, 4096(%rdx), %ymm27, %ymm29
// CHECK:  encoding: [0x62,0x63,0x25,0x20,0x23,0xaa,0x00,0x10,0x00,0x00,0x7b]
          vshuff32x4 $0x7b, 4096(%rdx), %ymm27, %ymm29

// CHECK: vshuff32x4 $123, -4096(%rdx), %ymm27, %ymm29
// CHECK:  encoding: [0x62,0x63,0x25,0x20,0x23,0x6a,0x80,0x7b]
          vshuff32x4 $0x7b, -4096(%rdx), %ymm27, %ymm29

// CHECK: vshuff32x4 $123, -4128(%rdx), %ymm27, %ymm29
// CHECK:  encoding: [0x62,0x63,0x25,0x20,0x23,0xaa,0xe0,0xef,0xff,0xff,0x7b]
          vshuff32x4 $0x7b, -4128(%rdx), %ymm27, %ymm29

// CHECK: vshuff32x4 $123, 508(%rdx){1to8}, %ymm27, %ymm29
// CHECK:  encoding: [0x62,0x63,0x25,0x30,0x23,0x6a,0x7f,0x7b]
          vshuff32x4 $0x7b, 508(%rdx){1to8}, %ymm27, %ymm29

// CHECK: vshuff32x4 $123, 512(%rdx){1to8}, %ymm27, %ymm29
// CHECK:  encoding: [0x62,0x63,0x25,0x30,0x23,0xaa,0x00,0x02,0x00,0x00,0x7b]
          vshuff32x4 $0x7b, 512(%rdx){1to8}, %ymm27, %ymm29

// CHECK: vshuff32x4 $123, -512(%rdx){1to8}, %ymm27, %ymm29
// CHECK:  encoding: [0x62,0x63,0x25,0x30,0x23,0x6a,0x80,0x7b]
          vshuff32x4 $0x7b, -512(%rdx){1to8}, %ymm27, %ymm29

// CHECK: vshuff32x4 $123, -516(%rdx){1to8}, %ymm27, %ymm29
// CHECK:  encoding: [0x62,0x63,0x25,0x30,0x23,0xaa,0xfc,0xfd,0xff,0xff,0x7b]
          vshuff32x4 $0x7b, -516(%rdx){1to8}, %ymm27, %ymm29

// CHECK: vshuff64x2 $171, %ymm20, %ymm18, %ymm18
// CHECK:  encoding: [0x62,0xa3,0xed,0x20,0x23,0xd4,0xab]
          vshuff64x2 $0xab, %ymm20, %ymm18, %ymm18

// CHECK: vshuff64x2 $171, %ymm20, %ymm18, %ymm18 {%k5}
// CHECK:  encoding: [0x62,0xa3,0xed,0x25,0x23,0xd4,0xab]
          vshuff64x2 $0xab, %ymm20, %ymm18, %ymm18 {%k5}

// CHECK: vshuff64x2 $171, %ymm20, %ymm18, %ymm18 {%k5} {z}
// CHECK:  encoding: [0x62,0xa3,0xed,0xa5,0x23,0xd4,0xab]
          vshuff64x2 $0xab, %ymm20, %ymm18, %ymm18 {%k5} {z}

// CHECK: vshuff64x2 $123, %ymm20, %ymm18, %ymm18
// CHECK:  encoding: [0x62,0xa3,0xed,0x20,0x23,0xd4,0x7b]
          vshuff64x2 $0x7b, %ymm20, %ymm18, %ymm18

// CHECK: vshuff64x2 $123, (%rcx), %ymm18, %ymm18
// CHECK:  encoding: [0x62,0xe3,0xed,0x20,0x23,0x11,0x7b]
          vshuff64x2 $0x7b, (%rcx), %ymm18, %ymm18

// CHECK: vshuff64x2 $123, 291(%rax,%r14,8), %ymm18, %ymm18
// CHECK:  encoding: [0x62,0xa3,0xed,0x20,0x23,0x94,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vshuff64x2 $0x7b, 291(%rax,%r14,8), %ymm18, %ymm18

// CHECK: vshuff64x2 $123, (%rcx){1to4}, %ymm18, %ymm18
// CHECK:  encoding: [0x62,0xe3,0xed,0x30,0x23,0x11,0x7b]
          vshuff64x2 $0x7b, (%rcx){1to4}, %ymm18, %ymm18

// CHECK: vshuff64x2 $123, 4064(%rdx), %ymm18, %ymm18
// CHECK:  encoding: [0x62,0xe3,0xed,0x20,0x23,0x52,0x7f,0x7b]
          vshuff64x2 $0x7b, 4064(%rdx), %ymm18, %ymm18

// CHECK: vshuff64x2 $123, 4096(%rdx), %ymm18, %ymm18
// CHECK:  encoding: [0x62,0xe3,0xed,0x20,0x23,0x92,0x00,0x10,0x00,0x00,0x7b]
          vshuff64x2 $0x7b, 4096(%rdx), %ymm18, %ymm18

// CHECK: vshuff64x2 $123, -4096(%rdx), %ymm18, %ymm18
// CHECK:  encoding: [0x62,0xe3,0xed,0x20,0x23,0x52,0x80,0x7b]
          vshuff64x2 $0x7b, -4096(%rdx), %ymm18, %ymm18

// CHECK: vshuff64x2 $123, -4128(%rdx), %ymm18, %ymm18
// CHECK:  encoding: [0x62,0xe3,0xed,0x20,0x23,0x92,0xe0,0xef,0xff,0xff,0x7b]
          vshuff64x2 $0x7b, -4128(%rdx), %ymm18, %ymm18

// CHECK: vshuff64x2 $123, 1016(%rdx){1to4}, %ymm18, %ymm18
// CHECK:  encoding: [0x62,0xe3,0xed,0x30,0x23,0x52,0x7f,0x7b]
          vshuff64x2 $0x7b, 1016(%rdx){1to4}, %ymm18, %ymm18

// CHECK: vshuff64x2 $123, 1024(%rdx){1to4}, %ymm18, %ymm18
// CHECK:  encoding: [0x62,0xe3,0xed,0x30,0x23,0x92,0x00,0x04,0x00,0x00,0x7b]
          vshuff64x2 $0x7b, 1024(%rdx){1to4}, %ymm18, %ymm18

// CHECK: vshuff64x2 $123, -1024(%rdx){1to4}, %ymm18, %ymm18
// CHECK:  encoding: [0x62,0xe3,0xed,0x30,0x23,0x52,0x80,0x7b]
          vshuff64x2 $0x7b, -1024(%rdx){1to4}, %ymm18, %ymm18

// CHECK: vshuff64x2 $123, -1032(%rdx){1to4}, %ymm18, %ymm18
// CHECK:  encoding: [0x62,0xe3,0xed,0x30,0x23,0x92,0xf8,0xfb,0xff,0xff,0x7b]
          vshuff64x2 $0x7b, -1032(%rdx){1to4}, %ymm18, %ymm18

// CHECK: vshufi32x4 $171, %ymm17, %ymm27, %ymm18
// CHECK:  encoding: [0x62,0xa3,0x25,0x20,0x43,0xd1,0xab]
          vshufi32x4 $0xab, %ymm17, %ymm27, %ymm18

// CHECK: vshufi32x4 $171, %ymm17, %ymm27, %ymm18 {%k7}
// CHECK:  encoding: [0x62,0xa3,0x25,0x27,0x43,0xd1,0xab]
          vshufi32x4 $0xab, %ymm17, %ymm27, %ymm18 {%k7}

// CHECK: vshufi32x4 $171, %ymm17, %ymm27, %ymm18 {%k7} {z}
// CHECK:  encoding: [0x62,0xa3,0x25,0xa7,0x43,0xd1,0xab]
          vshufi32x4 $0xab, %ymm17, %ymm27, %ymm18 {%k7} {z}

// CHECK: vshufi32x4 $123, %ymm17, %ymm27, %ymm18
// CHECK:  encoding: [0x62,0xa3,0x25,0x20,0x43,0xd1,0x7b]
          vshufi32x4 $0x7b, %ymm17, %ymm27, %ymm18

// CHECK: vshufi32x4 $123, (%rcx), %ymm27, %ymm18
// CHECK:  encoding: [0x62,0xe3,0x25,0x20,0x43,0x11,0x7b]
          vshufi32x4 $0x7b, (%rcx), %ymm27, %ymm18

// CHECK: vshufi32x4 $123, 291(%rax,%r14,8), %ymm27, %ymm18
// CHECK:  encoding: [0x62,0xa3,0x25,0x20,0x43,0x94,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vshufi32x4 $0x7b, 291(%rax,%r14,8), %ymm27, %ymm18

// CHECK: vshufi32x4 $123, (%rcx){1to8}, %ymm27, %ymm18
// CHECK:  encoding: [0x62,0xe3,0x25,0x30,0x43,0x11,0x7b]
          vshufi32x4 $0x7b, (%rcx){1to8}, %ymm27, %ymm18

// CHECK: vshufi32x4 $123, 4064(%rdx), %ymm27, %ymm18
// CHECK:  encoding: [0x62,0xe3,0x25,0x20,0x43,0x52,0x7f,0x7b]
          vshufi32x4 $0x7b, 4064(%rdx), %ymm27, %ymm18

// CHECK: vshufi32x4 $123, 4096(%rdx), %ymm27, %ymm18
// CHECK:  encoding: [0x62,0xe3,0x25,0x20,0x43,0x92,0x00,0x10,0x00,0x00,0x7b]
          vshufi32x4 $0x7b, 4096(%rdx), %ymm27, %ymm18

// CHECK: vshufi32x4 $123, -4096(%rdx), %ymm27, %ymm18
// CHECK:  encoding: [0x62,0xe3,0x25,0x20,0x43,0x52,0x80,0x7b]
          vshufi32x4 $0x7b, -4096(%rdx), %ymm27, %ymm18

// CHECK: vshufi32x4 $123, -4128(%rdx), %ymm27, %ymm18
// CHECK:  encoding: [0x62,0xe3,0x25,0x20,0x43,0x92,0xe0,0xef,0xff,0xff,0x7b]
          vshufi32x4 $0x7b, -4128(%rdx), %ymm27, %ymm18

// CHECK: vshufi32x4 $123, 508(%rdx){1to8}, %ymm27, %ymm18
// CHECK:  encoding: [0x62,0xe3,0x25,0x30,0x43,0x52,0x7f,0x7b]
          vshufi32x4 $0x7b, 508(%rdx){1to8}, %ymm27, %ymm18

// CHECK: vshufi32x4 $123, 512(%rdx){1to8}, %ymm27, %ymm18
// CHECK:  encoding: [0x62,0xe3,0x25,0x30,0x43,0x92,0x00,0x02,0x00,0x00,0x7b]
          vshufi32x4 $0x7b, 512(%rdx){1to8}, %ymm27, %ymm18

// CHECK: vshufi32x4 $123, -512(%rdx){1to8}, %ymm27, %ymm18
// CHECK:  encoding: [0x62,0xe3,0x25,0x30,0x43,0x52,0x80,0x7b]
          vshufi32x4 $0x7b, -512(%rdx){1to8}, %ymm27, %ymm18

// CHECK: vshufi32x4 $123, -516(%rdx){1to8}, %ymm27, %ymm18
// CHECK:  encoding: [0x62,0xe3,0x25,0x30,0x43,0x92,0xfc,0xfd,0xff,0xff,0x7b]
          vshufi32x4 $0x7b, -516(%rdx){1to8}, %ymm27, %ymm18

// CHECK: vshufi64x2 $171, %ymm21, %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x23,0xad,0x20,0x43,0xcd,0xab]
          vshufi64x2 $0xab, %ymm21, %ymm26, %ymm25

// CHECK: vshufi64x2 $171, %ymm21, %ymm26, %ymm25 {%k3}
// CHECK:  encoding: [0x62,0x23,0xad,0x23,0x43,0xcd,0xab]
          vshufi64x2 $0xab, %ymm21, %ymm26, %ymm25 {%k3}

// CHECK: vshufi64x2 $171, %ymm21, %ymm26, %ymm25 {%k3} {z}
// CHECK:  encoding: [0x62,0x23,0xad,0xa3,0x43,0xcd,0xab]
          vshufi64x2 $0xab, %ymm21, %ymm26, %ymm25 {%k3} {z}

// CHECK: vshufi64x2 $123, %ymm21, %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x23,0xad,0x20,0x43,0xcd,0x7b]
          vshufi64x2 $0x7b, %ymm21, %ymm26, %ymm25

// CHECK: vshufi64x2 $123, (%rcx), %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x63,0xad,0x20,0x43,0x09,0x7b]
          vshufi64x2 $0x7b, (%rcx), %ymm26, %ymm25

// CHECK: vshufi64x2 $123, 291(%rax,%r14,8), %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x23,0xad,0x20,0x43,0x8c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vshufi64x2 $0x7b, 291(%rax,%r14,8), %ymm26, %ymm25

// CHECK: vshufi64x2 $123, (%rcx){1to4}, %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x63,0xad,0x30,0x43,0x09,0x7b]
          vshufi64x2 $0x7b, (%rcx){1to4}, %ymm26, %ymm25

// CHECK: vshufi64x2 $123, 4064(%rdx), %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x63,0xad,0x20,0x43,0x4a,0x7f,0x7b]
          vshufi64x2 $0x7b, 4064(%rdx), %ymm26, %ymm25

// CHECK: vshufi64x2 $123, 4096(%rdx), %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x63,0xad,0x20,0x43,0x8a,0x00,0x10,0x00,0x00,0x7b]
          vshufi64x2 $0x7b, 4096(%rdx), %ymm26, %ymm25

// CHECK: vshufi64x2 $123, -4096(%rdx), %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x63,0xad,0x20,0x43,0x4a,0x80,0x7b]
          vshufi64x2 $0x7b, -4096(%rdx), %ymm26, %ymm25

// CHECK: vshufi64x2 $123, -4128(%rdx), %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x63,0xad,0x20,0x43,0x8a,0xe0,0xef,0xff,0xff,0x7b]
          vshufi64x2 $0x7b, -4128(%rdx), %ymm26, %ymm25

// CHECK: vshufi64x2 $123, 1016(%rdx){1to4}, %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x63,0xad,0x30,0x43,0x4a,0x7f,0x7b]
          vshufi64x2 $0x7b, 1016(%rdx){1to4}, %ymm26, %ymm25

// CHECK: vshufi64x2 $123, 1024(%rdx){1to4}, %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x63,0xad,0x30,0x43,0x8a,0x00,0x04,0x00,0x00,0x7b]
          vshufi64x2 $0x7b, 1024(%rdx){1to4}, %ymm26, %ymm25

// CHECK: vshufi64x2 $123, -1024(%rdx){1to4}, %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x63,0xad,0x30,0x43,0x4a,0x80,0x7b]
          vshufi64x2 $0x7b, -1024(%rdx){1to4}, %ymm26, %ymm25

// CHECK: vshufi64x2 $123, -1032(%rdx){1to4}, %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x63,0xad,0x30,0x43,0x8a,0xf8,0xfb,0xff,0xff,0x7b]
          vshufi64x2 $0x7b, -1032(%rdx){1to4}, %ymm26, %ymm25

// CHECK: valignq $171, %xmm24, %xmm18, %xmm19
// CHECK:  encoding: [0x62,0x83,0xed,0x00,0x03,0xd8,0xab]
          valignq $0xab, %xmm24, %xmm18, %xmm19

// CHECK: valignq $171, %xmm24, %xmm18, %xmm19 {%k5}
// CHECK:  encoding: [0x62,0x83,0xed,0x05,0x03,0xd8,0xab]
          valignq $0xab, %xmm24, %xmm18, %xmm19 {%k5}

// CHECK: valignq $171, %xmm24, %xmm18, %xmm19 {%k5} {z}
// CHECK:  encoding: [0x62,0x83,0xed,0x85,0x03,0xd8,0xab]
          valignq $0xab, %xmm24, %xmm18, %xmm19 {%k5} {z}

// CHECK: valignq $123, %xmm24, %xmm18, %xmm19
// CHECK:  encoding: [0x62,0x83,0xed,0x00,0x03,0xd8,0x7b]
          valignq $0x7b, %xmm24, %xmm18, %xmm19

// CHECK: valignq $123, (%rcx), %xmm18, %xmm19
// CHECK:  encoding: [0x62,0xe3,0xed,0x00,0x03,0x19,0x7b]
          valignq $0x7b, (%rcx), %xmm18, %xmm19

// CHECK: valignq $123, 291(%rax,%r14,8), %xmm18, %xmm19
// CHECK:  encoding: [0x62,0xa3,0xed,0x00,0x03,0x9c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          valignq $0x7b, 291(%rax,%r14,8), %xmm18, %xmm19

// CHECK: valignq $123, (%rcx){1to2}, %xmm18, %xmm19
// CHECK:  encoding: [0x62,0xe3,0xed,0x10,0x03,0x19,0x7b]
          valignq $0x7b, (%rcx){1to2}, %xmm18, %xmm19

// CHECK: valignq $123, 2032(%rdx), %xmm18, %xmm19
// CHECK:  encoding: [0x62,0xe3,0xed,0x00,0x03,0x5a,0x7f,0x7b]
          valignq $0x7b, 2032(%rdx), %xmm18, %xmm19

// CHECK: valignq $123, 2048(%rdx), %xmm18, %xmm19
// CHECK:  encoding: [0x62,0xe3,0xed,0x00,0x03,0x9a,0x00,0x08,0x00,0x00,0x7b]
          valignq $0x7b, 2048(%rdx), %xmm18, %xmm19

// CHECK: valignq $123, -2048(%rdx), %xmm18, %xmm19
// CHECK:  encoding: [0x62,0xe3,0xed,0x00,0x03,0x5a,0x80,0x7b]
          valignq $0x7b, -2048(%rdx), %xmm18, %xmm19

// CHECK: valignq $123, -2064(%rdx), %xmm18, %xmm19
// CHECK:  encoding: [0x62,0xe3,0xed,0x00,0x03,0x9a,0xf0,0xf7,0xff,0xff,0x7b]
          valignq $0x7b, -2064(%rdx), %xmm18, %xmm19

// CHECK: valignq $123, 1016(%rdx){1to2}, %xmm18, %xmm19
// CHECK:  encoding: [0x62,0xe3,0xed,0x10,0x03,0x5a,0x7f,0x7b]
          valignq $0x7b, 1016(%rdx){1to2}, %xmm18, %xmm19

// CHECK: valignq $123, 1024(%rdx){1to2}, %xmm18, %xmm19
// CHECK:  encoding: [0x62,0xe3,0xed,0x10,0x03,0x9a,0x00,0x04,0x00,0x00,0x7b]
          valignq $0x7b, 1024(%rdx){1to2}, %xmm18, %xmm19

// CHECK: valignq $123, -1024(%rdx){1to2}, %xmm18, %xmm19
// CHECK:  encoding: [0x62,0xe3,0xed,0x10,0x03,0x5a,0x80,0x7b]
          valignq $0x7b, -1024(%rdx){1to2}, %xmm18, %xmm19

// CHECK: valignq $123, -1032(%rdx){1to2}, %xmm18, %xmm19
// CHECK:  encoding: [0x62,0xe3,0xed,0x10,0x03,0x9a,0xf8,0xfb,0xff,0xff,0x7b]
          valignq $0x7b, -1032(%rdx){1to2}, %xmm18, %xmm19

// CHECK: valignq $171, %ymm26, %ymm24, %ymm25
// CHECK:  encoding: [0x62,0x03,0xbd,0x20,0x03,0xca,0xab]
          valignq $0xab, %ymm26, %ymm24, %ymm25

// CHECK: valignq $171, %ymm26, %ymm24, %ymm25 {%k2}
// CHECK:  encoding: [0x62,0x03,0xbd,0x22,0x03,0xca,0xab]
          valignq $0xab, %ymm26, %ymm24, %ymm25 {%k2}

// CHECK: valignq $171, %ymm26, %ymm24, %ymm25 {%k2} {z}
// CHECK:  encoding: [0x62,0x03,0xbd,0xa2,0x03,0xca,0xab]
          valignq $0xab, %ymm26, %ymm24, %ymm25 {%k2} {z}

// CHECK: valignq $123, %ymm26, %ymm24, %ymm25
// CHECK:  encoding: [0x62,0x03,0xbd,0x20,0x03,0xca,0x7b]
          valignq $0x7b, %ymm26, %ymm24, %ymm25

// CHECK: valignq $123, (%rcx), %ymm24, %ymm25
// CHECK:  encoding: [0x62,0x63,0xbd,0x20,0x03,0x09,0x7b]
          valignq $0x7b, (%rcx), %ymm24, %ymm25

// CHECK: valignq $123, 291(%rax,%r14,8), %ymm24, %ymm25
// CHECK:  encoding: [0x62,0x23,0xbd,0x20,0x03,0x8c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          valignq $0x7b, 291(%rax,%r14,8), %ymm24, %ymm25

// CHECK: valignq $123, (%rcx){1to4}, %ymm24, %ymm25
// CHECK:  encoding: [0x62,0x63,0xbd,0x30,0x03,0x09,0x7b]
          valignq $0x7b, (%rcx){1to4}, %ymm24, %ymm25

// CHECK: valignq $123, 4064(%rdx), %ymm24, %ymm25
// CHECK:  encoding: [0x62,0x63,0xbd,0x20,0x03,0x4a,0x7f,0x7b]
          valignq $0x7b, 4064(%rdx), %ymm24, %ymm25

// CHECK: valignq $123, 4096(%rdx), %ymm24, %ymm25
// CHECK:  encoding: [0x62,0x63,0xbd,0x20,0x03,0x8a,0x00,0x10,0x00,0x00,0x7b]
          valignq $0x7b, 4096(%rdx), %ymm24, %ymm25

// CHECK: valignq $123, -4096(%rdx), %ymm24, %ymm25
// CHECK:  encoding: [0x62,0x63,0xbd,0x20,0x03,0x4a,0x80,0x7b]
          valignq $0x7b, -4096(%rdx), %ymm24, %ymm25

// CHECK: valignq $123, -4128(%rdx), %ymm24, %ymm25
// CHECK:  encoding: [0x62,0x63,0xbd,0x20,0x03,0x8a,0xe0,0xef,0xff,0xff,0x7b]
          valignq $0x7b, -4128(%rdx), %ymm24, %ymm25

// CHECK: valignq $123, 1016(%rdx){1to4}, %ymm24, %ymm25
// CHECK:  encoding: [0x62,0x63,0xbd,0x30,0x03,0x4a,0x7f,0x7b]
          valignq $0x7b, 1016(%rdx){1to4}, %ymm24, %ymm25

// CHECK: valignq $123, 1024(%rdx){1to4}, %ymm24, %ymm25
// CHECK:  encoding: [0x62,0x63,0xbd,0x30,0x03,0x8a,0x00,0x04,0x00,0x00,0x7b]
          valignq $0x7b, 1024(%rdx){1to4}, %ymm24, %ymm25

// CHECK: valignq $123, -1024(%rdx){1to4}, %ymm24, %ymm25
// CHECK:  encoding: [0x62,0x63,0xbd,0x30,0x03,0x4a,0x80,0x7b]
          valignq $0x7b, -1024(%rdx){1to4}, %ymm24, %ymm25

// CHECK: valignq $123, -1032(%rdx){1to4}, %ymm24, %ymm25
// CHECK:  encoding: [0x62,0x63,0xbd,0x30,0x03,0x8a,0xf8,0xfb,0xff,0xff,0x7b]
          valignq $0x7b, -1032(%rdx){1to4}, %ymm24, %ymm25

// CHECK: vfmadd132ps %xmm19, %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x22,0x35,0x00,0x98,0xeb]
          vfmadd132ps %xmm19, %xmm25, %xmm29

// CHECK: vfmadd132ps %xmm19, %xmm25, %xmm29 {%k4}
// CHECK:  encoding: [0x62,0x22,0x35,0x04,0x98,0xeb]
          vfmadd132ps %xmm19, %xmm25, %xmm29 {%k4}

// CHECK: vfmadd132ps %xmm19, %xmm25, %xmm29 {%k4} {z}
// CHECK:  encoding: [0x62,0x22,0x35,0x84,0x98,0xeb]
          vfmadd132ps %xmm19, %xmm25, %xmm29 {%k4} {z}

// CHECK: vfmadd132ps (%rcx), %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x62,0x35,0x00,0x98,0x29]
          vfmadd132ps (%rcx), %xmm25, %xmm29

// CHECK: vfmadd132ps 291(%rax,%r14,8), %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x22,0x35,0x00,0x98,0xac,0xf0,0x23,0x01,0x00,0x00]
          vfmadd132ps 291(%rax,%r14,8), %xmm25, %xmm29

// CHECK: vfmadd132ps (%rcx){1to4}, %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x62,0x35,0x10,0x98,0x29]
          vfmadd132ps (%rcx){1to4}, %xmm25, %xmm29

// CHECK: vfmadd132ps 2032(%rdx), %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x62,0x35,0x00,0x98,0x6a,0x7f]
          vfmadd132ps 2032(%rdx), %xmm25, %xmm29

// CHECK: vfmadd132ps 2048(%rdx), %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x62,0x35,0x00,0x98,0xaa,0x00,0x08,0x00,0x00]
          vfmadd132ps 2048(%rdx), %xmm25, %xmm29

// CHECK: vfmadd132ps -2048(%rdx), %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x62,0x35,0x00,0x98,0x6a,0x80]
          vfmadd132ps -2048(%rdx), %xmm25, %xmm29

// CHECK: vfmadd132ps -2064(%rdx), %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x62,0x35,0x00,0x98,0xaa,0xf0,0xf7,0xff,0xff]
          vfmadd132ps -2064(%rdx), %xmm25, %xmm29

// CHECK: vfmadd132ps 508(%rdx){1to4}, %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x62,0x35,0x10,0x98,0x6a,0x7f]
          vfmadd132ps 508(%rdx){1to4}, %xmm25, %xmm29

// CHECK: vfmadd132ps 512(%rdx){1to4}, %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x62,0x35,0x10,0x98,0xaa,0x00,0x02,0x00,0x00]
          vfmadd132ps 512(%rdx){1to4}, %xmm25, %xmm29

// CHECK: vfmadd132ps -512(%rdx){1to4}, %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x62,0x35,0x10,0x98,0x6a,0x80]
          vfmadd132ps -512(%rdx){1to4}, %xmm25, %xmm29

// CHECK: vfmadd132ps -516(%rdx){1to4}, %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x62,0x35,0x10,0x98,0xaa,0xfc,0xfd,0xff,0xff]
          vfmadd132ps -516(%rdx){1to4}, %xmm25, %xmm29

// CHECK: vfmadd132ps %ymm26, %ymm22, %ymm23
// CHECK:  encoding: [0x62,0x82,0x4d,0x20,0x98,0xfa]
          vfmadd132ps %ymm26, %ymm22, %ymm23

// CHECK: vfmadd132ps %ymm26, %ymm22, %ymm23 {%k5}
// CHECK:  encoding: [0x62,0x82,0x4d,0x25,0x98,0xfa]
          vfmadd132ps %ymm26, %ymm22, %ymm23 {%k5}

// CHECK: vfmadd132ps %ymm26, %ymm22, %ymm23 {%k5} {z}
// CHECK:  encoding: [0x62,0x82,0x4d,0xa5,0x98,0xfa]
          vfmadd132ps %ymm26, %ymm22, %ymm23 {%k5} {z}

// CHECK: vfmadd132ps (%rcx), %ymm22, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x4d,0x20,0x98,0x39]
          vfmadd132ps (%rcx), %ymm22, %ymm23

// CHECK: vfmadd132ps 291(%rax,%r14,8), %ymm22, %ymm23
// CHECK:  encoding: [0x62,0xa2,0x4d,0x20,0x98,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vfmadd132ps 291(%rax,%r14,8), %ymm22, %ymm23

// CHECK: vfmadd132ps (%rcx){1to8}, %ymm22, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x4d,0x30,0x98,0x39]
          vfmadd132ps (%rcx){1to8}, %ymm22, %ymm23

// CHECK: vfmadd132ps 4064(%rdx), %ymm22, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x4d,0x20,0x98,0x7a,0x7f]
          vfmadd132ps 4064(%rdx), %ymm22, %ymm23

// CHECK: vfmadd132ps 4096(%rdx), %ymm22, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x4d,0x20,0x98,0xba,0x00,0x10,0x00,0x00]
          vfmadd132ps 4096(%rdx), %ymm22, %ymm23

// CHECK: vfmadd132ps -4096(%rdx), %ymm22, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x4d,0x20,0x98,0x7a,0x80]
          vfmadd132ps -4096(%rdx), %ymm22, %ymm23

// CHECK: vfmadd132ps -4128(%rdx), %ymm22, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x4d,0x20,0x98,0xba,0xe0,0xef,0xff,0xff]
          vfmadd132ps -4128(%rdx), %ymm22, %ymm23

// CHECK: vfmadd132ps 508(%rdx){1to8}, %ymm22, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x4d,0x30,0x98,0x7a,0x7f]
          vfmadd132ps 508(%rdx){1to8}, %ymm22, %ymm23

// CHECK: vfmadd132ps 512(%rdx){1to8}, %ymm22, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x4d,0x30,0x98,0xba,0x00,0x02,0x00,0x00]
          vfmadd132ps 512(%rdx){1to8}, %ymm22, %ymm23

// CHECK: vfmadd132ps -512(%rdx){1to8}, %ymm22, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x4d,0x30,0x98,0x7a,0x80]
          vfmadd132ps -512(%rdx){1to8}, %ymm22, %ymm23

// CHECK: vfmadd132ps -516(%rdx){1to8}, %ymm22, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x4d,0x30,0x98,0xba,0xfc,0xfd,0xff,0xff]
          vfmadd132ps -516(%rdx){1to8}, %ymm22, %ymm23

// CHECK: vfmadd132pd %xmm27, %xmm21, %xmm28
// CHECK:  encoding: [0x62,0x02,0xd5,0x00,0x98,0xe3]
          vfmadd132pd %xmm27, %xmm21, %xmm28

// CHECK: vfmadd132pd %xmm27, %xmm21, %xmm28 {%k1}
// CHECK:  encoding: [0x62,0x02,0xd5,0x01,0x98,0xe3]
          vfmadd132pd %xmm27, %xmm21, %xmm28 {%k1}

// CHECK: vfmadd132pd %xmm27, %xmm21, %xmm28 {%k1} {z}
// CHECK:  encoding: [0x62,0x02,0xd5,0x81,0x98,0xe3]
          vfmadd132pd %xmm27, %xmm21, %xmm28 {%k1} {z}

// CHECK: vfmadd132pd (%rcx), %xmm21, %xmm28
// CHECK:  encoding: [0x62,0x62,0xd5,0x00,0x98,0x21]
          vfmadd132pd (%rcx), %xmm21, %xmm28

// CHECK: vfmadd132pd 291(%rax,%r14,8), %xmm21, %xmm28
// CHECK:  encoding: [0x62,0x22,0xd5,0x00,0x98,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vfmadd132pd 291(%rax,%r14,8), %xmm21, %xmm28

// CHECK: vfmadd132pd (%rcx){1to2}, %xmm21, %xmm28
// CHECK:  encoding: [0x62,0x62,0xd5,0x10,0x98,0x21]
          vfmadd132pd (%rcx){1to2}, %xmm21, %xmm28

// CHECK: vfmadd132pd 2032(%rdx), %xmm21, %xmm28
// CHECK:  encoding: [0x62,0x62,0xd5,0x00,0x98,0x62,0x7f]
          vfmadd132pd 2032(%rdx), %xmm21, %xmm28

// CHECK: vfmadd132pd 2048(%rdx), %xmm21, %xmm28
// CHECK:  encoding: [0x62,0x62,0xd5,0x00,0x98,0xa2,0x00,0x08,0x00,0x00]
          vfmadd132pd 2048(%rdx), %xmm21, %xmm28

// CHECK: vfmadd132pd -2048(%rdx), %xmm21, %xmm28
// CHECK:  encoding: [0x62,0x62,0xd5,0x00,0x98,0x62,0x80]
          vfmadd132pd -2048(%rdx), %xmm21, %xmm28

// CHECK: vfmadd132pd -2064(%rdx), %xmm21, %xmm28
// CHECK:  encoding: [0x62,0x62,0xd5,0x00,0x98,0xa2,0xf0,0xf7,0xff,0xff]
          vfmadd132pd -2064(%rdx), %xmm21, %xmm28

// CHECK: vfmadd132pd 1016(%rdx){1to2}, %xmm21, %xmm28
// CHECK:  encoding: [0x62,0x62,0xd5,0x10,0x98,0x62,0x7f]
          vfmadd132pd 1016(%rdx){1to2}, %xmm21, %xmm28

// CHECK: vfmadd132pd 1024(%rdx){1to2}, %xmm21, %xmm28
// CHECK:  encoding: [0x62,0x62,0xd5,0x10,0x98,0xa2,0x00,0x04,0x00,0x00]
          vfmadd132pd 1024(%rdx){1to2}, %xmm21, %xmm28

// CHECK: vfmadd132pd -1024(%rdx){1to2}, %xmm21, %xmm28
// CHECK:  encoding: [0x62,0x62,0xd5,0x10,0x98,0x62,0x80]
          vfmadd132pd -1024(%rdx){1to2}, %xmm21, %xmm28

// CHECK: vfmadd132pd -1032(%rdx){1to2}, %xmm21, %xmm28
// CHECK:  encoding: [0x62,0x62,0xd5,0x10,0x98,0xa2,0xf8,0xfb,0xff,0xff]
          vfmadd132pd -1032(%rdx){1to2}, %xmm21, %xmm28

// CHECK: vfmadd132pd %ymm27, %ymm24, %ymm22
// CHECK:  encoding: [0x62,0x82,0xbd,0x20,0x98,0xf3]
          vfmadd132pd %ymm27, %ymm24, %ymm22

// CHECK: vfmadd132pd %ymm27, %ymm24, %ymm22 {%k7}
// CHECK:  encoding: [0x62,0x82,0xbd,0x27,0x98,0xf3]
          vfmadd132pd %ymm27, %ymm24, %ymm22 {%k7}

// CHECK: vfmadd132pd %ymm27, %ymm24, %ymm22 {%k7} {z}
// CHECK:  encoding: [0x62,0x82,0xbd,0xa7,0x98,0xf3]
          vfmadd132pd %ymm27, %ymm24, %ymm22 {%k7} {z}

// CHECK: vfmadd132pd (%rcx), %ymm24, %ymm22
// CHECK:  encoding: [0x62,0xe2,0xbd,0x20,0x98,0x31]
          vfmadd132pd (%rcx), %ymm24, %ymm22

// CHECK: vfmadd132pd 291(%rax,%r14,8), %ymm24, %ymm22
// CHECK:  encoding: [0x62,0xa2,0xbd,0x20,0x98,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vfmadd132pd 291(%rax,%r14,8), %ymm24, %ymm22

// CHECK: vfmadd132pd (%rcx){1to4}, %ymm24, %ymm22
// CHECK:  encoding: [0x62,0xe2,0xbd,0x30,0x98,0x31]
          vfmadd132pd (%rcx){1to4}, %ymm24, %ymm22

// CHECK: vfmadd132pd 4064(%rdx), %ymm24, %ymm22
// CHECK:  encoding: [0x62,0xe2,0xbd,0x20,0x98,0x72,0x7f]
          vfmadd132pd 4064(%rdx), %ymm24, %ymm22

// CHECK: vfmadd132pd 4096(%rdx), %ymm24, %ymm22
// CHECK:  encoding: [0x62,0xe2,0xbd,0x20,0x98,0xb2,0x00,0x10,0x00,0x00]
          vfmadd132pd 4096(%rdx), %ymm24, %ymm22

// CHECK: vfmadd132pd -4096(%rdx), %ymm24, %ymm22
// CHECK:  encoding: [0x62,0xe2,0xbd,0x20,0x98,0x72,0x80]
          vfmadd132pd -4096(%rdx), %ymm24, %ymm22

// CHECK: vfmadd132pd -4128(%rdx), %ymm24, %ymm22
// CHECK:  encoding: [0x62,0xe2,0xbd,0x20,0x98,0xb2,0xe0,0xef,0xff,0xff]
          vfmadd132pd -4128(%rdx), %ymm24, %ymm22

// CHECK: vfmadd132pd 1016(%rdx){1to4}, %ymm24, %ymm22
// CHECK:  encoding: [0x62,0xe2,0xbd,0x30,0x98,0x72,0x7f]
          vfmadd132pd 1016(%rdx){1to4}, %ymm24, %ymm22

// CHECK: vfmadd132pd 1024(%rdx){1to4}, %ymm24, %ymm22
// CHECK:  encoding: [0x62,0xe2,0xbd,0x30,0x98,0xb2,0x00,0x04,0x00,0x00]
          vfmadd132pd 1024(%rdx){1to4}, %ymm24, %ymm22

// CHECK: vfmadd132pd -1024(%rdx){1to4}, %ymm24, %ymm22
// CHECK:  encoding: [0x62,0xe2,0xbd,0x30,0x98,0x72,0x80]
          vfmadd132pd -1024(%rdx){1to4}, %ymm24, %ymm22

// CHECK: vfmadd132pd -1032(%rdx){1to4}, %ymm24, %ymm22
// CHECK:  encoding: [0x62,0xe2,0xbd,0x30,0x98,0xb2,0xf8,0xfb,0xff,0xff]
          vfmadd132pd -1032(%rdx){1to4}, %ymm24, %ymm22

// CHECK: vfmadd213ps %xmm28, %xmm28, %xmm24
// CHECK:  encoding: [0x62,0x02,0x1d,0x00,0xa8,0xc4]
          vfmadd213ps %xmm28, %xmm28, %xmm24

// CHECK: vfmadd213ps %xmm28, %xmm28, %xmm24 {%k1}
// CHECK:  encoding: [0x62,0x02,0x1d,0x01,0xa8,0xc4]
          vfmadd213ps %xmm28, %xmm28, %xmm24 {%k1}

// CHECK: vfmadd213ps %xmm28, %xmm28, %xmm24 {%k1} {z}
// CHECK:  encoding: [0x62,0x02,0x1d,0x81,0xa8,0xc4]
          vfmadd213ps %xmm28, %xmm28, %xmm24 {%k1} {z}

// CHECK: vfmadd213ps (%rcx), %xmm28, %xmm24
// CHECK:  encoding: [0x62,0x62,0x1d,0x00,0xa8,0x01]
          vfmadd213ps (%rcx), %xmm28, %xmm24

// CHECK: vfmadd213ps 291(%rax,%r14,8), %xmm28, %xmm24
// CHECK:  encoding: [0x62,0x22,0x1d,0x00,0xa8,0x84,0xf0,0x23,0x01,0x00,0x00]
          vfmadd213ps 291(%rax,%r14,8), %xmm28, %xmm24

// CHECK: vfmadd213ps (%rcx){1to4}, %xmm28, %xmm24
// CHECK:  encoding: [0x62,0x62,0x1d,0x10,0xa8,0x01]
          vfmadd213ps (%rcx){1to4}, %xmm28, %xmm24

// CHECK: vfmadd213ps 2032(%rdx), %xmm28, %xmm24
// CHECK:  encoding: [0x62,0x62,0x1d,0x00,0xa8,0x42,0x7f]
          vfmadd213ps 2032(%rdx), %xmm28, %xmm24

// CHECK: vfmadd213ps 2048(%rdx), %xmm28, %xmm24
// CHECK:  encoding: [0x62,0x62,0x1d,0x00,0xa8,0x82,0x00,0x08,0x00,0x00]
          vfmadd213ps 2048(%rdx), %xmm28, %xmm24

// CHECK: vfmadd213ps -2048(%rdx), %xmm28, %xmm24
// CHECK:  encoding: [0x62,0x62,0x1d,0x00,0xa8,0x42,0x80]
          vfmadd213ps -2048(%rdx), %xmm28, %xmm24

// CHECK: vfmadd213ps -2064(%rdx), %xmm28, %xmm24
// CHECK:  encoding: [0x62,0x62,0x1d,0x00,0xa8,0x82,0xf0,0xf7,0xff,0xff]
          vfmadd213ps -2064(%rdx), %xmm28, %xmm24

// CHECK: vfmadd213ps 508(%rdx){1to4}, %xmm28, %xmm24
// CHECK:  encoding: [0x62,0x62,0x1d,0x10,0xa8,0x42,0x7f]
          vfmadd213ps 508(%rdx){1to4}, %xmm28, %xmm24

// CHECK: vfmadd213ps 512(%rdx){1to4}, %xmm28, %xmm24
// CHECK:  encoding: [0x62,0x62,0x1d,0x10,0xa8,0x82,0x00,0x02,0x00,0x00]
          vfmadd213ps 512(%rdx){1to4}, %xmm28, %xmm24

// CHECK: vfmadd213ps -512(%rdx){1to4}, %xmm28, %xmm24
// CHECK:  encoding: [0x62,0x62,0x1d,0x10,0xa8,0x42,0x80]
          vfmadd213ps -512(%rdx){1to4}, %xmm28, %xmm24

// CHECK: vfmadd213ps -516(%rdx){1to4}, %xmm28, %xmm24
// CHECK:  encoding: [0x62,0x62,0x1d,0x10,0xa8,0x82,0xfc,0xfd,0xff,0xff]
          vfmadd213ps -516(%rdx){1to4}, %xmm28, %xmm24

// CHECK: vfmadd213ps %ymm17, %ymm22, %ymm26
// CHECK:  encoding: [0x62,0x22,0x4d,0x20,0xa8,0xd1]
          vfmadd213ps %ymm17, %ymm22, %ymm26

// CHECK: vfmadd213ps %ymm17, %ymm22, %ymm26 {%k3}
// CHECK:  encoding: [0x62,0x22,0x4d,0x23,0xa8,0xd1]
          vfmadd213ps %ymm17, %ymm22, %ymm26 {%k3}

// CHECK: vfmadd213ps %ymm17, %ymm22, %ymm26 {%k3} {z}
// CHECK:  encoding: [0x62,0x22,0x4d,0xa3,0xa8,0xd1]
          vfmadd213ps %ymm17, %ymm22, %ymm26 {%k3} {z}

// CHECK: vfmadd213ps (%rcx), %ymm22, %ymm26
// CHECK:  encoding: [0x62,0x62,0x4d,0x20,0xa8,0x11]
          vfmadd213ps (%rcx), %ymm22, %ymm26

// CHECK: vfmadd213ps 291(%rax,%r14,8), %ymm22, %ymm26
// CHECK:  encoding: [0x62,0x22,0x4d,0x20,0xa8,0x94,0xf0,0x23,0x01,0x00,0x00]
          vfmadd213ps 291(%rax,%r14,8), %ymm22, %ymm26

// CHECK: vfmadd213ps (%rcx){1to8}, %ymm22, %ymm26
// CHECK:  encoding: [0x62,0x62,0x4d,0x30,0xa8,0x11]
          vfmadd213ps (%rcx){1to8}, %ymm22, %ymm26

// CHECK: vfmadd213ps 4064(%rdx), %ymm22, %ymm26
// CHECK:  encoding: [0x62,0x62,0x4d,0x20,0xa8,0x52,0x7f]
          vfmadd213ps 4064(%rdx), %ymm22, %ymm26

// CHECK: vfmadd213ps 4096(%rdx), %ymm22, %ymm26
// CHECK:  encoding: [0x62,0x62,0x4d,0x20,0xa8,0x92,0x00,0x10,0x00,0x00]
          vfmadd213ps 4096(%rdx), %ymm22, %ymm26

// CHECK: vfmadd213ps -4096(%rdx), %ymm22, %ymm26
// CHECK:  encoding: [0x62,0x62,0x4d,0x20,0xa8,0x52,0x80]
          vfmadd213ps -4096(%rdx), %ymm22, %ymm26

// CHECK: vfmadd213ps -4128(%rdx), %ymm22, %ymm26
// CHECK:  encoding: [0x62,0x62,0x4d,0x20,0xa8,0x92,0xe0,0xef,0xff,0xff]
          vfmadd213ps -4128(%rdx), %ymm22, %ymm26

// CHECK: vfmadd213ps 508(%rdx){1to8}, %ymm22, %ymm26
// CHECK:  encoding: [0x62,0x62,0x4d,0x30,0xa8,0x52,0x7f]
          vfmadd213ps 508(%rdx){1to8}, %ymm22, %ymm26

// CHECK: vfmadd213ps 512(%rdx){1to8}, %ymm22, %ymm26
// CHECK:  encoding: [0x62,0x62,0x4d,0x30,0xa8,0x92,0x00,0x02,0x00,0x00]
          vfmadd213ps 512(%rdx){1to8}, %ymm22, %ymm26

// CHECK: vfmadd213ps -512(%rdx){1to8}, %ymm22, %ymm26
// CHECK:  encoding: [0x62,0x62,0x4d,0x30,0xa8,0x52,0x80]
          vfmadd213ps -512(%rdx){1to8}, %ymm22, %ymm26

// CHECK: vfmadd213ps -516(%rdx){1to8}, %ymm22, %ymm26
// CHECK:  encoding: [0x62,0x62,0x4d,0x30,0xa8,0x92,0xfc,0xfd,0xff,0xff]
          vfmadd213ps -516(%rdx){1to8}, %ymm22, %ymm26

// CHECK: vfmadd213pd %xmm23, %xmm21, %xmm22
// CHECK:  encoding: [0x62,0xa2,0xd5,0x00,0xa8,0xf7]
          vfmadd213pd %xmm23, %xmm21, %xmm22

// CHECK: vfmadd213pd %xmm23, %xmm21, %xmm22 {%k4}
// CHECK:  encoding: [0x62,0xa2,0xd5,0x04,0xa8,0xf7]
          vfmadd213pd %xmm23, %xmm21, %xmm22 {%k4}

// CHECK: vfmadd213pd %xmm23, %xmm21, %xmm22 {%k4} {z}
// CHECK:  encoding: [0x62,0xa2,0xd5,0x84,0xa8,0xf7]
          vfmadd213pd %xmm23, %xmm21, %xmm22 {%k4} {z}

// CHECK: vfmadd213pd (%rcx), %xmm21, %xmm22
// CHECK:  encoding: [0x62,0xe2,0xd5,0x00,0xa8,0x31]
          vfmadd213pd (%rcx), %xmm21, %xmm22

// CHECK: vfmadd213pd 291(%rax,%r14,8), %xmm21, %xmm22
// CHECK:  encoding: [0x62,0xa2,0xd5,0x00,0xa8,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vfmadd213pd 291(%rax,%r14,8), %xmm21, %xmm22

// CHECK: vfmadd213pd (%rcx){1to2}, %xmm21, %xmm22
// CHECK:  encoding: [0x62,0xe2,0xd5,0x10,0xa8,0x31]
          vfmadd213pd (%rcx){1to2}, %xmm21, %xmm22

// CHECK: vfmadd213pd 2032(%rdx), %xmm21, %xmm22
// CHECK:  encoding: [0x62,0xe2,0xd5,0x00,0xa8,0x72,0x7f]
          vfmadd213pd 2032(%rdx), %xmm21, %xmm22

// CHECK: vfmadd213pd 2048(%rdx), %xmm21, %xmm22
// CHECK:  encoding: [0x62,0xe2,0xd5,0x00,0xa8,0xb2,0x00,0x08,0x00,0x00]
          vfmadd213pd 2048(%rdx), %xmm21, %xmm22

// CHECK: vfmadd213pd -2048(%rdx), %xmm21, %xmm22
// CHECK:  encoding: [0x62,0xe2,0xd5,0x00,0xa8,0x72,0x80]
          vfmadd213pd -2048(%rdx), %xmm21, %xmm22

// CHECK: vfmadd213pd -2064(%rdx), %xmm21, %xmm22
// CHECK:  encoding: [0x62,0xe2,0xd5,0x00,0xa8,0xb2,0xf0,0xf7,0xff,0xff]
          vfmadd213pd -2064(%rdx), %xmm21, %xmm22

// CHECK: vfmadd213pd 1016(%rdx){1to2}, %xmm21, %xmm22
// CHECK:  encoding: [0x62,0xe2,0xd5,0x10,0xa8,0x72,0x7f]
          vfmadd213pd 1016(%rdx){1to2}, %xmm21, %xmm22

// CHECK: vfmadd213pd 1024(%rdx){1to2}, %xmm21, %xmm22
// CHECK:  encoding: [0x62,0xe2,0xd5,0x10,0xa8,0xb2,0x00,0x04,0x00,0x00]
          vfmadd213pd 1024(%rdx){1to2}, %xmm21, %xmm22

// CHECK: vfmadd213pd -1024(%rdx){1to2}, %xmm21, %xmm22
// CHECK:  encoding: [0x62,0xe2,0xd5,0x10,0xa8,0x72,0x80]
          vfmadd213pd -1024(%rdx){1to2}, %xmm21, %xmm22

// CHECK: vfmadd213pd -1032(%rdx){1to2}, %xmm21, %xmm22
// CHECK:  encoding: [0x62,0xe2,0xd5,0x10,0xa8,0xb2,0xf8,0xfb,0xff,0xff]
          vfmadd213pd -1032(%rdx){1to2}, %xmm21, %xmm22

// CHECK: vfmadd213pd %ymm17, %ymm19, %ymm18
// CHECK:  encoding: [0x62,0xa2,0xe5,0x20,0xa8,0xd1]
          vfmadd213pd %ymm17, %ymm19, %ymm18

// CHECK: vfmadd213pd %ymm17, %ymm19, %ymm18 {%k1}
// CHECK:  encoding: [0x62,0xa2,0xe5,0x21,0xa8,0xd1]
          vfmadd213pd %ymm17, %ymm19, %ymm18 {%k1}

// CHECK: vfmadd213pd %ymm17, %ymm19, %ymm18 {%k1} {z}
// CHECK:  encoding: [0x62,0xa2,0xe5,0xa1,0xa8,0xd1]
          vfmadd213pd %ymm17, %ymm19, %ymm18 {%k1} {z}

// CHECK: vfmadd213pd (%rcx), %ymm19, %ymm18
// CHECK:  encoding: [0x62,0xe2,0xe5,0x20,0xa8,0x11]
          vfmadd213pd (%rcx), %ymm19, %ymm18

// CHECK: vfmadd213pd 291(%rax,%r14,8), %ymm19, %ymm18
// CHECK:  encoding: [0x62,0xa2,0xe5,0x20,0xa8,0x94,0xf0,0x23,0x01,0x00,0x00]
          vfmadd213pd 291(%rax,%r14,8), %ymm19, %ymm18

// CHECK: vfmadd213pd (%rcx){1to4}, %ymm19, %ymm18
// CHECK:  encoding: [0x62,0xe2,0xe5,0x30,0xa8,0x11]
          vfmadd213pd (%rcx){1to4}, %ymm19, %ymm18

// CHECK: vfmadd213pd 4064(%rdx), %ymm19, %ymm18
// CHECK:  encoding: [0x62,0xe2,0xe5,0x20,0xa8,0x52,0x7f]
          vfmadd213pd 4064(%rdx), %ymm19, %ymm18

// CHECK: vfmadd213pd 4096(%rdx), %ymm19, %ymm18
// CHECK:  encoding: [0x62,0xe2,0xe5,0x20,0xa8,0x92,0x00,0x10,0x00,0x00]
          vfmadd213pd 4096(%rdx), %ymm19, %ymm18

// CHECK: vfmadd213pd -4096(%rdx), %ymm19, %ymm18
// CHECK:  encoding: [0x62,0xe2,0xe5,0x20,0xa8,0x52,0x80]
          vfmadd213pd -4096(%rdx), %ymm19, %ymm18

// CHECK: vfmadd213pd -4128(%rdx), %ymm19, %ymm18
// CHECK:  encoding: [0x62,0xe2,0xe5,0x20,0xa8,0x92,0xe0,0xef,0xff,0xff]
          vfmadd213pd -4128(%rdx), %ymm19, %ymm18

// CHECK: vfmadd213pd 1016(%rdx){1to4}, %ymm19, %ymm18
// CHECK:  encoding: [0x62,0xe2,0xe5,0x30,0xa8,0x52,0x7f]
          vfmadd213pd 1016(%rdx){1to4}, %ymm19, %ymm18

// CHECK: vfmadd213pd 1024(%rdx){1to4}, %ymm19, %ymm18
// CHECK:  encoding: [0x62,0xe2,0xe5,0x30,0xa8,0x92,0x00,0x04,0x00,0x00]
          vfmadd213pd 1024(%rdx){1to4}, %ymm19, %ymm18

// CHECK: vfmadd213pd -1024(%rdx){1to4}, %ymm19, %ymm18
// CHECK:  encoding: [0x62,0xe2,0xe5,0x30,0xa8,0x52,0x80]
          vfmadd213pd -1024(%rdx){1to4}, %ymm19, %ymm18

// CHECK: vfmadd213pd -1032(%rdx){1to4}, %ymm19, %ymm18
// CHECK:  encoding: [0x62,0xe2,0xe5,0x30,0xa8,0x92,0xf8,0xfb,0xff,0xff]
          vfmadd213pd -1032(%rdx){1to4}, %ymm19, %ymm18

// CHECK: vfmadd231ps %xmm27, %xmm20, %xmm30
// CHECK:  encoding: [0x62,0x02,0x5d,0x00,0xb8,0xf3]
          vfmadd231ps %xmm27, %xmm20, %xmm30

// CHECK: vfmadd231ps %xmm27, %xmm20, %xmm30 {%k7}
// CHECK:  encoding: [0x62,0x02,0x5d,0x07,0xb8,0xf3]
          vfmadd231ps %xmm27, %xmm20, %xmm30 {%k7}

// CHECK: vfmadd231ps %xmm27, %xmm20, %xmm30 {%k7} {z}
// CHECK:  encoding: [0x62,0x02,0x5d,0x87,0xb8,0xf3]
          vfmadd231ps %xmm27, %xmm20, %xmm30 {%k7} {z}

// CHECK: vfmadd231ps (%rcx), %xmm20, %xmm30
// CHECK:  encoding: [0x62,0x62,0x5d,0x00,0xb8,0x31]
          vfmadd231ps (%rcx), %xmm20, %xmm30

// CHECK: vfmadd231ps 291(%rax,%r14,8), %xmm20, %xmm30
// CHECK:  encoding: [0x62,0x22,0x5d,0x00,0xb8,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vfmadd231ps 291(%rax,%r14,8), %xmm20, %xmm30

// CHECK: vfmadd231ps (%rcx){1to4}, %xmm20, %xmm30
// CHECK:  encoding: [0x62,0x62,0x5d,0x10,0xb8,0x31]
          vfmadd231ps (%rcx){1to4}, %xmm20, %xmm30

// CHECK: vfmadd231ps 2032(%rdx), %xmm20, %xmm30
// CHECK:  encoding: [0x62,0x62,0x5d,0x00,0xb8,0x72,0x7f]
          vfmadd231ps 2032(%rdx), %xmm20, %xmm30

// CHECK: vfmadd231ps 2048(%rdx), %xmm20, %xmm30
// CHECK:  encoding: [0x62,0x62,0x5d,0x00,0xb8,0xb2,0x00,0x08,0x00,0x00]
          vfmadd231ps 2048(%rdx), %xmm20, %xmm30

// CHECK: vfmadd231ps -2048(%rdx), %xmm20, %xmm30
// CHECK:  encoding: [0x62,0x62,0x5d,0x00,0xb8,0x72,0x80]
          vfmadd231ps -2048(%rdx), %xmm20, %xmm30

// CHECK: vfmadd231ps -2064(%rdx), %xmm20, %xmm30
// CHECK:  encoding: [0x62,0x62,0x5d,0x00,0xb8,0xb2,0xf0,0xf7,0xff,0xff]
          vfmadd231ps -2064(%rdx), %xmm20, %xmm30

// CHECK: vfmadd231ps 508(%rdx){1to4}, %xmm20, %xmm30
// CHECK:  encoding: [0x62,0x62,0x5d,0x10,0xb8,0x72,0x7f]
          vfmadd231ps 508(%rdx){1to4}, %xmm20, %xmm30

// CHECK: vfmadd231ps 512(%rdx){1to4}, %xmm20, %xmm30
// CHECK:  encoding: [0x62,0x62,0x5d,0x10,0xb8,0xb2,0x00,0x02,0x00,0x00]
          vfmadd231ps 512(%rdx){1to4}, %xmm20, %xmm30

// CHECK: vfmadd231ps -512(%rdx){1to4}, %xmm20, %xmm30
// CHECK:  encoding: [0x62,0x62,0x5d,0x10,0xb8,0x72,0x80]
          vfmadd231ps -512(%rdx){1to4}, %xmm20, %xmm30

// CHECK: vfmadd231ps -516(%rdx){1to4}, %xmm20, %xmm30
// CHECK:  encoding: [0x62,0x62,0x5d,0x10,0xb8,0xb2,0xfc,0xfd,0xff,0xff]
          vfmadd231ps -516(%rdx){1to4}, %xmm20, %xmm30

// CHECK: vfmadd231ps %ymm25, %ymm26, %ymm22
// CHECK:  encoding: [0x62,0x82,0x2d,0x20,0xb8,0xf1]
          vfmadd231ps %ymm25, %ymm26, %ymm22

// CHECK: vfmadd231ps %ymm25, %ymm26, %ymm22 {%k7}
// CHECK:  encoding: [0x62,0x82,0x2d,0x27,0xb8,0xf1]
          vfmadd231ps %ymm25, %ymm26, %ymm22 {%k7}

// CHECK: vfmadd231ps %ymm25, %ymm26, %ymm22 {%k7} {z}
// CHECK:  encoding: [0x62,0x82,0x2d,0xa7,0xb8,0xf1]
          vfmadd231ps %ymm25, %ymm26, %ymm22 {%k7} {z}

// CHECK: vfmadd231ps (%rcx), %ymm26, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x2d,0x20,0xb8,0x31]
          vfmadd231ps (%rcx), %ymm26, %ymm22

// CHECK: vfmadd231ps 291(%rax,%r14,8), %ymm26, %ymm22
// CHECK:  encoding: [0x62,0xa2,0x2d,0x20,0xb8,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vfmadd231ps 291(%rax,%r14,8), %ymm26, %ymm22

// CHECK: vfmadd231ps (%rcx){1to8}, %ymm26, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x2d,0x30,0xb8,0x31]
          vfmadd231ps (%rcx){1to8}, %ymm26, %ymm22

// CHECK: vfmadd231ps 4064(%rdx), %ymm26, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x2d,0x20,0xb8,0x72,0x7f]
          vfmadd231ps 4064(%rdx), %ymm26, %ymm22

// CHECK: vfmadd231ps 4096(%rdx), %ymm26, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x2d,0x20,0xb8,0xb2,0x00,0x10,0x00,0x00]
          vfmadd231ps 4096(%rdx), %ymm26, %ymm22

// CHECK: vfmadd231ps -4096(%rdx), %ymm26, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x2d,0x20,0xb8,0x72,0x80]
          vfmadd231ps -4096(%rdx), %ymm26, %ymm22

// CHECK: vfmadd231ps -4128(%rdx), %ymm26, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x2d,0x20,0xb8,0xb2,0xe0,0xef,0xff,0xff]
          vfmadd231ps -4128(%rdx), %ymm26, %ymm22

// CHECK: vfmadd231ps 508(%rdx){1to8}, %ymm26, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x2d,0x30,0xb8,0x72,0x7f]
          vfmadd231ps 508(%rdx){1to8}, %ymm26, %ymm22

// CHECK: vfmadd231ps 512(%rdx){1to8}, %ymm26, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x2d,0x30,0xb8,0xb2,0x00,0x02,0x00,0x00]
          vfmadd231ps 512(%rdx){1to8}, %ymm26, %ymm22

// CHECK: vfmadd231ps -512(%rdx){1to8}, %ymm26, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x2d,0x30,0xb8,0x72,0x80]
          vfmadd231ps -512(%rdx){1to8}, %ymm26, %ymm22

// CHECK: vfmadd231ps -516(%rdx){1to8}, %ymm26, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x2d,0x30,0xb8,0xb2,0xfc,0xfd,0xff,0xff]
          vfmadd231ps -516(%rdx){1to8}, %ymm26, %ymm22

// CHECK: vfmadd231pd %xmm24, %xmm20, %xmm29
// CHECK:  encoding: [0x62,0x02,0xdd,0x00,0xb8,0xe8]
          vfmadd231pd %xmm24, %xmm20, %xmm29

// CHECK: vfmadd231pd %xmm24, %xmm20, %xmm29 {%k7}
// CHECK:  encoding: [0x62,0x02,0xdd,0x07,0xb8,0xe8]
          vfmadd231pd %xmm24, %xmm20, %xmm29 {%k7}

// CHECK: vfmadd231pd %xmm24, %xmm20, %xmm29 {%k7} {z}
// CHECK:  encoding: [0x62,0x02,0xdd,0x87,0xb8,0xe8]
          vfmadd231pd %xmm24, %xmm20, %xmm29 {%k7} {z}

// CHECK: vfmadd231pd (%rcx), %xmm20, %xmm29
// CHECK:  encoding: [0x62,0x62,0xdd,0x00,0xb8,0x29]
          vfmadd231pd (%rcx), %xmm20, %xmm29

// CHECK: vfmadd231pd 291(%rax,%r14,8), %xmm20, %xmm29
// CHECK:  encoding: [0x62,0x22,0xdd,0x00,0xb8,0xac,0xf0,0x23,0x01,0x00,0x00]
          vfmadd231pd 291(%rax,%r14,8), %xmm20, %xmm29

// CHECK: vfmadd231pd (%rcx){1to2}, %xmm20, %xmm29
// CHECK:  encoding: [0x62,0x62,0xdd,0x10,0xb8,0x29]
          vfmadd231pd (%rcx){1to2}, %xmm20, %xmm29

// CHECK: vfmadd231pd 2032(%rdx), %xmm20, %xmm29
// CHECK:  encoding: [0x62,0x62,0xdd,0x00,0xb8,0x6a,0x7f]
          vfmadd231pd 2032(%rdx), %xmm20, %xmm29

// CHECK: vfmadd231pd 2048(%rdx), %xmm20, %xmm29
// CHECK:  encoding: [0x62,0x62,0xdd,0x00,0xb8,0xaa,0x00,0x08,0x00,0x00]
          vfmadd231pd 2048(%rdx), %xmm20, %xmm29

// CHECK: vfmadd231pd -2048(%rdx), %xmm20, %xmm29
// CHECK:  encoding: [0x62,0x62,0xdd,0x00,0xb8,0x6a,0x80]
          vfmadd231pd -2048(%rdx), %xmm20, %xmm29

// CHECK: vfmadd231pd -2064(%rdx), %xmm20, %xmm29
// CHECK:  encoding: [0x62,0x62,0xdd,0x00,0xb8,0xaa,0xf0,0xf7,0xff,0xff]
          vfmadd231pd -2064(%rdx), %xmm20, %xmm29

// CHECK: vfmadd231pd 1016(%rdx){1to2}, %xmm20, %xmm29
// CHECK:  encoding: [0x62,0x62,0xdd,0x10,0xb8,0x6a,0x7f]
          vfmadd231pd 1016(%rdx){1to2}, %xmm20, %xmm29

// CHECK: vfmadd231pd 1024(%rdx){1to2}, %xmm20, %xmm29
// CHECK:  encoding: [0x62,0x62,0xdd,0x10,0xb8,0xaa,0x00,0x04,0x00,0x00]
          vfmadd231pd 1024(%rdx){1to2}, %xmm20, %xmm29

// CHECK: vfmadd231pd -1024(%rdx){1to2}, %xmm20, %xmm29
// CHECK:  encoding: [0x62,0x62,0xdd,0x10,0xb8,0x6a,0x80]
          vfmadd231pd -1024(%rdx){1to2}, %xmm20, %xmm29

// CHECK: vfmadd231pd -1032(%rdx){1to2}, %xmm20, %xmm29
// CHECK:  encoding: [0x62,0x62,0xdd,0x10,0xb8,0xaa,0xf8,0xfb,0xff,0xff]
          vfmadd231pd -1032(%rdx){1to2}, %xmm20, %xmm29

// CHECK: vfmadd231pd %ymm26, %ymm20, %ymm24
// CHECK:  encoding: [0x62,0x02,0xdd,0x20,0xb8,0xc2]
          vfmadd231pd %ymm26, %ymm20, %ymm24

// CHECK: vfmadd231pd %ymm26, %ymm20, %ymm24 {%k6}
// CHECK:  encoding: [0x62,0x02,0xdd,0x26,0xb8,0xc2]
          vfmadd231pd %ymm26, %ymm20, %ymm24 {%k6}

// CHECK: vfmadd231pd %ymm26, %ymm20, %ymm24 {%k6} {z}
// CHECK:  encoding: [0x62,0x02,0xdd,0xa6,0xb8,0xc2]
          vfmadd231pd %ymm26, %ymm20, %ymm24 {%k6} {z}

// CHECK: vfmadd231pd (%rcx), %ymm20, %ymm24
// CHECK:  encoding: [0x62,0x62,0xdd,0x20,0xb8,0x01]
          vfmadd231pd (%rcx), %ymm20, %ymm24

// CHECK: vfmadd231pd 291(%rax,%r14,8), %ymm20, %ymm24
// CHECK:  encoding: [0x62,0x22,0xdd,0x20,0xb8,0x84,0xf0,0x23,0x01,0x00,0x00]
          vfmadd231pd 291(%rax,%r14,8), %ymm20, %ymm24

// CHECK: vfmadd231pd (%rcx){1to4}, %ymm20, %ymm24
// CHECK:  encoding: [0x62,0x62,0xdd,0x30,0xb8,0x01]
          vfmadd231pd (%rcx){1to4}, %ymm20, %ymm24

// CHECK: vfmadd231pd 4064(%rdx), %ymm20, %ymm24
// CHECK:  encoding: [0x62,0x62,0xdd,0x20,0xb8,0x42,0x7f]
          vfmadd231pd 4064(%rdx), %ymm20, %ymm24

// CHECK: vfmadd231pd 4096(%rdx), %ymm20, %ymm24
// CHECK:  encoding: [0x62,0x62,0xdd,0x20,0xb8,0x82,0x00,0x10,0x00,0x00]
          vfmadd231pd 4096(%rdx), %ymm20, %ymm24

// CHECK: vfmadd231pd -4096(%rdx), %ymm20, %ymm24
// CHECK:  encoding: [0x62,0x62,0xdd,0x20,0xb8,0x42,0x80]
          vfmadd231pd -4096(%rdx), %ymm20, %ymm24

// CHECK: vfmadd231pd -4128(%rdx), %ymm20, %ymm24
// CHECK:  encoding: [0x62,0x62,0xdd,0x20,0xb8,0x82,0xe0,0xef,0xff,0xff]
          vfmadd231pd -4128(%rdx), %ymm20, %ymm24

// CHECK: vfmadd231pd 1016(%rdx){1to4}, %ymm20, %ymm24
// CHECK:  encoding: [0x62,0x62,0xdd,0x30,0xb8,0x42,0x7f]
          vfmadd231pd 1016(%rdx){1to4}, %ymm20, %ymm24

// CHECK: vfmadd231pd 1024(%rdx){1to4}, %ymm20, %ymm24
// CHECK:  encoding: [0x62,0x62,0xdd,0x30,0xb8,0x82,0x00,0x04,0x00,0x00]
          vfmadd231pd 1024(%rdx){1to4}, %ymm20, %ymm24

// CHECK: vfmadd231pd -1024(%rdx){1to4}, %ymm20, %ymm24
// CHECK:  encoding: [0x62,0x62,0xdd,0x30,0xb8,0x42,0x80]
          vfmadd231pd -1024(%rdx){1to4}, %ymm20, %ymm24

// CHECK: vfmadd231pd -1032(%rdx){1to4}, %ymm20, %ymm24
// CHECK:  encoding: [0x62,0x62,0xdd,0x30,0xb8,0x82,0xf8,0xfb,0xff,0xff]
          vfmadd231pd -1032(%rdx){1to4}, %ymm20, %ymm24

// CHECK: vfmsub132ps %xmm21, %xmm18, %xmm17
// CHECK:  encoding: [0x62,0xa2,0x6d,0x00,0x9a,0xcd]
          vfmsub132ps %xmm21, %xmm18, %xmm17

// CHECK: vfmsub132ps %xmm21, %xmm18, %xmm17 {%k1}
// CHECK:  encoding: [0x62,0xa2,0x6d,0x01,0x9a,0xcd]
          vfmsub132ps %xmm21, %xmm18, %xmm17 {%k1}

// CHECK: vfmsub132ps %xmm21, %xmm18, %xmm17 {%k1} {z}
// CHECK:  encoding: [0x62,0xa2,0x6d,0x81,0x9a,0xcd]
          vfmsub132ps %xmm21, %xmm18, %xmm17 {%k1} {z}

// CHECK: vfmsub132ps (%rcx), %xmm18, %xmm17
// CHECK:  encoding: [0x62,0xe2,0x6d,0x00,0x9a,0x09]
          vfmsub132ps (%rcx), %xmm18, %xmm17

// CHECK: vfmsub132ps 291(%rax,%r14,8), %xmm18, %xmm17
// CHECK:  encoding: [0x62,0xa2,0x6d,0x00,0x9a,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vfmsub132ps 291(%rax,%r14,8), %xmm18, %xmm17

// CHECK: vfmsub132ps (%rcx){1to4}, %xmm18, %xmm17
// CHECK:  encoding: [0x62,0xe2,0x6d,0x10,0x9a,0x09]
          vfmsub132ps (%rcx){1to4}, %xmm18, %xmm17

// CHECK: vfmsub132ps 2032(%rdx), %xmm18, %xmm17
// CHECK:  encoding: [0x62,0xe2,0x6d,0x00,0x9a,0x4a,0x7f]
          vfmsub132ps 2032(%rdx), %xmm18, %xmm17

// CHECK: vfmsub132ps 2048(%rdx), %xmm18, %xmm17
// CHECK:  encoding: [0x62,0xe2,0x6d,0x00,0x9a,0x8a,0x00,0x08,0x00,0x00]
          vfmsub132ps 2048(%rdx), %xmm18, %xmm17

// CHECK: vfmsub132ps -2048(%rdx), %xmm18, %xmm17
// CHECK:  encoding: [0x62,0xe2,0x6d,0x00,0x9a,0x4a,0x80]
          vfmsub132ps -2048(%rdx), %xmm18, %xmm17

// CHECK: vfmsub132ps -2064(%rdx), %xmm18, %xmm17
// CHECK:  encoding: [0x62,0xe2,0x6d,0x00,0x9a,0x8a,0xf0,0xf7,0xff,0xff]
          vfmsub132ps -2064(%rdx), %xmm18, %xmm17

// CHECK: vfmsub132ps 508(%rdx){1to4}, %xmm18, %xmm17
// CHECK:  encoding: [0x62,0xe2,0x6d,0x10,0x9a,0x4a,0x7f]
          vfmsub132ps 508(%rdx){1to4}, %xmm18, %xmm17

// CHECK: vfmsub132ps 512(%rdx){1to4}, %xmm18, %xmm17
// CHECK:  encoding: [0x62,0xe2,0x6d,0x10,0x9a,0x8a,0x00,0x02,0x00,0x00]
          vfmsub132ps 512(%rdx){1to4}, %xmm18, %xmm17

// CHECK: vfmsub132ps -512(%rdx){1to4}, %xmm18, %xmm17
// CHECK:  encoding: [0x62,0xe2,0x6d,0x10,0x9a,0x4a,0x80]
          vfmsub132ps -512(%rdx){1to4}, %xmm18, %xmm17

// CHECK: vfmsub132ps -516(%rdx){1to4}, %xmm18, %xmm17
// CHECK:  encoding: [0x62,0xe2,0x6d,0x10,0x9a,0x8a,0xfc,0xfd,0xff,0xff]
          vfmsub132ps -516(%rdx){1to4}, %xmm18, %xmm17

// CHECK: vfmsub132ps %ymm23, %ymm28, %ymm25
// CHECK:  encoding: [0x62,0x22,0x1d,0x20,0x9a,0xcf]
          vfmsub132ps %ymm23, %ymm28, %ymm25

// CHECK: vfmsub132ps %ymm23, %ymm28, %ymm25 {%k5}
// CHECK:  encoding: [0x62,0x22,0x1d,0x25,0x9a,0xcf]
          vfmsub132ps %ymm23, %ymm28, %ymm25 {%k5}

// CHECK: vfmsub132ps %ymm23, %ymm28, %ymm25 {%k5} {z}
// CHECK:  encoding: [0x62,0x22,0x1d,0xa5,0x9a,0xcf]
          vfmsub132ps %ymm23, %ymm28, %ymm25 {%k5} {z}

// CHECK: vfmsub132ps (%rcx), %ymm28, %ymm25
// CHECK:  encoding: [0x62,0x62,0x1d,0x20,0x9a,0x09]
          vfmsub132ps (%rcx), %ymm28, %ymm25

// CHECK: vfmsub132ps 291(%rax,%r14,8), %ymm28, %ymm25
// CHECK:  encoding: [0x62,0x22,0x1d,0x20,0x9a,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vfmsub132ps 291(%rax,%r14,8), %ymm28, %ymm25

// CHECK: vfmsub132ps (%rcx){1to8}, %ymm28, %ymm25
// CHECK:  encoding: [0x62,0x62,0x1d,0x30,0x9a,0x09]
          vfmsub132ps (%rcx){1to8}, %ymm28, %ymm25

// CHECK: vfmsub132ps 4064(%rdx), %ymm28, %ymm25
// CHECK:  encoding: [0x62,0x62,0x1d,0x20,0x9a,0x4a,0x7f]
          vfmsub132ps 4064(%rdx), %ymm28, %ymm25

// CHECK: vfmsub132ps 4096(%rdx), %ymm28, %ymm25
// CHECK:  encoding: [0x62,0x62,0x1d,0x20,0x9a,0x8a,0x00,0x10,0x00,0x00]
          vfmsub132ps 4096(%rdx), %ymm28, %ymm25

// CHECK: vfmsub132ps -4096(%rdx), %ymm28, %ymm25
// CHECK:  encoding: [0x62,0x62,0x1d,0x20,0x9a,0x4a,0x80]
          vfmsub132ps -4096(%rdx), %ymm28, %ymm25

// CHECK: vfmsub132ps -4128(%rdx), %ymm28, %ymm25
// CHECK:  encoding: [0x62,0x62,0x1d,0x20,0x9a,0x8a,0xe0,0xef,0xff,0xff]
          vfmsub132ps -4128(%rdx), %ymm28, %ymm25

// CHECK: vfmsub132ps 508(%rdx){1to8}, %ymm28, %ymm25
// CHECK:  encoding: [0x62,0x62,0x1d,0x30,0x9a,0x4a,0x7f]
          vfmsub132ps 508(%rdx){1to8}, %ymm28, %ymm25

// CHECK: vfmsub132ps 512(%rdx){1to8}, %ymm28, %ymm25
// CHECK:  encoding: [0x62,0x62,0x1d,0x30,0x9a,0x8a,0x00,0x02,0x00,0x00]
          vfmsub132ps 512(%rdx){1to8}, %ymm28, %ymm25

// CHECK: vfmsub132ps -512(%rdx){1to8}, %ymm28, %ymm25
// CHECK:  encoding: [0x62,0x62,0x1d,0x30,0x9a,0x4a,0x80]
          vfmsub132ps -512(%rdx){1to8}, %ymm28, %ymm25

// CHECK: vfmsub132ps -516(%rdx){1to8}, %ymm28, %ymm25
// CHECK:  encoding: [0x62,0x62,0x1d,0x30,0x9a,0x8a,0xfc,0xfd,0xff,0xff]
          vfmsub132ps -516(%rdx){1to8}, %ymm28, %ymm25

// CHECK: vfmsub132pd %xmm20, %xmm21, %xmm18
// CHECK:  encoding: [0x62,0xa2,0xd5,0x00,0x9a,0xd4]
          vfmsub132pd %xmm20, %xmm21, %xmm18

// CHECK: vfmsub132pd %xmm20, %xmm21, %xmm18 {%k1}
// CHECK:  encoding: [0x62,0xa2,0xd5,0x01,0x9a,0xd4]
          vfmsub132pd %xmm20, %xmm21, %xmm18 {%k1}

// CHECK: vfmsub132pd %xmm20, %xmm21, %xmm18 {%k1} {z}
// CHECK:  encoding: [0x62,0xa2,0xd5,0x81,0x9a,0xd4]
          vfmsub132pd %xmm20, %xmm21, %xmm18 {%k1} {z}

// CHECK: vfmsub132pd (%rcx), %xmm21, %xmm18
// CHECK:  encoding: [0x62,0xe2,0xd5,0x00,0x9a,0x11]
          vfmsub132pd (%rcx), %xmm21, %xmm18

// CHECK: vfmsub132pd 291(%rax,%r14,8), %xmm21, %xmm18
// CHECK:  encoding: [0x62,0xa2,0xd5,0x00,0x9a,0x94,0xf0,0x23,0x01,0x00,0x00]
          vfmsub132pd 291(%rax,%r14,8), %xmm21, %xmm18

// CHECK: vfmsub132pd (%rcx){1to2}, %xmm21, %xmm18
// CHECK:  encoding: [0x62,0xe2,0xd5,0x10,0x9a,0x11]
          vfmsub132pd (%rcx){1to2}, %xmm21, %xmm18

// CHECK: vfmsub132pd 2032(%rdx), %xmm21, %xmm18
// CHECK:  encoding: [0x62,0xe2,0xd5,0x00,0x9a,0x52,0x7f]
          vfmsub132pd 2032(%rdx), %xmm21, %xmm18

// CHECK: vfmsub132pd 2048(%rdx), %xmm21, %xmm18
// CHECK:  encoding: [0x62,0xe2,0xd5,0x00,0x9a,0x92,0x00,0x08,0x00,0x00]
          vfmsub132pd 2048(%rdx), %xmm21, %xmm18

// CHECK: vfmsub132pd -2048(%rdx), %xmm21, %xmm18
// CHECK:  encoding: [0x62,0xe2,0xd5,0x00,0x9a,0x52,0x80]
          vfmsub132pd -2048(%rdx), %xmm21, %xmm18

// CHECK: vfmsub132pd -2064(%rdx), %xmm21, %xmm18
// CHECK:  encoding: [0x62,0xe2,0xd5,0x00,0x9a,0x92,0xf0,0xf7,0xff,0xff]
          vfmsub132pd -2064(%rdx), %xmm21, %xmm18

// CHECK: vfmsub132pd 1016(%rdx){1to2}, %xmm21, %xmm18
// CHECK:  encoding: [0x62,0xe2,0xd5,0x10,0x9a,0x52,0x7f]
          vfmsub132pd 1016(%rdx){1to2}, %xmm21, %xmm18

// CHECK: vfmsub132pd 1024(%rdx){1to2}, %xmm21, %xmm18
// CHECK:  encoding: [0x62,0xe2,0xd5,0x10,0x9a,0x92,0x00,0x04,0x00,0x00]
          vfmsub132pd 1024(%rdx){1to2}, %xmm21, %xmm18

// CHECK: vfmsub132pd -1024(%rdx){1to2}, %xmm21, %xmm18
// CHECK:  encoding: [0x62,0xe2,0xd5,0x10,0x9a,0x52,0x80]
          vfmsub132pd -1024(%rdx){1to2}, %xmm21, %xmm18

// CHECK: vfmsub132pd -1032(%rdx){1to2}, %xmm21, %xmm18
// CHECK:  encoding: [0x62,0xe2,0xd5,0x10,0x9a,0x92,0xf8,0xfb,0xff,0xff]
          vfmsub132pd -1032(%rdx){1to2}, %xmm21, %xmm18

// CHECK: vfmsub132pd %ymm17, %ymm28, %ymm22
// CHECK:  encoding: [0x62,0xa2,0x9d,0x20,0x9a,0xf1]
          vfmsub132pd %ymm17, %ymm28, %ymm22

// CHECK: vfmsub132pd %ymm17, %ymm28, %ymm22 {%k5}
// CHECK:  encoding: [0x62,0xa2,0x9d,0x25,0x9a,0xf1]
          vfmsub132pd %ymm17, %ymm28, %ymm22 {%k5}

// CHECK: vfmsub132pd %ymm17, %ymm28, %ymm22 {%k5} {z}
// CHECK:  encoding: [0x62,0xa2,0x9d,0xa5,0x9a,0xf1]
          vfmsub132pd %ymm17, %ymm28, %ymm22 {%k5} {z}

// CHECK: vfmsub132pd (%rcx), %ymm28, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x9d,0x20,0x9a,0x31]
          vfmsub132pd (%rcx), %ymm28, %ymm22

// CHECK: vfmsub132pd 291(%rax,%r14,8), %ymm28, %ymm22
// CHECK:  encoding: [0x62,0xa2,0x9d,0x20,0x9a,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vfmsub132pd 291(%rax,%r14,8), %ymm28, %ymm22

// CHECK: vfmsub132pd (%rcx){1to4}, %ymm28, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x9d,0x30,0x9a,0x31]
          vfmsub132pd (%rcx){1to4}, %ymm28, %ymm22

// CHECK: vfmsub132pd 4064(%rdx), %ymm28, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x9d,0x20,0x9a,0x72,0x7f]
          vfmsub132pd 4064(%rdx), %ymm28, %ymm22

// CHECK: vfmsub132pd 4096(%rdx), %ymm28, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x9d,0x20,0x9a,0xb2,0x00,0x10,0x00,0x00]
          vfmsub132pd 4096(%rdx), %ymm28, %ymm22

// CHECK: vfmsub132pd -4096(%rdx), %ymm28, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x9d,0x20,0x9a,0x72,0x80]
          vfmsub132pd -4096(%rdx), %ymm28, %ymm22

// CHECK: vfmsub132pd -4128(%rdx), %ymm28, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x9d,0x20,0x9a,0xb2,0xe0,0xef,0xff,0xff]
          vfmsub132pd -4128(%rdx), %ymm28, %ymm22

// CHECK: vfmsub132pd 1016(%rdx){1to4}, %ymm28, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x9d,0x30,0x9a,0x72,0x7f]
          vfmsub132pd 1016(%rdx){1to4}, %ymm28, %ymm22

// CHECK: vfmsub132pd 1024(%rdx){1to4}, %ymm28, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x9d,0x30,0x9a,0xb2,0x00,0x04,0x00,0x00]
          vfmsub132pd 1024(%rdx){1to4}, %ymm28, %ymm22

// CHECK: vfmsub132pd -1024(%rdx){1to4}, %ymm28, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x9d,0x30,0x9a,0x72,0x80]
          vfmsub132pd -1024(%rdx){1to4}, %ymm28, %ymm22

// CHECK: vfmsub132pd -1032(%rdx){1to4}, %ymm28, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x9d,0x30,0x9a,0xb2,0xf8,0xfb,0xff,0xff]
          vfmsub132pd -1032(%rdx){1to4}, %ymm28, %ymm22

// CHECK: vfmsub213ps %xmm28, %xmm27, %xmm22
// CHECK:  encoding: [0x62,0x82,0x25,0x00,0xaa,0xf4]
          vfmsub213ps %xmm28, %xmm27, %xmm22

// CHECK: vfmsub213ps %xmm28, %xmm27, %xmm22 {%k2}
// CHECK:  encoding: [0x62,0x82,0x25,0x02,0xaa,0xf4]
          vfmsub213ps %xmm28, %xmm27, %xmm22 {%k2}

// CHECK: vfmsub213ps %xmm28, %xmm27, %xmm22 {%k2} {z}
// CHECK:  encoding: [0x62,0x82,0x25,0x82,0xaa,0xf4]
          vfmsub213ps %xmm28, %xmm27, %xmm22 {%k2} {z}

// CHECK: vfmsub213ps (%rcx), %xmm27, %xmm22
// CHECK:  encoding: [0x62,0xe2,0x25,0x00,0xaa,0x31]
          vfmsub213ps (%rcx), %xmm27, %xmm22

// CHECK: vfmsub213ps 291(%rax,%r14,8), %xmm27, %xmm22
// CHECK:  encoding: [0x62,0xa2,0x25,0x00,0xaa,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vfmsub213ps 291(%rax,%r14,8), %xmm27, %xmm22

// CHECK: vfmsub213ps (%rcx){1to4}, %xmm27, %xmm22
// CHECK:  encoding: [0x62,0xe2,0x25,0x10,0xaa,0x31]
          vfmsub213ps (%rcx){1to4}, %xmm27, %xmm22

// CHECK: vfmsub213ps 2032(%rdx), %xmm27, %xmm22
// CHECK:  encoding: [0x62,0xe2,0x25,0x00,0xaa,0x72,0x7f]
          vfmsub213ps 2032(%rdx), %xmm27, %xmm22

// CHECK: vfmsub213ps 2048(%rdx), %xmm27, %xmm22
// CHECK:  encoding: [0x62,0xe2,0x25,0x00,0xaa,0xb2,0x00,0x08,0x00,0x00]
          vfmsub213ps 2048(%rdx), %xmm27, %xmm22

// CHECK: vfmsub213ps -2048(%rdx), %xmm27, %xmm22
// CHECK:  encoding: [0x62,0xe2,0x25,0x00,0xaa,0x72,0x80]
          vfmsub213ps -2048(%rdx), %xmm27, %xmm22

// CHECK: vfmsub213ps -2064(%rdx), %xmm27, %xmm22
// CHECK:  encoding: [0x62,0xe2,0x25,0x00,0xaa,0xb2,0xf0,0xf7,0xff,0xff]
          vfmsub213ps -2064(%rdx), %xmm27, %xmm22

// CHECK: vfmsub213ps 508(%rdx){1to4}, %xmm27, %xmm22
// CHECK:  encoding: [0x62,0xe2,0x25,0x10,0xaa,0x72,0x7f]
          vfmsub213ps 508(%rdx){1to4}, %xmm27, %xmm22

// CHECK: vfmsub213ps 512(%rdx){1to4}, %xmm27, %xmm22
// CHECK:  encoding: [0x62,0xe2,0x25,0x10,0xaa,0xb2,0x00,0x02,0x00,0x00]
          vfmsub213ps 512(%rdx){1to4}, %xmm27, %xmm22

// CHECK: vfmsub213ps -512(%rdx){1to4}, %xmm27, %xmm22
// CHECK:  encoding: [0x62,0xe2,0x25,0x10,0xaa,0x72,0x80]
          vfmsub213ps -512(%rdx){1to4}, %xmm27, %xmm22

// CHECK: vfmsub213ps -516(%rdx){1to4}, %xmm27, %xmm22
// CHECK:  encoding: [0x62,0xe2,0x25,0x10,0xaa,0xb2,0xfc,0xfd,0xff,0xff]
          vfmsub213ps -516(%rdx){1to4}, %xmm27, %xmm22

// CHECK: vfmsub213ps %ymm22, %ymm29, %ymm28
// CHECK:  encoding: [0x62,0x22,0x15,0x20,0xaa,0xe6]
          vfmsub213ps %ymm22, %ymm29, %ymm28

// CHECK: vfmsub213ps %ymm22, %ymm29, %ymm28 {%k1}
// CHECK:  encoding: [0x62,0x22,0x15,0x21,0xaa,0xe6]
          vfmsub213ps %ymm22, %ymm29, %ymm28 {%k1}

// CHECK: vfmsub213ps %ymm22, %ymm29, %ymm28 {%k1} {z}
// CHECK:  encoding: [0x62,0x22,0x15,0xa1,0xaa,0xe6]
          vfmsub213ps %ymm22, %ymm29, %ymm28 {%k1} {z}

// CHECK: vfmsub213ps (%rcx), %ymm29, %ymm28
// CHECK:  encoding: [0x62,0x62,0x15,0x20,0xaa,0x21]
          vfmsub213ps (%rcx), %ymm29, %ymm28

// CHECK: vfmsub213ps 291(%rax,%r14,8), %ymm29, %ymm28
// CHECK:  encoding: [0x62,0x22,0x15,0x20,0xaa,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vfmsub213ps 291(%rax,%r14,8), %ymm29, %ymm28

// CHECK: vfmsub213ps (%rcx){1to8}, %ymm29, %ymm28
// CHECK:  encoding: [0x62,0x62,0x15,0x30,0xaa,0x21]
          vfmsub213ps (%rcx){1to8}, %ymm29, %ymm28

// CHECK: vfmsub213ps 4064(%rdx), %ymm29, %ymm28
// CHECK:  encoding: [0x62,0x62,0x15,0x20,0xaa,0x62,0x7f]
          vfmsub213ps 4064(%rdx), %ymm29, %ymm28

// CHECK: vfmsub213ps 4096(%rdx), %ymm29, %ymm28
// CHECK:  encoding: [0x62,0x62,0x15,0x20,0xaa,0xa2,0x00,0x10,0x00,0x00]
          vfmsub213ps 4096(%rdx), %ymm29, %ymm28

// CHECK: vfmsub213ps -4096(%rdx), %ymm29, %ymm28
// CHECK:  encoding: [0x62,0x62,0x15,0x20,0xaa,0x62,0x80]
          vfmsub213ps -4096(%rdx), %ymm29, %ymm28

// CHECK: vfmsub213ps -4128(%rdx), %ymm29, %ymm28
// CHECK:  encoding: [0x62,0x62,0x15,0x20,0xaa,0xa2,0xe0,0xef,0xff,0xff]
          vfmsub213ps -4128(%rdx), %ymm29, %ymm28

// CHECK: vfmsub213ps 508(%rdx){1to8}, %ymm29, %ymm28
// CHECK:  encoding: [0x62,0x62,0x15,0x30,0xaa,0x62,0x7f]
          vfmsub213ps 508(%rdx){1to8}, %ymm29, %ymm28

// CHECK: vfmsub213ps 512(%rdx){1to8}, %ymm29, %ymm28
// CHECK:  encoding: [0x62,0x62,0x15,0x30,0xaa,0xa2,0x00,0x02,0x00,0x00]
          vfmsub213ps 512(%rdx){1to8}, %ymm29, %ymm28

// CHECK: vfmsub213ps -512(%rdx){1to8}, %ymm29, %ymm28
// CHECK:  encoding: [0x62,0x62,0x15,0x30,0xaa,0x62,0x80]
          vfmsub213ps -512(%rdx){1to8}, %ymm29, %ymm28

// CHECK: vfmsub213ps -516(%rdx){1to8}, %ymm29, %ymm28
// CHECK:  encoding: [0x62,0x62,0x15,0x30,0xaa,0xa2,0xfc,0xfd,0xff,0xff]
          vfmsub213ps -516(%rdx){1to8}, %ymm29, %ymm28

// CHECK: vfmsub213pd %xmm20, %xmm19, %xmm19
// CHECK:  encoding: [0x62,0xa2,0xe5,0x00,0xaa,0xdc]
          vfmsub213pd %xmm20, %xmm19, %xmm19

// CHECK: vfmsub213pd %xmm20, %xmm19, %xmm19 {%k1}
// CHECK:  encoding: [0x62,0xa2,0xe5,0x01,0xaa,0xdc]
          vfmsub213pd %xmm20, %xmm19, %xmm19 {%k1}

// CHECK: vfmsub213pd %xmm20, %xmm19, %xmm19 {%k1} {z}
// CHECK:  encoding: [0x62,0xa2,0xe5,0x81,0xaa,0xdc]
          vfmsub213pd %xmm20, %xmm19, %xmm19 {%k1} {z}

// CHECK: vfmsub213pd (%rcx), %xmm19, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xe5,0x00,0xaa,0x19]
          vfmsub213pd (%rcx), %xmm19, %xmm19

// CHECK: vfmsub213pd 291(%rax,%r14,8), %xmm19, %xmm19
// CHECK:  encoding: [0x62,0xa2,0xe5,0x00,0xaa,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vfmsub213pd 291(%rax,%r14,8), %xmm19, %xmm19

// CHECK: vfmsub213pd (%rcx){1to2}, %xmm19, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xe5,0x10,0xaa,0x19]
          vfmsub213pd (%rcx){1to2}, %xmm19, %xmm19

// CHECK: vfmsub213pd 2032(%rdx), %xmm19, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xe5,0x00,0xaa,0x5a,0x7f]
          vfmsub213pd 2032(%rdx), %xmm19, %xmm19

// CHECK: vfmsub213pd 2048(%rdx), %xmm19, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xe5,0x00,0xaa,0x9a,0x00,0x08,0x00,0x00]
          vfmsub213pd 2048(%rdx), %xmm19, %xmm19

// CHECK: vfmsub213pd -2048(%rdx), %xmm19, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xe5,0x00,0xaa,0x5a,0x80]
          vfmsub213pd -2048(%rdx), %xmm19, %xmm19

// CHECK: vfmsub213pd -2064(%rdx), %xmm19, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xe5,0x00,0xaa,0x9a,0xf0,0xf7,0xff,0xff]
          vfmsub213pd -2064(%rdx), %xmm19, %xmm19

// CHECK: vfmsub213pd 1016(%rdx){1to2}, %xmm19, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xe5,0x10,0xaa,0x5a,0x7f]
          vfmsub213pd 1016(%rdx){1to2}, %xmm19, %xmm19

// CHECK: vfmsub213pd 1024(%rdx){1to2}, %xmm19, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xe5,0x10,0xaa,0x9a,0x00,0x04,0x00,0x00]
          vfmsub213pd 1024(%rdx){1to2}, %xmm19, %xmm19

// CHECK: vfmsub213pd -1024(%rdx){1to2}, %xmm19, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xe5,0x10,0xaa,0x5a,0x80]
          vfmsub213pd -1024(%rdx){1to2}, %xmm19, %xmm19

// CHECK: vfmsub213pd -1032(%rdx){1to2}, %xmm19, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xe5,0x10,0xaa,0x9a,0xf8,0xfb,0xff,0xff]
          vfmsub213pd -1032(%rdx){1to2}, %xmm19, %xmm19

// CHECK: vfmsub213pd %ymm28, %ymm25, %ymm27
// CHECK:  encoding: [0x62,0x02,0xb5,0x20,0xaa,0xdc]
          vfmsub213pd %ymm28, %ymm25, %ymm27

// CHECK: vfmsub213pd %ymm28, %ymm25, %ymm27 {%k4}
// CHECK:  encoding: [0x62,0x02,0xb5,0x24,0xaa,0xdc]
          vfmsub213pd %ymm28, %ymm25, %ymm27 {%k4}

// CHECK: vfmsub213pd %ymm28, %ymm25, %ymm27 {%k4} {z}
// CHECK:  encoding: [0x62,0x02,0xb5,0xa4,0xaa,0xdc]
          vfmsub213pd %ymm28, %ymm25, %ymm27 {%k4} {z}

// CHECK: vfmsub213pd (%rcx), %ymm25, %ymm27
// CHECK:  encoding: [0x62,0x62,0xb5,0x20,0xaa,0x19]
          vfmsub213pd (%rcx), %ymm25, %ymm27

// CHECK: vfmsub213pd 291(%rax,%r14,8), %ymm25, %ymm27
// CHECK:  encoding: [0x62,0x22,0xb5,0x20,0xaa,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vfmsub213pd 291(%rax,%r14,8), %ymm25, %ymm27

// CHECK: vfmsub213pd (%rcx){1to4}, %ymm25, %ymm27
// CHECK:  encoding: [0x62,0x62,0xb5,0x30,0xaa,0x19]
          vfmsub213pd (%rcx){1to4}, %ymm25, %ymm27

// CHECK: vfmsub213pd 4064(%rdx), %ymm25, %ymm27
// CHECK:  encoding: [0x62,0x62,0xb5,0x20,0xaa,0x5a,0x7f]
          vfmsub213pd 4064(%rdx), %ymm25, %ymm27

// CHECK: vfmsub213pd 4096(%rdx), %ymm25, %ymm27
// CHECK:  encoding: [0x62,0x62,0xb5,0x20,0xaa,0x9a,0x00,0x10,0x00,0x00]
          vfmsub213pd 4096(%rdx), %ymm25, %ymm27

// CHECK: vfmsub213pd -4096(%rdx), %ymm25, %ymm27
// CHECK:  encoding: [0x62,0x62,0xb5,0x20,0xaa,0x5a,0x80]
          vfmsub213pd -4096(%rdx), %ymm25, %ymm27

// CHECK: vfmsub213pd -4128(%rdx), %ymm25, %ymm27
// CHECK:  encoding: [0x62,0x62,0xb5,0x20,0xaa,0x9a,0xe0,0xef,0xff,0xff]
          vfmsub213pd -4128(%rdx), %ymm25, %ymm27

// CHECK: vfmsub213pd 1016(%rdx){1to4}, %ymm25, %ymm27
// CHECK:  encoding: [0x62,0x62,0xb5,0x30,0xaa,0x5a,0x7f]
          vfmsub213pd 1016(%rdx){1to4}, %ymm25, %ymm27

// CHECK: vfmsub213pd 1024(%rdx){1to4}, %ymm25, %ymm27
// CHECK:  encoding: [0x62,0x62,0xb5,0x30,0xaa,0x9a,0x00,0x04,0x00,0x00]
          vfmsub213pd 1024(%rdx){1to4}, %ymm25, %ymm27

// CHECK: vfmsub213pd -1024(%rdx){1to4}, %ymm25, %ymm27
// CHECK:  encoding: [0x62,0x62,0xb5,0x30,0xaa,0x5a,0x80]
          vfmsub213pd -1024(%rdx){1to4}, %ymm25, %ymm27

// CHECK: vfmsub213pd -1032(%rdx){1to4}, %ymm25, %ymm27
// CHECK:  encoding: [0x62,0x62,0xb5,0x30,0xaa,0x9a,0xf8,0xfb,0xff,0xff]
          vfmsub213pd -1032(%rdx){1to4}, %ymm25, %ymm27

// CHECK: vfmsub231ps %xmm25, %xmm19, %xmm28
// CHECK:  encoding: [0x62,0x02,0x65,0x00,0xba,0xe1]
          vfmsub231ps %xmm25, %xmm19, %xmm28

// CHECK: vfmsub231ps %xmm25, %xmm19, %xmm28 {%k1}
// CHECK:  encoding: [0x62,0x02,0x65,0x01,0xba,0xe1]
          vfmsub231ps %xmm25, %xmm19, %xmm28 {%k1}

// CHECK: vfmsub231ps %xmm25, %xmm19, %xmm28 {%k1} {z}
// CHECK:  encoding: [0x62,0x02,0x65,0x81,0xba,0xe1]
          vfmsub231ps %xmm25, %xmm19, %xmm28 {%k1} {z}

// CHECK: vfmsub231ps (%rcx), %xmm19, %xmm28
// CHECK:  encoding: [0x62,0x62,0x65,0x00,0xba,0x21]
          vfmsub231ps (%rcx), %xmm19, %xmm28

// CHECK: vfmsub231ps 291(%rax,%r14,8), %xmm19, %xmm28
// CHECK:  encoding: [0x62,0x22,0x65,0x00,0xba,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vfmsub231ps 291(%rax,%r14,8), %xmm19, %xmm28

// CHECK: vfmsub231ps (%rcx){1to4}, %xmm19, %xmm28
// CHECK:  encoding: [0x62,0x62,0x65,0x10,0xba,0x21]
          vfmsub231ps (%rcx){1to4}, %xmm19, %xmm28

// CHECK: vfmsub231ps 2032(%rdx), %xmm19, %xmm28
// CHECK:  encoding: [0x62,0x62,0x65,0x00,0xba,0x62,0x7f]
          vfmsub231ps 2032(%rdx), %xmm19, %xmm28

// CHECK: vfmsub231ps 2048(%rdx), %xmm19, %xmm28
// CHECK:  encoding: [0x62,0x62,0x65,0x00,0xba,0xa2,0x00,0x08,0x00,0x00]
          vfmsub231ps 2048(%rdx), %xmm19, %xmm28

// CHECK: vfmsub231ps -2048(%rdx), %xmm19, %xmm28
// CHECK:  encoding: [0x62,0x62,0x65,0x00,0xba,0x62,0x80]
          vfmsub231ps -2048(%rdx), %xmm19, %xmm28

// CHECK: vfmsub231ps -2064(%rdx), %xmm19, %xmm28
// CHECK:  encoding: [0x62,0x62,0x65,0x00,0xba,0xa2,0xf0,0xf7,0xff,0xff]
          vfmsub231ps -2064(%rdx), %xmm19, %xmm28

// CHECK: vfmsub231ps 508(%rdx){1to4}, %xmm19, %xmm28
// CHECK:  encoding: [0x62,0x62,0x65,0x10,0xba,0x62,0x7f]
          vfmsub231ps 508(%rdx){1to4}, %xmm19, %xmm28

// CHECK: vfmsub231ps 512(%rdx){1to4}, %xmm19, %xmm28
// CHECK:  encoding: [0x62,0x62,0x65,0x10,0xba,0xa2,0x00,0x02,0x00,0x00]
          vfmsub231ps 512(%rdx){1to4}, %xmm19, %xmm28

// CHECK: vfmsub231ps -512(%rdx){1to4}, %xmm19, %xmm28
// CHECK:  encoding: [0x62,0x62,0x65,0x10,0xba,0x62,0x80]
          vfmsub231ps -512(%rdx){1to4}, %xmm19, %xmm28

// CHECK: vfmsub231ps -516(%rdx){1to4}, %xmm19, %xmm28
// CHECK:  encoding: [0x62,0x62,0x65,0x10,0xba,0xa2,0xfc,0xfd,0xff,0xff]
          vfmsub231ps -516(%rdx){1to4}, %xmm19, %xmm28

// CHECK: vfmsub231ps %ymm26, %ymm26, %ymm23
// CHECK:  encoding: [0x62,0x82,0x2d,0x20,0xba,0xfa]
          vfmsub231ps %ymm26, %ymm26, %ymm23

// CHECK: vfmsub231ps %ymm26, %ymm26, %ymm23 {%k1}
// CHECK:  encoding: [0x62,0x82,0x2d,0x21,0xba,0xfa]
          vfmsub231ps %ymm26, %ymm26, %ymm23 {%k1}

// CHECK: vfmsub231ps %ymm26, %ymm26, %ymm23 {%k1} {z}
// CHECK:  encoding: [0x62,0x82,0x2d,0xa1,0xba,0xfa]
          vfmsub231ps %ymm26, %ymm26, %ymm23 {%k1} {z}

// CHECK: vfmsub231ps (%rcx), %ymm26, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x2d,0x20,0xba,0x39]
          vfmsub231ps (%rcx), %ymm26, %ymm23

// CHECK: vfmsub231ps 291(%rax,%r14,8), %ymm26, %ymm23
// CHECK:  encoding: [0x62,0xa2,0x2d,0x20,0xba,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vfmsub231ps 291(%rax,%r14,8), %ymm26, %ymm23

// CHECK: vfmsub231ps (%rcx){1to8}, %ymm26, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x2d,0x30,0xba,0x39]
          vfmsub231ps (%rcx){1to8}, %ymm26, %ymm23

// CHECK: vfmsub231ps 4064(%rdx), %ymm26, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x2d,0x20,0xba,0x7a,0x7f]
          vfmsub231ps 4064(%rdx), %ymm26, %ymm23

// CHECK: vfmsub231ps 4096(%rdx), %ymm26, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x2d,0x20,0xba,0xba,0x00,0x10,0x00,0x00]
          vfmsub231ps 4096(%rdx), %ymm26, %ymm23

// CHECK: vfmsub231ps -4096(%rdx), %ymm26, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x2d,0x20,0xba,0x7a,0x80]
          vfmsub231ps -4096(%rdx), %ymm26, %ymm23

// CHECK: vfmsub231ps -4128(%rdx), %ymm26, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x2d,0x20,0xba,0xba,0xe0,0xef,0xff,0xff]
          vfmsub231ps -4128(%rdx), %ymm26, %ymm23

// CHECK: vfmsub231ps 508(%rdx){1to8}, %ymm26, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x2d,0x30,0xba,0x7a,0x7f]
          vfmsub231ps 508(%rdx){1to8}, %ymm26, %ymm23

// CHECK: vfmsub231ps 512(%rdx){1to8}, %ymm26, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x2d,0x30,0xba,0xba,0x00,0x02,0x00,0x00]
          vfmsub231ps 512(%rdx){1to8}, %ymm26, %ymm23

// CHECK: vfmsub231ps -512(%rdx){1to8}, %ymm26, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x2d,0x30,0xba,0x7a,0x80]
          vfmsub231ps -512(%rdx){1to8}, %ymm26, %ymm23

// CHECK: vfmsub231ps -516(%rdx){1to8}, %ymm26, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x2d,0x30,0xba,0xba,0xfc,0xfd,0xff,0xff]
          vfmsub231ps -516(%rdx){1to8}, %ymm26, %ymm23

// CHECK: vfmsub231pd %xmm23, %xmm20, %xmm28
// CHECK:  encoding: [0x62,0x22,0xdd,0x00,0xba,0xe7]
          vfmsub231pd %xmm23, %xmm20, %xmm28

// CHECK: vfmsub231pd %xmm23, %xmm20, %xmm28 {%k4}
// CHECK:  encoding: [0x62,0x22,0xdd,0x04,0xba,0xe7]
          vfmsub231pd %xmm23, %xmm20, %xmm28 {%k4}

// CHECK: vfmsub231pd %xmm23, %xmm20, %xmm28 {%k4} {z}
// CHECK:  encoding: [0x62,0x22,0xdd,0x84,0xba,0xe7]
          vfmsub231pd %xmm23, %xmm20, %xmm28 {%k4} {z}

// CHECK: vfmsub231pd (%rcx), %xmm20, %xmm28
// CHECK:  encoding: [0x62,0x62,0xdd,0x00,0xba,0x21]
          vfmsub231pd (%rcx), %xmm20, %xmm28

// CHECK: vfmsub231pd 291(%rax,%r14,8), %xmm20, %xmm28
// CHECK:  encoding: [0x62,0x22,0xdd,0x00,0xba,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vfmsub231pd 291(%rax,%r14,8), %xmm20, %xmm28

// CHECK: vfmsub231pd (%rcx){1to2}, %xmm20, %xmm28
// CHECK:  encoding: [0x62,0x62,0xdd,0x10,0xba,0x21]
          vfmsub231pd (%rcx){1to2}, %xmm20, %xmm28

// CHECK: vfmsub231pd 2032(%rdx), %xmm20, %xmm28
// CHECK:  encoding: [0x62,0x62,0xdd,0x00,0xba,0x62,0x7f]
          vfmsub231pd 2032(%rdx), %xmm20, %xmm28

// CHECK: vfmsub231pd 2048(%rdx), %xmm20, %xmm28
// CHECK:  encoding: [0x62,0x62,0xdd,0x00,0xba,0xa2,0x00,0x08,0x00,0x00]
          vfmsub231pd 2048(%rdx), %xmm20, %xmm28

// CHECK: vfmsub231pd -2048(%rdx), %xmm20, %xmm28
// CHECK:  encoding: [0x62,0x62,0xdd,0x00,0xba,0x62,0x80]
          vfmsub231pd -2048(%rdx), %xmm20, %xmm28

// CHECK: vfmsub231pd -2064(%rdx), %xmm20, %xmm28
// CHECK:  encoding: [0x62,0x62,0xdd,0x00,0xba,0xa2,0xf0,0xf7,0xff,0xff]
          vfmsub231pd -2064(%rdx), %xmm20, %xmm28

// CHECK: vfmsub231pd 1016(%rdx){1to2}, %xmm20, %xmm28
// CHECK:  encoding: [0x62,0x62,0xdd,0x10,0xba,0x62,0x7f]
          vfmsub231pd 1016(%rdx){1to2}, %xmm20, %xmm28

// CHECK: vfmsub231pd 1024(%rdx){1to2}, %xmm20, %xmm28
// CHECK:  encoding: [0x62,0x62,0xdd,0x10,0xba,0xa2,0x00,0x04,0x00,0x00]
          vfmsub231pd 1024(%rdx){1to2}, %xmm20, %xmm28

// CHECK: vfmsub231pd -1024(%rdx){1to2}, %xmm20, %xmm28
// CHECK:  encoding: [0x62,0x62,0xdd,0x10,0xba,0x62,0x80]
          vfmsub231pd -1024(%rdx){1to2}, %xmm20, %xmm28

// CHECK: vfmsub231pd -1032(%rdx){1to2}, %xmm20, %xmm28
// CHECK:  encoding: [0x62,0x62,0xdd,0x10,0xba,0xa2,0xf8,0xfb,0xff,0xff]
          vfmsub231pd -1032(%rdx){1to2}, %xmm20, %xmm28

// CHECK: vfmsub231pd %ymm22, %ymm18, %ymm17
// CHECK:  encoding: [0x62,0xa2,0xed,0x20,0xba,0xce]
          vfmsub231pd %ymm22, %ymm18, %ymm17

// CHECK: vfmsub231pd %ymm22, %ymm18, %ymm17 {%k2}
// CHECK:  encoding: [0x62,0xa2,0xed,0x22,0xba,0xce]
          vfmsub231pd %ymm22, %ymm18, %ymm17 {%k2}

// CHECK: vfmsub231pd %ymm22, %ymm18, %ymm17 {%k2} {z}
// CHECK:  encoding: [0x62,0xa2,0xed,0xa2,0xba,0xce]
          vfmsub231pd %ymm22, %ymm18, %ymm17 {%k2} {z}

// CHECK: vfmsub231pd (%rcx), %ymm18, %ymm17
// CHECK:  encoding: [0x62,0xe2,0xed,0x20,0xba,0x09]
          vfmsub231pd (%rcx), %ymm18, %ymm17

// CHECK: vfmsub231pd 291(%rax,%r14,8), %ymm18, %ymm17
// CHECK:  encoding: [0x62,0xa2,0xed,0x20,0xba,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vfmsub231pd 291(%rax,%r14,8), %ymm18, %ymm17

// CHECK: vfmsub231pd (%rcx){1to4}, %ymm18, %ymm17
// CHECK:  encoding: [0x62,0xe2,0xed,0x30,0xba,0x09]
          vfmsub231pd (%rcx){1to4}, %ymm18, %ymm17

// CHECK: vfmsub231pd 4064(%rdx), %ymm18, %ymm17
// CHECK:  encoding: [0x62,0xe2,0xed,0x20,0xba,0x4a,0x7f]
          vfmsub231pd 4064(%rdx), %ymm18, %ymm17

// CHECK: vfmsub231pd 4096(%rdx), %ymm18, %ymm17
// CHECK:  encoding: [0x62,0xe2,0xed,0x20,0xba,0x8a,0x00,0x10,0x00,0x00]
          vfmsub231pd 4096(%rdx), %ymm18, %ymm17

// CHECK: vfmsub231pd -4096(%rdx), %ymm18, %ymm17
// CHECK:  encoding: [0x62,0xe2,0xed,0x20,0xba,0x4a,0x80]
          vfmsub231pd -4096(%rdx), %ymm18, %ymm17

// CHECK: vfmsub231pd -4128(%rdx), %ymm18, %ymm17
// CHECK:  encoding: [0x62,0xe2,0xed,0x20,0xba,0x8a,0xe0,0xef,0xff,0xff]
          vfmsub231pd -4128(%rdx), %ymm18, %ymm17

// CHECK: vfmsub231pd 1016(%rdx){1to4}, %ymm18, %ymm17
// CHECK:  encoding: [0x62,0xe2,0xed,0x30,0xba,0x4a,0x7f]
          vfmsub231pd 1016(%rdx){1to4}, %ymm18, %ymm17

// CHECK: vfmsub231pd 1024(%rdx){1to4}, %ymm18, %ymm17
// CHECK:  encoding: [0x62,0xe2,0xed,0x30,0xba,0x8a,0x00,0x04,0x00,0x00]
          vfmsub231pd 1024(%rdx){1to4}, %ymm18, %ymm17

// CHECK: vfmsub231pd -1024(%rdx){1to4}, %ymm18, %ymm17
// CHECK:  encoding: [0x62,0xe2,0xed,0x30,0xba,0x4a,0x80]
          vfmsub231pd -1024(%rdx){1to4}, %ymm18, %ymm17

// CHECK: vfmsub231pd -1032(%rdx){1to4}, %ymm18, %ymm17
// CHECK:  encoding: [0x62,0xe2,0xed,0x30,0xba,0x8a,0xf8,0xfb,0xff,0xff]
          vfmsub231pd -1032(%rdx){1to4}, %ymm18, %ymm17

// CHECK: vfmaddsub132ps %xmm18, %xmm27, %xmm24
// CHECK:  encoding: [0x62,0x22,0x25,0x00,0x96,0xc2]
          vfmaddsub132ps %xmm18, %xmm27, %xmm24

// CHECK: vfmaddsub132ps %xmm18, %xmm27, %xmm24 {%k2}
// CHECK:  encoding: [0x62,0x22,0x25,0x02,0x96,0xc2]
          vfmaddsub132ps %xmm18, %xmm27, %xmm24 {%k2}

// CHECK: vfmaddsub132ps %xmm18, %xmm27, %xmm24 {%k2} {z}
// CHECK:  encoding: [0x62,0x22,0x25,0x82,0x96,0xc2]
          vfmaddsub132ps %xmm18, %xmm27, %xmm24 {%k2} {z}

// CHECK: vfmaddsub132ps (%rcx), %xmm27, %xmm24
// CHECK:  encoding: [0x62,0x62,0x25,0x00,0x96,0x01]
          vfmaddsub132ps (%rcx), %xmm27, %xmm24

// CHECK: vfmaddsub132ps 291(%rax,%r14,8), %xmm27, %xmm24
// CHECK:  encoding: [0x62,0x22,0x25,0x00,0x96,0x84,0xf0,0x23,0x01,0x00,0x00]
          vfmaddsub132ps 291(%rax,%r14,8), %xmm27, %xmm24

// CHECK: vfmaddsub132ps (%rcx){1to4}, %xmm27, %xmm24
// CHECK:  encoding: [0x62,0x62,0x25,0x10,0x96,0x01]
          vfmaddsub132ps (%rcx){1to4}, %xmm27, %xmm24

// CHECK: vfmaddsub132ps 2032(%rdx), %xmm27, %xmm24
// CHECK:  encoding: [0x62,0x62,0x25,0x00,0x96,0x42,0x7f]
          vfmaddsub132ps 2032(%rdx), %xmm27, %xmm24

// CHECK: vfmaddsub132ps 2048(%rdx), %xmm27, %xmm24
// CHECK:  encoding: [0x62,0x62,0x25,0x00,0x96,0x82,0x00,0x08,0x00,0x00]
          vfmaddsub132ps 2048(%rdx), %xmm27, %xmm24

// CHECK: vfmaddsub132ps -2048(%rdx), %xmm27, %xmm24
// CHECK:  encoding: [0x62,0x62,0x25,0x00,0x96,0x42,0x80]
          vfmaddsub132ps -2048(%rdx), %xmm27, %xmm24

// CHECK: vfmaddsub132ps -2064(%rdx), %xmm27, %xmm24
// CHECK:  encoding: [0x62,0x62,0x25,0x00,0x96,0x82,0xf0,0xf7,0xff,0xff]
          vfmaddsub132ps -2064(%rdx), %xmm27, %xmm24

// CHECK: vfmaddsub132ps 508(%rdx){1to4}, %xmm27, %xmm24
// CHECK:  encoding: [0x62,0x62,0x25,0x10,0x96,0x42,0x7f]
          vfmaddsub132ps 508(%rdx){1to4}, %xmm27, %xmm24

// CHECK: vfmaddsub132ps 512(%rdx){1to4}, %xmm27, %xmm24
// CHECK:  encoding: [0x62,0x62,0x25,0x10,0x96,0x82,0x00,0x02,0x00,0x00]
          vfmaddsub132ps 512(%rdx){1to4}, %xmm27, %xmm24

// CHECK: vfmaddsub132ps -512(%rdx){1to4}, %xmm27, %xmm24
// CHECK:  encoding: [0x62,0x62,0x25,0x10,0x96,0x42,0x80]
          vfmaddsub132ps -512(%rdx){1to4}, %xmm27, %xmm24

// CHECK: vfmaddsub132ps -516(%rdx){1to4}, %xmm27, %xmm24
// CHECK:  encoding: [0x62,0x62,0x25,0x10,0x96,0x82,0xfc,0xfd,0xff,0xff]
          vfmaddsub132ps -516(%rdx){1to4}, %xmm27, %xmm24

// CHECK: vfmaddsub132ps %ymm24, %ymm20, %ymm21
// CHECK:  encoding: [0x62,0x82,0x5d,0x20,0x96,0xe8]
          vfmaddsub132ps %ymm24, %ymm20, %ymm21

// CHECK: vfmaddsub132ps %ymm24, %ymm20, %ymm21 {%k5}
// CHECK:  encoding: [0x62,0x82,0x5d,0x25,0x96,0xe8]
          vfmaddsub132ps %ymm24, %ymm20, %ymm21 {%k5}

// CHECK: vfmaddsub132ps %ymm24, %ymm20, %ymm21 {%k5} {z}
// CHECK:  encoding: [0x62,0x82,0x5d,0xa5,0x96,0xe8]
          vfmaddsub132ps %ymm24, %ymm20, %ymm21 {%k5} {z}

// CHECK: vfmaddsub132ps (%rcx), %ymm20, %ymm21
// CHECK:  encoding: [0x62,0xe2,0x5d,0x20,0x96,0x29]
          vfmaddsub132ps (%rcx), %ymm20, %ymm21

// CHECK: vfmaddsub132ps 291(%rax,%r14,8), %ymm20, %ymm21
// CHECK:  encoding: [0x62,0xa2,0x5d,0x20,0x96,0xac,0xf0,0x23,0x01,0x00,0x00]
          vfmaddsub132ps 291(%rax,%r14,8), %ymm20, %ymm21

// CHECK: vfmaddsub132ps (%rcx){1to8}, %ymm20, %ymm21
// CHECK:  encoding: [0x62,0xe2,0x5d,0x30,0x96,0x29]
          vfmaddsub132ps (%rcx){1to8}, %ymm20, %ymm21

// CHECK: vfmaddsub132ps 4064(%rdx), %ymm20, %ymm21
// CHECK:  encoding: [0x62,0xe2,0x5d,0x20,0x96,0x6a,0x7f]
          vfmaddsub132ps 4064(%rdx), %ymm20, %ymm21

// CHECK: vfmaddsub132ps 4096(%rdx), %ymm20, %ymm21
// CHECK:  encoding: [0x62,0xe2,0x5d,0x20,0x96,0xaa,0x00,0x10,0x00,0x00]
          vfmaddsub132ps 4096(%rdx), %ymm20, %ymm21

// CHECK: vfmaddsub132ps -4096(%rdx), %ymm20, %ymm21
// CHECK:  encoding: [0x62,0xe2,0x5d,0x20,0x96,0x6a,0x80]
          vfmaddsub132ps -4096(%rdx), %ymm20, %ymm21

// CHECK: vfmaddsub132ps -4128(%rdx), %ymm20, %ymm21
// CHECK:  encoding: [0x62,0xe2,0x5d,0x20,0x96,0xaa,0xe0,0xef,0xff,0xff]
          vfmaddsub132ps -4128(%rdx), %ymm20, %ymm21

// CHECK: vfmaddsub132ps 508(%rdx){1to8}, %ymm20, %ymm21
// CHECK:  encoding: [0x62,0xe2,0x5d,0x30,0x96,0x6a,0x7f]
          vfmaddsub132ps 508(%rdx){1to8}, %ymm20, %ymm21

// CHECK: vfmaddsub132ps 512(%rdx){1to8}, %ymm20, %ymm21
// CHECK:  encoding: [0x62,0xe2,0x5d,0x30,0x96,0xaa,0x00,0x02,0x00,0x00]
          vfmaddsub132ps 512(%rdx){1to8}, %ymm20, %ymm21

// CHECK: vfmaddsub132ps -512(%rdx){1to8}, %ymm20, %ymm21
// CHECK:  encoding: [0x62,0xe2,0x5d,0x30,0x96,0x6a,0x80]
          vfmaddsub132ps -512(%rdx){1to8}, %ymm20, %ymm21

// CHECK: vfmaddsub132ps -516(%rdx){1to8}, %ymm20, %ymm21
// CHECK:  encoding: [0x62,0xe2,0x5d,0x30,0x96,0xaa,0xfc,0xfd,0xff,0xff]
          vfmaddsub132ps -516(%rdx){1to8}, %ymm20, %ymm21

// CHECK: vfmaddsub132pd %xmm20, %xmm27, %xmm26
// CHECK:  encoding: [0x62,0x22,0xa5,0x00,0x96,0xd4]
          vfmaddsub132pd %xmm20, %xmm27, %xmm26

// CHECK: vfmaddsub132pd %xmm20, %xmm27, %xmm26 {%k6}
// CHECK:  encoding: [0x62,0x22,0xa5,0x06,0x96,0xd4]
          vfmaddsub132pd %xmm20, %xmm27, %xmm26 {%k6}

// CHECK: vfmaddsub132pd %xmm20, %xmm27, %xmm26 {%k6} {z}
// CHECK:  encoding: [0x62,0x22,0xa5,0x86,0x96,0xd4]
          vfmaddsub132pd %xmm20, %xmm27, %xmm26 {%k6} {z}

// CHECK: vfmaddsub132pd (%rcx), %xmm27, %xmm26
// CHECK:  encoding: [0x62,0x62,0xa5,0x00,0x96,0x11]
          vfmaddsub132pd (%rcx), %xmm27, %xmm26

// CHECK: vfmaddsub132pd 291(%rax,%r14,8), %xmm27, %xmm26
// CHECK:  encoding: [0x62,0x22,0xa5,0x00,0x96,0x94,0xf0,0x23,0x01,0x00,0x00]
          vfmaddsub132pd 291(%rax,%r14,8), %xmm27, %xmm26

// CHECK: vfmaddsub132pd (%rcx){1to2}, %xmm27, %xmm26
// CHECK:  encoding: [0x62,0x62,0xa5,0x10,0x96,0x11]
          vfmaddsub132pd (%rcx){1to2}, %xmm27, %xmm26

// CHECK: vfmaddsub132pd 2032(%rdx), %xmm27, %xmm26
// CHECK:  encoding: [0x62,0x62,0xa5,0x00,0x96,0x52,0x7f]
          vfmaddsub132pd 2032(%rdx), %xmm27, %xmm26

// CHECK: vfmaddsub132pd 2048(%rdx), %xmm27, %xmm26
// CHECK:  encoding: [0x62,0x62,0xa5,0x00,0x96,0x92,0x00,0x08,0x00,0x00]
          vfmaddsub132pd 2048(%rdx), %xmm27, %xmm26

// CHECK: vfmaddsub132pd -2048(%rdx), %xmm27, %xmm26
// CHECK:  encoding: [0x62,0x62,0xa5,0x00,0x96,0x52,0x80]
          vfmaddsub132pd -2048(%rdx), %xmm27, %xmm26

// CHECK: vfmaddsub132pd -2064(%rdx), %xmm27, %xmm26
// CHECK:  encoding: [0x62,0x62,0xa5,0x00,0x96,0x92,0xf0,0xf7,0xff,0xff]
          vfmaddsub132pd -2064(%rdx), %xmm27, %xmm26

// CHECK: vfmaddsub132pd 1016(%rdx){1to2}, %xmm27, %xmm26
// CHECK:  encoding: [0x62,0x62,0xa5,0x10,0x96,0x52,0x7f]
          vfmaddsub132pd 1016(%rdx){1to2}, %xmm27, %xmm26

// CHECK: vfmaddsub132pd 1024(%rdx){1to2}, %xmm27, %xmm26
// CHECK:  encoding: [0x62,0x62,0xa5,0x10,0x96,0x92,0x00,0x04,0x00,0x00]
          vfmaddsub132pd 1024(%rdx){1to2}, %xmm27, %xmm26

// CHECK: vfmaddsub132pd -1024(%rdx){1to2}, %xmm27, %xmm26
// CHECK:  encoding: [0x62,0x62,0xa5,0x10,0x96,0x52,0x80]
          vfmaddsub132pd -1024(%rdx){1to2}, %xmm27, %xmm26

// CHECK: vfmaddsub132pd -1032(%rdx){1to2}, %xmm27, %xmm26
// CHECK:  encoding: [0x62,0x62,0xa5,0x10,0x96,0x92,0xf8,0xfb,0xff,0xff]
          vfmaddsub132pd -1032(%rdx){1to2}, %xmm27, %xmm26

// CHECK: vfmaddsub132pd %ymm28, %ymm18, %ymm30
// CHECK:  encoding: [0x62,0x02,0xed,0x20,0x96,0xf4]
          vfmaddsub132pd %ymm28, %ymm18, %ymm30

// CHECK: vfmaddsub132pd %ymm28, %ymm18, %ymm30 {%k2}
// CHECK:  encoding: [0x62,0x02,0xed,0x22,0x96,0xf4]
          vfmaddsub132pd %ymm28, %ymm18, %ymm30 {%k2}

// CHECK: vfmaddsub132pd %ymm28, %ymm18, %ymm30 {%k2} {z}
// CHECK:  encoding: [0x62,0x02,0xed,0xa2,0x96,0xf4]
          vfmaddsub132pd %ymm28, %ymm18, %ymm30 {%k2} {z}

// CHECK: vfmaddsub132pd (%rcx), %ymm18, %ymm30
// CHECK:  encoding: [0x62,0x62,0xed,0x20,0x96,0x31]
          vfmaddsub132pd (%rcx), %ymm18, %ymm30

// CHECK: vfmaddsub132pd 291(%rax,%r14,8), %ymm18, %ymm30
// CHECK:  encoding: [0x62,0x22,0xed,0x20,0x96,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vfmaddsub132pd 291(%rax,%r14,8), %ymm18, %ymm30

// CHECK: vfmaddsub132pd (%rcx){1to4}, %ymm18, %ymm30
// CHECK:  encoding: [0x62,0x62,0xed,0x30,0x96,0x31]
          vfmaddsub132pd (%rcx){1to4}, %ymm18, %ymm30

// CHECK: vfmaddsub132pd 4064(%rdx), %ymm18, %ymm30
// CHECK:  encoding: [0x62,0x62,0xed,0x20,0x96,0x72,0x7f]
          vfmaddsub132pd 4064(%rdx), %ymm18, %ymm30

// CHECK: vfmaddsub132pd 4096(%rdx), %ymm18, %ymm30
// CHECK:  encoding: [0x62,0x62,0xed,0x20,0x96,0xb2,0x00,0x10,0x00,0x00]
          vfmaddsub132pd 4096(%rdx), %ymm18, %ymm30

// CHECK: vfmaddsub132pd -4096(%rdx), %ymm18, %ymm30
// CHECK:  encoding: [0x62,0x62,0xed,0x20,0x96,0x72,0x80]
          vfmaddsub132pd -4096(%rdx), %ymm18, %ymm30

// CHECK: vfmaddsub132pd -4128(%rdx), %ymm18, %ymm30
// CHECK:  encoding: [0x62,0x62,0xed,0x20,0x96,0xb2,0xe0,0xef,0xff,0xff]
          vfmaddsub132pd -4128(%rdx), %ymm18, %ymm30

// CHECK: vfmaddsub132pd 1016(%rdx){1to4}, %ymm18, %ymm30
// CHECK:  encoding: [0x62,0x62,0xed,0x30,0x96,0x72,0x7f]
          vfmaddsub132pd 1016(%rdx){1to4}, %ymm18, %ymm30

// CHECK: vfmaddsub132pd 1024(%rdx){1to4}, %ymm18, %ymm30
// CHECK:  encoding: [0x62,0x62,0xed,0x30,0x96,0xb2,0x00,0x04,0x00,0x00]
          vfmaddsub132pd 1024(%rdx){1to4}, %ymm18, %ymm30

// CHECK: vfmaddsub132pd -1024(%rdx){1to4}, %ymm18, %ymm30
// CHECK:  encoding: [0x62,0x62,0xed,0x30,0x96,0x72,0x80]
          vfmaddsub132pd -1024(%rdx){1to4}, %ymm18, %ymm30

// CHECK: vfmaddsub132pd -1032(%rdx){1to4}, %ymm18, %ymm30
// CHECK:  encoding: [0x62,0x62,0xed,0x30,0x96,0xb2,0xf8,0xfb,0xff,0xff]
          vfmaddsub132pd -1032(%rdx){1to4}, %ymm18, %ymm30

// CHECK: vfmaddsub213ps %xmm17, %xmm29, %xmm20
// CHECK:  encoding: [0x62,0xa2,0x15,0x00,0xa6,0xe1]
          vfmaddsub213ps %xmm17, %xmm29, %xmm20

// CHECK: vfmaddsub213ps %xmm17, %xmm29, %xmm20 {%k1}
// CHECK:  encoding: [0x62,0xa2,0x15,0x01,0xa6,0xe1]
          vfmaddsub213ps %xmm17, %xmm29, %xmm20 {%k1}

// CHECK: vfmaddsub213ps %xmm17, %xmm29, %xmm20 {%k1} {z}
// CHECK:  encoding: [0x62,0xa2,0x15,0x81,0xa6,0xe1]
          vfmaddsub213ps %xmm17, %xmm29, %xmm20 {%k1} {z}

// CHECK: vfmaddsub213ps (%rcx), %xmm29, %xmm20
// CHECK:  encoding: [0x62,0xe2,0x15,0x00,0xa6,0x21]
          vfmaddsub213ps (%rcx), %xmm29, %xmm20

// CHECK: vfmaddsub213ps 291(%rax,%r14,8), %xmm29, %xmm20
// CHECK:  encoding: [0x62,0xa2,0x15,0x00,0xa6,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vfmaddsub213ps 291(%rax,%r14,8), %xmm29, %xmm20

// CHECK: vfmaddsub213ps (%rcx){1to4}, %xmm29, %xmm20
// CHECK:  encoding: [0x62,0xe2,0x15,0x10,0xa6,0x21]
          vfmaddsub213ps (%rcx){1to4}, %xmm29, %xmm20

// CHECK: vfmaddsub213ps 2032(%rdx), %xmm29, %xmm20
// CHECK:  encoding: [0x62,0xe2,0x15,0x00,0xa6,0x62,0x7f]
          vfmaddsub213ps 2032(%rdx), %xmm29, %xmm20

// CHECK: vfmaddsub213ps 2048(%rdx), %xmm29, %xmm20
// CHECK:  encoding: [0x62,0xe2,0x15,0x00,0xa6,0xa2,0x00,0x08,0x00,0x00]
          vfmaddsub213ps 2048(%rdx), %xmm29, %xmm20

// CHECK: vfmaddsub213ps -2048(%rdx), %xmm29, %xmm20
// CHECK:  encoding: [0x62,0xe2,0x15,0x00,0xa6,0x62,0x80]
          vfmaddsub213ps -2048(%rdx), %xmm29, %xmm20

// CHECK: vfmaddsub213ps -2064(%rdx), %xmm29, %xmm20
// CHECK:  encoding: [0x62,0xe2,0x15,0x00,0xa6,0xa2,0xf0,0xf7,0xff,0xff]
          vfmaddsub213ps -2064(%rdx), %xmm29, %xmm20

// CHECK: vfmaddsub213ps 508(%rdx){1to4}, %xmm29, %xmm20
// CHECK:  encoding: [0x62,0xe2,0x15,0x10,0xa6,0x62,0x7f]
          vfmaddsub213ps 508(%rdx){1to4}, %xmm29, %xmm20

// CHECK: vfmaddsub213ps 512(%rdx){1to4}, %xmm29, %xmm20
// CHECK:  encoding: [0x62,0xe2,0x15,0x10,0xa6,0xa2,0x00,0x02,0x00,0x00]
          vfmaddsub213ps 512(%rdx){1to4}, %xmm29, %xmm20

// CHECK: vfmaddsub213ps -512(%rdx){1to4}, %xmm29, %xmm20
// CHECK:  encoding: [0x62,0xe2,0x15,0x10,0xa6,0x62,0x80]
          vfmaddsub213ps -512(%rdx){1to4}, %xmm29, %xmm20

// CHECK: vfmaddsub213ps -516(%rdx){1to4}, %xmm29, %xmm20
// CHECK:  encoding: [0x62,0xe2,0x15,0x10,0xa6,0xa2,0xfc,0xfd,0xff,0xff]
          vfmaddsub213ps -516(%rdx){1to4}, %xmm29, %xmm20

// CHECK: vfmaddsub213ps %ymm23, %ymm27, %ymm25
// CHECK:  encoding: [0x62,0x22,0x25,0x20,0xa6,0xcf]
          vfmaddsub213ps %ymm23, %ymm27, %ymm25

// CHECK: vfmaddsub213ps %ymm23, %ymm27, %ymm25 {%k4}
// CHECK:  encoding: [0x62,0x22,0x25,0x24,0xa6,0xcf]
          vfmaddsub213ps %ymm23, %ymm27, %ymm25 {%k4}

// CHECK: vfmaddsub213ps %ymm23, %ymm27, %ymm25 {%k4} {z}
// CHECK:  encoding: [0x62,0x22,0x25,0xa4,0xa6,0xcf]
          vfmaddsub213ps %ymm23, %ymm27, %ymm25 {%k4} {z}

// CHECK: vfmaddsub213ps (%rcx), %ymm27, %ymm25
// CHECK:  encoding: [0x62,0x62,0x25,0x20,0xa6,0x09]
          vfmaddsub213ps (%rcx), %ymm27, %ymm25

// CHECK: vfmaddsub213ps 291(%rax,%r14,8), %ymm27, %ymm25
// CHECK:  encoding: [0x62,0x22,0x25,0x20,0xa6,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vfmaddsub213ps 291(%rax,%r14,8), %ymm27, %ymm25

// CHECK: vfmaddsub213ps (%rcx){1to8}, %ymm27, %ymm25
// CHECK:  encoding: [0x62,0x62,0x25,0x30,0xa6,0x09]
          vfmaddsub213ps (%rcx){1to8}, %ymm27, %ymm25

// CHECK: vfmaddsub213ps 4064(%rdx), %ymm27, %ymm25
// CHECK:  encoding: [0x62,0x62,0x25,0x20,0xa6,0x4a,0x7f]
          vfmaddsub213ps 4064(%rdx), %ymm27, %ymm25

// CHECK: vfmaddsub213ps 4096(%rdx), %ymm27, %ymm25
// CHECK:  encoding: [0x62,0x62,0x25,0x20,0xa6,0x8a,0x00,0x10,0x00,0x00]
          vfmaddsub213ps 4096(%rdx), %ymm27, %ymm25

// CHECK: vfmaddsub213ps -4096(%rdx), %ymm27, %ymm25
// CHECK:  encoding: [0x62,0x62,0x25,0x20,0xa6,0x4a,0x80]
          vfmaddsub213ps -4096(%rdx), %ymm27, %ymm25

// CHECK: vfmaddsub213ps -4128(%rdx), %ymm27, %ymm25
// CHECK:  encoding: [0x62,0x62,0x25,0x20,0xa6,0x8a,0xe0,0xef,0xff,0xff]
          vfmaddsub213ps -4128(%rdx), %ymm27, %ymm25

// CHECK: vfmaddsub213ps 508(%rdx){1to8}, %ymm27, %ymm25
// CHECK:  encoding: [0x62,0x62,0x25,0x30,0xa6,0x4a,0x7f]
          vfmaddsub213ps 508(%rdx){1to8}, %ymm27, %ymm25

// CHECK: vfmaddsub213ps 512(%rdx){1to8}, %ymm27, %ymm25
// CHECK:  encoding: [0x62,0x62,0x25,0x30,0xa6,0x8a,0x00,0x02,0x00,0x00]
          vfmaddsub213ps 512(%rdx){1to8}, %ymm27, %ymm25

// CHECK: vfmaddsub213ps -512(%rdx){1to8}, %ymm27, %ymm25
// CHECK:  encoding: [0x62,0x62,0x25,0x30,0xa6,0x4a,0x80]
          vfmaddsub213ps -512(%rdx){1to8}, %ymm27, %ymm25

// CHECK: vfmaddsub213ps -516(%rdx){1to8}, %ymm27, %ymm25
// CHECK:  encoding: [0x62,0x62,0x25,0x30,0xa6,0x8a,0xfc,0xfd,0xff,0xff]
          vfmaddsub213ps -516(%rdx){1to8}, %ymm27, %ymm25

// CHECK: vfmaddsub213pd %xmm19, %xmm29, %xmm25
// CHECK:  encoding: [0x62,0x22,0x95,0x00,0xa6,0xcb]
          vfmaddsub213pd %xmm19, %xmm29, %xmm25

// CHECK: vfmaddsub213pd %xmm19, %xmm29, %xmm25 {%k7}
// CHECK:  encoding: [0x62,0x22,0x95,0x07,0xa6,0xcb]
          vfmaddsub213pd %xmm19, %xmm29, %xmm25 {%k7}

// CHECK: vfmaddsub213pd %xmm19, %xmm29, %xmm25 {%k7} {z}
// CHECK:  encoding: [0x62,0x22,0x95,0x87,0xa6,0xcb]
          vfmaddsub213pd %xmm19, %xmm29, %xmm25 {%k7} {z}

// CHECK: vfmaddsub213pd (%rcx), %xmm29, %xmm25
// CHECK:  encoding: [0x62,0x62,0x95,0x00,0xa6,0x09]
          vfmaddsub213pd (%rcx), %xmm29, %xmm25

// CHECK: vfmaddsub213pd 291(%rax,%r14,8), %xmm29, %xmm25
// CHECK:  encoding: [0x62,0x22,0x95,0x00,0xa6,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vfmaddsub213pd 291(%rax,%r14,8), %xmm29, %xmm25

// CHECK: vfmaddsub213pd (%rcx){1to2}, %xmm29, %xmm25
// CHECK:  encoding: [0x62,0x62,0x95,0x10,0xa6,0x09]
          vfmaddsub213pd (%rcx){1to2}, %xmm29, %xmm25

// CHECK: vfmaddsub213pd 2032(%rdx), %xmm29, %xmm25
// CHECK:  encoding: [0x62,0x62,0x95,0x00,0xa6,0x4a,0x7f]
          vfmaddsub213pd 2032(%rdx), %xmm29, %xmm25

// CHECK: vfmaddsub213pd 2048(%rdx), %xmm29, %xmm25
// CHECK:  encoding: [0x62,0x62,0x95,0x00,0xa6,0x8a,0x00,0x08,0x00,0x00]
          vfmaddsub213pd 2048(%rdx), %xmm29, %xmm25

// CHECK: vfmaddsub213pd -2048(%rdx), %xmm29, %xmm25
// CHECK:  encoding: [0x62,0x62,0x95,0x00,0xa6,0x4a,0x80]
          vfmaddsub213pd -2048(%rdx), %xmm29, %xmm25

// CHECK: vfmaddsub213pd -2064(%rdx), %xmm29, %xmm25
// CHECK:  encoding: [0x62,0x62,0x95,0x00,0xa6,0x8a,0xf0,0xf7,0xff,0xff]
          vfmaddsub213pd -2064(%rdx), %xmm29, %xmm25

// CHECK: vfmaddsub213pd 1016(%rdx){1to2}, %xmm29, %xmm25
// CHECK:  encoding: [0x62,0x62,0x95,0x10,0xa6,0x4a,0x7f]
          vfmaddsub213pd 1016(%rdx){1to2}, %xmm29, %xmm25

// CHECK: vfmaddsub213pd 1024(%rdx){1to2}, %xmm29, %xmm25
// CHECK:  encoding: [0x62,0x62,0x95,0x10,0xa6,0x8a,0x00,0x04,0x00,0x00]
          vfmaddsub213pd 1024(%rdx){1to2}, %xmm29, %xmm25

// CHECK: vfmaddsub213pd -1024(%rdx){1to2}, %xmm29, %xmm25
// CHECK:  encoding: [0x62,0x62,0x95,0x10,0xa6,0x4a,0x80]
          vfmaddsub213pd -1024(%rdx){1to2}, %xmm29, %xmm25

// CHECK: vfmaddsub213pd -1032(%rdx){1to2}, %xmm29, %xmm25
// CHECK:  encoding: [0x62,0x62,0x95,0x10,0xa6,0x8a,0xf8,0xfb,0xff,0xff]
          vfmaddsub213pd -1032(%rdx){1to2}, %xmm29, %xmm25

// CHECK: vfmaddsub213pd %ymm20, %ymm17, %ymm21
// CHECK:  encoding: [0x62,0xa2,0xf5,0x20,0xa6,0xec]
          vfmaddsub213pd %ymm20, %ymm17, %ymm21

// CHECK: vfmaddsub213pd %ymm20, %ymm17, %ymm21 {%k4}
// CHECK:  encoding: [0x62,0xa2,0xf5,0x24,0xa6,0xec]
          vfmaddsub213pd %ymm20, %ymm17, %ymm21 {%k4}

// CHECK: vfmaddsub213pd %ymm20, %ymm17, %ymm21 {%k4} {z}
// CHECK:  encoding: [0x62,0xa2,0xf5,0xa4,0xa6,0xec]
          vfmaddsub213pd %ymm20, %ymm17, %ymm21 {%k4} {z}

// CHECK: vfmaddsub213pd (%rcx), %ymm17, %ymm21
// CHECK:  encoding: [0x62,0xe2,0xf5,0x20,0xa6,0x29]
          vfmaddsub213pd (%rcx), %ymm17, %ymm21

// CHECK: vfmaddsub213pd 291(%rax,%r14,8), %ymm17, %ymm21
// CHECK:  encoding: [0x62,0xa2,0xf5,0x20,0xa6,0xac,0xf0,0x23,0x01,0x00,0x00]
          vfmaddsub213pd 291(%rax,%r14,8), %ymm17, %ymm21

// CHECK: vfmaddsub213pd (%rcx){1to4}, %ymm17, %ymm21
// CHECK:  encoding: [0x62,0xe2,0xf5,0x30,0xa6,0x29]
          vfmaddsub213pd (%rcx){1to4}, %ymm17, %ymm21

// CHECK: vfmaddsub213pd 4064(%rdx), %ymm17, %ymm21
// CHECK:  encoding: [0x62,0xe2,0xf5,0x20,0xa6,0x6a,0x7f]
          vfmaddsub213pd 4064(%rdx), %ymm17, %ymm21

// CHECK: vfmaddsub213pd 4096(%rdx), %ymm17, %ymm21
// CHECK:  encoding: [0x62,0xe2,0xf5,0x20,0xa6,0xaa,0x00,0x10,0x00,0x00]
          vfmaddsub213pd 4096(%rdx), %ymm17, %ymm21

// CHECK: vfmaddsub213pd -4096(%rdx), %ymm17, %ymm21
// CHECK:  encoding: [0x62,0xe2,0xf5,0x20,0xa6,0x6a,0x80]
          vfmaddsub213pd -4096(%rdx), %ymm17, %ymm21

// CHECK: vfmaddsub213pd -4128(%rdx), %ymm17, %ymm21
// CHECK:  encoding: [0x62,0xe2,0xf5,0x20,0xa6,0xaa,0xe0,0xef,0xff,0xff]
          vfmaddsub213pd -4128(%rdx), %ymm17, %ymm21

// CHECK: vfmaddsub213pd 1016(%rdx){1to4}, %ymm17, %ymm21
// CHECK:  encoding: [0x62,0xe2,0xf5,0x30,0xa6,0x6a,0x7f]
          vfmaddsub213pd 1016(%rdx){1to4}, %ymm17, %ymm21

// CHECK: vfmaddsub213pd 1024(%rdx){1to4}, %ymm17, %ymm21
// CHECK:  encoding: [0x62,0xe2,0xf5,0x30,0xa6,0xaa,0x00,0x04,0x00,0x00]
          vfmaddsub213pd 1024(%rdx){1to4}, %ymm17, %ymm21

// CHECK: vfmaddsub213pd -1024(%rdx){1to4}, %ymm17, %ymm21
// CHECK:  encoding: [0x62,0xe2,0xf5,0x30,0xa6,0x6a,0x80]
          vfmaddsub213pd -1024(%rdx){1to4}, %ymm17, %ymm21

// CHECK: vfmaddsub213pd -1032(%rdx){1to4}, %ymm17, %ymm21
// CHECK:  encoding: [0x62,0xe2,0xf5,0x30,0xa6,0xaa,0xf8,0xfb,0xff,0xff]
          vfmaddsub213pd -1032(%rdx){1to4}, %ymm17, %ymm21

// CHECK: vfmaddsub231ps %xmm20, %xmm29, %xmm19
// CHECK:  encoding: [0x62,0xa2,0x15,0x00,0xb6,0xdc]
          vfmaddsub231ps %xmm20, %xmm29, %xmm19

// CHECK: vfmaddsub231ps %xmm20, %xmm29, %xmm19 {%k6}
// CHECK:  encoding: [0x62,0xa2,0x15,0x06,0xb6,0xdc]
          vfmaddsub231ps %xmm20, %xmm29, %xmm19 {%k6}

// CHECK: vfmaddsub231ps %xmm20, %xmm29, %xmm19 {%k6} {z}
// CHECK:  encoding: [0x62,0xa2,0x15,0x86,0xb6,0xdc]
          vfmaddsub231ps %xmm20, %xmm29, %xmm19 {%k6} {z}

// CHECK: vfmaddsub231ps (%rcx), %xmm29, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x15,0x00,0xb6,0x19]
          vfmaddsub231ps (%rcx), %xmm29, %xmm19

// CHECK: vfmaddsub231ps 291(%rax,%r14,8), %xmm29, %xmm19
// CHECK:  encoding: [0x62,0xa2,0x15,0x00,0xb6,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vfmaddsub231ps 291(%rax,%r14,8), %xmm29, %xmm19

// CHECK: vfmaddsub231ps (%rcx){1to4}, %xmm29, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x15,0x10,0xb6,0x19]
          vfmaddsub231ps (%rcx){1to4}, %xmm29, %xmm19

// CHECK: vfmaddsub231ps 2032(%rdx), %xmm29, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x15,0x00,0xb6,0x5a,0x7f]
          vfmaddsub231ps 2032(%rdx), %xmm29, %xmm19

// CHECK: vfmaddsub231ps 2048(%rdx), %xmm29, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x15,0x00,0xb6,0x9a,0x00,0x08,0x00,0x00]
          vfmaddsub231ps 2048(%rdx), %xmm29, %xmm19

// CHECK: vfmaddsub231ps -2048(%rdx), %xmm29, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x15,0x00,0xb6,0x5a,0x80]
          vfmaddsub231ps -2048(%rdx), %xmm29, %xmm19

// CHECK: vfmaddsub231ps -2064(%rdx), %xmm29, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x15,0x00,0xb6,0x9a,0xf0,0xf7,0xff,0xff]
          vfmaddsub231ps -2064(%rdx), %xmm29, %xmm19

// CHECK: vfmaddsub231ps 508(%rdx){1to4}, %xmm29, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x15,0x10,0xb6,0x5a,0x7f]
          vfmaddsub231ps 508(%rdx){1to4}, %xmm29, %xmm19

// CHECK: vfmaddsub231ps 512(%rdx){1to4}, %xmm29, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x15,0x10,0xb6,0x9a,0x00,0x02,0x00,0x00]
          vfmaddsub231ps 512(%rdx){1to4}, %xmm29, %xmm19

// CHECK: vfmaddsub231ps -512(%rdx){1to4}, %xmm29, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x15,0x10,0xb6,0x5a,0x80]
          vfmaddsub231ps -512(%rdx){1to4}, %xmm29, %xmm19

// CHECK: vfmaddsub231ps -516(%rdx){1to4}, %xmm29, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x15,0x10,0xb6,0x9a,0xfc,0xfd,0xff,0xff]
          vfmaddsub231ps -516(%rdx){1to4}, %xmm29, %xmm19

// CHECK: vfmaddsub231ps %ymm17, %ymm24, %ymm19
// CHECK:  encoding: [0x62,0xa2,0x3d,0x20,0xb6,0xd9]
          vfmaddsub231ps %ymm17, %ymm24, %ymm19

// CHECK: vfmaddsub231ps %ymm17, %ymm24, %ymm19 {%k1}
// CHECK:  encoding: [0x62,0xa2,0x3d,0x21,0xb6,0xd9]
          vfmaddsub231ps %ymm17, %ymm24, %ymm19 {%k1}

// CHECK: vfmaddsub231ps %ymm17, %ymm24, %ymm19 {%k1} {z}
// CHECK:  encoding: [0x62,0xa2,0x3d,0xa1,0xb6,0xd9]
          vfmaddsub231ps %ymm17, %ymm24, %ymm19 {%k1} {z}

// CHECK: vfmaddsub231ps (%rcx), %ymm24, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x3d,0x20,0xb6,0x19]
          vfmaddsub231ps (%rcx), %ymm24, %ymm19

// CHECK: vfmaddsub231ps 291(%rax,%r14,8), %ymm24, %ymm19
// CHECK:  encoding: [0x62,0xa2,0x3d,0x20,0xb6,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vfmaddsub231ps 291(%rax,%r14,8), %ymm24, %ymm19

// CHECK: vfmaddsub231ps (%rcx){1to8}, %ymm24, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x3d,0x30,0xb6,0x19]
          vfmaddsub231ps (%rcx){1to8}, %ymm24, %ymm19

// CHECK: vfmaddsub231ps 4064(%rdx), %ymm24, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x3d,0x20,0xb6,0x5a,0x7f]
          vfmaddsub231ps 4064(%rdx), %ymm24, %ymm19

// CHECK: vfmaddsub231ps 4096(%rdx), %ymm24, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x3d,0x20,0xb6,0x9a,0x00,0x10,0x00,0x00]
          vfmaddsub231ps 4096(%rdx), %ymm24, %ymm19

// CHECK: vfmaddsub231ps -4096(%rdx), %ymm24, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x3d,0x20,0xb6,0x5a,0x80]
          vfmaddsub231ps -4096(%rdx), %ymm24, %ymm19

// CHECK: vfmaddsub231ps -4128(%rdx), %ymm24, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x3d,0x20,0xb6,0x9a,0xe0,0xef,0xff,0xff]
          vfmaddsub231ps -4128(%rdx), %ymm24, %ymm19

// CHECK: vfmaddsub231ps 508(%rdx){1to8}, %ymm24, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x3d,0x30,0xb6,0x5a,0x7f]
          vfmaddsub231ps 508(%rdx){1to8}, %ymm24, %ymm19

// CHECK: vfmaddsub231ps 512(%rdx){1to8}, %ymm24, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x3d,0x30,0xb6,0x9a,0x00,0x02,0x00,0x00]
          vfmaddsub231ps 512(%rdx){1to8}, %ymm24, %ymm19

// CHECK: vfmaddsub231ps -512(%rdx){1to8}, %ymm24, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x3d,0x30,0xb6,0x5a,0x80]
          vfmaddsub231ps -512(%rdx){1to8}, %ymm24, %ymm19

// CHECK: vfmaddsub231ps -516(%rdx){1to8}, %ymm24, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x3d,0x30,0xb6,0x9a,0xfc,0xfd,0xff,0xff]
          vfmaddsub231ps -516(%rdx){1to8}, %ymm24, %ymm19

// CHECK: vfmaddsub231pd %xmm28, %xmm26, %xmm23
// CHECK:  encoding: [0x62,0x82,0xad,0x00,0xb6,0xfc]
          vfmaddsub231pd %xmm28, %xmm26, %xmm23

// CHECK: vfmaddsub231pd %xmm28, %xmm26, %xmm23 {%k7}
// CHECK:  encoding: [0x62,0x82,0xad,0x07,0xb6,0xfc]
          vfmaddsub231pd %xmm28, %xmm26, %xmm23 {%k7}

// CHECK: vfmaddsub231pd %xmm28, %xmm26, %xmm23 {%k7} {z}
// CHECK:  encoding: [0x62,0x82,0xad,0x87,0xb6,0xfc]
          vfmaddsub231pd %xmm28, %xmm26, %xmm23 {%k7} {z}

// CHECK: vfmaddsub231pd (%rcx), %xmm26, %xmm23
// CHECK:  encoding: [0x62,0xe2,0xad,0x00,0xb6,0x39]
          vfmaddsub231pd (%rcx), %xmm26, %xmm23

// CHECK: vfmaddsub231pd 291(%rax,%r14,8), %xmm26, %xmm23
// CHECK:  encoding: [0x62,0xa2,0xad,0x00,0xb6,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vfmaddsub231pd 291(%rax,%r14,8), %xmm26, %xmm23

// CHECK: vfmaddsub231pd (%rcx){1to2}, %xmm26, %xmm23
// CHECK:  encoding: [0x62,0xe2,0xad,0x10,0xb6,0x39]
          vfmaddsub231pd (%rcx){1to2}, %xmm26, %xmm23

// CHECK: vfmaddsub231pd 2032(%rdx), %xmm26, %xmm23
// CHECK:  encoding: [0x62,0xe2,0xad,0x00,0xb6,0x7a,0x7f]
          vfmaddsub231pd 2032(%rdx), %xmm26, %xmm23

// CHECK: vfmaddsub231pd 2048(%rdx), %xmm26, %xmm23
// CHECK:  encoding: [0x62,0xe2,0xad,0x00,0xb6,0xba,0x00,0x08,0x00,0x00]
          vfmaddsub231pd 2048(%rdx), %xmm26, %xmm23

// CHECK: vfmaddsub231pd -2048(%rdx), %xmm26, %xmm23
// CHECK:  encoding: [0x62,0xe2,0xad,0x00,0xb6,0x7a,0x80]
          vfmaddsub231pd -2048(%rdx), %xmm26, %xmm23

// CHECK: vfmaddsub231pd -2064(%rdx), %xmm26, %xmm23
// CHECK:  encoding: [0x62,0xe2,0xad,0x00,0xb6,0xba,0xf0,0xf7,0xff,0xff]
          vfmaddsub231pd -2064(%rdx), %xmm26, %xmm23

// CHECK: vfmaddsub231pd 1016(%rdx){1to2}, %xmm26, %xmm23
// CHECK:  encoding: [0x62,0xe2,0xad,0x10,0xb6,0x7a,0x7f]
          vfmaddsub231pd 1016(%rdx){1to2}, %xmm26, %xmm23

// CHECK: vfmaddsub231pd 1024(%rdx){1to2}, %xmm26, %xmm23
// CHECK:  encoding: [0x62,0xe2,0xad,0x10,0xb6,0xba,0x00,0x04,0x00,0x00]
          vfmaddsub231pd 1024(%rdx){1to2}, %xmm26, %xmm23

// CHECK: vfmaddsub231pd -1024(%rdx){1to2}, %xmm26, %xmm23
// CHECK:  encoding: [0x62,0xe2,0xad,0x10,0xb6,0x7a,0x80]
          vfmaddsub231pd -1024(%rdx){1to2}, %xmm26, %xmm23

// CHECK: vfmaddsub231pd -1032(%rdx){1to2}, %xmm26, %xmm23
// CHECK:  encoding: [0x62,0xe2,0xad,0x10,0xb6,0xba,0xf8,0xfb,0xff,0xff]
          vfmaddsub231pd -1032(%rdx){1to2}, %xmm26, %xmm23

// CHECK: vfmaddsub231pd %ymm27, %ymm25, %ymm30
// CHECK:  encoding: [0x62,0x02,0xb5,0x20,0xb6,0xf3]
          vfmaddsub231pd %ymm27, %ymm25, %ymm30

// CHECK: vfmaddsub231pd %ymm27, %ymm25, %ymm30 {%k5}
// CHECK:  encoding: [0x62,0x02,0xb5,0x25,0xb6,0xf3]
          vfmaddsub231pd %ymm27, %ymm25, %ymm30 {%k5}

// CHECK: vfmaddsub231pd %ymm27, %ymm25, %ymm30 {%k5} {z}
// CHECK:  encoding: [0x62,0x02,0xb5,0xa5,0xb6,0xf3]
          vfmaddsub231pd %ymm27, %ymm25, %ymm30 {%k5} {z}

// CHECK: vfmaddsub231pd (%rcx), %ymm25, %ymm30
// CHECK:  encoding: [0x62,0x62,0xb5,0x20,0xb6,0x31]
          vfmaddsub231pd (%rcx), %ymm25, %ymm30

// CHECK: vfmaddsub231pd 291(%rax,%r14,8), %ymm25, %ymm30
// CHECK:  encoding: [0x62,0x22,0xb5,0x20,0xb6,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vfmaddsub231pd 291(%rax,%r14,8), %ymm25, %ymm30

// CHECK: vfmaddsub231pd (%rcx){1to4}, %ymm25, %ymm30
// CHECK:  encoding: [0x62,0x62,0xb5,0x30,0xb6,0x31]
          vfmaddsub231pd (%rcx){1to4}, %ymm25, %ymm30

// CHECK: vfmaddsub231pd 4064(%rdx), %ymm25, %ymm30
// CHECK:  encoding: [0x62,0x62,0xb5,0x20,0xb6,0x72,0x7f]
          vfmaddsub231pd 4064(%rdx), %ymm25, %ymm30

// CHECK: vfmaddsub231pd 4096(%rdx), %ymm25, %ymm30
// CHECK:  encoding: [0x62,0x62,0xb5,0x20,0xb6,0xb2,0x00,0x10,0x00,0x00]
          vfmaddsub231pd 4096(%rdx), %ymm25, %ymm30

// CHECK: vfmaddsub231pd -4096(%rdx), %ymm25, %ymm30
// CHECK:  encoding: [0x62,0x62,0xb5,0x20,0xb6,0x72,0x80]
          vfmaddsub231pd -4096(%rdx), %ymm25, %ymm30

// CHECK: vfmaddsub231pd -4128(%rdx), %ymm25, %ymm30
// CHECK:  encoding: [0x62,0x62,0xb5,0x20,0xb6,0xb2,0xe0,0xef,0xff,0xff]
          vfmaddsub231pd -4128(%rdx), %ymm25, %ymm30

// CHECK: vfmaddsub231pd 1016(%rdx){1to4}, %ymm25, %ymm30
// CHECK:  encoding: [0x62,0x62,0xb5,0x30,0xb6,0x72,0x7f]
          vfmaddsub231pd 1016(%rdx){1to4}, %ymm25, %ymm30

// CHECK: vfmaddsub231pd 1024(%rdx){1to4}, %ymm25, %ymm30
// CHECK:  encoding: [0x62,0x62,0xb5,0x30,0xb6,0xb2,0x00,0x04,0x00,0x00]
          vfmaddsub231pd 1024(%rdx){1to4}, %ymm25, %ymm30

// CHECK: vfmaddsub231pd -1024(%rdx){1to4}, %ymm25, %ymm30
// CHECK:  encoding: [0x62,0x62,0xb5,0x30,0xb6,0x72,0x80]
          vfmaddsub231pd -1024(%rdx){1to4}, %ymm25, %ymm30

// CHECK: vfmaddsub231pd -1032(%rdx){1to4}, %ymm25, %ymm30
// CHECK:  encoding: [0x62,0x62,0xb5,0x30,0xb6,0xb2,0xf8,0xfb,0xff,0xff]
          vfmaddsub231pd -1032(%rdx){1to4}, %ymm25, %ymm30

// CHECK: vfmsubadd132ps %xmm20, %xmm23, %xmm24
// CHECK:  encoding: [0x62,0x22,0x45,0x00,0x97,0xc4]
          vfmsubadd132ps %xmm20, %xmm23, %xmm24

// CHECK: vfmsubadd132ps %xmm20, %xmm23, %xmm24 {%k5}
// CHECK:  encoding: [0x62,0x22,0x45,0x05,0x97,0xc4]
          vfmsubadd132ps %xmm20, %xmm23, %xmm24 {%k5}

// CHECK: vfmsubadd132ps %xmm20, %xmm23, %xmm24 {%k5} {z}
// CHECK:  encoding: [0x62,0x22,0x45,0x85,0x97,0xc4]
          vfmsubadd132ps %xmm20, %xmm23, %xmm24 {%k5} {z}

// CHECK: vfmsubadd132ps (%rcx), %xmm23, %xmm24
// CHECK:  encoding: [0x62,0x62,0x45,0x00,0x97,0x01]
          vfmsubadd132ps (%rcx), %xmm23, %xmm24

// CHECK: vfmsubadd132ps 291(%rax,%r14,8), %xmm23, %xmm24
// CHECK:  encoding: [0x62,0x22,0x45,0x00,0x97,0x84,0xf0,0x23,0x01,0x00,0x00]
          vfmsubadd132ps 291(%rax,%r14,8), %xmm23, %xmm24

// CHECK: vfmsubadd132ps (%rcx){1to4}, %xmm23, %xmm24
// CHECK:  encoding: [0x62,0x62,0x45,0x10,0x97,0x01]
          vfmsubadd132ps (%rcx){1to4}, %xmm23, %xmm24

// CHECK: vfmsubadd132ps 2032(%rdx), %xmm23, %xmm24
// CHECK:  encoding: [0x62,0x62,0x45,0x00,0x97,0x42,0x7f]
          vfmsubadd132ps 2032(%rdx), %xmm23, %xmm24

// CHECK: vfmsubadd132ps 2048(%rdx), %xmm23, %xmm24
// CHECK:  encoding: [0x62,0x62,0x45,0x00,0x97,0x82,0x00,0x08,0x00,0x00]
          vfmsubadd132ps 2048(%rdx), %xmm23, %xmm24

// CHECK: vfmsubadd132ps -2048(%rdx), %xmm23, %xmm24
// CHECK:  encoding: [0x62,0x62,0x45,0x00,0x97,0x42,0x80]
          vfmsubadd132ps -2048(%rdx), %xmm23, %xmm24

// CHECK: vfmsubadd132ps -2064(%rdx), %xmm23, %xmm24
// CHECK:  encoding: [0x62,0x62,0x45,0x00,0x97,0x82,0xf0,0xf7,0xff,0xff]
          vfmsubadd132ps -2064(%rdx), %xmm23, %xmm24

// CHECK: vfmsubadd132ps 508(%rdx){1to4}, %xmm23, %xmm24
// CHECK:  encoding: [0x62,0x62,0x45,0x10,0x97,0x42,0x7f]
          vfmsubadd132ps 508(%rdx){1to4}, %xmm23, %xmm24

// CHECK: vfmsubadd132ps 512(%rdx){1to4}, %xmm23, %xmm24
// CHECK:  encoding: [0x62,0x62,0x45,0x10,0x97,0x82,0x00,0x02,0x00,0x00]
          vfmsubadd132ps 512(%rdx){1to4}, %xmm23, %xmm24

// CHECK: vfmsubadd132ps -512(%rdx){1to4}, %xmm23, %xmm24
// CHECK:  encoding: [0x62,0x62,0x45,0x10,0x97,0x42,0x80]
          vfmsubadd132ps -512(%rdx){1to4}, %xmm23, %xmm24

// CHECK: vfmsubadd132ps -516(%rdx){1to4}, %xmm23, %xmm24
// CHECK:  encoding: [0x62,0x62,0x45,0x10,0x97,0x82,0xfc,0xfd,0xff,0xff]
          vfmsubadd132ps -516(%rdx){1to4}, %xmm23, %xmm24

// CHECK: vfmsubadd132ps %ymm23, %ymm28, %ymm23
// CHECK:  encoding: [0x62,0xa2,0x1d,0x20,0x97,0xff]
          vfmsubadd132ps %ymm23, %ymm28, %ymm23

// CHECK: vfmsubadd132ps %ymm23, %ymm28, %ymm23 {%k1}
// CHECK:  encoding: [0x62,0xa2,0x1d,0x21,0x97,0xff]
          vfmsubadd132ps %ymm23, %ymm28, %ymm23 {%k1}

// CHECK: vfmsubadd132ps %ymm23, %ymm28, %ymm23 {%k1} {z}
// CHECK:  encoding: [0x62,0xa2,0x1d,0xa1,0x97,0xff]
          vfmsubadd132ps %ymm23, %ymm28, %ymm23 {%k1} {z}

// CHECK: vfmsubadd132ps (%rcx), %ymm28, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x1d,0x20,0x97,0x39]
          vfmsubadd132ps (%rcx), %ymm28, %ymm23

// CHECK: vfmsubadd132ps 291(%rax,%r14,8), %ymm28, %ymm23
// CHECK:  encoding: [0x62,0xa2,0x1d,0x20,0x97,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vfmsubadd132ps 291(%rax,%r14,8), %ymm28, %ymm23

// CHECK: vfmsubadd132ps (%rcx){1to8}, %ymm28, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x1d,0x30,0x97,0x39]
          vfmsubadd132ps (%rcx){1to8}, %ymm28, %ymm23

// CHECK: vfmsubadd132ps 4064(%rdx), %ymm28, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x1d,0x20,0x97,0x7a,0x7f]
          vfmsubadd132ps 4064(%rdx), %ymm28, %ymm23

// CHECK: vfmsubadd132ps 4096(%rdx), %ymm28, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x1d,0x20,0x97,0xba,0x00,0x10,0x00,0x00]
          vfmsubadd132ps 4096(%rdx), %ymm28, %ymm23

// CHECK: vfmsubadd132ps -4096(%rdx), %ymm28, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x1d,0x20,0x97,0x7a,0x80]
          vfmsubadd132ps -4096(%rdx), %ymm28, %ymm23

// CHECK: vfmsubadd132ps -4128(%rdx), %ymm28, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x1d,0x20,0x97,0xba,0xe0,0xef,0xff,0xff]
          vfmsubadd132ps -4128(%rdx), %ymm28, %ymm23

// CHECK: vfmsubadd132ps 508(%rdx){1to8}, %ymm28, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x1d,0x30,0x97,0x7a,0x7f]
          vfmsubadd132ps 508(%rdx){1to8}, %ymm28, %ymm23

// CHECK: vfmsubadd132ps 512(%rdx){1to8}, %ymm28, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x1d,0x30,0x97,0xba,0x00,0x02,0x00,0x00]
          vfmsubadd132ps 512(%rdx){1to8}, %ymm28, %ymm23

// CHECK: vfmsubadd132ps -512(%rdx){1to8}, %ymm28, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x1d,0x30,0x97,0x7a,0x80]
          vfmsubadd132ps -512(%rdx){1to8}, %ymm28, %ymm23

// CHECK: vfmsubadd132ps -516(%rdx){1to8}, %ymm28, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x1d,0x30,0x97,0xba,0xfc,0xfd,0xff,0xff]
          vfmsubadd132ps -516(%rdx){1to8}, %ymm28, %ymm23

// CHECK: vfmsubadd132pd %xmm24, %xmm26, %xmm22
// CHECK:  encoding: [0x62,0x82,0xad,0x00,0x97,0xf0]
          vfmsubadd132pd %xmm24, %xmm26, %xmm22

// CHECK: vfmsubadd132pd %xmm24, %xmm26, %xmm22 {%k3}
// CHECK:  encoding: [0x62,0x82,0xad,0x03,0x97,0xf0]
          vfmsubadd132pd %xmm24, %xmm26, %xmm22 {%k3}

// CHECK: vfmsubadd132pd %xmm24, %xmm26, %xmm22 {%k3} {z}
// CHECK:  encoding: [0x62,0x82,0xad,0x83,0x97,0xf0]
          vfmsubadd132pd %xmm24, %xmm26, %xmm22 {%k3} {z}

// CHECK: vfmsubadd132pd (%rcx), %xmm26, %xmm22
// CHECK:  encoding: [0x62,0xe2,0xad,0x00,0x97,0x31]
          vfmsubadd132pd (%rcx), %xmm26, %xmm22

// CHECK: vfmsubadd132pd 291(%rax,%r14,8), %xmm26, %xmm22
// CHECK:  encoding: [0x62,0xa2,0xad,0x00,0x97,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vfmsubadd132pd 291(%rax,%r14,8), %xmm26, %xmm22

// CHECK: vfmsubadd132pd (%rcx){1to2}, %xmm26, %xmm22
// CHECK:  encoding: [0x62,0xe2,0xad,0x10,0x97,0x31]
          vfmsubadd132pd (%rcx){1to2}, %xmm26, %xmm22

// CHECK: vfmsubadd132pd 2032(%rdx), %xmm26, %xmm22
// CHECK:  encoding: [0x62,0xe2,0xad,0x00,0x97,0x72,0x7f]
          vfmsubadd132pd 2032(%rdx), %xmm26, %xmm22

// CHECK: vfmsubadd132pd 2048(%rdx), %xmm26, %xmm22
// CHECK:  encoding: [0x62,0xe2,0xad,0x00,0x97,0xb2,0x00,0x08,0x00,0x00]
          vfmsubadd132pd 2048(%rdx), %xmm26, %xmm22

// CHECK: vfmsubadd132pd -2048(%rdx), %xmm26, %xmm22
// CHECK:  encoding: [0x62,0xe2,0xad,0x00,0x97,0x72,0x80]
          vfmsubadd132pd -2048(%rdx), %xmm26, %xmm22

// CHECK: vfmsubadd132pd -2064(%rdx), %xmm26, %xmm22
// CHECK:  encoding: [0x62,0xe2,0xad,0x00,0x97,0xb2,0xf0,0xf7,0xff,0xff]
          vfmsubadd132pd -2064(%rdx), %xmm26, %xmm22

// CHECK: vfmsubadd132pd 1016(%rdx){1to2}, %xmm26, %xmm22
// CHECK:  encoding: [0x62,0xe2,0xad,0x10,0x97,0x72,0x7f]
          vfmsubadd132pd 1016(%rdx){1to2}, %xmm26, %xmm22

// CHECK: vfmsubadd132pd 1024(%rdx){1to2}, %xmm26, %xmm22
// CHECK:  encoding: [0x62,0xe2,0xad,0x10,0x97,0xb2,0x00,0x04,0x00,0x00]
          vfmsubadd132pd 1024(%rdx){1to2}, %xmm26, %xmm22

// CHECK: vfmsubadd132pd -1024(%rdx){1to2}, %xmm26, %xmm22
// CHECK:  encoding: [0x62,0xe2,0xad,0x10,0x97,0x72,0x80]
          vfmsubadd132pd -1024(%rdx){1to2}, %xmm26, %xmm22

// CHECK: vfmsubadd132pd -1032(%rdx){1to2}, %xmm26, %xmm22
// CHECK:  encoding: [0x62,0xe2,0xad,0x10,0x97,0xb2,0xf8,0xfb,0xff,0xff]
          vfmsubadd132pd -1032(%rdx){1to2}, %xmm26, %xmm22

// CHECK: vfmsubadd132pd %ymm21, %ymm17, %ymm24
// CHECK:  encoding: [0x62,0x22,0xf5,0x20,0x97,0xc5]
          vfmsubadd132pd %ymm21, %ymm17, %ymm24

// CHECK: vfmsubadd132pd %ymm21, %ymm17, %ymm24 {%k7}
// CHECK:  encoding: [0x62,0x22,0xf5,0x27,0x97,0xc5]
          vfmsubadd132pd %ymm21, %ymm17, %ymm24 {%k7}

// CHECK: vfmsubadd132pd %ymm21, %ymm17, %ymm24 {%k7} {z}
// CHECK:  encoding: [0x62,0x22,0xf5,0xa7,0x97,0xc5]
          vfmsubadd132pd %ymm21, %ymm17, %ymm24 {%k7} {z}

// CHECK: vfmsubadd132pd (%rcx), %ymm17, %ymm24
// CHECK:  encoding: [0x62,0x62,0xf5,0x20,0x97,0x01]
          vfmsubadd132pd (%rcx), %ymm17, %ymm24

// CHECK: vfmsubadd132pd 291(%rax,%r14,8), %ymm17, %ymm24
// CHECK:  encoding: [0x62,0x22,0xf5,0x20,0x97,0x84,0xf0,0x23,0x01,0x00,0x00]
          vfmsubadd132pd 291(%rax,%r14,8), %ymm17, %ymm24

// CHECK: vfmsubadd132pd (%rcx){1to4}, %ymm17, %ymm24
// CHECK:  encoding: [0x62,0x62,0xf5,0x30,0x97,0x01]
          vfmsubadd132pd (%rcx){1to4}, %ymm17, %ymm24

// CHECK: vfmsubadd132pd 4064(%rdx), %ymm17, %ymm24
// CHECK:  encoding: [0x62,0x62,0xf5,0x20,0x97,0x42,0x7f]
          vfmsubadd132pd 4064(%rdx), %ymm17, %ymm24

// CHECK: vfmsubadd132pd 4096(%rdx), %ymm17, %ymm24
// CHECK:  encoding: [0x62,0x62,0xf5,0x20,0x97,0x82,0x00,0x10,0x00,0x00]
          vfmsubadd132pd 4096(%rdx), %ymm17, %ymm24

// CHECK: vfmsubadd132pd -4096(%rdx), %ymm17, %ymm24
// CHECK:  encoding: [0x62,0x62,0xf5,0x20,0x97,0x42,0x80]
          vfmsubadd132pd -4096(%rdx), %ymm17, %ymm24

// CHECK: vfmsubadd132pd -4128(%rdx), %ymm17, %ymm24
// CHECK:  encoding: [0x62,0x62,0xf5,0x20,0x97,0x82,0xe0,0xef,0xff,0xff]
          vfmsubadd132pd -4128(%rdx), %ymm17, %ymm24

// CHECK: vfmsubadd132pd 1016(%rdx){1to4}, %ymm17, %ymm24
// CHECK:  encoding: [0x62,0x62,0xf5,0x30,0x97,0x42,0x7f]
          vfmsubadd132pd 1016(%rdx){1to4}, %ymm17, %ymm24

// CHECK: vfmsubadd132pd 1024(%rdx){1to4}, %ymm17, %ymm24
// CHECK:  encoding: [0x62,0x62,0xf5,0x30,0x97,0x82,0x00,0x04,0x00,0x00]
          vfmsubadd132pd 1024(%rdx){1to4}, %ymm17, %ymm24

// CHECK: vfmsubadd132pd -1024(%rdx){1to4}, %ymm17, %ymm24
// CHECK:  encoding: [0x62,0x62,0xf5,0x30,0x97,0x42,0x80]
          vfmsubadd132pd -1024(%rdx){1to4}, %ymm17, %ymm24

// CHECK: vfmsubadd132pd -1032(%rdx){1to4}, %ymm17, %ymm24
// CHECK:  encoding: [0x62,0x62,0xf5,0x30,0x97,0x82,0xf8,0xfb,0xff,0xff]
          vfmsubadd132pd -1032(%rdx){1to4}, %ymm17, %ymm24

// CHECK: vfmsubadd213ps %xmm17, %xmm20, %xmm19
// CHECK:  encoding: [0x62,0xa2,0x5d,0x00,0xa7,0xd9]
          vfmsubadd213ps %xmm17, %xmm20, %xmm19

// CHECK: vfmsubadd213ps %xmm17, %xmm20, %xmm19 {%k5}
// CHECK:  encoding: [0x62,0xa2,0x5d,0x05,0xa7,0xd9]
          vfmsubadd213ps %xmm17, %xmm20, %xmm19 {%k5}

// CHECK: vfmsubadd213ps %xmm17, %xmm20, %xmm19 {%k5} {z}
// CHECK:  encoding: [0x62,0xa2,0x5d,0x85,0xa7,0xd9]
          vfmsubadd213ps %xmm17, %xmm20, %xmm19 {%k5} {z}

// CHECK: vfmsubadd213ps (%rcx), %xmm20, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x5d,0x00,0xa7,0x19]
          vfmsubadd213ps (%rcx), %xmm20, %xmm19

// CHECK: vfmsubadd213ps 291(%rax,%r14,8), %xmm20, %xmm19
// CHECK:  encoding: [0x62,0xa2,0x5d,0x00,0xa7,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vfmsubadd213ps 291(%rax,%r14,8), %xmm20, %xmm19

// CHECK: vfmsubadd213ps (%rcx){1to4}, %xmm20, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x5d,0x10,0xa7,0x19]
          vfmsubadd213ps (%rcx){1to4}, %xmm20, %xmm19

// CHECK: vfmsubadd213ps 2032(%rdx), %xmm20, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x5d,0x00,0xa7,0x5a,0x7f]
          vfmsubadd213ps 2032(%rdx), %xmm20, %xmm19

// CHECK: vfmsubadd213ps 2048(%rdx), %xmm20, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x5d,0x00,0xa7,0x9a,0x00,0x08,0x00,0x00]
          vfmsubadd213ps 2048(%rdx), %xmm20, %xmm19

// CHECK: vfmsubadd213ps -2048(%rdx), %xmm20, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x5d,0x00,0xa7,0x5a,0x80]
          vfmsubadd213ps -2048(%rdx), %xmm20, %xmm19

// CHECK: vfmsubadd213ps -2064(%rdx), %xmm20, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x5d,0x00,0xa7,0x9a,0xf0,0xf7,0xff,0xff]
          vfmsubadd213ps -2064(%rdx), %xmm20, %xmm19

// CHECK: vfmsubadd213ps 508(%rdx){1to4}, %xmm20, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x5d,0x10,0xa7,0x5a,0x7f]
          vfmsubadd213ps 508(%rdx){1to4}, %xmm20, %xmm19

// CHECK: vfmsubadd213ps 512(%rdx){1to4}, %xmm20, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x5d,0x10,0xa7,0x9a,0x00,0x02,0x00,0x00]
          vfmsubadd213ps 512(%rdx){1to4}, %xmm20, %xmm19

// CHECK: vfmsubadd213ps -512(%rdx){1to4}, %xmm20, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x5d,0x10,0xa7,0x5a,0x80]
          vfmsubadd213ps -512(%rdx){1to4}, %xmm20, %xmm19

// CHECK: vfmsubadd213ps -516(%rdx){1to4}, %xmm20, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x5d,0x10,0xa7,0x9a,0xfc,0xfd,0xff,0xff]
          vfmsubadd213ps -516(%rdx){1to4}, %xmm20, %xmm19

// CHECK: vfmsubadd213ps %ymm23, %ymm17, %ymm26
// CHECK:  encoding: [0x62,0x22,0x75,0x20,0xa7,0xd7]
          vfmsubadd213ps %ymm23, %ymm17, %ymm26

// CHECK: vfmsubadd213ps %ymm23, %ymm17, %ymm26 {%k7}
// CHECK:  encoding: [0x62,0x22,0x75,0x27,0xa7,0xd7]
          vfmsubadd213ps %ymm23, %ymm17, %ymm26 {%k7}

// CHECK: vfmsubadd213ps %ymm23, %ymm17, %ymm26 {%k7} {z}
// CHECK:  encoding: [0x62,0x22,0x75,0xa7,0xa7,0xd7]
          vfmsubadd213ps %ymm23, %ymm17, %ymm26 {%k7} {z}

// CHECK: vfmsubadd213ps (%rcx), %ymm17, %ymm26
// CHECK:  encoding: [0x62,0x62,0x75,0x20,0xa7,0x11]
          vfmsubadd213ps (%rcx), %ymm17, %ymm26

// CHECK: vfmsubadd213ps 291(%rax,%r14,8), %ymm17, %ymm26
// CHECK:  encoding: [0x62,0x22,0x75,0x20,0xa7,0x94,0xf0,0x23,0x01,0x00,0x00]
          vfmsubadd213ps 291(%rax,%r14,8), %ymm17, %ymm26

// CHECK: vfmsubadd213ps (%rcx){1to8}, %ymm17, %ymm26
// CHECK:  encoding: [0x62,0x62,0x75,0x30,0xa7,0x11]
          vfmsubadd213ps (%rcx){1to8}, %ymm17, %ymm26

// CHECK: vfmsubadd213ps 4064(%rdx), %ymm17, %ymm26
// CHECK:  encoding: [0x62,0x62,0x75,0x20,0xa7,0x52,0x7f]
          vfmsubadd213ps 4064(%rdx), %ymm17, %ymm26

// CHECK: vfmsubadd213ps 4096(%rdx), %ymm17, %ymm26
// CHECK:  encoding: [0x62,0x62,0x75,0x20,0xa7,0x92,0x00,0x10,0x00,0x00]
          vfmsubadd213ps 4096(%rdx), %ymm17, %ymm26

// CHECK: vfmsubadd213ps -4096(%rdx), %ymm17, %ymm26
// CHECK:  encoding: [0x62,0x62,0x75,0x20,0xa7,0x52,0x80]
          vfmsubadd213ps -4096(%rdx), %ymm17, %ymm26

// CHECK: vfmsubadd213ps -4128(%rdx), %ymm17, %ymm26
// CHECK:  encoding: [0x62,0x62,0x75,0x20,0xa7,0x92,0xe0,0xef,0xff,0xff]
          vfmsubadd213ps -4128(%rdx), %ymm17, %ymm26

// CHECK: vfmsubadd213ps 508(%rdx){1to8}, %ymm17, %ymm26
// CHECK:  encoding: [0x62,0x62,0x75,0x30,0xa7,0x52,0x7f]
          vfmsubadd213ps 508(%rdx){1to8}, %ymm17, %ymm26

// CHECK: vfmsubadd213ps 512(%rdx){1to8}, %ymm17, %ymm26
// CHECK:  encoding: [0x62,0x62,0x75,0x30,0xa7,0x92,0x00,0x02,0x00,0x00]
          vfmsubadd213ps 512(%rdx){1to8}, %ymm17, %ymm26

// CHECK: vfmsubadd213ps -512(%rdx){1to8}, %ymm17, %ymm26
// CHECK:  encoding: [0x62,0x62,0x75,0x30,0xa7,0x52,0x80]
          vfmsubadd213ps -512(%rdx){1to8}, %ymm17, %ymm26

// CHECK: vfmsubadd213ps -516(%rdx){1to8}, %ymm17, %ymm26
// CHECK:  encoding: [0x62,0x62,0x75,0x30,0xa7,0x92,0xfc,0xfd,0xff,0xff]
          vfmsubadd213ps -516(%rdx){1to8}, %ymm17, %ymm26

// CHECK: vfmsubadd213pd %xmm28, %xmm21, %xmm18
// CHECK:  encoding: [0x62,0x82,0xd5,0x00,0xa7,0xd4]
          vfmsubadd213pd %xmm28, %xmm21, %xmm18

// CHECK: vfmsubadd213pd %xmm28, %xmm21, %xmm18 {%k4}
// CHECK:  encoding: [0x62,0x82,0xd5,0x04,0xa7,0xd4]
          vfmsubadd213pd %xmm28, %xmm21, %xmm18 {%k4}

// CHECK: vfmsubadd213pd %xmm28, %xmm21, %xmm18 {%k4} {z}
// CHECK:  encoding: [0x62,0x82,0xd5,0x84,0xa7,0xd4]
          vfmsubadd213pd %xmm28, %xmm21, %xmm18 {%k4} {z}

// CHECK: vfmsubadd213pd (%rcx), %xmm21, %xmm18
// CHECK:  encoding: [0x62,0xe2,0xd5,0x00,0xa7,0x11]
          vfmsubadd213pd (%rcx), %xmm21, %xmm18

// CHECK: vfmsubadd213pd 291(%rax,%r14,8), %xmm21, %xmm18
// CHECK:  encoding: [0x62,0xa2,0xd5,0x00,0xa7,0x94,0xf0,0x23,0x01,0x00,0x00]
          vfmsubadd213pd 291(%rax,%r14,8), %xmm21, %xmm18

// CHECK: vfmsubadd213pd (%rcx){1to2}, %xmm21, %xmm18
// CHECK:  encoding: [0x62,0xe2,0xd5,0x10,0xa7,0x11]
          vfmsubadd213pd (%rcx){1to2}, %xmm21, %xmm18

// CHECK: vfmsubadd213pd 2032(%rdx), %xmm21, %xmm18
// CHECK:  encoding: [0x62,0xe2,0xd5,0x00,0xa7,0x52,0x7f]
          vfmsubadd213pd 2032(%rdx), %xmm21, %xmm18

// CHECK: vfmsubadd213pd 2048(%rdx), %xmm21, %xmm18
// CHECK:  encoding: [0x62,0xe2,0xd5,0x00,0xa7,0x92,0x00,0x08,0x00,0x00]
          vfmsubadd213pd 2048(%rdx), %xmm21, %xmm18

// CHECK: vfmsubadd213pd -2048(%rdx), %xmm21, %xmm18
// CHECK:  encoding: [0x62,0xe2,0xd5,0x00,0xa7,0x52,0x80]
          vfmsubadd213pd -2048(%rdx), %xmm21, %xmm18

// CHECK: vfmsubadd213pd -2064(%rdx), %xmm21, %xmm18
// CHECK:  encoding: [0x62,0xe2,0xd5,0x00,0xa7,0x92,0xf0,0xf7,0xff,0xff]
          vfmsubadd213pd -2064(%rdx), %xmm21, %xmm18

// CHECK: vfmsubadd213pd 1016(%rdx){1to2}, %xmm21, %xmm18
// CHECK:  encoding: [0x62,0xe2,0xd5,0x10,0xa7,0x52,0x7f]
          vfmsubadd213pd 1016(%rdx){1to2}, %xmm21, %xmm18

// CHECK: vfmsubadd213pd 1024(%rdx){1to2}, %xmm21, %xmm18
// CHECK:  encoding: [0x62,0xe2,0xd5,0x10,0xa7,0x92,0x00,0x04,0x00,0x00]
          vfmsubadd213pd 1024(%rdx){1to2}, %xmm21, %xmm18

// CHECK: vfmsubadd213pd -1024(%rdx){1to2}, %xmm21, %xmm18
// CHECK:  encoding: [0x62,0xe2,0xd5,0x10,0xa7,0x52,0x80]
          vfmsubadd213pd -1024(%rdx){1to2}, %xmm21, %xmm18

// CHECK: vfmsubadd213pd -1032(%rdx){1to2}, %xmm21, %xmm18
// CHECK:  encoding: [0x62,0xe2,0xd5,0x10,0xa7,0x92,0xf8,0xfb,0xff,0xff]
          vfmsubadd213pd -1032(%rdx){1to2}, %xmm21, %xmm18

// CHECK: vfmsubadd213pd %ymm25, %ymm20, %ymm27
// CHECK:  encoding: [0x62,0x02,0xdd,0x20,0xa7,0xd9]
          vfmsubadd213pd %ymm25, %ymm20, %ymm27

// CHECK: vfmsubadd213pd %ymm25, %ymm20, %ymm27 {%k7}
// CHECK:  encoding: [0x62,0x02,0xdd,0x27,0xa7,0xd9]
          vfmsubadd213pd %ymm25, %ymm20, %ymm27 {%k7}

// CHECK: vfmsubadd213pd %ymm25, %ymm20, %ymm27 {%k7} {z}
// CHECK:  encoding: [0x62,0x02,0xdd,0xa7,0xa7,0xd9]
          vfmsubadd213pd %ymm25, %ymm20, %ymm27 {%k7} {z}

// CHECK: vfmsubadd213pd (%rcx), %ymm20, %ymm27
// CHECK:  encoding: [0x62,0x62,0xdd,0x20,0xa7,0x19]
          vfmsubadd213pd (%rcx), %ymm20, %ymm27

// CHECK: vfmsubadd213pd 291(%rax,%r14,8), %ymm20, %ymm27
// CHECK:  encoding: [0x62,0x22,0xdd,0x20,0xa7,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vfmsubadd213pd 291(%rax,%r14,8), %ymm20, %ymm27

// CHECK: vfmsubadd213pd (%rcx){1to4}, %ymm20, %ymm27
// CHECK:  encoding: [0x62,0x62,0xdd,0x30,0xa7,0x19]
          vfmsubadd213pd (%rcx){1to4}, %ymm20, %ymm27

// CHECK: vfmsubadd213pd 4064(%rdx), %ymm20, %ymm27
// CHECK:  encoding: [0x62,0x62,0xdd,0x20,0xa7,0x5a,0x7f]
          vfmsubadd213pd 4064(%rdx), %ymm20, %ymm27

// CHECK: vfmsubadd213pd 4096(%rdx), %ymm20, %ymm27
// CHECK:  encoding: [0x62,0x62,0xdd,0x20,0xa7,0x9a,0x00,0x10,0x00,0x00]
          vfmsubadd213pd 4096(%rdx), %ymm20, %ymm27

// CHECK: vfmsubadd213pd -4096(%rdx), %ymm20, %ymm27
// CHECK:  encoding: [0x62,0x62,0xdd,0x20,0xa7,0x5a,0x80]
          vfmsubadd213pd -4096(%rdx), %ymm20, %ymm27

// CHECK: vfmsubadd213pd -4128(%rdx), %ymm20, %ymm27
// CHECK:  encoding: [0x62,0x62,0xdd,0x20,0xa7,0x9a,0xe0,0xef,0xff,0xff]
          vfmsubadd213pd -4128(%rdx), %ymm20, %ymm27

// CHECK: vfmsubadd213pd 1016(%rdx){1to4}, %ymm20, %ymm27
// CHECK:  encoding: [0x62,0x62,0xdd,0x30,0xa7,0x5a,0x7f]
          vfmsubadd213pd 1016(%rdx){1to4}, %ymm20, %ymm27

// CHECK: vfmsubadd213pd 1024(%rdx){1to4}, %ymm20, %ymm27
// CHECK:  encoding: [0x62,0x62,0xdd,0x30,0xa7,0x9a,0x00,0x04,0x00,0x00]
          vfmsubadd213pd 1024(%rdx){1to4}, %ymm20, %ymm27

// CHECK: vfmsubadd213pd -1024(%rdx){1to4}, %ymm20, %ymm27
// CHECK:  encoding: [0x62,0x62,0xdd,0x30,0xa7,0x5a,0x80]
          vfmsubadd213pd -1024(%rdx){1to4}, %ymm20, %ymm27

// CHECK: vfmsubadd213pd -1032(%rdx){1to4}, %ymm20, %ymm27
// CHECK:  encoding: [0x62,0x62,0xdd,0x30,0xa7,0x9a,0xf8,0xfb,0xff,0xff]
          vfmsubadd213pd -1032(%rdx){1to4}, %ymm20, %ymm27

// CHECK: vfmsubadd231ps %xmm23, %xmm25, %xmm21
// CHECK:  encoding: [0x62,0xa2,0x35,0x00,0xb7,0xef]
          vfmsubadd231ps %xmm23, %xmm25, %xmm21

// CHECK: vfmsubadd231ps %xmm23, %xmm25, %xmm21 {%k4}
// CHECK:  encoding: [0x62,0xa2,0x35,0x04,0xb7,0xef]
          vfmsubadd231ps %xmm23, %xmm25, %xmm21 {%k4}

// CHECK: vfmsubadd231ps %xmm23, %xmm25, %xmm21 {%k4} {z}
// CHECK:  encoding: [0x62,0xa2,0x35,0x84,0xb7,0xef]
          vfmsubadd231ps %xmm23, %xmm25, %xmm21 {%k4} {z}

// CHECK: vfmsubadd231ps (%rcx), %xmm25, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x35,0x00,0xb7,0x29]
          vfmsubadd231ps (%rcx), %xmm25, %xmm21

// CHECK: vfmsubadd231ps 291(%rax,%r14,8), %xmm25, %xmm21
// CHECK:  encoding: [0x62,0xa2,0x35,0x00,0xb7,0xac,0xf0,0x23,0x01,0x00,0x00]
          vfmsubadd231ps 291(%rax,%r14,8), %xmm25, %xmm21

// CHECK: vfmsubadd231ps (%rcx){1to4}, %xmm25, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x35,0x10,0xb7,0x29]
          vfmsubadd231ps (%rcx){1to4}, %xmm25, %xmm21

// CHECK: vfmsubadd231ps 2032(%rdx), %xmm25, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x35,0x00,0xb7,0x6a,0x7f]
          vfmsubadd231ps 2032(%rdx), %xmm25, %xmm21

// CHECK: vfmsubadd231ps 2048(%rdx), %xmm25, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x35,0x00,0xb7,0xaa,0x00,0x08,0x00,0x00]
          vfmsubadd231ps 2048(%rdx), %xmm25, %xmm21

// CHECK: vfmsubadd231ps -2048(%rdx), %xmm25, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x35,0x00,0xb7,0x6a,0x80]
          vfmsubadd231ps -2048(%rdx), %xmm25, %xmm21

// CHECK: vfmsubadd231ps -2064(%rdx), %xmm25, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x35,0x00,0xb7,0xaa,0xf0,0xf7,0xff,0xff]
          vfmsubadd231ps -2064(%rdx), %xmm25, %xmm21

// CHECK: vfmsubadd231ps 508(%rdx){1to4}, %xmm25, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x35,0x10,0xb7,0x6a,0x7f]
          vfmsubadd231ps 508(%rdx){1to4}, %xmm25, %xmm21

// CHECK: vfmsubadd231ps 512(%rdx){1to4}, %xmm25, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x35,0x10,0xb7,0xaa,0x00,0x02,0x00,0x00]
          vfmsubadd231ps 512(%rdx){1to4}, %xmm25, %xmm21

// CHECK: vfmsubadd231ps -512(%rdx){1to4}, %xmm25, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x35,0x10,0xb7,0x6a,0x80]
          vfmsubadd231ps -512(%rdx){1to4}, %xmm25, %xmm21

// CHECK: vfmsubadd231ps -516(%rdx){1to4}, %xmm25, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x35,0x10,0xb7,0xaa,0xfc,0xfd,0xff,0xff]
          vfmsubadd231ps -516(%rdx){1to4}, %xmm25, %xmm21

// CHECK: vfmsubadd231ps %ymm20, %ymm23, %ymm27
// CHECK:  encoding: [0x62,0x22,0x45,0x20,0xb7,0xdc]
          vfmsubadd231ps %ymm20, %ymm23, %ymm27

// CHECK: vfmsubadd231ps %ymm20, %ymm23, %ymm27 {%k3}
// CHECK:  encoding: [0x62,0x22,0x45,0x23,0xb7,0xdc]
          vfmsubadd231ps %ymm20, %ymm23, %ymm27 {%k3}

// CHECK: vfmsubadd231ps %ymm20, %ymm23, %ymm27 {%k3} {z}
// CHECK:  encoding: [0x62,0x22,0x45,0xa3,0xb7,0xdc]
          vfmsubadd231ps %ymm20, %ymm23, %ymm27 {%k3} {z}

// CHECK: vfmsubadd231ps (%rcx), %ymm23, %ymm27
// CHECK:  encoding: [0x62,0x62,0x45,0x20,0xb7,0x19]
          vfmsubadd231ps (%rcx), %ymm23, %ymm27

// CHECK: vfmsubadd231ps 291(%rax,%r14,8), %ymm23, %ymm27
// CHECK:  encoding: [0x62,0x22,0x45,0x20,0xb7,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vfmsubadd231ps 291(%rax,%r14,8), %ymm23, %ymm27

// CHECK: vfmsubadd231ps (%rcx){1to8}, %ymm23, %ymm27
// CHECK:  encoding: [0x62,0x62,0x45,0x30,0xb7,0x19]
          vfmsubadd231ps (%rcx){1to8}, %ymm23, %ymm27

// CHECK: vfmsubadd231ps 4064(%rdx), %ymm23, %ymm27
// CHECK:  encoding: [0x62,0x62,0x45,0x20,0xb7,0x5a,0x7f]
          vfmsubadd231ps 4064(%rdx), %ymm23, %ymm27

// CHECK: vfmsubadd231ps 4096(%rdx), %ymm23, %ymm27
// CHECK:  encoding: [0x62,0x62,0x45,0x20,0xb7,0x9a,0x00,0x10,0x00,0x00]
          vfmsubadd231ps 4096(%rdx), %ymm23, %ymm27

// CHECK: vfmsubadd231ps -4096(%rdx), %ymm23, %ymm27
// CHECK:  encoding: [0x62,0x62,0x45,0x20,0xb7,0x5a,0x80]
          vfmsubadd231ps -4096(%rdx), %ymm23, %ymm27

// CHECK: vfmsubadd231ps -4128(%rdx), %ymm23, %ymm27
// CHECK:  encoding: [0x62,0x62,0x45,0x20,0xb7,0x9a,0xe0,0xef,0xff,0xff]
          vfmsubadd231ps -4128(%rdx), %ymm23, %ymm27

// CHECK: vfmsubadd231ps 508(%rdx){1to8}, %ymm23, %ymm27
// CHECK:  encoding: [0x62,0x62,0x45,0x30,0xb7,0x5a,0x7f]
          vfmsubadd231ps 508(%rdx){1to8}, %ymm23, %ymm27

// CHECK: vfmsubadd231ps 512(%rdx){1to8}, %ymm23, %ymm27
// CHECK:  encoding: [0x62,0x62,0x45,0x30,0xb7,0x9a,0x00,0x02,0x00,0x00]
          vfmsubadd231ps 512(%rdx){1to8}, %ymm23, %ymm27

// CHECK: vfmsubadd231ps -512(%rdx){1to8}, %ymm23, %ymm27
// CHECK:  encoding: [0x62,0x62,0x45,0x30,0xb7,0x5a,0x80]
          vfmsubadd231ps -512(%rdx){1to8}, %ymm23, %ymm27

// CHECK: vfmsubadd231ps -516(%rdx){1to8}, %ymm23, %ymm27
// CHECK:  encoding: [0x62,0x62,0x45,0x30,0xb7,0x9a,0xfc,0xfd,0xff,0xff]
          vfmsubadd231ps -516(%rdx){1to8}, %ymm23, %ymm27

// CHECK: vfmsubadd231pd %xmm28, %xmm24, %xmm20
// CHECK:  encoding: [0x62,0x82,0xbd,0x00,0xb7,0xe4]
          vfmsubadd231pd %xmm28, %xmm24, %xmm20

// CHECK: vfmsubadd231pd %xmm28, %xmm24, %xmm20 {%k3}
// CHECK:  encoding: [0x62,0x82,0xbd,0x03,0xb7,0xe4]
          vfmsubadd231pd %xmm28, %xmm24, %xmm20 {%k3}

// CHECK: vfmsubadd231pd %xmm28, %xmm24, %xmm20 {%k3} {z}
// CHECK:  encoding: [0x62,0x82,0xbd,0x83,0xb7,0xe4]
          vfmsubadd231pd %xmm28, %xmm24, %xmm20 {%k3} {z}

// CHECK: vfmsubadd231pd (%rcx), %xmm24, %xmm20
// CHECK:  encoding: [0x62,0xe2,0xbd,0x00,0xb7,0x21]
          vfmsubadd231pd (%rcx), %xmm24, %xmm20

// CHECK: vfmsubadd231pd 291(%rax,%r14,8), %xmm24, %xmm20
// CHECK:  encoding: [0x62,0xa2,0xbd,0x00,0xb7,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vfmsubadd231pd 291(%rax,%r14,8), %xmm24, %xmm20

// CHECK: vfmsubadd231pd (%rcx){1to2}, %xmm24, %xmm20
// CHECK:  encoding: [0x62,0xe2,0xbd,0x10,0xb7,0x21]
          vfmsubadd231pd (%rcx){1to2}, %xmm24, %xmm20

// CHECK: vfmsubadd231pd 2032(%rdx), %xmm24, %xmm20
// CHECK:  encoding: [0x62,0xe2,0xbd,0x00,0xb7,0x62,0x7f]
          vfmsubadd231pd 2032(%rdx), %xmm24, %xmm20

// CHECK: vfmsubadd231pd 2048(%rdx), %xmm24, %xmm20
// CHECK:  encoding: [0x62,0xe2,0xbd,0x00,0xb7,0xa2,0x00,0x08,0x00,0x00]
          vfmsubadd231pd 2048(%rdx), %xmm24, %xmm20

// CHECK: vfmsubadd231pd -2048(%rdx), %xmm24, %xmm20
// CHECK:  encoding: [0x62,0xe2,0xbd,0x00,0xb7,0x62,0x80]
          vfmsubadd231pd -2048(%rdx), %xmm24, %xmm20

// CHECK: vfmsubadd231pd -2064(%rdx), %xmm24, %xmm20
// CHECK:  encoding: [0x62,0xe2,0xbd,0x00,0xb7,0xa2,0xf0,0xf7,0xff,0xff]
          vfmsubadd231pd -2064(%rdx), %xmm24, %xmm20

// CHECK: vfmsubadd231pd 1016(%rdx){1to2}, %xmm24, %xmm20
// CHECK:  encoding: [0x62,0xe2,0xbd,0x10,0xb7,0x62,0x7f]
          vfmsubadd231pd 1016(%rdx){1to2}, %xmm24, %xmm20

// CHECK: vfmsubadd231pd 1024(%rdx){1to2}, %xmm24, %xmm20
// CHECK:  encoding: [0x62,0xe2,0xbd,0x10,0xb7,0xa2,0x00,0x04,0x00,0x00]
          vfmsubadd231pd 1024(%rdx){1to2}, %xmm24, %xmm20

// CHECK: vfmsubadd231pd -1024(%rdx){1to2}, %xmm24, %xmm20
// CHECK:  encoding: [0x62,0xe2,0xbd,0x10,0xb7,0x62,0x80]
          vfmsubadd231pd -1024(%rdx){1to2}, %xmm24, %xmm20

// CHECK: vfmsubadd231pd -1032(%rdx){1to2}, %xmm24, %xmm20
// CHECK:  encoding: [0x62,0xe2,0xbd,0x10,0xb7,0xa2,0xf8,0xfb,0xff,0xff]
          vfmsubadd231pd -1032(%rdx){1to2}, %xmm24, %xmm20

// CHECK: vfmsubadd231pd %ymm21, %ymm29, %ymm30
// CHECK:  encoding: [0x62,0x22,0x95,0x20,0xb7,0xf5]
          vfmsubadd231pd %ymm21, %ymm29, %ymm30

// CHECK: vfmsubadd231pd %ymm21, %ymm29, %ymm30 {%k7}
// CHECK:  encoding: [0x62,0x22,0x95,0x27,0xb7,0xf5]
          vfmsubadd231pd %ymm21, %ymm29, %ymm30 {%k7}

// CHECK: vfmsubadd231pd %ymm21, %ymm29, %ymm30 {%k7} {z}
// CHECK:  encoding: [0x62,0x22,0x95,0xa7,0xb7,0xf5]
          vfmsubadd231pd %ymm21, %ymm29, %ymm30 {%k7} {z}

// CHECK: vfmsubadd231pd (%rcx), %ymm29, %ymm30
// CHECK:  encoding: [0x62,0x62,0x95,0x20,0xb7,0x31]
          vfmsubadd231pd (%rcx), %ymm29, %ymm30

// CHECK: vfmsubadd231pd 291(%rax,%r14,8), %ymm29, %ymm30
// CHECK:  encoding: [0x62,0x22,0x95,0x20,0xb7,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vfmsubadd231pd 291(%rax,%r14,8), %ymm29, %ymm30

// CHECK: vfmsubadd231pd (%rcx){1to4}, %ymm29, %ymm30
// CHECK:  encoding: [0x62,0x62,0x95,0x30,0xb7,0x31]
          vfmsubadd231pd (%rcx){1to4}, %ymm29, %ymm30

// CHECK: vfmsubadd231pd 4064(%rdx), %ymm29, %ymm30
// CHECK:  encoding: [0x62,0x62,0x95,0x20,0xb7,0x72,0x7f]
          vfmsubadd231pd 4064(%rdx), %ymm29, %ymm30

// CHECK: vfmsubadd231pd 4096(%rdx), %ymm29, %ymm30
// CHECK:  encoding: [0x62,0x62,0x95,0x20,0xb7,0xb2,0x00,0x10,0x00,0x00]
          vfmsubadd231pd 4096(%rdx), %ymm29, %ymm30

// CHECK: vfmsubadd231pd -4096(%rdx), %ymm29, %ymm30
// CHECK:  encoding: [0x62,0x62,0x95,0x20,0xb7,0x72,0x80]
          vfmsubadd231pd -4096(%rdx), %ymm29, %ymm30

// CHECK: vfmsubadd231pd -4128(%rdx), %ymm29, %ymm30
// CHECK:  encoding: [0x62,0x62,0x95,0x20,0xb7,0xb2,0xe0,0xef,0xff,0xff]
          vfmsubadd231pd -4128(%rdx), %ymm29, %ymm30

// CHECK: vfmsubadd231pd 1016(%rdx){1to4}, %ymm29, %ymm30
// CHECK:  encoding: [0x62,0x62,0x95,0x30,0xb7,0x72,0x7f]
          vfmsubadd231pd 1016(%rdx){1to4}, %ymm29, %ymm30

// CHECK: vfmsubadd231pd 1024(%rdx){1to4}, %ymm29, %ymm30
// CHECK:  encoding: [0x62,0x62,0x95,0x30,0xb7,0xb2,0x00,0x04,0x00,0x00]
          vfmsubadd231pd 1024(%rdx){1to4}, %ymm29, %ymm30

// CHECK: vfmsubadd231pd -1024(%rdx){1to4}, %ymm29, %ymm30
// CHECK:  encoding: [0x62,0x62,0x95,0x30,0xb7,0x72,0x80]
          vfmsubadd231pd -1024(%rdx){1to4}, %ymm29, %ymm30

// CHECK: vfmsubadd231pd -1032(%rdx){1to4}, %ymm29, %ymm30
// CHECK:  encoding: [0x62,0x62,0x95,0x30,0xb7,0xb2,0xf8,0xfb,0xff,0xff]
          vfmsubadd231pd -1032(%rdx){1to4}, %ymm29, %ymm30

// CHECK: vfnmadd132ps %xmm18, %xmm26, %xmm20
// CHECK:  encoding: [0x62,0xa2,0x2d,0x00,0x9c,0xe2]
          vfnmadd132ps %xmm18, %xmm26, %xmm20

// CHECK: vfnmadd132ps %xmm18, %xmm26, %xmm20 {%k7}
// CHECK:  encoding: [0x62,0xa2,0x2d,0x07,0x9c,0xe2]
          vfnmadd132ps %xmm18, %xmm26, %xmm20 {%k7}

// CHECK: vfnmadd132ps %xmm18, %xmm26, %xmm20 {%k7} {z}
// CHECK:  encoding: [0x62,0xa2,0x2d,0x87,0x9c,0xe2]
          vfnmadd132ps %xmm18, %xmm26, %xmm20 {%k7} {z}

// CHECK: vfnmadd132ps (%rcx), %xmm26, %xmm20
// CHECK:  encoding: [0x62,0xe2,0x2d,0x00,0x9c,0x21]
          vfnmadd132ps (%rcx), %xmm26, %xmm20

// CHECK: vfnmadd132ps 291(%rax,%r14,8), %xmm26, %xmm20
// CHECK:  encoding: [0x62,0xa2,0x2d,0x00,0x9c,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vfnmadd132ps 291(%rax,%r14,8), %xmm26, %xmm20

// CHECK: vfnmadd132ps (%rcx){1to4}, %xmm26, %xmm20
// CHECK:  encoding: [0x62,0xe2,0x2d,0x10,0x9c,0x21]
          vfnmadd132ps (%rcx){1to4}, %xmm26, %xmm20

// CHECK: vfnmadd132ps 2032(%rdx), %xmm26, %xmm20
// CHECK:  encoding: [0x62,0xe2,0x2d,0x00,0x9c,0x62,0x7f]
          vfnmadd132ps 2032(%rdx), %xmm26, %xmm20

// CHECK: vfnmadd132ps 2048(%rdx), %xmm26, %xmm20
// CHECK:  encoding: [0x62,0xe2,0x2d,0x00,0x9c,0xa2,0x00,0x08,0x00,0x00]
          vfnmadd132ps 2048(%rdx), %xmm26, %xmm20

// CHECK: vfnmadd132ps -2048(%rdx), %xmm26, %xmm20
// CHECK:  encoding: [0x62,0xe2,0x2d,0x00,0x9c,0x62,0x80]
          vfnmadd132ps -2048(%rdx), %xmm26, %xmm20

// CHECK: vfnmadd132ps -2064(%rdx), %xmm26, %xmm20
// CHECK:  encoding: [0x62,0xe2,0x2d,0x00,0x9c,0xa2,0xf0,0xf7,0xff,0xff]
          vfnmadd132ps -2064(%rdx), %xmm26, %xmm20

// CHECK: vfnmadd132ps 508(%rdx){1to4}, %xmm26, %xmm20
// CHECK:  encoding: [0x62,0xe2,0x2d,0x10,0x9c,0x62,0x7f]
          vfnmadd132ps 508(%rdx){1to4}, %xmm26, %xmm20

// CHECK: vfnmadd132ps 512(%rdx){1to4}, %xmm26, %xmm20
// CHECK:  encoding: [0x62,0xe2,0x2d,0x10,0x9c,0xa2,0x00,0x02,0x00,0x00]
          vfnmadd132ps 512(%rdx){1to4}, %xmm26, %xmm20

// CHECK: vfnmadd132ps -512(%rdx){1to4}, %xmm26, %xmm20
// CHECK:  encoding: [0x62,0xe2,0x2d,0x10,0x9c,0x62,0x80]
          vfnmadd132ps -512(%rdx){1to4}, %xmm26, %xmm20

// CHECK: vfnmadd132ps -516(%rdx){1to4}, %xmm26, %xmm20
// CHECK:  encoding: [0x62,0xe2,0x2d,0x10,0x9c,0xa2,0xfc,0xfd,0xff,0xff]
          vfnmadd132ps -516(%rdx){1to4}, %xmm26, %xmm20

// CHECK: vfnmadd132ps %ymm18, %ymm21, %ymm20
// CHECK:  encoding: [0x62,0xa2,0x55,0x20,0x9c,0xe2]
          vfnmadd132ps %ymm18, %ymm21, %ymm20

// CHECK: vfnmadd132ps %ymm18, %ymm21, %ymm20 {%k7}
// CHECK:  encoding: [0x62,0xa2,0x55,0x27,0x9c,0xe2]
          vfnmadd132ps %ymm18, %ymm21, %ymm20 {%k7}

// CHECK: vfnmadd132ps %ymm18, %ymm21, %ymm20 {%k7} {z}
// CHECK:  encoding: [0x62,0xa2,0x55,0xa7,0x9c,0xe2]
          vfnmadd132ps %ymm18, %ymm21, %ymm20 {%k7} {z}

// CHECK: vfnmadd132ps (%rcx), %ymm21, %ymm20
// CHECK:  encoding: [0x62,0xe2,0x55,0x20,0x9c,0x21]
          vfnmadd132ps (%rcx), %ymm21, %ymm20

// CHECK: vfnmadd132ps 291(%rax,%r14,8), %ymm21, %ymm20
// CHECK:  encoding: [0x62,0xa2,0x55,0x20,0x9c,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vfnmadd132ps 291(%rax,%r14,8), %ymm21, %ymm20

// CHECK: vfnmadd132ps (%rcx){1to8}, %ymm21, %ymm20
// CHECK:  encoding: [0x62,0xe2,0x55,0x30,0x9c,0x21]
          vfnmadd132ps (%rcx){1to8}, %ymm21, %ymm20

// CHECK: vfnmadd132ps 4064(%rdx), %ymm21, %ymm20
// CHECK:  encoding: [0x62,0xe2,0x55,0x20,0x9c,0x62,0x7f]
          vfnmadd132ps 4064(%rdx), %ymm21, %ymm20

// CHECK: vfnmadd132ps 4096(%rdx), %ymm21, %ymm20
// CHECK:  encoding: [0x62,0xe2,0x55,0x20,0x9c,0xa2,0x00,0x10,0x00,0x00]
          vfnmadd132ps 4096(%rdx), %ymm21, %ymm20

// CHECK: vfnmadd132ps -4096(%rdx), %ymm21, %ymm20
// CHECK:  encoding: [0x62,0xe2,0x55,0x20,0x9c,0x62,0x80]
          vfnmadd132ps -4096(%rdx), %ymm21, %ymm20

// CHECK: vfnmadd132ps -4128(%rdx), %ymm21, %ymm20
// CHECK:  encoding: [0x62,0xe2,0x55,0x20,0x9c,0xa2,0xe0,0xef,0xff,0xff]
          vfnmadd132ps -4128(%rdx), %ymm21, %ymm20

// CHECK: vfnmadd132ps 508(%rdx){1to8}, %ymm21, %ymm20
// CHECK:  encoding: [0x62,0xe2,0x55,0x30,0x9c,0x62,0x7f]
          vfnmadd132ps 508(%rdx){1to8}, %ymm21, %ymm20

// CHECK: vfnmadd132ps 512(%rdx){1to8}, %ymm21, %ymm20
// CHECK:  encoding: [0x62,0xe2,0x55,0x30,0x9c,0xa2,0x00,0x02,0x00,0x00]
          vfnmadd132ps 512(%rdx){1to8}, %ymm21, %ymm20

// CHECK: vfnmadd132ps -512(%rdx){1to8}, %ymm21, %ymm20
// CHECK:  encoding: [0x62,0xe2,0x55,0x30,0x9c,0x62,0x80]
          vfnmadd132ps -512(%rdx){1to8}, %ymm21, %ymm20

// CHECK: vfnmadd132ps -516(%rdx){1to8}, %ymm21, %ymm20
// CHECK:  encoding: [0x62,0xe2,0x55,0x30,0x9c,0xa2,0xfc,0xfd,0xff,0xff]
          vfnmadd132ps -516(%rdx){1to8}, %ymm21, %ymm20

// CHECK: vfnmadd132pd %xmm18, %xmm21, %xmm26
// CHECK:  encoding: [0x62,0x22,0xd5,0x00,0x9c,0xd2]
          vfnmadd132pd %xmm18, %xmm21, %xmm26

// CHECK: vfnmadd132pd %xmm18, %xmm21, %xmm26 {%k6}
// CHECK:  encoding: [0x62,0x22,0xd5,0x06,0x9c,0xd2]
          vfnmadd132pd %xmm18, %xmm21, %xmm26 {%k6}

// CHECK: vfnmadd132pd %xmm18, %xmm21, %xmm26 {%k6} {z}
// CHECK:  encoding: [0x62,0x22,0xd5,0x86,0x9c,0xd2]
          vfnmadd132pd %xmm18, %xmm21, %xmm26 {%k6} {z}

// CHECK: vfnmadd132pd (%rcx), %xmm21, %xmm26
// CHECK:  encoding: [0x62,0x62,0xd5,0x00,0x9c,0x11]
          vfnmadd132pd (%rcx), %xmm21, %xmm26

// CHECK: vfnmadd132pd 291(%rax,%r14,8), %xmm21, %xmm26
// CHECK:  encoding: [0x62,0x22,0xd5,0x00,0x9c,0x94,0xf0,0x23,0x01,0x00,0x00]
          vfnmadd132pd 291(%rax,%r14,8), %xmm21, %xmm26

// CHECK: vfnmadd132pd (%rcx){1to2}, %xmm21, %xmm26
// CHECK:  encoding: [0x62,0x62,0xd5,0x10,0x9c,0x11]
          vfnmadd132pd (%rcx){1to2}, %xmm21, %xmm26

// CHECK: vfnmadd132pd 2032(%rdx), %xmm21, %xmm26
// CHECK:  encoding: [0x62,0x62,0xd5,0x00,0x9c,0x52,0x7f]
          vfnmadd132pd 2032(%rdx), %xmm21, %xmm26

// CHECK: vfnmadd132pd 2048(%rdx), %xmm21, %xmm26
// CHECK:  encoding: [0x62,0x62,0xd5,0x00,0x9c,0x92,0x00,0x08,0x00,0x00]
          vfnmadd132pd 2048(%rdx), %xmm21, %xmm26

// CHECK: vfnmadd132pd -2048(%rdx), %xmm21, %xmm26
// CHECK:  encoding: [0x62,0x62,0xd5,0x00,0x9c,0x52,0x80]
          vfnmadd132pd -2048(%rdx), %xmm21, %xmm26

// CHECK: vfnmadd132pd -2064(%rdx), %xmm21, %xmm26
// CHECK:  encoding: [0x62,0x62,0xd5,0x00,0x9c,0x92,0xf0,0xf7,0xff,0xff]
          vfnmadd132pd -2064(%rdx), %xmm21, %xmm26

// CHECK: vfnmadd132pd 1016(%rdx){1to2}, %xmm21, %xmm26
// CHECK:  encoding: [0x62,0x62,0xd5,0x10,0x9c,0x52,0x7f]
          vfnmadd132pd 1016(%rdx){1to2}, %xmm21, %xmm26

// CHECK: vfnmadd132pd 1024(%rdx){1to2}, %xmm21, %xmm26
// CHECK:  encoding: [0x62,0x62,0xd5,0x10,0x9c,0x92,0x00,0x04,0x00,0x00]
          vfnmadd132pd 1024(%rdx){1to2}, %xmm21, %xmm26

// CHECK: vfnmadd132pd -1024(%rdx){1to2}, %xmm21, %xmm26
// CHECK:  encoding: [0x62,0x62,0xd5,0x10,0x9c,0x52,0x80]
          vfnmadd132pd -1024(%rdx){1to2}, %xmm21, %xmm26

// CHECK: vfnmadd132pd -1032(%rdx){1to2}, %xmm21, %xmm26
// CHECK:  encoding: [0x62,0x62,0xd5,0x10,0x9c,0x92,0xf8,0xfb,0xff,0xff]
          vfnmadd132pd -1032(%rdx){1to2}, %xmm21, %xmm26

// CHECK: vfnmadd132pd %ymm18, %ymm22, %ymm25
// CHECK:  encoding: [0x62,0x22,0xcd,0x20,0x9c,0xca]
          vfnmadd132pd %ymm18, %ymm22, %ymm25

// CHECK: vfnmadd132pd %ymm18, %ymm22, %ymm25 {%k4}
// CHECK:  encoding: [0x62,0x22,0xcd,0x24,0x9c,0xca]
          vfnmadd132pd %ymm18, %ymm22, %ymm25 {%k4}

// CHECK: vfnmadd132pd %ymm18, %ymm22, %ymm25 {%k4} {z}
// CHECK:  encoding: [0x62,0x22,0xcd,0xa4,0x9c,0xca]
          vfnmadd132pd %ymm18, %ymm22, %ymm25 {%k4} {z}

// CHECK: vfnmadd132pd (%rcx), %ymm22, %ymm25
// CHECK:  encoding: [0x62,0x62,0xcd,0x20,0x9c,0x09]
          vfnmadd132pd (%rcx), %ymm22, %ymm25

// CHECK: vfnmadd132pd 291(%rax,%r14,8), %ymm22, %ymm25
// CHECK:  encoding: [0x62,0x22,0xcd,0x20,0x9c,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vfnmadd132pd 291(%rax,%r14,8), %ymm22, %ymm25

// CHECK: vfnmadd132pd (%rcx){1to4}, %ymm22, %ymm25
// CHECK:  encoding: [0x62,0x62,0xcd,0x30,0x9c,0x09]
          vfnmadd132pd (%rcx){1to4}, %ymm22, %ymm25

// CHECK: vfnmadd132pd 4064(%rdx), %ymm22, %ymm25
// CHECK:  encoding: [0x62,0x62,0xcd,0x20,0x9c,0x4a,0x7f]
          vfnmadd132pd 4064(%rdx), %ymm22, %ymm25

// CHECK: vfnmadd132pd 4096(%rdx), %ymm22, %ymm25
// CHECK:  encoding: [0x62,0x62,0xcd,0x20,0x9c,0x8a,0x00,0x10,0x00,0x00]
          vfnmadd132pd 4096(%rdx), %ymm22, %ymm25

// CHECK: vfnmadd132pd -4096(%rdx), %ymm22, %ymm25
// CHECK:  encoding: [0x62,0x62,0xcd,0x20,0x9c,0x4a,0x80]
          vfnmadd132pd -4096(%rdx), %ymm22, %ymm25

// CHECK: vfnmadd132pd -4128(%rdx), %ymm22, %ymm25
// CHECK:  encoding: [0x62,0x62,0xcd,0x20,0x9c,0x8a,0xe0,0xef,0xff,0xff]
          vfnmadd132pd -4128(%rdx), %ymm22, %ymm25

// CHECK: vfnmadd132pd 1016(%rdx){1to4}, %ymm22, %ymm25
// CHECK:  encoding: [0x62,0x62,0xcd,0x30,0x9c,0x4a,0x7f]
          vfnmadd132pd 1016(%rdx){1to4}, %ymm22, %ymm25

// CHECK: vfnmadd132pd 1024(%rdx){1to4}, %ymm22, %ymm25
// CHECK:  encoding: [0x62,0x62,0xcd,0x30,0x9c,0x8a,0x00,0x04,0x00,0x00]
          vfnmadd132pd 1024(%rdx){1to4}, %ymm22, %ymm25

// CHECK: vfnmadd132pd -1024(%rdx){1to4}, %ymm22, %ymm25
// CHECK:  encoding: [0x62,0x62,0xcd,0x30,0x9c,0x4a,0x80]
          vfnmadd132pd -1024(%rdx){1to4}, %ymm22, %ymm25

// CHECK: vfnmadd132pd -1032(%rdx){1to4}, %ymm22, %ymm25
// CHECK:  encoding: [0x62,0x62,0xcd,0x30,0x9c,0x8a,0xf8,0xfb,0xff,0xff]
          vfnmadd132pd -1032(%rdx){1to4}, %ymm22, %ymm25

// CHECK: vfnmadd213ps %xmm20, %xmm24, %xmm24
// CHECK:  encoding: [0x62,0x22,0x3d,0x00,0xac,0xc4]
          vfnmadd213ps %xmm20, %xmm24, %xmm24

// CHECK: vfnmadd213ps %xmm20, %xmm24, %xmm24 {%k4}
// CHECK:  encoding: [0x62,0x22,0x3d,0x04,0xac,0xc4]
          vfnmadd213ps %xmm20, %xmm24, %xmm24 {%k4}

// CHECK: vfnmadd213ps %xmm20, %xmm24, %xmm24 {%k4} {z}
// CHECK:  encoding: [0x62,0x22,0x3d,0x84,0xac,0xc4]
          vfnmadd213ps %xmm20, %xmm24, %xmm24 {%k4} {z}

// CHECK: vfnmadd213ps (%rcx), %xmm24, %xmm24
// CHECK:  encoding: [0x62,0x62,0x3d,0x00,0xac,0x01]
          vfnmadd213ps (%rcx), %xmm24, %xmm24

// CHECK: vfnmadd213ps 291(%rax,%r14,8), %xmm24, %xmm24
// CHECK:  encoding: [0x62,0x22,0x3d,0x00,0xac,0x84,0xf0,0x23,0x01,0x00,0x00]
          vfnmadd213ps 291(%rax,%r14,8), %xmm24, %xmm24

// CHECK: vfnmadd213ps (%rcx){1to4}, %xmm24, %xmm24
// CHECK:  encoding: [0x62,0x62,0x3d,0x10,0xac,0x01]
          vfnmadd213ps (%rcx){1to4}, %xmm24, %xmm24

// CHECK: vfnmadd213ps 2032(%rdx), %xmm24, %xmm24
// CHECK:  encoding: [0x62,0x62,0x3d,0x00,0xac,0x42,0x7f]
          vfnmadd213ps 2032(%rdx), %xmm24, %xmm24

// CHECK: vfnmadd213ps 2048(%rdx), %xmm24, %xmm24
// CHECK:  encoding: [0x62,0x62,0x3d,0x00,0xac,0x82,0x00,0x08,0x00,0x00]
          vfnmadd213ps 2048(%rdx), %xmm24, %xmm24

// CHECK: vfnmadd213ps -2048(%rdx), %xmm24, %xmm24
// CHECK:  encoding: [0x62,0x62,0x3d,0x00,0xac,0x42,0x80]
          vfnmadd213ps -2048(%rdx), %xmm24, %xmm24

// CHECK: vfnmadd213ps -2064(%rdx), %xmm24, %xmm24
// CHECK:  encoding: [0x62,0x62,0x3d,0x00,0xac,0x82,0xf0,0xf7,0xff,0xff]
          vfnmadd213ps -2064(%rdx), %xmm24, %xmm24

// CHECK: vfnmadd213ps 508(%rdx){1to4}, %xmm24, %xmm24
// CHECK:  encoding: [0x62,0x62,0x3d,0x10,0xac,0x42,0x7f]
          vfnmadd213ps 508(%rdx){1to4}, %xmm24, %xmm24

// CHECK: vfnmadd213ps 512(%rdx){1to4}, %xmm24, %xmm24
// CHECK:  encoding: [0x62,0x62,0x3d,0x10,0xac,0x82,0x00,0x02,0x00,0x00]
          vfnmadd213ps 512(%rdx){1to4}, %xmm24, %xmm24

// CHECK: vfnmadd213ps -512(%rdx){1to4}, %xmm24, %xmm24
// CHECK:  encoding: [0x62,0x62,0x3d,0x10,0xac,0x42,0x80]
          vfnmadd213ps -512(%rdx){1to4}, %xmm24, %xmm24

// CHECK: vfnmadd213ps -516(%rdx){1to4}, %xmm24, %xmm24
// CHECK:  encoding: [0x62,0x62,0x3d,0x10,0xac,0x82,0xfc,0xfd,0xff,0xff]
          vfnmadd213ps -516(%rdx){1to4}, %xmm24, %xmm24

// CHECK: vfnmadd213ps %ymm22, %ymm19, %ymm21
// CHECK:  encoding: [0x62,0xa2,0x65,0x20,0xac,0xee]
          vfnmadd213ps %ymm22, %ymm19, %ymm21

// CHECK: vfnmadd213ps %ymm22, %ymm19, %ymm21 {%k2}
// CHECK:  encoding: [0x62,0xa2,0x65,0x22,0xac,0xee]
          vfnmadd213ps %ymm22, %ymm19, %ymm21 {%k2}

// CHECK: vfnmadd213ps %ymm22, %ymm19, %ymm21 {%k2} {z}
// CHECK:  encoding: [0x62,0xa2,0x65,0xa2,0xac,0xee]
          vfnmadd213ps %ymm22, %ymm19, %ymm21 {%k2} {z}

// CHECK: vfnmadd213ps (%rcx), %ymm19, %ymm21
// CHECK:  encoding: [0x62,0xe2,0x65,0x20,0xac,0x29]
          vfnmadd213ps (%rcx), %ymm19, %ymm21

// CHECK: vfnmadd213ps 291(%rax,%r14,8), %ymm19, %ymm21
// CHECK:  encoding: [0x62,0xa2,0x65,0x20,0xac,0xac,0xf0,0x23,0x01,0x00,0x00]
          vfnmadd213ps 291(%rax,%r14,8), %ymm19, %ymm21

// CHECK: vfnmadd213ps (%rcx){1to8}, %ymm19, %ymm21
// CHECK:  encoding: [0x62,0xe2,0x65,0x30,0xac,0x29]
          vfnmadd213ps (%rcx){1to8}, %ymm19, %ymm21

// CHECK: vfnmadd213ps 4064(%rdx), %ymm19, %ymm21
// CHECK:  encoding: [0x62,0xe2,0x65,0x20,0xac,0x6a,0x7f]
          vfnmadd213ps 4064(%rdx), %ymm19, %ymm21

// CHECK: vfnmadd213ps 4096(%rdx), %ymm19, %ymm21
// CHECK:  encoding: [0x62,0xe2,0x65,0x20,0xac,0xaa,0x00,0x10,0x00,0x00]
          vfnmadd213ps 4096(%rdx), %ymm19, %ymm21

// CHECK: vfnmadd213ps -4096(%rdx), %ymm19, %ymm21
// CHECK:  encoding: [0x62,0xe2,0x65,0x20,0xac,0x6a,0x80]
          vfnmadd213ps -4096(%rdx), %ymm19, %ymm21

// CHECK: vfnmadd213ps -4128(%rdx), %ymm19, %ymm21
// CHECK:  encoding: [0x62,0xe2,0x65,0x20,0xac,0xaa,0xe0,0xef,0xff,0xff]
          vfnmadd213ps -4128(%rdx), %ymm19, %ymm21

// CHECK: vfnmadd213ps 508(%rdx){1to8}, %ymm19, %ymm21
// CHECK:  encoding: [0x62,0xe2,0x65,0x30,0xac,0x6a,0x7f]
          vfnmadd213ps 508(%rdx){1to8}, %ymm19, %ymm21

// CHECK: vfnmadd213ps 512(%rdx){1to8}, %ymm19, %ymm21
// CHECK:  encoding: [0x62,0xe2,0x65,0x30,0xac,0xaa,0x00,0x02,0x00,0x00]
          vfnmadd213ps 512(%rdx){1to8}, %ymm19, %ymm21

// CHECK: vfnmadd213ps -512(%rdx){1to8}, %ymm19, %ymm21
// CHECK:  encoding: [0x62,0xe2,0x65,0x30,0xac,0x6a,0x80]
          vfnmadd213ps -512(%rdx){1to8}, %ymm19, %ymm21

// CHECK: vfnmadd213ps -516(%rdx){1to8}, %ymm19, %ymm21
// CHECK:  encoding: [0x62,0xe2,0x65,0x30,0xac,0xaa,0xfc,0xfd,0xff,0xff]
          vfnmadd213ps -516(%rdx){1to8}, %ymm19, %ymm21

// CHECK: vfnmadd213pd %xmm24, %xmm25, %xmm24
// CHECK:  encoding: [0x62,0x02,0xb5,0x00,0xac,0xc0]
          vfnmadd213pd %xmm24, %xmm25, %xmm24

// CHECK: vfnmadd213pd %xmm24, %xmm25, %xmm24 {%k4}
// CHECK:  encoding: [0x62,0x02,0xb5,0x04,0xac,0xc0]
          vfnmadd213pd %xmm24, %xmm25, %xmm24 {%k4}

// CHECK: vfnmadd213pd %xmm24, %xmm25, %xmm24 {%k4} {z}
// CHECK:  encoding: [0x62,0x02,0xb5,0x84,0xac,0xc0]
          vfnmadd213pd %xmm24, %xmm25, %xmm24 {%k4} {z}

// CHECK: vfnmadd213pd (%rcx), %xmm25, %xmm24
// CHECK:  encoding: [0x62,0x62,0xb5,0x00,0xac,0x01]
          vfnmadd213pd (%rcx), %xmm25, %xmm24

// CHECK: vfnmadd213pd 291(%rax,%r14,8), %xmm25, %xmm24
// CHECK:  encoding: [0x62,0x22,0xb5,0x00,0xac,0x84,0xf0,0x23,0x01,0x00,0x00]
          vfnmadd213pd 291(%rax,%r14,8), %xmm25, %xmm24

// CHECK: vfnmadd213pd (%rcx){1to2}, %xmm25, %xmm24
// CHECK:  encoding: [0x62,0x62,0xb5,0x10,0xac,0x01]
          vfnmadd213pd (%rcx){1to2}, %xmm25, %xmm24

// CHECK: vfnmadd213pd 2032(%rdx), %xmm25, %xmm24
// CHECK:  encoding: [0x62,0x62,0xb5,0x00,0xac,0x42,0x7f]
          vfnmadd213pd 2032(%rdx), %xmm25, %xmm24

// CHECK: vfnmadd213pd 2048(%rdx), %xmm25, %xmm24
// CHECK:  encoding: [0x62,0x62,0xb5,0x00,0xac,0x82,0x00,0x08,0x00,0x00]
          vfnmadd213pd 2048(%rdx), %xmm25, %xmm24

// CHECK: vfnmadd213pd -2048(%rdx), %xmm25, %xmm24
// CHECK:  encoding: [0x62,0x62,0xb5,0x00,0xac,0x42,0x80]
          vfnmadd213pd -2048(%rdx), %xmm25, %xmm24

// CHECK: vfnmadd213pd -2064(%rdx), %xmm25, %xmm24
// CHECK:  encoding: [0x62,0x62,0xb5,0x00,0xac,0x82,0xf0,0xf7,0xff,0xff]
          vfnmadd213pd -2064(%rdx), %xmm25, %xmm24

// CHECK: vfnmadd213pd 1016(%rdx){1to2}, %xmm25, %xmm24
// CHECK:  encoding: [0x62,0x62,0xb5,0x10,0xac,0x42,0x7f]
          vfnmadd213pd 1016(%rdx){1to2}, %xmm25, %xmm24

// CHECK: vfnmadd213pd 1024(%rdx){1to2}, %xmm25, %xmm24
// CHECK:  encoding: [0x62,0x62,0xb5,0x10,0xac,0x82,0x00,0x04,0x00,0x00]
          vfnmadd213pd 1024(%rdx){1to2}, %xmm25, %xmm24

// CHECK: vfnmadd213pd -1024(%rdx){1to2}, %xmm25, %xmm24
// CHECK:  encoding: [0x62,0x62,0xb5,0x10,0xac,0x42,0x80]
          vfnmadd213pd -1024(%rdx){1to2}, %xmm25, %xmm24

// CHECK: vfnmadd213pd -1032(%rdx){1to2}, %xmm25, %xmm24
// CHECK:  encoding: [0x62,0x62,0xb5,0x10,0xac,0x82,0xf8,0xfb,0xff,0xff]
          vfnmadd213pd -1032(%rdx){1to2}, %xmm25, %xmm24

// CHECK: vfnmadd213pd %ymm24, %ymm27, %ymm20
// CHECK:  encoding: [0x62,0x82,0xa5,0x20,0xac,0xe0]
          vfnmadd213pd %ymm24, %ymm27, %ymm20

// CHECK: vfnmadd213pd %ymm24, %ymm27, %ymm20 {%k4}
// CHECK:  encoding: [0x62,0x82,0xa5,0x24,0xac,0xe0]
          vfnmadd213pd %ymm24, %ymm27, %ymm20 {%k4}

// CHECK: vfnmadd213pd %ymm24, %ymm27, %ymm20 {%k4} {z}
// CHECK:  encoding: [0x62,0x82,0xa5,0xa4,0xac,0xe0]
          vfnmadd213pd %ymm24, %ymm27, %ymm20 {%k4} {z}

// CHECK: vfnmadd213pd (%rcx), %ymm27, %ymm20
// CHECK:  encoding: [0x62,0xe2,0xa5,0x20,0xac,0x21]
          vfnmadd213pd (%rcx), %ymm27, %ymm20

// CHECK: vfnmadd213pd 291(%rax,%r14,8), %ymm27, %ymm20
// CHECK:  encoding: [0x62,0xa2,0xa5,0x20,0xac,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vfnmadd213pd 291(%rax,%r14,8), %ymm27, %ymm20

// CHECK: vfnmadd213pd (%rcx){1to4}, %ymm27, %ymm20
// CHECK:  encoding: [0x62,0xe2,0xa5,0x30,0xac,0x21]
          vfnmadd213pd (%rcx){1to4}, %ymm27, %ymm20

// CHECK: vfnmadd213pd 4064(%rdx), %ymm27, %ymm20
// CHECK:  encoding: [0x62,0xe2,0xa5,0x20,0xac,0x62,0x7f]
          vfnmadd213pd 4064(%rdx), %ymm27, %ymm20

// CHECK: vfnmadd213pd 4096(%rdx), %ymm27, %ymm20
// CHECK:  encoding: [0x62,0xe2,0xa5,0x20,0xac,0xa2,0x00,0x10,0x00,0x00]
          vfnmadd213pd 4096(%rdx), %ymm27, %ymm20

// CHECK: vfnmadd213pd -4096(%rdx), %ymm27, %ymm20
// CHECK:  encoding: [0x62,0xe2,0xa5,0x20,0xac,0x62,0x80]
          vfnmadd213pd -4096(%rdx), %ymm27, %ymm20

// CHECK: vfnmadd213pd -4128(%rdx), %ymm27, %ymm20
// CHECK:  encoding: [0x62,0xe2,0xa5,0x20,0xac,0xa2,0xe0,0xef,0xff,0xff]
          vfnmadd213pd -4128(%rdx), %ymm27, %ymm20

// CHECK: vfnmadd213pd 1016(%rdx){1to4}, %ymm27, %ymm20
// CHECK:  encoding: [0x62,0xe2,0xa5,0x30,0xac,0x62,0x7f]
          vfnmadd213pd 1016(%rdx){1to4}, %ymm27, %ymm20

// CHECK: vfnmadd213pd 1024(%rdx){1to4}, %ymm27, %ymm20
// CHECK:  encoding: [0x62,0xe2,0xa5,0x30,0xac,0xa2,0x00,0x04,0x00,0x00]
          vfnmadd213pd 1024(%rdx){1to4}, %ymm27, %ymm20

// CHECK: vfnmadd213pd -1024(%rdx){1to4}, %ymm27, %ymm20
// CHECK:  encoding: [0x62,0xe2,0xa5,0x30,0xac,0x62,0x80]
          vfnmadd213pd -1024(%rdx){1to4}, %ymm27, %ymm20

// CHECK: vfnmadd213pd -1032(%rdx){1to4}, %ymm27, %ymm20
// CHECK:  encoding: [0x62,0xe2,0xa5,0x30,0xac,0xa2,0xf8,0xfb,0xff,0xff]
          vfnmadd213pd -1032(%rdx){1to4}, %ymm27, %ymm20

// CHECK: vfnmadd231ps %xmm24, %xmm26, %xmm18
// CHECK:  encoding: [0x62,0x82,0x2d,0x00,0xbc,0xd0]
          vfnmadd231ps %xmm24, %xmm26, %xmm18

// CHECK: vfnmadd231ps %xmm24, %xmm26, %xmm18 {%k1}
// CHECK:  encoding: [0x62,0x82,0x2d,0x01,0xbc,0xd0]
          vfnmadd231ps %xmm24, %xmm26, %xmm18 {%k1}

// CHECK: vfnmadd231ps %xmm24, %xmm26, %xmm18 {%k1} {z}
// CHECK:  encoding: [0x62,0x82,0x2d,0x81,0xbc,0xd0]
          vfnmadd231ps %xmm24, %xmm26, %xmm18 {%k1} {z}

// CHECK: vfnmadd231ps (%rcx), %xmm26, %xmm18
// CHECK:  encoding: [0x62,0xe2,0x2d,0x00,0xbc,0x11]
          vfnmadd231ps (%rcx), %xmm26, %xmm18

// CHECK: vfnmadd231ps 291(%rax,%r14,8), %xmm26, %xmm18
// CHECK:  encoding: [0x62,0xa2,0x2d,0x00,0xbc,0x94,0xf0,0x23,0x01,0x00,0x00]
          vfnmadd231ps 291(%rax,%r14,8), %xmm26, %xmm18

// CHECK: vfnmadd231ps (%rcx){1to4}, %xmm26, %xmm18
// CHECK:  encoding: [0x62,0xe2,0x2d,0x10,0xbc,0x11]
          vfnmadd231ps (%rcx){1to4}, %xmm26, %xmm18

// CHECK: vfnmadd231ps 2032(%rdx), %xmm26, %xmm18
// CHECK:  encoding: [0x62,0xe2,0x2d,0x00,0xbc,0x52,0x7f]
          vfnmadd231ps 2032(%rdx), %xmm26, %xmm18

// CHECK: vfnmadd231ps 2048(%rdx), %xmm26, %xmm18
// CHECK:  encoding: [0x62,0xe2,0x2d,0x00,0xbc,0x92,0x00,0x08,0x00,0x00]
          vfnmadd231ps 2048(%rdx), %xmm26, %xmm18

// CHECK: vfnmadd231ps -2048(%rdx), %xmm26, %xmm18
// CHECK:  encoding: [0x62,0xe2,0x2d,0x00,0xbc,0x52,0x80]
          vfnmadd231ps -2048(%rdx), %xmm26, %xmm18

// CHECK: vfnmadd231ps -2064(%rdx), %xmm26, %xmm18
// CHECK:  encoding: [0x62,0xe2,0x2d,0x00,0xbc,0x92,0xf0,0xf7,0xff,0xff]
          vfnmadd231ps -2064(%rdx), %xmm26, %xmm18

// CHECK: vfnmadd231ps 508(%rdx){1to4}, %xmm26, %xmm18
// CHECK:  encoding: [0x62,0xe2,0x2d,0x10,0xbc,0x52,0x7f]
          vfnmadd231ps 508(%rdx){1to4}, %xmm26, %xmm18

// CHECK: vfnmadd231ps 512(%rdx){1to4}, %xmm26, %xmm18
// CHECK:  encoding: [0x62,0xe2,0x2d,0x10,0xbc,0x92,0x00,0x02,0x00,0x00]
          vfnmadd231ps 512(%rdx){1to4}, %xmm26, %xmm18

// CHECK: vfnmadd231ps -512(%rdx){1to4}, %xmm26, %xmm18
// CHECK:  encoding: [0x62,0xe2,0x2d,0x10,0xbc,0x52,0x80]
          vfnmadd231ps -512(%rdx){1to4}, %xmm26, %xmm18

// CHECK: vfnmadd231ps -516(%rdx){1to4}, %xmm26, %xmm18
// CHECK:  encoding: [0x62,0xe2,0x2d,0x10,0xbc,0x92,0xfc,0xfd,0xff,0xff]
          vfnmadd231ps -516(%rdx){1to4}, %xmm26, %xmm18

// CHECK: vfnmadd231ps %ymm21, %ymm20, %ymm20
// CHECK:  encoding: [0x62,0xa2,0x5d,0x20,0xbc,0xe5]
          vfnmadd231ps %ymm21, %ymm20, %ymm20

// CHECK: vfnmadd231ps %ymm21, %ymm20, %ymm20 {%k4}
// CHECK:  encoding: [0x62,0xa2,0x5d,0x24,0xbc,0xe5]
          vfnmadd231ps %ymm21, %ymm20, %ymm20 {%k4}

// CHECK: vfnmadd231ps %ymm21, %ymm20, %ymm20 {%k4} {z}
// CHECK:  encoding: [0x62,0xa2,0x5d,0xa4,0xbc,0xe5]
          vfnmadd231ps %ymm21, %ymm20, %ymm20 {%k4} {z}

// CHECK: vfnmadd231ps (%rcx), %ymm20, %ymm20
// CHECK:  encoding: [0x62,0xe2,0x5d,0x20,0xbc,0x21]
          vfnmadd231ps (%rcx), %ymm20, %ymm20

// CHECK: vfnmadd231ps 291(%rax,%r14,8), %ymm20, %ymm20
// CHECK:  encoding: [0x62,0xa2,0x5d,0x20,0xbc,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vfnmadd231ps 291(%rax,%r14,8), %ymm20, %ymm20

// CHECK: vfnmadd231ps (%rcx){1to8}, %ymm20, %ymm20
// CHECK:  encoding: [0x62,0xe2,0x5d,0x30,0xbc,0x21]
          vfnmadd231ps (%rcx){1to8}, %ymm20, %ymm20

// CHECK: vfnmadd231ps 4064(%rdx), %ymm20, %ymm20
// CHECK:  encoding: [0x62,0xe2,0x5d,0x20,0xbc,0x62,0x7f]
          vfnmadd231ps 4064(%rdx), %ymm20, %ymm20

// CHECK: vfnmadd231ps 4096(%rdx), %ymm20, %ymm20
// CHECK:  encoding: [0x62,0xe2,0x5d,0x20,0xbc,0xa2,0x00,0x10,0x00,0x00]
          vfnmadd231ps 4096(%rdx), %ymm20, %ymm20

// CHECK: vfnmadd231ps -4096(%rdx), %ymm20, %ymm20
// CHECK:  encoding: [0x62,0xe2,0x5d,0x20,0xbc,0x62,0x80]
          vfnmadd231ps -4096(%rdx), %ymm20, %ymm20

// CHECK: vfnmadd231ps -4128(%rdx), %ymm20, %ymm20
// CHECK:  encoding: [0x62,0xe2,0x5d,0x20,0xbc,0xa2,0xe0,0xef,0xff,0xff]
          vfnmadd231ps -4128(%rdx), %ymm20, %ymm20

// CHECK: vfnmadd231ps 508(%rdx){1to8}, %ymm20, %ymm20
// CHECK:  encoding: [0x62,0xe2,0x5d,0x30,0xbc,0x62,0x7f]
          vfnmadd231ps 508(%rdx){1to8}, %ymm20, %ymm20

// CHECK: vfnmadd231ps 512(%rdx){1to8}, %ymm20, %ymm20
// CHECK:  encoding: [0x62,0xe2,0x5d,0x30,0xbc,0xa2,0x00,0x02,0x00,0x00]
          vfnmadd231ps 512(%rdx){1to8}, %ymm20, %ymm20

// CHECK: vfnmadd231ps -512(%rdx){1to8}, %ymm20, %ymm20
// CHECK:  encoding: [0x62,0xe2,0x5d,0x30,0xbc,0x62,0x80]
          vfnmadd231ps -512(%rdx){1to8}, %ymm20, %ymm20

// CHECK: vfnmadd231ps -516(%rdx){1to8}, %ymm20, %ymm20
// CHECK:  encoding: [0x62,0xe2,0x5d,0x30,0xbc,0xa2,0xfc,0xfd,0xff,0xff]
          vfnmadd231ps -516(%rdx){1to8}, %ymm20, %ymm20

// CHECK: vfnmadd231pd %xmm26, %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x02,0xb5,0x00,0xbc,0xea]
          vfnmadd231pd %xmm26, %xmm25, %xmm29

// CHECK: vfnmadd231pd %xmm26, %xmm25, %xmm29 {%k3}
// CHECK:  encoding: [0x62,0x02,0xb5,0x03,0xbc,0xea]
          vfnmadd231pd %xmm26, %xmm25, %xmm29 {%k3}

// CHECK: vfnmadd231pd %xmm26, %xmm25, %xmm29 {%k3} {z}
// CHECK:  encoding: [0x62,0x02,0xb5,0x83,0xbc,0xea]
          vfnmadd231pd %xmm26, %xmm25, %xmm29 {%k3} {z}

// CHECK: vfnmadd231pd (%rcx), %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x62,0xb5,0x00,0xbc,0x29]
          vfnmadd231pd (%rcx), %xmm25, %xmm29

// CHECK: vfnmadd231pd 291(%rax,%r14,8), %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x22,0xb5,0x00,0xbc,0xac,0xf0,0x23,0x01,0x00,0x00]
          vfnmadd231pd 291(%rax,%r14,8), %xmm25, %xmm29

// CHECK: vfnmadd231pd (%rcx){1to2}, %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x62,0xb5,0x10,0xbc,0x29]
          vfnmadd231pd (%rcx){1to2}, %xmm25, %xmm29

// CHECK: vfnmadd231pd 2032(%rdx), %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x62,0xb5,0x00,0xbc,0x6a,0x7f]
          vfnmadd231pd 2032(%rdx), %xmm25, %xmm29

// CHECK: vfnmadd231pd 2048(%rdx), %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x62,0xb5,0x00,0xbc,0xaa,0x00,0x08,0x00,0x00]
          vfnmadd231pd 2048(%rdx), %xmm25, %xmm29

// CHECK: vfnmadd231pd -2048(%rdx), %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x62,0xb5,0x00,0xbc,0x6a,0x80]
          vfnmadd231pd -2048(%rdx), %xmm25, %xmm29

// CHECK: vfnmadd231pd -2064(%rdx), %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x62,0xb5,0x00,0xbc,0xaa,0xf0,0xf7,0xff,0xff]
          vfnmadd231pd -2064(%rdx), %xmm25, %xmm29

// CHECK: vfnmadd231pd 1016(%rdx){1to2}, %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x62,0xb5,0x10,0xbc,0x6a,0x7f]
          vfnmadd231pd 1016(%rdx){1to2}, %xmm25, %xmm29

// CHECK: vfnmadd231pd 1024(%rdx){1to2}, %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x62,0xb5,0x10,0xbc,0xaa,0x00,0x04,0x00,0x00]
          vfnmadd231pd 1024(%rdx){1to2}, %xmm25, %xmm29

// CHECK: vfnmadd231pd -1024(%rdx){1to2}, %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x62,0xb5,0x10,0xbc,0x6a,0x80]
          vfnmadd231pd -1024(%rdx){1to2}, %xmm25, %xmm29

// CHECK: vfnmadd231pd -1032(%rdx){1to2}, %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x62,0xb5,0x10,0xbc,0xaa,0xf8,0xfb,0xff,0xff]
          vfnmadd231pd -1032(%rdx){1to2}, %xmm25, %xmm29

// CHECK: vfnmadd231pd %ymm23, %ymm29, %ymm22
// CHECK:  encoding: [0x62,0xa2,0x95,0x20,0xbc,0xf7]
          vfnmadd231pd %ymm23, %ymm29, %ymm22

// CHECK: vfnmadd231pd %ymm23, %ymm29, %ymm22 {%k1}
// CHECK:  encoding: [0x62,0xa2,0x95,0x21,0xbc,0xf7]
          vfnmadd231pd %ymm23, %ymm29, %ymm22 {%k1}

// CHECK: vfnmadd231pd %ymm23, %ymm29, %ymm22 {%k1} {z}
// CHECK:  encoding: [0x62,0xa2,0x95,0xa1,0xbc,0xf7]
          vfnmadd231pd %ymm23, %ymm29, %ymm22 {%k1} {z}

// CHECK: vfnmadd231pd (%rcx), %ymm29, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x95,0x20,0xbc,0x31]
          vfnmadd231pd (%rcx), %ymm29, %ymm22

// CHECK: vfnmadd231pd 291(%rax,%r14,8), %ymm29, %ymm22
// CHECK:  encoding: [0x62,0xa2,0x95,0x20,0xbc,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vfnmadd231pd 291(%rax,%r14,8), %ymm29, %ymm22

// CHECK: vfnmadd231pd (%rcx){1to4}, %ymm29, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x95,0x30,0xbc,0x31]
          vfnmadd231pd (%rcx){1to4}, %ymm29, %ymm22

// CHECK: vfnmadd231pd 4064(%rdx), %ymm29, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x95,0x20,0xbc,0x72,0x7f]
          vfnmadd231pd 4064(%rdx), %ymm29, %ymm22

// CHECK: vfnmadd231pd 4096(%rdx), %ymm29, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x95,0x20,0xbc,0xb2,0x00,0x10,0x00,0x00]
          vfnmadd231pd 4096(%rdx), %ymm29, %ymm22

// CHECK: vfnmadd231pd -4096(%rdx), %ymm29, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x95,0x20,0xbc,0x72,0x80]
          vfnmadd231pd -4096(%rdx), %ymm29, %ymm22

// CHECK: vfnmadd231pd -4128(%rdx), %ymm29, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x95,0x20,0xbc,0xb2,0xe0,0xef,0xff,0xff]
          vfnmadd231pd -4128(%rdx), %ymm29, %ymm22

// CHECK: vfnmadd231pd 1016(%rdx){1to4}, %ymm29, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x95,0x30,0xbc,0x72,0x7f]
          vfnmadd231pd 1016(%rdx){1to4}, %ymm29, %ymm22

// CHECK: vfnmadd231pd 1024(%rdx){1to4}, %ymm29, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x95,0x30,0xbc,0xb2,0x00,0x04,0x00,0x00]
          vfnmadd231pd 1024(%rdx){1to4}, %ymm29, %ymm22

// CHECK: vfnmadd231pd -1024(%rdx){1to4}, %ymm29, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x95,0x30,0xbc,0x72,0x80]
          vfnmadd231pd -1024(%rdx){1to4}, %ymm29, %ymm22

// CHECK: vfnmadd231pd -1032(%rdx){1to4}, %ymm29, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x95,0x30,0xbc,0xb2,0xf8,0xfb,0xff,0xff]
          vfnmadd231pd -1032(%rdx){1to4}, %ymm29, %ymm22

// CHECK: vfnmsub132ps %xmm26, %xmm25, %xmm21
// CHECK:  encoding: [0x62,0x82,0x35,0x00,0x9e,0xea]
          vfnmsub132ps %xmm26, %xmm25, %xmm21

// CHECK: vfnmsub132ps %xmm26, %xmm25, %xmm21 {%k3}
// CHECK:  encoding: [0x62,0x82,0x35,0x03,0x9e,0xea]
          vfnmsub132ps %xmm26, %xmm25, %xmm21 {%k3}

// CHECK: vfnmsub132ps %xmm26, %xmm25, %xmm21 {%k3} {z}
// CHECK:  encoding: [0x62,0x82,0x35,0x83,0x9e,0xea]
          vfnmsub132ps %xmm26, %xmm25, %xmm21 {%k3} {z}

// CHECK: vfnmsub132ps (%rcx), %xmm25, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x35,0x00,0x9e,0x29]
          vfnmsub132ps (%rcx), %xmm25, %xmm21

// CHECK: vfnmsub132ps 291(%rax,%r14,8), %xmm25, %xmm21
// CHECK:  encoding: [0x62,0xa2,0x35,0x00,0x9e,0xac,0xf0,0x23,0x01,0x00,0x00]
          vfnmsub132ps 291(%rax,%r14,8), %xmm25, %xmm21

// CHECK: vfnmsub132ps (%rcx){1to4}, %xmm25, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x35,0x10,0x9e,0x29]
          vfnmsub132ps (%rcx){1to4}, %xmm25, %xmm21

// CHECK: vfnmsub132ps 2032(%rdx), %xmm25, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x35,0x00,0x9e,0x6a,0x7f]
          vfnmsub132ps 2032(%rdx), %xmm25, %xmm21

// CHECK: vfnmsub132ps 2048(%rdx), %xmm25, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x35,0x00,0x9e,0xaa,0x00,0x08,0x00,0x00]
          vfnmsub132ps 2048(%rdx), %xmm25, %xmm21

// CHECK: vfnmsub132ps -2048(%rdx), %xmm25, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x35,0x00,0x9e,0x6a,0x80]
          vfnmsub132ps -2048(%rdx), %xmm25, %xmm21

// CHECK: vfnmsub132ps -2064(%rdx), %xmm25, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x35,0x00,0x9e,0xaa,0xf0,0xf7,0xff,0xff]
          vfnmsub132ps -2064(%rdx), %xmm25, %xmm21

// CHECK: vfnmsub132ps 508(%rdx){1to4}, %xmm25, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x35,0x10,0x9e,0x6a,0x7f]
          vfnmsub132ps 508(%rdx){1to4}, %xmm25, %xmm21

// CHECK: vfnmsub132ps 512(%rdx){1to4}, %xmm25, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x35,0x10,0x9e,0xaa,0x00,0x02,0x00,0x00]
          vfnmsub132ps 512(%rdx){1to4}, %xmm25, %xmm21

// CHECK: vfnmsub132ps -512(%rdx){1to4}, %xmm25, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x35,0x10,0x9e,0x6a,0x80]
          vfnmsub132ps -512(%rdx){1to4}, %xmm25, %xmm21

// CHECK: vfnmsub132ps -516(%rdx){1to4}, %xmm25, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x35,0x10,0x9e,0xaa,0xfc,0xfd,0xff,0xff]
          vfnmsub132ps -516(%rdx){1to4}, %xmm25, %xmm21

// CHECK: vfnmsub132ps %ymm22, %ymm24, %ymm18
// CHECK:  encoding: [0x62,0xa2,0x3d,0x20,0x9e,0xd6]
          vfnmsub132ps %ymm22, %ymm24, %ymm18

// CHECK: vfnmsub132ps %ymm22, %ymm24, %ymm18 {%k5}
// CHECK:  encoding: [0x62,0xa2,0x3d,0x25,0x9e,0xd6]
          vfnmsub132ps %ymm22, %ymm24, %ymm18 {%k5}

// CHECK: vfnmsub132ps %ymm22, %ymm24, %ymm18 {%k5} {z}
// CHECK:  encoding: [0x62,0xa2,0x3d,0xa5,0x9e,0xd6]
          vfnmsub132ps %ymm22, %ymm24, %ymm18 {%k5} {z}

// CHECK: vfnmsub132ps (%rcx), %ymm24, %ymm18
// CHECK:  encoding: [0x62,0xe2,0x3d,0x20,0x9e,0x11]
          vfnmsub132ps (%rcx), %ymm24, %ymm18

// CHECK: vfnmsub132ps 291(%rax,%r14,8), %ymm24, %ymm18
// CHECK:  encoding: [0x62,0xa2,0x3d,0x20,0x9e,0x94,0xf0,0x23,0x01,0x00,0x00]
          vfnmsub132ps 291(%rax,%r14,8), %ymm24, %ymm18

// CHECK: vfnmsub132ps (%rcx){1to8}, %ymm24, %ymm18
// CHECK:  encoding: [0x62,0xe2,0x3d,0x30,0x9e,0x11]
          vfnmsub132ps (%rcx){1to8}, %ymm24, %ymm18

// CHECK: vfnmsub132ps 4064(%rdx), %ymm24, %ymm18
// CHECK:  encoding: [0x62,0xe2,0x3d,0x20,0x9e,0x52,0x7f]
          vfnmsub132ps 4064(%rdx), %ymm24, %ymm18

// CHECK: vfnmsub132ps 4096(%rdx), %ymm24, %ymm18
// CHECK:  encoding: [0x62,0xe2,0x3d,0x20,0x9e,0x92,0x00,0x10,0x00,0x00]
          vfnmsub132ps 4096(%rdx), %ymm24, %ymm18

// CHECK: vfnmsub132ps -4096(%rdx), %ymm24, %ymm18
// CHECK:  encoding: [0x62,0xe2,0x3d,0x20,0x9e,0x52,0x80]
          vfnmsub132ps -4096(%rdx), %ymm24, %ymm18

// CHECK: vfnmsub132ps -4128(%rdx), %ymm24, %ymm18
// CHECK:  encoding: [0x62,0xe2,0x3d,0x20,0x9e,0x92,0xe0,0xef,0xff,0xff]
          vfnmsub132ps -4128(%rdx), %ymm24, %ymm18

// CHECK: vfnmsub132ps 508(%rdx){1to8}, %ymm24, %ymm18
// CHECK:  encoding: [0x62,0xe2,0x3d,0x30,0x9e,0x52,0x7f]
          vfnmsub132ps 508(%rdx){1to8}, %ymm24, %ymm18

// CHECK: vfnmsub132ps 512(%rdx){1to8}, %ymm24, %ymm18
// CHECK:  encoding: [0x62,0xe2,0x3d,0x30,0x9e,0x92,0x00,0x02,0x00,0x00]
          vfnmsub132ps 512(%rdx){1to8}, %ymm24, %ymm18

// CHECK: vfnmsub132ps -512(%rdx){1to8}, %ymm24, %ymm18
// CHECK:  encoding: [0x62,0xe2,0x3d,0x30,0x9e,0x52,0x80]
          vfnmsub132ps -512(%rdx){1to8}, %ymm24, %ymm18

// CHECK: vfnmsub132ps -516(%rdx){1to8}, %ymm24, %ymm18
// CHECK:  encoding: [0x62,0xe2,0x3d,0x30,0x9e,0x92,0xfc,0xfd,0xff,0xff]
          vfnmsub132ps -516(%rdx){1to8}, %ymm24, %ymm18

// CHECK: vfnmsub132pd %xmm17, %xmm25, %xmm19
// CHECK:  encoding: [0x62,0xa2,0xb5,0x00,0x9e,0xd9]
          vfnmsub132pd %xmm17, %xmm25, %xmm19

// CHECK: vfnmsub132pd %xmm17, %xmm25, %xmm19 {%k4}
// CHECK:  encoding: [0x62,0xa2,0xb5,0x04,0x9e,0xd9]
          vfnmsub132pd %xmm17, %xmm25, %xmm19 {%k4}

// CHECK: vfnmsub132pd %xmm17, %xmm25, %xmm19 {%k4} {z}
// CHECK:  encoding: [0x62,0xa2,0xb5,0x84,0x9e,0xd9]
          vfnmsub132pd %xmm17, %xmm25, %xmm19 {%k4} {z}

// CHECK: vfnmsub132pd (%rcx), %xmm25, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xb5,0x00,0x9e,0x19]
          vfnmsub132pd (%rcx), %xmm25, %xmm19

// CHECK: vfnmsub132pd 291(%rax,%r14,8), %xmm25, %xmm19
// CHECK:  encoding: [0x62,0xa2,0xb5,0x00,0x9e,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vfnmsub132pd 291(%rax,%r14,8), %xmm25, %xmm19

// CHECK: vfnmsub132pd (%rcx){1to2}, %xmm25, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xb5,0x10,0x9e,0x19]
          vfnmsub132pd (%rcx){1to2}, %xmm25, %xmm19

// CHECK: vfnmsub132pd 2032(%rdx), %xmm25, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xb5,0x00,0x9e,0x5a,0x7f]
          vfnmsub132pd 2032(%rdx), %xmm25, %xmm19

// CHECK: vfnmsub132pd 2048(%rdx), %xmm25, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xb5,0x00,0x9e,0x9a,0x00,0x08,0x00,0x00]
          vfnmsub132pd 2048(%rdx), %xmm25, %xmm19

// CHECK: vfnmsub132pd -2048(%rdx), %xmm25, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xb5,0x00,0x9e,0x5a,0x80]
          vfnmsub132pd -2048(%rdx), %xmm25, %xmm19

// CHECK: vfnmsub132pd -2064(%rdx), %xmm25, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xb5,0x00,0x9e,0x9a,0xf0,0xf7,0xff,0xff]
          vfnmsub132pd -2064(%rdx), %xmm25, %xmm19

// CHECK: vfnmsub132pd 1016(%rdx){1to2}, %xmm25, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xb5,0x10,0x9e,0x5a,0x7f]
          vfnmsub132pd 1016(%rdx){1to2}, %xmm25, %xmm19

// CHECK: vfnmsub132pd 1024(%rdx){1to2}, %xmm25, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xb5,0x10,0x9e,0x9a,0x00,0x04,0x00,0x00]
          vfnmsub132pd 1024(%rdx){1to2}, %xmm25, %xmm19

// CHECK: vfnmsub132pd -1024(%rdx){1to2}, %xmm25, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xb5,0x10,0x9e,0x5a,0x80]
          vfnmsub132pd -1024(%rdx){1to2}, %xmm25, %xmm19

// CHECK: vfnmsub132pd -1032(%rdx){1to2}, %xmm25, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xb5,0x10,0x9e,0x9a,0xf8,0xfb,0xff,0xff]
          vfnmsub132pd -1032(%rdx){1to2}, %xmm25, %xmm19

// CHECK: vfnmsub132pd %ymm22, %ymm28, %ymm17
// CHECK:  encoding: [0x62,0xa2,0x9d,0x20,0x9e,0xce]
          vfnmsub132pd %ymm22, %ymm28, %ymm17

// CHECK: vfnmsub132pd %ymm22, %ymm28, %ymm17 {%k5}
// CHECK:  encoding: [0x62,0xa2,0x9d,0x25,0x9e,0xce]
          vfnmsub132pd %ymm22, %ymm28, %ymm17 {%k5}

// CHECK: vfnmsub132pd %ymm22, %ymm28, %ymm17 {%k5} {z}
// CHECK:  encoding: [0x62,0xa2,0x9d,0xa5,0x9e,0xce]
          vfnmsub132pd %ymm22, %ymm28, %ymm17 {%k5} {z}

// CHECK: vfnmsub132pd (%rcx), %ymm28, %ymm17
// CHECK:  encoding: [0x62,0xe2,0x9d,0x20,0x9e,0x09]
          vfnmsub132pd (%rcx), %ymm28, %ymm17

// CHECK: vfnmsub132pd 291(%rax,%r14,8), %ymm28, %ymm17
// CHECK:  encoding: [0x62,0xa2,0x9d,0x20,0x9e,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vfnmsub132pd 291(%rax,%r14,8), %ymm28, %ymm17

// CHECK: vfnmsub132pd (%rcx){1to4}, %ymm28, %ymm17
// CHECK:  encoding: [0x62,0xe2,0x9d,0x30,0x9e,0x09]
          vfnmsub132pd (%rcx){1to4}, %ymm28, %ymm17

// CHECK: vfnmsub132pd 4064(%rdx), %ymm28, %ymm17
// CHECK:  encoding: [0x62,0xe2,0x9d,0x20,0x9e,0x4a,0x7f]
          vfnmsub132pd 4064(%rdx), %ymm28, %ymm17

// CHECK: vfnmsub132pd 4096(%rdx), %ymm28, %ymm17
// CHECK:  encoding: [0x62,0xe2,0x9d,0x20,0x9e,0x8a,0x00,0x10,0x00,0x00]
          vfnmsub132pd 4096(%rdx), %ymm28, %ymm17

// CHECK: vfnmsub132pd -4096(%rdx), %ymm28, %ymm17
// CHECK:  encoding: [0x62,0xe2,0x9d,0x20,0x9e,0x4a,0x80]
          vfnmsub132pd -4096(%rdx), %ymm28, %ymm17

// CHECK: vfnmsub132pd -4128(%rdx), %ymm28, %ymm17
// CHECK:  encoding: [0x62,0xe2,0x9d,0x20,0x9e,0x8a,0xe0,0xef,0xff,0xff]
          vfnmsub132pd -4128(%rdx), %ymm28, %ymm17

// CHECK: vfnmsub132pd 1016(%rdx){1to4}, %ymm28, %ymm17
// CHECK:  encoding: [0x62,0xe2,0x9d,0x30,0x9e,0x4a,0x7f]
          vfnmsub132pd 1016(%rdx){1to4}, %ymm28, %ymm17

// CHECK: vfnmsub132pd 1024(%rdx){1to4}, %ymm28, %ymm17
// CHECK:  encoding: [0x62,0xe2,0x9d,0x30,0x9e,0x8a,0x00,0x04,0x00,0x00]
          vfnmsub132pd 1024(%rdx){1to4}, %ymm28, %ymm17

// CHECK: vfnmsub132pd -1024(%rdx){1to4}, %ymm28, %ymm17
// CHECK:  encoding: [0x62,0xe2,0x9d,0x30,0x9e,0x4a,0x80]
          vfnmsub132pd -1024(%rdx){1to4}, %ymm28, %ymm17

// CHECK: vfnmsub132pd -1032(%rdx){1to4}, %ymm28, %ymm17
// CHECK:  encoding: [0x62,0xe2,0x9d,0x30,0x9e,0x8a,0xf8,0xfb,0xff,0xff]
          vfnmsub132pd -1032(%rdx){1to4}, %ymm28, %ymm17

// CHECK: vfnmsub213ps %xmm18, %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x22,0x1d,0x00,0xae,0xe2]
          vfnmsub213ps %xmm18, %xmm28, %xmm28

// CHECK: vfnmsub213ps %xmm18, %xmm28, %xmm28 {%k4}
// CHECK:  encoding: [0x62,0x22,0x1d,0x04,0xae,0xe2]
          vfnmsub213ps %xmm18, %xmm28, %xmm28 {%k4}

// CHECK: vfnmsub213ps %xmm18, %xmm28, %xmm28 {%k4} {z}
// CHECK:  encoding: [0x62,0x22,0x1d,0x84,0xae,0xe2]
          vfnmsub213ps %xmm18, %xmm28, %xmm28 {%k4} {z}

// CHECK: vfnmsub213ps (%rcx), %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x62,0x1d,0x00,0xae,0x21]
          vfnmsub213ps (%rcx), %xmm28, %xmm28

// CHECK: vfnmsub213ps 291(%rax,%r14,8), %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x22,0x1d,0x00,0xae,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vfnmsub213ps 291(%rax,%r14,8), %xmm28, %xmm28

// CHECK: vfnmsub213ps (%rcx){1to4}, %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x62,0x1d,0x10,0xae,0x21]
          vfnmsub213ps (%rcx){1to4}, %xmm28, %xmm28

// CHECK: vfnmsub213ps 2032(%rdx), %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x62,0x1d,0x00,0xae,0x62,0x7f]
          vfnmsub213ps 2032(%rdx), %xmm28, %xmm28

// CHECK: vfnmsub213ps 2048(%rdx), %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x62,0x1d,0x00,0xae,0xa2,0x00,0x08,0x00,0x00]
          vfnmsub213ps 2048(%rdx), %xmm28, %xmm28

// CHECK: vfnmsub213ps -2048(%rdx), %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x62,0x1d,0x00,0xae,0x62,0x80]
          vfnmsub213ps -2048(%rdx), %xmm28, %xmm28

// CHECK: vfnmsub213ps -2064(%rdx), %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x62,0x1d,0x00,0xae,0xa2,0xf0,0xf7,0xff,0xff]
          vfnmsub213ps -2064(%rdx), %xmm28, %xmm28

// CHECK: vfnmsub213ps 508(%rdx){1to4}, %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x62,0x1d,0x10,0xae,0x62,0x7f]
          vfnmsub213ps 508(%rdx){1to4}, %xmm28, %xmm28

// CHECK: vfnmsub213ps 512(%rdx){1to4}, %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x62,0x1d,0x10,0xae,0xa2,0x00,0x02,0x00,0x00]
          vfnmsub213ps 512(%rdx){1to4}, %xmm28, %xmm28

// CHECK: vfnmsub213ps -512(%rdx){1to4}, %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x62,0x1d,0x10,0xae,0x62,0x80]
          vfnmsub213ps -512(%rdx){1to4}, %xmm28, %xmm28

// CHECK: vfnmsub213ps -516(%rdx){1to4}, %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x62,0x1d,0x10,0xae,0xa2,0xfc,0xfd,0xff,0xff]
          vfnmsub213ps -516(%rdx){1to4}, %xmm28, %xmm28

// CHECK: vfnmsub213ps %ymm23, %ymm25, %ymm20
// CHECK:  encoding: [0x62,0xa2,0x35,0x20,0xae,0xe7]
          vfnmsub213ps %ymm23, %ymm25, %ymm20

// CHECK: vfnmsub213ps %ymm23, %ymm25, %ymm20 {%k1}
// CHECK:  encoding: [0x62,0xa2,0x35,0x21,0xae,0xe7]
          vfnmsub213ps %ymm23, %ymm25, %ymm20 {%k1}

// CHECK: vfnmsub213ps %ymm23, %ymm25, %ymm20 {%k1} {z}
// CHECK:  encoding: [0x62,0xa2,0x35,0xa1,0xae,0xe7]
          vfnmsub213ps %ymm23, %ymm25, %ymm20 {%k1} {z}

// CHECK: vfnmsub213ps (%rcx), %ymm25, %ymm20
// CHECK:  encoding: [0x62,0xe2,0x35,0x20,0xae,0x21]
          vfnmsub213ps (%rcx), %ymm25, %ymm20

// CHECK: vfnmsub213ps 291(%rax,%r14,8), %ymm25, %ymm20
// CHECK:  encoding: [0x62,0xa2,0x35,0x20,0xae,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vfnmsub213ps 291(%rax,%r14,8), %ymm25, %ymm20

// CHECK: vfnmsub213ps (%rcx){1to8}, %ymm25, %ymm20
// CHECK:  encoding: [0x62,0xe2,0x35,0x30,0xae,0x21]
          vfnmsub213ps (%rcx){1to8}, %ymm25, %ymm20

// CHECK: vfnmsub213ps 4064(%rdx), %ymm25, %ymm20
// CHECK:  encoding: [0x62,0xe2,0x35,0x20,0xae,0x62,0x7f]
          vfnmsub213ps 4064(%rdx), %ymm25, %ymm20

// CHECK: vfnmsub213ps 4096(%rdx), %ymm25, %ymm20
// CHECK:  encoding: [0x62,0xe2,0x35,0x20,0xae,0xa2,0x00,0x10,0x00,0x00]
          vfnmsub213ps 4096(%rdx), %ymm25, %ymm20

// CHECK: vfnmsub213ps -4096(%rdx), %ymm25, %ymm20
// CHECK:  encoding: [0x62,0xe2,0x35,0x20,0xae,0x62,0x80]
          vfnmsub213ps -4096(%rdx), %ymm25, %ymm20

// CHECK: vfnmsub213ps -4128(%rdx), %ymm25, %ymm20
// CHECK:  encoding: [0x62,0xe2,0x35,0x20,0xae,0xa2,0xe0,0xef,0xff,0xff]
          vfnmsub213ps -4128(%rdx), %ymm25, %ymm20

// CHECK: vfnmsub213ps 508(%rdx){1to8}, %ymm25, %ymm20
// CHECK:  encoding: [0x62,0xe2,0x35,0x30,0xae,0x62,0x7f]
          vfnmsub213ps 508(%rdx){1to8}, %ymm25, %ymm20

// CHECK: vfnmsub213ps 512(%rdx){1to8}, %ymm25, %ymm20
// CHECK:  encoding: [0x62,0xe2,0x35,0x30,0xae,0xa2,0x00,0x02,0x00,0x00]
          vfnmsub213ps 512(%rdx){1to8}, %ymm25, %ymm20

// CHECK: vfnmsub213ps -512(%rdx){1to8}, %ymm25, %ymm20
// CHECK:  encoding: [0x62,0xe2,0x35,0x30,0xae,0x62,0x80]
          vfnmsub213ps -512(%rdx){1to8}, %ymm25, %ymm20

// CHECK: vfnmsub213ps -516(%rdx){1to8}, %ymm25, %ymm20
// CHECK:  encoding: [0x62,0xe2,0x35,0x30,0xae,0xa2,0xfc,0xfd,0xff,0xff]
          vfnmsub213ps -516(%rdx){1to8}, %ymm25, %ymm20

// CHECK: vfnmsub213pd %xmm25, %xmm17, %xmm20
// CHECK:  encoding: [0x62,0x82,0xf5,0x00,0xae,0xe1]
          vfnmsub213pd %xmm25, %xmm17, %xmm20

// CHECK: vfnmsub213pd %xmm25, %xmm17, %xmm20 {%k1}
// CHECK:  encoding: [0x62,0x82,0xf5,0x01,0xae,0xe1]
          vfnmsub213pd %xmm25, %xmm17, %xmm20 {%k1}

// CHECK: vfnmsub213pd %xmm25, %xmm17, %xmm20 {%k1} {z}
// CHECK:  encoding: [0x62,0x82,0xf5,0x81,0xae,0xe1]
          vfnmsub213pd %xmm25, %xmm17, %xmm20 {%k1} {z}

// CHECK: vfnmsub213pd (%rcx), %xmm17, %xmm20
// CHECK:  encoding: [0x62,0xe2,0xf5,0x00,0xae,0x21]
          vfnmsub213pd (%rcx), %xmm17, %xmm20

// CHECK: vfnmsub213pd 291(%rax,%r14,8), %xmm17, %xmm20
// CHECK:  encoding: [0x62,0xa2,0xf5,0x00,0xae,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vfnmsub213pd 291(%rax,%r14,8), %xmm17, %xmm20

// CHECK: vfnmsub213pd (%rcx){1to2}, %xmm17, %xmm20
// CHECK:  encoding: [0x62,0xe2,0xf5,0x10,0xae,0x21]
          vfnmsub213pd (%rcx){1to2}, %xmm17, %xmm20

// CHECK: vfnmsub213pd 2032(%rdx), %xmm17, %xmm20
// CHECK:  encoding: [0x62,0xe2,0xf5,0x00,0xae,0x62,0x7f]
          vfnmsub213pd 2032(%rdx), %xmm17, %xmm20

// CHECK: vfnmsub213pd 2048(%rdx), %xmm17, %xmm20
// CHECK:  encoding: [0x62,0xe2,0xf5,0x00,0xae,0xa2,0x00,0x08,0x00,0x00]
          vfnmsub213pd 2048(%rdx), %xmm17, %xmm20

// CHECK: vfnmsub213pd -2048(%rdx), %xmm17, %xmm20
// CHECK:  encoding: [0x62,0xe2,0xf5,0x00,0xae,0x62,0x80]
          vfnmsub213pd -2048(%rdx), %xmm17, %xmm20

// CHECK: vfnmsub213pd -2064(%rdx), %xmm17, %xmm20
// CHECK:  encoding: [0x62,0xe2,0xf5,0x00,0xae,0xa2,0xf0,0xf7,0xff,0xff]
          vfnmsub213pd -2064(%rdx), %xmm17, %xmm20

// CHECK: vfnmsub213pd 1016(%rdx){1to2}, %xmm17, %xmm20
// CHECK:  encoding: [0x62,0xe2,0xf5,0x10,0xae,0x62,0x7f]
          vfnmsub213pd 1016(%rdx){1to2}, %xmm17, %xmm20

// CHECK: vfnmsub213pd 1024(%rdx){1to2}, %xmm17, %xmm20
// CHECK:  encoding: [0x62,0xe2,0xf5,0x10,0xae,0xa2,0x00,0x04,0x00,0x00]
          vfnmsub213pd 1024(%rdx){1to2}, %xmm17, %xmm20

// CHECK: vfnmsub213pd -1024(%rdx){1to2}, %xmm17, %xmm20
// CHECK:  encoding: [0x62,0xe2,0xf5,0x10,0xae,0x62,0x80]
          vfnmsub213pd -1024(%rdx){1to2}, %xmm17, %xmm20

// CHECK: vfnmsub213pd -1032(%rdx){1to2}, %xmm17, %xmm20
// CHECK:  encoding: [0x62,0xe2,0xf5,0x10,0xae,0xa2,0xf8,0xfb,0xff,0xff]
          vfnmsub213pd -1032(%rdx){1to2}, %xmm17, %xmm20

// CHECK: vfnmsub213pd %ymm28, %ymm20, %ymm19
// CHECK:  encoding: [0x62,0x82,0xdd,0x20,0xae,0xdc]
          vfnmsub213pd %ymm28, %ymm20, %ymm19

// CHECK: vfnmsub213pd %ymm28, %ymm20, %ymm19 {%k7}
// CHECK:  encoding: [0x62,0x82,0xdd,0x27,0xae,0xdc]
          vfnmsub213pd %ymm28, %ymm20, %ymm19 {%k7}

// CHECK: vfnmsub213pd %ymm28, %ymm20, %ymm19 {%k7} {z}
// CHECK:  encoding: [0x62,0x82,0xdd,0xa7,0xae,0xdc]
          vfnmsub213pd %ymm28, %ymm20, %ymm19 {%k7} {z}

// CHECK: vfnmsub213pd (%rcx), %ymm20, %ymm19
// CHECK:  encoding: [0x62,0xe2,0xdd,0x20,0xae,0x19]
          vfnmsub213pd (%rcx), %ymm20, %ymm19

// CHECK: vfnmsub213pd 291(%rax,%r14,8), %ymm20, %ymm19
// CHECK:  encoding: [0x62,0xa2,0xdd,0x20,0xae,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vfnmsub213pd 291(%rax,%r14,8), %ymm20, %ymm19

// CHECK: vfnmsub213pd (%rcx){1to4}, %ymm20, %ymm19
// CHECK:  encoding: [0x62,0xe2,0xdd,0x30,0xae,0x19]
          vfnmsub213pd (%rcx){1to4}, %ymm20, %ymm19

// CHECK: vfnmsub213pd 4064(%rdx), %ymm20, %ymm19
// CHECK:  encoding: [0x62,0xe2,0xdd,0x20,0xae,0x5a,0x7f]
          vfnmsub213pd 4064(%rdx), %ymm20, %ymm19

// CHECK: vfnmsub213pd 4096(%rdx), %ymm20, %ymm19
// CHECK:  encoding: [0x62,0xe2,0xdd,0x20,0xae,0x9a,0x00,0x10,0x00,0x00]
          vfnmsub213pd 4096(%rdx), %ymm20, %ymm19

// CHECK: vfnmsub213pd -4096(%rdx), %ymm20, %ymm19
// CHECK:  encoding: [0x62,0xe2,0xdd,0x20,0xae,0x5a,0x80]
          vfnmsub213pd -4096(%rdx), %ymm20, %ymm19

// CHECK: vfnmsub213pd -4128(%rdx), %ymm20, %ymm19
// CHECK:  encoding: [0x62,0xe2,0xdd,0x20,0xae,0x9a,0xe0,0xef,0xff,0xff]
          vfnmsub213pd -4128(%rdx), %ymm20, %ymm19

// CHECK: vfnmsub213pd 1016(%rdx){1to4}, %ymm20, %ymm19
// CHECK:  encoding: [0x62,0xe2,0xdd,0x30,0xae,0x5a,0x7f]
          vfnmsub213pd 1016(%rdx){1to4}, %ymm20, %ymm19

// CHECK: vfnmsub213pd 1024(%rdx){1to4}, %ymm20, %ymm19
// CHECK:  encoding: [0x62,0xe2,0xdd,0x30,0xae,0x9a,0x00,0x04,0x00,0x00]
          vfnmsub213pd 1024(%rdx){1to4}, %ymm20, %ymm19

// CHECK: vfnmsub213pd -1024(%rdx){1to4}, %ymm20, %ymm19
// CHECK:  encoding: [0x62,0xe2,0xdd,0x30,0xae,0x5a,0x80]
          vfnmsub213pd -1024(%rdx){1to4}, %ymm20, %ymm19

// CHECK: vfnmsub213pd -1032(%rdx){1to4}, %ymm20, %ymm19
// CHECK:  encoding: [0x62,0xe2,0xdd,0x30,0xae,0x9a,0xf8,0xfb,0xff,0xff]
          vfnmsub213pd -1032(%rdx){1to4}, %ymm20, %ymm19

// CHECK: vfnmsub231ps %xmm26, %xmm27, %xmm18
// CHECK:  encoding: [0x62,0x82,0x25,0x00,0xbe,0xd2]
          vfnmsub231ps %xmm26, %xmm27, %xmm18

// CHECK: vfnmsub231ps %xmm26, %xmm27, %xmm18 {%k2}
// CHECK:  encoding: [0x62,0x82,0x25,0x02,0xbe,0xd2]
          vfnmsub231ps %xmm26, %xmm27, %xmm18 {%k2}

// CHECK: vfnmsub231ps %xmm26, %xmm27, %xmm18 {%k2} {z}
// CHECK:  encoding: [0x62,0x82,0x25,0x82,0xbe,0xd2]
          vfnmsub231ps %xmm26, %xmm27, %xmm18 {%k2} {z}

// CHECK: vfnmsub231ps (%rcx), %xmm27, %xmm18
// CHECK:  encoding: [0x62,0xe2,0x25,0x00,0xbe,0x11]
          vfnmsub231ps (%rcx), %xmm27, %xmm18

// CHECK: vfnmsub231ps 291(%rax,%r14,8), %xmm27, %xmm18
// CHECK:  encoding: [0x62,0xa2,0x25,0x00,0xbe,0x94,0xf0,0x23,0x01,0x00,0x00]
          vfnmsub231ps 291(%rax,%r14,8), %xmm27, %xmm18

// CHECK: vfnmsub231ps (%rcx){1to4}, %xmm27, %xmm18
// CHECK:  encoding: [0x62,0xe2,0x25,0x10,0xbe,0x11]
          vfnmsub231ps (%rcx){1to4}, %xmm27, %xmm18

// CHECK: vfnmsub231ps 2032(%rdx), %xmm27, %xmm18
// CHECK:  encoding: [0x62,0xe2,0x25,0x00,0xbe,0x52,0x7f]
          vfnmsub231ps 2032(%rdx), %xmm27, %xmm18

// CHECK: vfnmsub231ps 2048(%rdx), %xmm27, %xmm18
// CHECK:  encoding: [0x62,0xe2,0x25,0x00,0xbe,0x92,0x00,0x08,0x00,0x00]
          vfnmsub231ps 2048(%rdx), %xmm27, %xmm18

// CHECK: vfnmsub231ps -2048(%rdx), %xmm27, %xmm18
// CHECK:  encoding: [0x62,0xe2,0x25,0x00,0xbe,0x52,0x80]
          vfnmsub231ps -2048(%rdx), %xmm27, %xmm18

// CHECK: vfnmsub231ps -2064(%rdx), %xmm27, %xmm18
// CHECK:  encoding: [0x62,0xe2,0x25,0x00,0xbe,0x92,0xf0,0xf7,0xff,0xff]
          vfnmsub231ps -2064(%rdx), %xmm27, %xmm18

// CHECK: vfnmsub231ps 508(%rdx){1to4}, %xmm27, %xmm18
// CHECK:  encoding: [0x62,0xe2,0x25,0x10,0xbe,0x52,0x7f]
          vfnmsub231ps 508(%rdx){1to4}, %xmm27, %xmm18

// CHECK: vfnmsub231ps 512(%rdx){1to4}, %xmm27, %xmm18
// CHECK:  encoding: [0x62,0xe2,0x25,0x10,0xbe,0x92,0x00,0x02,0x00,0x00]
          vfnmsub231ps 512(%rdx){1to4}, %xmm27, %xmm18

// CHECK: vfnmsub231ps -512(%rdx){1to4}, %xmm27, %xmm18
// CHECK:  encoding: [0x62,0xe2,0x25,0x10,0xbe,0x52,0x80]
          vfnmsub231ps -512(%rdx){1to4}, %xmm27, %xmm18

// CHECK: vfnmsub231ps -516(%rdx){1to4}, %xmm27, %xmm18
// CHECK:  encoding: [0x62,0xe2,0x25,0x10,0xbe,0x92,0xfc,0xfd,0xff,0xff]
          vfnmsub231ps -516(%rdx){1to4}, %xmm27, %xmm18

// CHECK: vfnmsub231ps %ymm18, %ymm20, %ymm30
// CHECK:  encoding: [0x62,0x22,0x5d,0x20,0xbe,0xf2]
          vfnmsub231ps %ymm18, %ymm20, %ymm30

// CHECK: vfnmsub231ps %ymm18, %ymm20, %ymm30 {%k1}
// CHECK:  encoding: [0x62,0x22,0x5d,0x21,0xbe,0xf2]
          vfnmsub231ps %ymm18, %ymm20, %ymm30 {%k1}

// CHECK: vfnmsub231ps %ymm18, %ymm20, %ymm30 {%k1} {z}
// CHECK:  encoding: [0x62,0x22,0x5d,0xa1,0xbe,0xf2]
          vfnmsub231ps %ymm18, %ymm20, %ymm30 {%k1} {z}

// CHECK: vfnmsub231ps (%rcx), %ymm20, %ymm30
// CHECK:  encoding: [0x62,0x62,0x5d,0x20,0xbe,0x31]
          vfnmsub231ps (%rcx), %ymm20, %ymm30

// CHECK: vfnmsub231ps 291(%rax,%r14,8), %ymm20, %ymm30
// CHECK:  encoding: [0x62,0x22,0x5d,0x20,0xbe,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vfnmsub231ps 291(%rax,%r14,8), %ymm20, %ymm30

// CHECK: vfnmsub231ps (%rcx){1to8}, %ymm20, %ymm30
// CHECK:  encoding: [0x62,0x62,0x5d,0x30,0xbe,0x31]
          vfnmsub231ps (%rcx){1to8}, %ymm20, %ymm30

// CHECK: vfnmsub231ps 4064(%rdx), %ymm20, %ymm30
// CHECK:  encoding: [0x62,0x62,0x5d,0x20,0xbe,0x72,0x7f]
          vfnmsub231ps 4064(%rdx), %ymm20, %ymm30

// CHECK: vfnmsub231ps 4096(%rdx), %ymm20, %ymm30
// CHECK:  encoding: [0x62,0x62,0x5d,0x20,0xbe,0xb2,0x00,0x10,0x00,0x00]
          vfnmsub231ps 4096(%rdx), %ymm20, %ymm30

// CHECK: vfnmsub231ps -4096(%rdx), %ymm20, %ymm30
// CHECK:  encoding: [0x62,0x62,0x5d,0x20,0xbe,0x72,0x80]
          vfnmsub231ps -4096(%rdx), %ymm20, %ymm30

// CHECK: vfnmsub231ps -4128(%rdx), %ymm20, %ymm30
// CHECK:  encoding: [0x62,0x62,0x5d,0x20,0xbe,0xb2,0xe0,0xef,0xff,0xff]
          vfnmsub231ps -4128(%rdx), %ymm20, %ymm30

// CHECK: vfnmsub231ps 508(%rdx){1to8}, %ymm20, %ymm30
// CHECK:  encoding: [0x62,0x62,0x5d,0x30,0xbe,0x72,0x7f]
          vfnmsub231ps 508(%rdx){1to8}, %ymm20, %ymm30

// CHECK: vfnmsub231ps 512(%rdx){1to8}, %ymm20, %ymm30
// CHECK:  encoding: [0x62,0x62,0x5d,0x30,0xbe,0xb2,0x00,0x02,0x00,0x00]
          vfnmsub231ps 512(%rdx){1to8}, %ymm20, %ymm30

// CHECK: vfnmsub231ps -512(%rdx){1to8}, %ymm20, %ymm30
// CHECK:  encoding: [0x62,0x62,0x5d,0x30,0xbe,0x72,0x80]
          vfnmsub231ps -512(%rdx){1to8}, %ymm20, %ymm30

// CHECK: vfnmsub231ps -516(%rdx){1to8}, %ymm20, %ymm30
// CHECK:  encoding: [0x62,0x62,0x5d,0x30,0xbe,0xb2,0xfc,0xfd,0xff,0xff]
          vfnmsub231ps -516(%rdx){1to8}, %ymm20, %ymm30

// CHECK: vfnmsub231pd %xmm25, %xmm19, %xmm23
// CHECK:  encoding: [0x62,0x82,0xe5,0x00,0xbe,0xf9]
          vfnmsub231pd %xmm25, %xmm19, %xmm23

// CHECK: vfnmsub231pd %xmm25, %xmm19, %xmm23 {%k3}
// CHECK:  encoding: [0x62,0x82,0xe5,0x03,0xbe,0xf9]
          vfnmsub231pd %xmm25, %xmm19, %xmm23 {%k3}

// CHECK: vfnmsub231pd %xmm25, %xmm19, %xmm23 {%k3} {z}
// CHECK:  encoding: [0x62,0x82,0xe5,0x83,0xbe,0xf9]
          vfnmsub231pd %xmm25, %xmm19, %xmm23 {%k3} {z}

// CHECK: vfnmsub231pd (%rcx), %xmm19, %xmm23
// CHECK:  encoding: [0x62,0xe2,0xe5,0x00,0xbe,0x39]
          vfnmsub231pd (%rcx), %xmm19, %xmm23

// CHECK: vfnmsub231pd 291(%rax,%r14,8), %xmm19, %xmm23
// CHECK:  encoding: [0x62,0xa2,0xe5,0x00,0xbe,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vfnmsub231pd 291(%rax,%r14,8), %xmm19, %xmm23

// CHECK: vfnmsub231pd (%rcx){1to2}, %xmm19, %xmm23
// CHECK:  encoding: [0x62,0xe2,0xe5,0x10,0xbe,0x39]
          vfnmsub231pd (%rcx){1to2}, %xmm19, %xmm23

// CHECK: vfnmsub231pd 2032(%rdx), %xmm19, %xmm23
// CHECK:  encoding: [0x62,0xe2,0xe5,0x00,0xbe,0x7a,0x7f]
          vfnmsub231pd 2032(%rdx), %xmm19, %xmm23

// CHECK: vfnmsub231pd 2048(%rdx), %xmm19, %xmm23
// CHECK:  encoding: [0x62,0xe2,0xe5,0x00,0xbe,0xba,0x00,0x08,0x00,0x00]
          vfnmsub231pd 2048(%rdx), %xmm19, %xmm23

// CHECK: vfnmsub231pd -2048(%rdx), %xmm19, %xmm23
// CHECK:  encoding: [0x62,0xe2,0xe5,0x00,0xbe,0x7a,0x80]
          vfnmsub231pd -2048(%rdx), %xmm19, %xmm23

// CHECK: vfnmsub231pd -2064(%rdx), %xmm19, %xmm23
// CHECK:  encoding: [0x62,0xe2,0xe5,0x00,0xbe,0xba,0xf0,0xf7,0xff,0xff]
          vfnmsub231pd -2064(%rdx), %xmm19, %xmm23

// CHECK: vfnmsub231pd 1016(%rdx){1to2}, %xmm19, %xmm23
// CHECK:  encoding: [0x62,0xe2,0xe5,0x10,0xbe,0x7a,0x7f]
          vfnmsub231pd 1016(%rdx){1to2}, %xmm19, %xmm23

// CHECK: vfnmsub231pd 1024(%rdx){1to2}, %xmm19, %xmm23
// CHECK:  encoding: [0x62,0xe2,0xe5,0x10,0xbe,0xba,0x00,0x04,0x00,0x00]
          vfnmsub231pd 1024(%rdx){1to2}, %xmm19, %xmm23

// CHECK: vfnmsub231pd -1024(%rdx){1to2}, %xmm19, %xmm23
// CHECK:  encoding: [0x62,0xe2,0xe5,0x10,0xbe,0x7a,0x80]
          vfnmsub231pd -1024(%rdx){1to2}, %xmm19, %xmm23

// CHECK: vfnmsub231pd -1032(%rdx){1to2}, %xmm19, %xmm23
// CHECK:  encoding: [0x62,0xe2,0xe5,0x10,0xbe,0xba,0xf8,0xfb,0xff,0xff]
          vfnmsub231pd -1032(%rdx){1to2}, %xmm19, %xmm23

// CHECK: vfnmsub231pd %ymm20, %ymm18, %ymm22
// CHECK:  encoding: [0x62,0xa2,0xed,0x20,0xbe,0xf4]
          vfnmsub231pd %ymm20, %ymm18, %ymm22

// CHECK: vfnmsub231pd %ymm20, %ymm18, %ymm22 {%k1}
// CHECK:  encoding: [0x62,0xa2,0xed,0x21,0xbe,0xf4]
          vfnmsub231pd %ymm20, %ymm18, %ymm22 {%k1}

// CHECK: vfnmsub231pd %ymm20, %ymm18, %ymm22 {%k1} {z}
// CHECK:  encoding: [0x62,0xa2,0xed,0xa1,0xbe,0xf4]
          vfnmsub231pd %ymm20, %ymm18, %ymm22 {%k1} {z}

// CHECK: vfnmsub231pd (%rcx), %ymm18, %ymm22
// CHECK:  encoding: [0x62,0xe2,0xed,0x20,0xbe,0x31]
          vfnmsub231pd (%rcx), %ymm18, %ymm22

// CHECK: vfnmsub231pd 291(%rax,%r14,8), %ymm18, %ymm22
// CHECK:  encoding: [0x62,0xa2,0xed,0x20,0xbe,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vfnmsub231pd 291(%rax,%r14,8), %ymm18, %ymm22

// CHECK: vfnmsub231pd (%rcx){1to4}, %ymm18, %ymm22
// CHECK:  encoding: [0x62,0xe2,0xed,0x30,0xbe,0x31]
          vfnmsub231pd (%rcx){1to4}, %ymm18, %ymm22

// CHECK: vfnmsub231pd 4064(%rdx), %ymm18, %ymm22
// CHECK:  encoding: [0x62,0xe2,0xed,0x20,0xbe,0x72,0x7f]
          vfnmsub231pd 4064(%rdx), %ymm18, %ymm22

// CHECK: vfnmsub231pd 4096(%rdx), %ymm18, %ymm22
// CHECK:  encoding: [0x62,0xe2,0xed,0x20,0xbe,0xb2,0x00,0x10,0x00,0x00]
          vfnmsub231pd 4096(%rdx), %ymm18, %ymm22

// CHECK: vfnmsub231pd -4096(%rdx), %ymm18, %ymm22
// CHECK:  encoding: [0x62,0xe2,0xed,0x20,0xbe,0x72,0x80]
          vfnmsub231pd -4096(%rdx), %ymm18, %ymm22

// CHECK: vfnmsub231pd -4128(%rdx), %ymm18, %ymm22
// CHECK:  encoding: [0x62,0xe2,0xed,0x20,0xbe,0xb2,0xe0,0xef,0xff,0xff]
          vfnmsub231pd -4128(%rdx), %ymm18, %ymm22

// CHECK: vfnmsub231pd 1016(%rdx){1to4}, %ymm18, %ymm22
// CHECK:  encoding: [0x62,0xe2,0xed,0x30,0xbe,0x72,0x7f]
          vfnmsub231pd 1016(%rdx){1to4}, %ymm18, %ymm22

// CHECK: vfnmsub231pd 1024(%rdx){1to4}, %ymm18, %ymm22
// CHECK:  encoding: [0x62,0xe2,0xed,0x30,0xbe,0xb2,0x00,0x04,0x00,0x00]
          vfnmsub231pd 1024(%rdx){1to4}, %ymm18, %ymm22

// CHECK: vfnmsub231pd -1024(%rdx){1to4}, %ymm18, %ymm22
// CHECK:  encoding: [0x62,0xe2,0xed,0x30,0xbe,0x72,0x80]
          vfnmsub231pd -1024(%rdx){1to4}, %ymm18, %ymm22

// CHECK: vfnmsub231pd -1032(%rdx){1to4}, %ymm18, %ymm22
// CHECK:  encoding: [0x62,0xe2,0xed,0x30,0xbe,0xb2,0xf8,0xfb,0xff,0xff]
          vfnmsub231pd -1032(%rdx){1to4}, %ymm18, %ymm22

// CHECK: vpermi2d %xmm25, %xmm23, %xmm21
// CHECK:  encoding: [0x62,0x82,0x45,0x00,0x76,0xe9]
          vpermi2d %xmm25, %xmm23, %xmm21

// CHECK: vpermi2d %xmm25, %xmm23, %xmm21 {%k6}
// CHECK:  encoding: [0x62,0x82,0x45,0x06,0x76,0xe9]
          vpermi2d %xmm25, %xmm23, %xmm21 {%k6}

// CHECK: vpermi2d %xmm25, %xmm23, %xmm21 {%k6} {z}
// CHECK:  encoding: [0x62,0x82,0x45,0x86,0x76,0xe9]
          vpermi2d %xmm25, %xmm23, %xmm21 {%k6} {z}

// CHECK: vpermi2d (%rcx), %xmm23, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x45,0x00,0x76,0x29]
          vpermi2d (%rcx), %xmm23, %xmm21

// CHECK: vpermi2d 291(%rax,%r14,8), %xmm23, %xmm21
// CHECK:  encoding: [0x62,0xa2,0x45,0x00,0x76,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpermi2d 291(%rax,%r14,8), %xmm23, %xmm21

// CHECK: vpermi2d (%rcx){1to4}, %xmm23, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x45,0x10,0x76,0x29]
          vpermi2d (%rcx){1to4}, %xmm23, %xmm21

// CHECK: vpermi2d 2032(%rdx), %xmm23, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x45,0x00,0x76,0x6a,0x7f]
          vpermi2d 2032(%rdx), %xmm23, %xmm21

// CHECK: vpermi2d 2048(%rdx), %xmm23, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x45,0x00,0x76,0xaa,0x00,0x08,0x00,0x00]
          vpermi2d 2048(%rdx), %xmm23, %xmm21

// CHECK: vpermi2d -2048(%rdx), %xmm23, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x45,0x00,0x76,0x6a,0x80]
          vpermi2d -2048(%rdx), %xmm23, %xmm21

// CHECK: vpermi2d -2064(%rdx), %xmm23, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x45,0x00,0x76,0xaa,0xf0,0xf7,0xff,0xff]
          vpermi2d -2064(%rdx), %xmm23, %xmm21

// CHECK: vpermi2d 508(%rdx){1to4}, %xmm23, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x45,0x10,0x76,0x6a,0x7f]
          vpermi2d 508(%rdx){1to4}, %xmm23, %xmm21

// CHECK: vpermi2d 512(%rdx){1to4}, %xmm23, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x45,0x10,0x76,0xaa,0x00,0x02,0x00,0x00]
          vpermi2d 512(%rdx){1to4}, %xmm23, %xmm21

// CHECK: vpermi2d -512(%rdx){1to4}, %xmm23, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x45,0x10,0x76,0x6a,0x80]
          vpermi2d -512(%rdx){1to4}, %xmm23, %xmm21

// CHECK: vpermi2d -516(%rdx){1to4}, %xmm23, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x45,0x10,0x76,0xaa,0xfc,0xfd,0xff,0xff]
          vpermi2d -516(%rdx){1to4}, %xmm23, %xmm21

// CHECK: vpermi2d %ymm22, %ymm24, %ymm18
// CHECK:  encoding: [0x62,0xa2,0x3d,0x20,0x76,0xd6]
          vpermi2d %ymm22, %ymm24, %ymm18

// CHECK: vpermi2d %ymm22, %ymm24, %ymm18 {%k1}
// CHECK:  encoding: [0x62,0xa2,0x3d,0x21,0x76,0xd6]
          vpermi2d %ymm22, %ymm24, %ymm18 {%k1}

// CHECK: vpermi2d %ymm22, %ymm24, %ymm18 {%k1} {z}
// CHECK:  encoding: [0x62,0xa2,0x3d,0xa1,0x76,0xd6]
          vpermi2d %ymm22, %ymm24, %ymm18 {%k1} {z}

// CHECK: vpermi2d (%rcx), %ymm24, %ymm18
// CHECK:  encoding: [0x62,0xe2,0x3d,0x20,0x76,0x11]
          vpermi2d (%rcx), %ymm24, %ymm18

// CHECK: vpermi2d 291(%rax,%r14,8), %ymm24, %ymm18
// CHECK:  encoding: [0x62,0xa2,0x3d,0x20,0x76,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpermi2d 291(%rax,%r14,8), %ymm24, %ymm18

// CHECK: vpermi2d (%rcx){1to8}, %ymm24, %ymm18
// CHECK:  encoding: [0x62,0xe2,0x3d,0x30,0x76,0x11]
          vpermi2d (%rcx){1to8}, %ymm24, %ymm18

// CHECK: vpermi2d 4064(%rdx), %ymm24, %ymm18
// CHECK:  encoding: [0x62,0xe2,0x3d,0x20,0x76,0x52,0x7f]
          vpermi2d 4064(%rdx), %ymm24, %ymm18

// CHECK: vpermi2d 4096(%rdx), %ymm24, %ymm18
// CHECK:  encoding: [0x62,0xe2,0x3d,0x20,0x76,0x92,0x00,0x10,0x00,0x00]
          vpermi2d 4096(%rdx), %ymm24, %ymm18

// CHECK: vpermi2d -4096(%rdx), %ymm24, %ymm18
// CHECK:  encoding: [0x62,0xe2,0x3d,0x20,0x76,0x52,0x80]
          vpermi2d -4096(%rdx), %ymm24, %ymm18

// CHECK: vpermi2d -4128(%rdx), %ymm24, %ymm18
// CHECK:  encoding: [0x62,0xe2,0x3d,0x20,0x76,0x92,0xe0,0xef,0xff,0xff]
          vpermi2d -4128(%rdx), %ymm24, %ymm18

// CHECK: vpermi2d 508(%rdx){1to8}, %ymm24, %ymm18
// CHECK:  encoding: [0x62,0xe2,0x3d,0x30,0x76,0x52,0x7f]
          vpermi2d 508(%rdx){1to8}, %ymm24, %ymm18

// CHECK: vpermi2d 512(%rdx){1to8}, %ymm24, %ymm18
// CHECK:  encoding: [0x62,0xe2,0x3d,0x30,0x76,0x92,0x00,0x02,0x00,0x00]
          vpermi2d 512(%rdx){1to8}, %ymm24, %ymm18

// CHECK: vpermi2d -512(%rdx){1to8}, %ymm24, %ymm18
// CHECK:  encoding: [0x62,0xe2,0x3d,0x30,0x76,0x52,0x80]
          vpermi2d -512(%rdx){1to8}, %ymm24, %ymm18

// CHECK: vpermi2d -516(%rdx){1to8}, %ymm24, %ymm18
// CHECK:  encoding: [0x62,0xe2,0x3d,0x30,0x76,0x92,0xfc,0xfd,0xff,0xff]
          vpermi2d -516(%rdx){1to8}, %ymm24, %ymm18

// CHECK: vpermi2q %xmm17, %xmm28, %xmm18
// CHECK:  encoding: [0x62,0xa2,0x9d,0x00,0x76,0xd1]
          vpermi2q %xmm17, %xmm28, %xmm18

// CHECK: vpermi2q %xmm17, %xmm28, %xmm18 {%k3}
// CHECK:  encoding: [0x62,0xa2,0x9d,0x03,0x76,0xd1]
          vpermi2q %xmm17, %xmm28, %xmm18 {%k3}

// CHECK: vpermi2q %xmm17, %xmm28, %xmm18 {%k3} {z}
// CHECK:  encoding: [0x62,0xa2,0x9d,0x83,0x76,0xd1]
          vpermi2q %xmm17, %xmm28, %xmm18 {%k3} {z}

// CHECK: vpermi2q (%rcx), %xmm28, %xmm18
// CHECK:  encoding: [0x62,0xe2,0x9d,0x00,0x76,0x11]
          vpermi2q (%rcx), %xmm28, %xmm18

// CHECK: vpermi2q 291(%rax,%r14,8), %xmm28, %xmm18
// CHECK:  encoding: [0x62,0xa2,0x9d,0x00,0x76,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpermi2q 291(%rax,%r14,8), %xmm28, %xmm18

// CHECK: vpermi2q (%rcx){1to2}, %xmm28, %xmm18
// CHECK:  encoding: [0x62,0xe2,0x9d,0x10,0x76,0x11]
          vpermi2q (%rcx){1to2}, %xmm28, %xmm18

// CHECK: vpermi2q 2032(%rdx), %xmm28, %xmm18
// CHECK:  encoding: [0x62,0xe2,0x9d,0x00,0x76,0x52,0x7f]
          vpermi2q 2032(%rdx), %xmm28, %xmm18

// CHECK: vpermi2q 2048(%rdx), %xmm28, %xmm18
// CHECK:  encoding: [0x62,0xe2,0x9d,0x00,0x76,0x92,0x00,0x08,0x00,0x00]
          vpermi2q 2048(%rdx), %xmm28, %xmm18

// CHECK: vpermi2q -2048(%rdx), %xmm28, %xmm18
// CHECK:  encoding: [0x62,0xe2,0x9d,0x00,0x76,0x52,0x80]
          vpermi2q -2048(%rdx), %xmm28, %xmm18

// CHECK: vpermi2q -2064(%rdx), %xmm28, %xmm18
// CHECK:  encoding: [0x62,0xe2,0x9d,0x00,0x76,0x92,0xf0,0xf7,0xff,0xff]
          vpermi2q -2064(%rdx), %xmm28, %xmm18

// CHECK: vpermi2q 1016(%rdx){1to2}, %xmm28, %xmm18
// CHECK:  encoding: [0x62,0xe2,0x9d,0x10,0x76,0x52,0x7f]
          vpermi2q 1016(%rdx){1to2}, %xmm28, %xmm18

// CHECK: vpermi2q 1024(%rdx){1to2}, %xmm28, %xmm18
// CHECK:  encoding: [0x62,0xe2,0x9d,0x10,0x76,0x92,0x00,0x04,0x00,0x00]
          vpermi2q 1024(%rdx){1to2}, %xmm28, %xmm18

// CHECK: vpermi2q -1024(%rdx){1to2}, %xmm28, %xmm18
// CHECK:  encoding: [0x62,0xe2,0x9d,0x10,0x76,0x52,0x80]
          vpermi2q -1024(%rdx){1to2}, %xmm28, %xmm18

// CHECK: vpermi2q -1032(%rdx){1to2}, %xmm28, %xmm18
// CHECK:  encoding: [0x62,0xe2,0x9d,0x10,0x76,0x92,0xf8,0xfb,0xff,0xff]
          vpermi2q -1032(%rdx){1to2}, %xmm28, %xmm18

// CHECK: vpermi2q %ymm23, %ymm22, %ymm26
// CHECK:  encoding: [0x62,0x22,0xcd,0x20,0x76,0xd7]
          vpermi2q %ymm23, %ymm22, %ymm26

// CHECK: vpermi2q %ymm23, %ymm22, %ymm26 {%k2}
// CHECK:  encoding: [0x62,0x22,0xcd,0x22,0x76,0xd7]
          vpermi2q %ymm23, %ymm22, %ymm26 {%k2}

// CHECK: vpermi2q %ymm23, %ymm22, %ymm26 {%k2} {z}
// CHECK:  encoding: [0x62,0x22,0xcd,0xa2,0x76,0xd7]
          vpermi2q %ymm23, %ymm22, %ymm26 {%k2} {z}

// CHECK: vpermi2q (%rcx), %ymm22, %ymm26
// CHECK:  encoding: [0x62,0x62,0xcd,0x20,0x76,0x11]
          vpermi2q (%rcx), %ymm22, %ymm26

// CHECK: vpermi2q 291(%rax,%r14,8), %ymm22, %ymm26
// CHECK:  encoding: [0x62,0x22,0xcd,0x20,0x76,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpermi2q 291(%rax,%r14,8), %ymm22, %ymm26

// CHECK: vpermi2q (%rcx){1to4}, %ymm22, %ymm26
// CHECK:  encoding: [0x62,0x62,0xcd,0x30,0x76,0x11]
          vpermi2q (%rcx){1to4}, %ymm22, %ymm26

// CHECK: vpermi2q 4064(%rdx), %ymm22, %ymm26
// CHECK:  encoding: [0x62,0x62,0xcd,0x20,0x76,0x52,0x7f]
          vpermi2q 4064(%rdx), %ymm22, %ymm26

// CHECK: vpermi2q 4096(%rdx), %ymm22, %ymm26
// CHECK:  encoding: [0x62,0x62,0xcd,0x20,0x76,0x92,0x00,0x10,0x00,0x00]
          vpermi2q 4096(%rdx), %ymm22, %ymm26

// CHECK: vpermi2q -4096(%rdx), %ymm22, %ymm26
// CHECK:  encoding: [0x62,0x62,0xcd,0x20,0x76,0x52,0x80]
          vpermi2q -4096(%rdx), %ymm22, %ymm26

// CHECK: vpermi2q -4128(%rdx), %ymm22, %ymm26
// CHECK:  encoding: [0x62,0x62,0xcd,0x20,0x76,0x92,0xe0,0xef,0xff,0xff]
          vpermi2q -4128(%rdx), %ymm22, %ymm26

// CHECK: vpermi2q 1016(%rdx){1to4}, %ymm22, %ymm26
// CHECK:  encoding: [0x62,0x62,0xcd,0x30,0x76,0x52,0x7f]
          vpermi2q 1016(%rdx){1to4}, %ymm22, %ymm26

// CHECK: vpermi2q 1024(%rdx){1to4}, %ymm22, %ymm26
// CHECK:  encoding: [0x62,0x62,0xcd,0x30,0x76,0x92,0x00,0x04,0x00,0x00]
          vpermi2q 1024(%rdx){1to4}, %ymm22, %ymm26

// CHECK: vpermi2q -1024(%rdx){1to4}, %ymm22, %ymm26
// CHECK:  encoding: [0x62,0x62,0xcd,0x30,0x76,0x52,0x80]
          vpermi2q -1024(%rdx){1to4}, %ymm22, %ymm26

// CHECK: vpermi2q -1032(%rdx){1to4}, %ymm22, %ymm26
// CHECK:  encoding: [0x62,0x62,0xcd,0x30,0x76,0x92,0xf8,0xfb,0xff,0xff]
          vpermi2q -1032(%rdx){1to4}, %ymm22, %ymm26

// CHECK: vpermi2ps %xmm23, %xmm24, %xmm23
// CHECK:  encoding: [0x62,0xa2,0x3d,0x00,0x77,0xff]
          vpermi2ps %xmm23, %xmm24, %xmm23

// CHECK: vpermi2ps %xmm23, %xmm24, %xmm23 {%k3}
// CHECK:  encoding: [0x62,0xa2,0x3d,0x03,0x77,0xff]
          vpermi2ps %xmm23, %xmm24, %xmm23 {%k3}

// CHECK: vpermi2ps %xmm23, %xmm24, %xmm23 {%k3} {z}
// CHECK:  encoding: [0x62,0xa2,0x3d,0x83,0x77,0xff]
          vpermi2ps %xmm23, %xmm24, %xmm23 {%k3} {z}

// CHECK: vpermi2ps (%rcx), %xmm24, %xmm23
// CHECK:  encoding: [0x62,0xe2,0x3d,0x00,0x77,0x39]
          vpermi2ps (%rcx), %xmm24, %xmm23

// CHECK: vpermi2ps 291(%rax,%r14,8), %xmm24, %xmm23
// CHECK:  encoding: [0x62,0xa2,0x3d,0x00,0x77,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vpermi2ps 291(%rax,%r14,8), %xmm24, %xmm23

// CHECK: vpermi2ps (%rcx){1to4}, %xmm24, %xmm23
// CHECK:  encoding: [0x62,0xe2,0x3d,0x10,0x77,0x39]
          vpermi2ps (%rcx){1to4}, %xmm24, %xmm23

// CHECK: vpermi2ps 2032(%rdx), %xmm24, %xmm23
// CHECK:  encoding: [0x62,0xe2,0x3d,0x00,0x77,0x7a,0x7f]
          vpermi2ps 2032(%rdx), %xmm24, %xmm23

// CHECK: vpermi2ps 2048(%rdx), %xmm24, %xmm23
// CHECK:  encoding: [0x62,0xe2,0x3d,0x00,0x77,0xba,0x00,0x08,0x00,0x00]
          vpermi2ps 2048(%rdx), %xmm24, %xmm23

// CHECK: vpermi2ps -2048(%rdx), %xmm24, %xmm23
// CHECK:  encoding: [0x62,0xe2,0x3d,0x00,0x77,0x7a,0x80]
          vpermi2ps -2048(%rdx), %xmm24, %xmm23

// CHECK: vpermi2ps -2064(%rdx), %xmm24, %xmm23
// CHECK:  encoding: [0x62,0xe2,0x3d,0x00,0x77,0xba,0xf0,0xf7,0xff,0xff]
          vpermi2ps -2064(%rdx), %xmm24, %xmm23

// CHECK: vpermi2ps 508(%rdx){1to4}, %xmm24, %xmm23
// CHECK:  encoding: [0x62,0xe2,0x3d,0x10,0x77,0x7a,0x7f]
          vpermi2ps 508(%rdx){1to4}, %xmm24, %xmm23

// CHECK: vpermi2ps 512(%rdx){1to4}, %xmm24, %xmm23
// CHECK:  encoding: [0x62,0xe2,0x3d,0x10,0x77,0xba,0x00,0x02,0x00,0x00]
          vpermi2ps 512(%rdx){1to4}, %xmm24, %xmm23

// CHECK: vpermi2ps -512(%rdx){1to4}, %xmm24, %xmm23
// CHECK:  encoding: [0x62,0xe2,0x3d,0x10,0x77,0x7a,0x80]
          vpermi2ps -512(%rdx){1to4}, %xmm24, %xmm23

// CHECK: vpermi2ps -516(%rdx){1to4}, %xmm24, %xmm23
// CHECK:  encoding: [0x62,0xe2,0x3d,0x10,0x77,0xba,0xfc,0xfd,0xff,0xff]
          vpermi2ps -516(%rdx){1to4}, %xmm24, %xmm23

// CHECK: vpermi2ps %ymm20, %ymm24, %ymm18
// CHECK:  encoding: [0x62,0xa2,0x3d,0x20,0x77,0xd4]
          vpermi2ps %ymm20, %ymm24, %ymm18

// CHECK: vpermi2ps %ymm20, %ymm24, %ymm18 {%k5}
// CHECK:  encoding: [0x62,0xa2,0x3d,0x25,0x77,0xd4]
          vpermi2ps %ymm20, %ymm24, %ymm18 {%k5}

// CHECK: vpermi2ps %ymm20, %ymm24, %ymm18 {%k5} {z}
// CHECK:  encoding: [0x62,0xa2,0x3d,0xa5,0x77,0xd4]
          vpermi2ps %ymm20, %ymm24, %ymm18 {%k5} {z}

// CHECK: vpermi2ps (%rcx), %ymm24, %ymm18
// CHECK:  encoding: [0x62,0xe2,0x3d,0x20,0x77,0x11]
          vpermi2ps (%rcx), %ymm24, %ymm18

// CHECK: vpermi2ps 291(%rax,%r14,8), %ymm24, %ymm18
// CHECK:  encoding: [0x62,0xa2,0x3d,0x20,0x77,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpermi2ps 291(%rax,%r14,8), %ymm24, %ymm18

// CHECK: vpermi2ps (%rcx){1to8}, %ymm24, %ymm18
// CHECK:  encoding: [0x62,0xe2,0x3d,0x30,0x77,0x11]
          vpermi2ps (%rcx){1to8}, %ymm24, %ymm18

// CHECK: vpermi2ps 4064(%rdx), %ymm24, %ymm18
// CHECK:  encoding: [0x62,0xe2,0x3d,0x20,0x77,0x52,0x7f]
          vpermi2ps 4064(%rdx), %ymm24, %ymm18

// CHECK: vpermi2ps 4096(%rdx), %ymm24, %ymm18
// CHECK:  encoding: [0x62,0xe2,0x3d,0x20,0x77,0x92,0x00,0x10,0x00,0x00]
          vpermi2ps 4096(%rdx), %ymm24, %ymm18

// CHECK: vpermi2ps -4096(%rdx), %ymm24, %ymm18
// CHECK:  encoding: [0x62,0xe2,0x3d,0x20,0x77,0x52,0x80]
          vpermi2ps -4096(%rdx), %ymm24, %ymm18

// CHECK: vpermi2ps -4128(%rdx), %ymm24, %ymm18
// CHECK:  encoding: [0x62,0xe2,0x3d,0x20,0x77,0x92,0xe0,0xef,0xff,0xff]
          vpermi2ps -4128(%rdx), %ymm24, %ymm18

// CHECK: vpermi2ps 508(%rdx){1to8}, %ymm24, %ymm18
// CHECK:  encoding: [0x62,0xe2,0x3d,0x30,0x77,0x52,0x7f]
          vpermi2ps 508(%rdx){1to8}, %ymm24, %ymm18

// CHECK: vpermi2ps 512(%rdx){1to8}, %ymm24, %ymm18
// CHECK:  encoding: [0x62,0xe2,0x3d,0x30,0x77,0x92,0x00,0x02,0x00,0x00]
          vpermi2ps 512(%rdx){1to8}, %ymm24, %ymm18

// CHECK: vpermi2ps -512(%rdx){1to8}, %ymm24, %ymm18
// CHECK:  encoding: [0x62,0xe2,0x3d,0x30,0x77,0x52,0x80]
          vpermi2ps -512(%rdx){1to8}, %ymm24, %ymm18

// CHECK: vpermi2ps -516(%rdx){1to8}, %ymm24, %ymm18
// CHECK:  encoding: [0x62,0xe2,0x3d,0x30,0x77,0x92,0xfc,0xfd,0xff,0xff]
          vpermi2ps -516(%rdx){1to8}, %ymm24, %ymm18

// CHECK: vpermi2pd %xmm27, %xmm17, %xmm28
// CHECK:  encoding: [0x62,0x02,0xf5,0x00,0x77,0xe3]
          vpermi2pd %xmm27, %xmm17, %xmm28

// CHECK: vpermi2pd %xmm27, %xmm17, %xmm28 {%k4}
// CHECK:  encoding: [0x62,0x02,0xf5,0x04,0x77,0xe3]
          vpermi2pd %xmm27, %xmm17, %xmm28 {%k4}

// CHECK: vpermi2pd %xmm27, %xmm17, %xmm28 {%k4} {z}
// CHECK:  encoding: [0x62,0x02,0xf5,0x84,0x77,0xe3]
          vpermi2pd %xmm27, %xmm17, %xmm28 {%k4} {z}

// CHECK: vpermi2pd (%rcx), %xmm17, %xmm28
// CHECK:  encoding: [0x62,0x62,0xf5,0x00,0x77,0x21]
          vpermi2pd (%rcx), %xmm17, %xmm28

// CHECK: vpermi2pd 291(%rax,%r14,8), %xmm17, %xmm28
// CHECK:  encoding: [0x62,0x22,0xf5,0x00,0x77,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpermi2pd 291(%rax,%r14,8), %xmm17, %xmm28

// CHECK: vpermi2pd (%rcx){1to2}, %xmm17, %xmm28
// CHECK:  encoding: [0x62,0x62,0xf5,0x10,0x77,0x21]
          vpermi2pd (%rcx){1to2}, %xmm17, %xmm28

// CHECK: vpermi2pd 2032(%rdx), %xmm17, %xmm28
// CHECK:  encoding: [0x62,0x62,0xf5,0x00,0x77,0x62,0x7f]
          vpermi2pd 2032(%rdx), %xmm17, %xmm28

// CHECK: vpermi2pd 2048(%rdx), %xmm17, %xmm28
// CHECK:  encoding: [0x62,0x62,0xf5,0x00,0x77,0xa2,0x00,0x08,0x00,0x00]
          vpermi2pd 2048(%rdx), %xmm17, %xmm28

// CHECK: vpermi2pd -2048(%rdx), %xmm17, %xmm28
// CHECK:  encoding: [0x62,0x62,0xf5,0x00,0x77,0x62,0x80]
          vpermi2pd -2048(%rdx), %xmm17, %xmm28

// CHECK: vpermi2pd -2064(%rdx), %xmm17, %xmm28
// CHECK:  encoding: [0x62,0x62,0xf5,0x00,0x77,0xa2,0xf0,0xf7,0xff,0xff]
          vpermi2pd -2064(%rdx), %xmm17, %xmm28

// CHECK: vpermi2pd 1016(%rdx){1to2}, %xmm17, %xmm28
// CHECK:  encoding: [0x62,0x62,0xf5,0x10,0x77,0x62,0x7f]
          vpermi2pd 1016(%rdx){1to2}, %xmm17, %xmm28

// CHECK: vpermi2pd 1024(%rdx){1to2}, %xmm17, %xmm28
// CHECK:  encoding: [0x62,0x62,0xf5,0x10,0x77,0xa2,0x00,0x04,0x00,0x00]
          vpermi2pd 1024(%rdx){1to2}, %xmm17, %xmm28

// CHECK: vpermi2pd -1024(%rdx){1to2}, %xmm17, %xmm28
// CHECK:  encoding: [0x62,0x62,0xf5,0x10,0x77,0x62,0x80]
          vpermi2pd -1024(%rdx){1to2}, %xmm17, %xmm28

// CHECK: vpermi2pd -1032(%rdx){1to2}, %xmm17, %xmm28
// CHECK:  encoding: [0x62,0x62,0xf5,0x10,0x77,0xa2,0xf8,0xfb,0xff,0xff]
          vpermi2pd -1032(%rdx){1to2}, %xmm17, %xmm28

// CHECK: vpermi2pd %ymm27, %ymm19, %ymm30
// CHECK:  encoding: [0x62,0x02,0xe5,0x20,0x77,0xf3]
          vpermi2pd %ymm27, %ymm19, %ymm30

// CHECK: vpermi2pd %ymm27, %ymm19, %ymm30 {%k3}
// CHECK:  encoding: [0x62,0x02,0xe5,0x23,0x77,0xf3]
          vpermi2pd %ymm27, %ymm19, %ymm30 {%k3}

// CHECK: vpermi2pd %ymm27, %ymm19, %ymm30 {%k3} {z}
// CHECK:  encoding: [0x62,0x02,0xe5,0xa3,0x77,0xf3]
          vpermi2pd %ymm27, %ymm19, %ymm30 {%k3} {z}

// CHECK: vpermi2pd (%rcx), %ymm19, %ymm30
// CHECK:  encoding: [0x62,0x62,0xe5,0x20,0x77,0x31]
          vpermi2pd (%rcx), %ymm19, %ymm30

// CHECK: vpermi2pd 291(%rax,%r14,8), %ymm19, %ymm30
// CHECK:  encoding: [0x62,0x22,0xe5,0x20,0x77,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpermi2pd 291(%rax,%r14,8), %ymm19, %ymm30

// CHECK: vpermi2pd (%rcx){1to4}, %ymm19, %ymm30
// CHECK:  encoding: [0x62,0x62,0xe5,0x30,0x77,0x31]
          vpermi2pd (%rcx){1to4}, %ymm19, %ymm30

// CHECK: vpermi2pd 4064(%rdx), %ymm19, %ymm30
// CHECK:  encoding: [0x62,0x62,0xe5,0x20,0x77,0x72,0x7f]
          vpermi2pd 4064(%rdx), %ymm19, %ymm30

// CHECK: vpermi2pd 4096(%rdx), %ymm19, %ymm30
// CHECK:  encoding: [0x62,0x62,0xe5,0x20,0x77,0xb2,0x00,0x10,0x00,0x00]
          vpermi2pd 4096(%rdx), %ymm19, %ymm30

// CHECK: vpermi2pd -4096(%rdx), %ymm19, %ymm30
// CHECK:  encoding: [0x62,0x62,0xe5,0x20,0x77,0x72,0x80]
          vpermi2pd -4096(%rdx), %ymm19, %ymm30

// CHECK: vpermi2pd -4128(%rdx), %ymm19, %ymm30
// CHECK:  encoding: [0x62,0x62,0xe5,0x20,0x77,0xb2,0xe0,0xef,0xff,0xff]
          vpermi2pd -4128(%rdx), %ymm19, %ymm30

// CHECK: vpermi2pd 1016(%rdx){1to4}, %ymm19, %ymm30
// CHECK:  encoding: [0x62,0x62,0xe5,0x30,0x77,0x72,0x7f]
          vpermi2pd 1016(%rdx){1to4}, %ymm19, %ymm30

// CHECK: vpermi2pd 1024(%rdx){1to4}, %ymm19, %ymm30
// CHECK:  encoding: [0x62,0x62,0xe5,0x30,0x77,0xb2,0x00,0x04,0x00,0x00]
          vpermi2pd 1024(%rdx){1to4}, %ymm19, %ymm30

// CHECK: vpermi2pd -1024(%rdx){1to4}, %ymm19, %ymm30
// CHECK:  encoding: [0x62,0x62,0xe5,0x30,0x77,0x72,0x80]
          vpermi2pd -1024(%rdx){1to4}, %ymm19, %ymm30

// CHECK: vpermi2pd -1032(%rdx){1to4}, %ymm19, %ymm30
// CHECK:  encoding: [0x62,0x62,0xe5,0x30,0x77,0xb2,0xf8,0xfb,0xff,0xff]
          vpermi2pd -1032(%rdx){1to4}, %ymm19, %ymm30

// CHECK: vpermt2d %xmm23, %xmm29, %xmm21
// CHECK:  encoding: [0x62,0xa2,0x15,0x00,0x7e,0xef]
          vpermt2d %xmm23, %xmm29, %xmm21

// CHECK: vpermt2d %xmm23, %xmm29, %xmm21 {%k4}
// CHECK:  encoding: [0x62,0xa2,0x15,0x04,0x7e,0xef]
          vpermt2d %xmm23, %xmm29, %xmm21 {%k4}

// CHECK: vpermt2d %xmm23, %xmm29, %xmm21 {%k4} {z}
// CHECK:  encoding: [0x62,0xa2,0x15,0x84,0x7e,0xef]
          vpermt2d %xmm23, %xmm29, %xmm21 {%k4} {z}

// CHECK: vpermt2d (%rcx), %xmm29, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x15,0x00,0x7e,0x29]
          vpermt2d (%rcx), %xmm29, %xmm21

// CHECK: vpermt2d 291(%rax,%r14,8), %xmm29, %xmm21
// CHECK:  encoding: [0x62,0xa2,0x15,0x00,0x7e,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpermt2d 291(%rax,%r14,8), %xmm29, %xmm21

// CHECK: vpermt2d (%rcx){1to4}, %xmm29, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x15,0x10,0x7e,0x29]
          vpermt2d (%rcx){1to4}, %xmm29, %xmm21

// CHECK: vpermt2d 2032(%rdx), %xmm29, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x15,0x00,0x7e,0x6a,0x7f]
          vpermt2d 2032(%rdx), %xmm29, %xmm21

// CHECK: vpermt2d 2048(%rdx), %xmm29, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x15,0x00,0x7e,0xaa,0x00,0x08,0x00,0x00]
          vpermt2d 2048(%rdx), %xmm29, %xmm21

// CHECK: vpermt2d -2048(%rdx), %xmm29, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x15,0x00,0x7e,0x6a,0x80]
          vpermt2d -2048(%rdx), %xmm29, %xmm21

// CHECK: vpermt2d -2064(%rdx), %xmm29, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x15,0x00,0x7e,0xaa,0xf0,0xf7,0xff,0xff]
          vpermt2d -2064(%rdx), %xmm29, %xmm21

// CHECK: vpermt2d 508(%rdx){1to4}, %xmm29, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x15,0x10,0x7e,0x6a,0x7f]
          vpermt2d 508(%rdx){1to4}, %xmm29, %xmm21

// CHECK: vpermt2d 512(%rdx){1to4}, %xmm29, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x15,0x10,0x7e,0xaa,0x00,0x02,0x00,0x00]
          vpermt2d 512(%rdx){1to4}, %xmm29, %xmm21

// CHECK: vpermt2d -512(%rdx){1to4}, %xmm29, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x15,0x10,0x7e,0x6a,0x80]
          vpermt2d -512(%rdx){1to4}, %xmm29, %xmm21

// CHECK: vpermt2d -516(%rdx){1to4}, %xmm29, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x15,0x10,0x7e,0xaa,0xfc,0xfd,0xff,0xff]
          vpermt2d -516(%rdx){1to4}, %xmm29, %xmm21

// CHECK: vpermt2d %ymm21, %ymm26, %ymm22
// CHECK:  encoding: [0x62,0xa2,0x2d,0x20,0x7e,0xf5]
          vpermt2d %ymm21, %ymm26, %ymm22

// CHECK: vpermt2d %ymm21, %ymm26, %ymm22 {%k2}
// CHECK:  encoding: [0x62,0xa2,0x2d,0x22,0x7e,0xf5]
          vpermt2d %ymm21, %ymm26, %ymm22 {%k2}

// CHECK: vpermt2d %ymm21, %ymm26, %ymm22 {%k2} {z}
// CHECK:  encoding: [0x62,0xa2,0x2d,0xa2,0x7e,0xf5]
          vpermt2d %ymm21, %ymm26, %ymm22 {%k2} {z}

// CHECK: vpermt2d (%rcx), %ymm26, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x2d,0x20,0x7e,0x31]
          vpermt2d (%rcx), %ymm26, %ymm22

// CHECK: vpermt2d 291(%rax,%r14,8), %ymm26, %ymm22
// CHECK:  encoding: [0x62,0xa2,0x2d,0x20,0x7e,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpermt2d 291(%rax,%r14,8), %ymm26, %ymm22

// CHECK: vpermt2d (%rcx){1to8}, %ymm26, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x2d,0x30,0x7e,0x31]
          vpermt2d (%rcx){1to8}, %ymm26, %ymm22

// CHECK: vpermt2d 4064(%rdx), %ymm26, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x2d,0x20,0x7e,0x72,0x7f]
          vpermt2d 4064(%rdx), %ymm26, %ymm22

// CHECK: vpermt2d 4096(%rdx), %ymm26, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x2d,0x20,0x7e,0xb2,0x00,0x10,0x00,0x00]
          vpermt2d 4096(%rdx), %ymm26, %ymm22

// CHECK: vpermt2d -4096(%rdx), %ymm26, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x2d,0x20,0x7e,0x72,0x80]
          vpermt2d -4096(%rdx), %ymm26, %ymm22

// CHECK: vpermt2d -4128(%rdx), %ymm26, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x2d,0x20,0x7e,0xb2,0xe0,0xef,0xff,0xff]
          vpermt2d -4128(%rdx), %ymm26, %ymm22

// CHECK: vpermt2d 508(%rdx){1to8}, %ymm26, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x2d,0x30,0x7e,0x72,0x7f]
          vpermt2d 508(%rdx){1to8}, %ymm26, %ymm22

// CHECK: vpermt2d 512(%rdx){1to8}, %ymm26, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x2d,0x30,0x7e,0xb2,0x00,0x02,0x00,0x00]
          vpermt2d 512(%rdx){1to8}, %ymm26, %ymm22

// CHECK: vpermt2d -512(%rdx){1to8}, %ymm26, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x2d,0x30,0x7e,0x72,0x80]
          vpermt2d -512(%rdx){1to8}, %ymm26, %ymm22

// CHECK: vpermt2d -516(%rdx){1to8}, %ymm26, %ymm22
// CHECK:  encoding: [0x62,0xe2,0x2d,0x30,0x7e,0xb2,0xfc,0xfd,0xff,0xff]
          vpermt2d -516(%rdx){1to8}, %ymm26, %ymm22

// CHECK: vpermt2q %xmm18, %xmm25, %xmm22
// CHECK:  encoding: [0x62,0xa2,0xb5,0x00,0x7e,0xf2]
          vpermt2q %xmm18, %xmm25, %xmm22

// CHECK: vpermt2q %xmm18, %xmm25, %xmm22 {%k1}
// CHECK:  encoding: [0x62,0xa2,0xb5,0x01,0x7e,0xf2]
          vpermt2q %xmm18, %xmm25, %xmm22 {%k1}

// CHECK: vpermt2q %xmm18, %xmm25, %xmm22 {%k1} {z}
// CHECK:  encoding: [0x62,0xa2,0xb5,0x81,0x7e,0xf2]
          vpermt2q %xmm18, %xmm25, %xmm22 {%k1} {z}

// CHECK: vpermt2q (%rcx), %xmm25, %xmm22
// CHECK:  encoding: [0x62,0xe2,0xb5,0x00,0x7e,0x31]
          vpermt2q (%rcx), %xmm25, %xmm22

// CHECK: vpermt2q 291(%rax,%r14,8), %xmm25, %xmm22
// CHECK:  encoding: [0x62,0xa2,0xb5,0x00,0x7e,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpermt2q 291(%rax,%r14,8), %xmm25, %xmm22

// CHECK: vpermt2q (%rcx){1to2}, %xmm25, %xmm22
// CHECK:  encoding: [0x62,0xe2,0xb5,0x10,0x7e,0x31]
          vpermt2q (%rcx){1to2}, %xmm25, %xmm22

// CHECK: vpermt2q 2032(%rdx), %xmm25, %xmm22
// CHECK:  encoding: [0x62,0xe2,0xb5,0x00,0x7e,0x72,0x7f]
          vpermt2q 2032(%rdx), %xmm25, %xmm22

// CHECK: vpermt2q 2048(%rdx), %xmm25, %xmm22
// CHECK:  encoding: [0x62,0xe2,0xb5,0x00,0x7e,0xb2,0x00,0x08,0x00,0x00]
          vpermt2q 2048(%rdx), %xmm25, %xmm22

// CHECK: vpermt2q -2048(%rdx), %xmm25, %xmm22
// CHECK:  encoding: [0x62,0xe2,0xb5,0x00,0x7e,0x72,0x80]
          vpermt2q -2048(%rdx), %xmm25, %xmm22

// CHECK: vpermt2q -2064(%rdx), %xmm25, %xmm22
// CHECK:  encoding: [0x62,0xe2,0xb5,0x00,0x7e,0xb2,0xf0,0xf7,0xff,0xff]
          vpermt2q -2064(%rdx), %xmm25, %xmm22

// CHECK: vpermt2q 1016(%rdx){1to2}, %xmm25, %xmm22
// CHECK:  encoding: [0x62,0xe2,0xb5,0x10,0x7e,0x72,0x7f]
          vpermt2q 1016(%rdx){1to2}, %xmm25, %xmm22

// CHECK: vpermt2q 1024(%rdx){1to2}, %xmm25, %xmm22
// CHECK:  encoding: [0x62,0xe2,0xb5,0x10,0x7e,0xb2,0x00,0x04,0x00,0x00]
          vpermt2q 1024(%rdx){1to2}, %xmm25, %xmm22

// CHECK: vpermt2q -1024(%rdx){1to2}, %xmm25, %xmm22
// CHECK:  encoding: [0x62,0xe2,0xb5,0x10,0x7e,0x72,0x80]
          vpermt2q -1024(%rdx){1to2}, %xmm25, %xmm22

// CHECK: vpermt2q -1032(%rdx){1to2}, %xmm25, %xmm22
// CHECK:  encoding: [0x62,0xe2,0xb5,0x10,0x7e,0xb2,0xf8,0xfb,0xff,0xff]
          vpermt2q -1032(%rdx){1to2}, %xmm25, %xmm22

// CHECK: vpermt2q %ymm20, %ymm17, %ymm18
// CHECK:  encoding: [0x62,0xa2,0xf5,0x20,0x7e,0xd4]
          vpermt2q %ymm20, %ymm17, %ymm18

// CHECK: vpermt2q %ymm20, %ymm17, %ymm18 {%k6}
// CHECK:  encoding: [0x62,0xa2,0xf5,0x26,0x7e,0xd4]
          vpermt2q %ymm20, %ymm17, %ymm18 {%k6}

// CHECK: vpermt2q %ymm20, %ymm17, %ymm18 {%k6} {z}
// CHECK:  encoding: [0x62,0xa2,0xf5,0xa6,0x7e,0xd4]
          vpermt2q %ymm20, %ymm17, %ymm18 {%k6} {z}

// CHECK: vpermt2q (%rcx), %ymm17, %ymm18
// CHECK:  encoding: [0x62,0xe2,0xf5,0x20,0x7e,0x11]
          vpermt2q (%rcx), %ymm17, %ymm18

// CHECK: vpermt2q 291(%rax,%r14,8), %ymm17, %ymm18
// CHECK:  encoding: [0x62,0xa2,0xf5,0x20,0x7e,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpermt2q 291(%rax,%r14,8), %ymm17, %ymm18

// CHECK: vpermt2q (%rcx){1to4}, %ymm17, %ymm18
// CHECK:  encoding: [0x62,0xe2,0xf5,0x30,0x7e,0x11]
          vpermt2q (%rcx){1to4}, %ymm17, %ymm18

// CHECK: vpermt2q 4064(%rdx), %ymm17, %ymm18
// CHECK:  encoding: [0x62,0xe2,0xf5,0x20,0x7e,0x52,0x7f]
          vpermt2q 4064(%rdx), %ymm17, %ymm18

// CHECK: vpermt2q 4096(%rdx), %ymm17, %ymm18
// CHECK:  encoding: [0x62,0xe2,0xf5,0x20,0x7e,0x92,0x00,0x10,0x00,0x00]
          vpermt2q 4096(%rdx), %ymm17, %ymm18

// CHECK: vpermt2q -4096(%rdx), %ymm17, %ymm18
// CHECK:  encoding: [0x62,0xe2,0xf5,0x20,0x7e,0x52,0x80]
          vpermt2q -4096(%rdx), %ymm17, %ymm18

// CHECK: vpermt2q -4128(%rdx), %ymm17, %ymm18
// CHECK:  encoding: [0x62,0xe2,0xf5,0x20,0x7e,0x92,0xe0,0xef,0xff,0xff]
          vpermt2q -4128(%rdx), %ymm17, %ymm18

// CHECK: vpermt2q 1016(%rdx){1to4}, %ymm17, %ymm18
// CHECK:  encoding: [0x62,0xe2,0xf5,0x30,0x7e,0x52,0x7f]
          vpermt2q 1016(%rdx){1to4}, %ymm17, %ymm18

// CHECK: vpermt2q 1024(%rdx){1to4}, %ymm17, %ymm18
// CHECK:  encoding: [0x62,0xe2,0xf5,0x30,0x7e,0x92,0x00,0x04,0x00,0x00]
          vpermt2q 1024(%rdx){1to4}, %ymm17, %ymm18

// CHECK: vpermt2q -1024(%rdx){1to4}, %ymm17, %ymm18
// CHECK:  encoding: [0x62,0xe2,0xf5,0x30,0x7e,0x52,0x80]
          vpermt2q -1024(%rdx){1to4}, %ymm17, %ymm18

// CHECK: vpermt2q -1032(%rdx){1to4}, %ymm17, %ymm18
// CHECK:  encoding: [0x62,0xe2,0xf5,0x30,0x7e,0x92,0xf8,0xfb,0xff,0xff]
          vpermt2q -1032(%rdx){1to4}, %ymm17, %ymm18

// CHECK: vpermt2ps %xmm18, %xmm23, %xmm19
// CHECK:  encoding: [0x62,0xa2,0x45,0x00,0x7f,0xda]
          vpermt2ps %xmm18, %xmm23, %xmm19

// CHECK: vpermt2ps %xmm18, %xmm23, %xmm19 {%k1}
// CHECK:  encoding: [0x62,0xa2,0x45,0x01,0x7f,0xda]
          vpermt2ps %xmm18, %xmm23, %xmm19 {%k1}

// CHECK: vpermt2ps %xmm18, %xmm23, %xmm19 {%k1} {z}
// CHECK:  encoding: [0x62,0xa2,0x45,0x81,0x7f,0xda]
          vpermt2ps %xmm18, %xmm23, %xmm19 {%k1} {z}

// CHECK: vpermt2ps (%rcx), %xmm23, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x45,0x00,0x7f,0x19]
          vpermt2ps (%rcx), %xmm23, %xmm19

// CHECK: vpermt2ps 291(%rax,%r14,8), %xmm23, %xmm19
// CHECK:  encoding: [0x62,0xa2,0x45,0x00,0x7f,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpermt2ps 291(%rax,%r14,8), %xmm23, %xmm19

// CHECK: vpermt2ps (%rcx){1to4}, %xmm23, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x45,0x10,0x7f,0x19]
          vpermt2ps (%rcx){1to4}, %xmm23, %xmm19

// CHECK: vpermt2ps 2032(%rdx), %xmm23, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x45,0x00,0x7f,0x5a,0x7f]
          vpermt2ps 2032(%rdx), %xmm23, %xmm19

// CHECK: vpermt2ps 2048(%rdx), %xmm23, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x45,0x00,0x7f,0x9a,0x00,0x08,0x00,0x00]
          vpermt2ps 2048(%rdx), %xmm23, %xmm19

// CHECK: vpermt2ps -2048(%rdx), %xmm23, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x45,0x00,0x7f,0x5a,0x80]
          vpermt2ps -2048(%rdx), %xmm23, %xmm19

// CHECK: vpermt2ps -2064(%rdx), %xmm23, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x45,0x00,0x7f,0x9a,0xf0,0xf7,0xff,0xff]
          vpermt2ps -2064(%rdx), %xmm23, %xmm19

// CHECK: vpermt2ps 508(%rdx){1to4}, %xmm23, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x45,0x10,0x7f,0x5a,0x7f]
          vpermt2ps 508(%rdx){1to4}, %xmm23, %xmm19

// CHECK: vpermt2ps 512(%rdx){1to4}, %xmm23, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x45,0x10,0x7f,0x9a,0x00,0x02,0x00,0x00]
          vpermt2ps 512(%rdx){1to4}, %xmm23, %xmm19

// CHECK: vpermt2ps -512(%rdx){1to4}, %xmm23, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x45,0x10,0x7f,0x5a,0x80]
          vpermt2ps -512(%rdx){1to4}, %xmm23, %xmm19

// CHECK: vpermt2ps -516(%rdx){1to4}, %xmm23, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x45,0x10,0x7f,0x9a,0xfc,0xfd,0xff,0xff]
          vpermt2ps -516(%rdx){1to4}, %xmm23, %xmm19

// CHECK: vpermt2ps %ymm21, %ymm27, %ymm26
// CHECK:  encoding: [0x62,0x22,0x25,0x20,0x7f,0xd5]
          vpermt2ps %ymm21, %ymm27, %ymm26

// CHECK: vpermt2ps %ymm21, %ymm27, %ymm26 {%k3}
// CHECK:  encoding: [0x62,0x22,0x25,0x23,0x7f,0xd5]
          vpermt2ps %ymm21, %ymm27, %ymm26 {%k3}

// CHECK: vpermt2ps %ymm21, %ymm27, %ymm26 {%k3} {z}
// CHECK:  encoding: [0x62,0x22,0x25,0xa3,0x7f,0xd5]
          vpermt2ps %ymm21, %ymm27, %ymm26 {%k3} {z}

// CHECK: vpermt2ps (%rcx), %ymm27, %ymm26
// CHECK:  encoding: [0x62,0x62,0x25,0x20,0x7f,0x11]
          vpermt2ps (%rcx), %ymm27, %ymm26

// CHECK: vpermt2ps 291(%rax,%r14,8), %ymm27, %ymm26
// CHECK:  encoding: [0x62,0x22,0x25,0x20,0x7f,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpermt2ps 291(%rax,%r14,8), %ymm27, %ymm26

// CHECK: vpermt2ps (%rcx){1to8}, %ymm27, %ymm26
// CHECK:  encoding: [0x62,0x62,0x25,0x30,0x7f,0x11]
          vpermt2ps (%rcx){1to8}, %ymm27, %ymm26

// CHECK: vpermt2ps 4064(%rdx), %ymm27, %ymm26
// CHECK:  encoding: [0x62,0x62,0x25,0x20,0x7f,0x52,0x7f]
          vpermt2ps 4064(%rdx), %ymm27, %ymm26

// CHECK: vpermt2ps 4096(%rdx), %ymm27, %ymm26
// CHECK:  encoding: [0x62,0x62,0x25,0x20,0x7f,0x92,0x00,0x10,0x00,0x00]
          vpermt2ps 4096(%rdx), %ymm27, %ymm26

// CHECK: vpermt2ps -4096(%rdx), %ymm27, %ymm26
// CHECK:  encoding: [0x62,0x62,0x25,0x20,0x7f,0x52,0x80]
          vpermt2ps -4096(%rdx), %ymm27, %ymm26

// CHECK: vpermt2ps -4128(%rdx), %ymm27, %ymm26
// CHECK:  encoding: [0x62,0x62,0x25,0x20,0x7f,0x92,0xe0,0xef,0xff,0xff]
          vpermt2ps -4128(%rdx), %ymm27, %ymm26

// CHECK: vpermt2ps 508(%rdx){1to8}, %ymm27, %ymm26
// CHECK:  encoding: [0x62,0x62,0x25,0x30,0x7f,0x52,0x7f]
          vpermt2ps 508(%rdx){1to8}, %ymm27, %ymm26

// CHECK: vpermt2ps 512(%rdx){1to8}, %ymm27, %ymm26
// CHECK:  encoding: [0x62,0x62,0x25,0x30,0x7f,0x92,0x00,0x02,0x00,0x00]
          vpermt2ps 512(%rdx){1to8}, %ymm27, %ymm26

// CHECK: vpermt2ps -512(%rdx){1to8}, %ymm27, %ymm26
// CHECK:  encoding: [0x62,0x62,0x25,0x30,0x7f,0x52,0x80]
          vpermt2ps -512(%rdx){1to8}, %ymm27, %ymm26

// CHECK: vpermt2ps -516(%rdx){1to8}, %ymm27, %ymm26
// CHECK:  encoding: [0x62,0x62,0x25,0x30,0x7f,0x92,0xfc,0xfd,0xff,0xff]
          vpermt2ps -516(%rdx){1to8}, %ymm27, %ymm26

// CHECK: vpermt2pd %xmm17, %xmm21, %xmm26
// CHECK:  encoding: [0x62,0x22,0xd5,0x00,0x7f,0xd1]
          vpermt2pd %xmm17, %xmm21, %xmm26

// CHECK: vpermt2pd %xmm17, %xmm21, %xmm26 {%k5}
// CHECK:  encoding: [0x62,0x22,0xd5,0x05,0x7f,0xd1]
          vpermt2pd %xmm17, %xmm21, %xmm26 {%k5}

// CHECK: vpermt2pd %xmm17, %xmm21, %xmm26 {%k5} {z}
// CHECK:  encoding: [0x62,0x22,0xd5,0x85,0x7f,0xd1]
          vpermt2pd %xmm17, %xmm21, %xmm26 {%k5} {z}

// CHECK: vpermt2pd (%rcx), %xmm21, %xmm26
// CHECK:  encoding: [0x62,0x62,0xd5,0x00,0x7f,0x11]
          vpermt2pd (%rcx), %xmm21, %xmm26

// CHECK: vpermt2pd 291(%rax,%r14,8), %xmm21, %xmm26
// CHECK:  encoding: [0x62,0x22,0xd5,0x00,0x7f,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpermt2pd 291(%rax,%r14,8), %xmm21, %xmm26

// CHECK: vpermt2pd (%rcx){1to2}, %xmm21, %xmm26
// CHECK:  encoding: [0x62,0x62,0xd5,0x10,0x7f,0x11]
          vpermt2pd (%rcx){1to2}, %xmm21, %xmm26

// CHECK: vpermt2pd 2032(%rdx), %xmm21, %xmm26
// CHECK:  encoding: [0x62,0x62,0xd5,0x00,0x7f,0x52,0x7f]
          vpermt2pd 2032(%rdx), %xmm21, %xmm26

// CHECK: vpermt2pd 2048(%rdx), %xmm21, %xmm26
// CHECK:  encoding: [0x62,0x62,0xd5,0x00,0x7f,0x92,0x00,0x08,0x00,0x00]
          vpermt2pd 2048(%rdx), %xmm21, %xmm26

// CHECK: vpermt2pd -2048(%rdx), %xmm21, %xmm26
// CHECK:  encoding: [0x62,0x62,0xd5,0x00,0x7f,0x52,0x80]
          vpermt2pd -2048(%rdx), %xmm21, %xmm26

// CHECK: vpermt2pd -2064(%rdx), %xmm21, %xmm26
// CHECK:  encoding: [0x62,0x62,0xd5,0x00,0x7f,0x92,0xf0,0xf7,0xff,0xff]
          vpermt2pd -2064(%rdx), %xmm21, %xmm26

// CHECK: vpermt2pd 1016(%rdx){1to2}, %xmm21, %xmm26
// CHECK:  encoding: [0x62,0x62,0xd5,0x10,0x7f,0x52,0x7f]
          vpermt2pd 1016(%rdx){1to2}, %xmm21, %xmm26

// CHECK: vpermt2pd 1024(%rdx){1to2}, %xmm21, %xmm26
// CHECK:  encoding: [0x62,0x62,0xd5,0x10,0x7f,0x92,0x00,0x04,0x00,0x00]
          vpermt2pd 1024(%rdx){1to2}, %xmm21, %xmm26

// CHECK: vpermt2pd -1024(%rdx){1to2}, %xmm21, %xmm26
// CHECK:  encoding: [0x62,0x62,0xd5,0x10,0x7f,0x52,0x80]
          vpermt2pd -1024(%rdx){1to2}, %xmm21, %xmm26

// CHECK: vpermt2pd -1032(%rdx){1to2}, %xmm21, %xmm26
// CHECK:  encoding: [0x62,0x62,0xd5,0x10,0x7f,0x92,0xf8,0xfb,0xff,0xff]
          vpermt2pd -1032(%rdx){1to2}, %xmm21, %xmm26

// CHECK: vpermt2pd %ymm17, %ymm23, %ymm17
// CHECK:  encoding: [0x62,0xa2,0xc5,0x20,0x7f,0xc9]
          vpermt2pd %ymm17, %ymm23, %ymm17

// CHECK: vpermt2pd %ymm17, %ymm23, %ymm17 {%k1}
// CHECK:  encoding: [0x62,0xa2,0xc5,0x21,0x7f,0xc9]
          vpermt2pd %ymm17, %ymm23, %ymm17 {%k1}

// CHECK: vpermt2pd %ymm17, %ymm23, %ymm17 {%k1} {z}
// CHECK:  encoding: [0x62,0xa2,0xc5,0xa1,0x7f,0xc9]
          vpermt2pd %ymm17, %ymm23, %ymm17 {%k1} {z}

// CHECK: vpermt2pd (%rcx), %ymm23, %ymm17
// CHECK:  encoding: [0x62,0xe2,0xc5,0x20,0x7f,0x09]
          vpermt2pd (%rcx), %ymm23, %ymm17

// CHECK: vpermt2pd 291(%rax,%r14,8), %ymm23, %ymm17
// CHECK:  encoding: [0x62,0xa2,0xc5,0x20,0x7f,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpermt2pd 291(%rax,%r14,8), %ymm23, %ymm17

// CHECK: vpermt2pd (%rcx){1to4}, %ymm23, %ymm17
// CHECK:  encoding: [0x62,0xe2,0xc5,0x30,0x7f,0x09]
          vpermt2pd (%rcx){1to4}, %ymm23, %ymm17

// CHECK: vpermt2pd 4064(%rdx), %ymm23, %ymm17
// CHECK:  encoding: [0x62,0xe2,0xc5,0x20,0x7f,0x4a,0x7f]
          vpermt2pd 4064(%rdx), %ymm23, %ymm17

// CHECK: vpermt2pd 4096(%rdx), %ymm23, %ymm17
// CHECK:  encoding: [0x62,0xe2,0xc5,0x20,0x7f,0x8a,0x00,0x10,0x00,0x00]
          vpermt2pd 4096(%rdx), %ymm23, %ymm17

// CHECK: vpermt2pd -4096(%rdx), %ymm23, %ymm17
// CHECK:  encoding: [0x62,0xe2,0xc5,0x20,0x7f,0x4a,0x80]
          vpermt2pd -4096(%rdx), %ymm23, %ymm17

// CHECK: vpermt2pd -4128(%rdx), %ymm23, %ymm17
// CHECK:  encoding: [0x62,0xe2,0xc5,0x20,0x7f,0x8a,0xe0,0xef,0xff,0xff]
          vpermt2pd -4128(%rdx), %ymm23, %ymm17

// CHECK: vpermt2pd 1016(%rdx){1to4}, %ymm23, %ymm17
// CHECK:  encoding: [0x62,0xe2,0xc5,0x30,0x7f,0x4a,0x7f]
          vpermt2pd 1016(%rdx){1to4}, %ymm23, %ymm17

// CHECK: vpermt2pd 1024(%rdx){1to4}, %ymm23, %ymm17
// CHECK:  encoding: [0x62,0xe2,0xc5,0x30,0x7f,0x8a,0x00,0x04,0x00,0x00]
          vpermt2pd 1024(%rdx){1to4}, %ymm23, %ymm17

// CHECK: vpermt2pd -1024(%rdx){1to4}, %ymm23, %ymm17
// CHECK:  encoding: [0x62,0xe2,0xc5,0x30,0x7f,0x4a,0x80]
          vpermt2pd -1024(%rdx){1to4}, %ymm23, %ymm17

// CHECK: vpermt2pd -1032(%rdx){1to4}, %ymm23, %ymm17
// CHECK:  encoding: [0x62,0xe2,0xc5,0x30,0x7f,0x8a,0xf8,0xfb,0xff,0xff]
          vpermt2pd -1032(%rdx){1to4}, %ymm23, %ymm17

// CHECK: vscalefpd %xmm17, %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x22,0xf5,0x00,0x2c,0xc1]
          vscalefpd %xmm17, %xmm17, %xmm24

// CHECK: vscalefpd %xmm17, %xmm17, %xmm24 {%k2}
// CHECK:  encoding: [0x62,0x22,0xf5,0x02,0x2c,0xc1]
          vscalefpd %xmm17, %xmm17, %xmm24 {%k2}

// CHECK: vscalefpd %xmm17, %xmm17, %xmm24 {%k2} {z}
// CHECK:  encoding: [0x62,0x22,0xf5,0x82,0x2c,0xc1]
          vscalefpd %xmm17, %xmm17, %xmm24 {%k2} {z}

// CHECK: vscalefpd (%rcx), %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x62,0xf5,0x00,0x2c,0x01]
          vscalefpd (%rcx), %xmm17, %xmm24

// CHECK: vscalefpd 291(%rax,%r14,8), %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x22,0xf5,0x00,0x2c,0x84,0xf0,0x23,0x01,0x00,0x00]
          vscalefpd 291(%rax,%r14,8), %xmm17, %xmm24

// CHECK: vscalefpd (%rcx){1to2}, %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x62,0xf5,0x10,0x2c,0x01]
          vscalefpd (%rcx){1to2}, %xmm17, %xmm24

// CHECK: vscalefpd 2032(%rdx), %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x62,0xf5,0x00,0x2c,0x42,0x7f]
          vscalefpd 2032(%rdx), %xmm17, %xmm24

// CHECK: vscalefpd 2048(%rdx), %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x62,0xf5,0x00,0x2c,0x82,0x00,0x08,0x00,0x00]
          vscalefpd 2048(%rdx), %xmm17, %xmm24

// CHECK: vscalefpd -2048(%rdx), %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x62,0xf5,0x00,0x2c,0x42,0x80]
          vscalefpd -2048(%rdx), %xmm17, %xmm24

// CHECK: vscalefpd -2064(%rdx), %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x62,0xf5,0x00,0x2c,0x82,0xf0,0xf7,0xff,0xff]
          vscalefpd -2064(%rdx), %xmm17, %xmm24

// CHECK: vscalefpd 1016(%rdx){1to2}, %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x62,0xf5,0x10,0x2c,0x42,0x7f]
          vscalefpd 1016(%rdx){1to2}, %xmm17, %xmm24

// CHECK: vscalefpd 1024(%rdx){1to2}, %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x62,0xf5,0x10,0x2c,0x82,0x00,0x04,0x00,0x00]
          vscalefpd 1024(%rdx){1to2}, %xmm17, %xmm24

// CHECK: vscalefpd -1024(%rdx){1to2}, %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x62,0xf5,0x10,0x2c,0x42,0x80]
          vscalefpd -1024(%rdx){1to2}, %xmm17, %xmm24

// CHECK: vscalefpd -1032(%rdx){1to2}, %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x62,0xf5,0x10,0x2c,0x82,0xf8,0xfb,0xff,0xff]
          vscalefpd -1032(%rdx){1to2}, %xmm17, %xmm24

// CHECK: vscalefpd %ymm26, %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x02,0xdd,0x20,0x2c,0xea]
          vscalefpd %ymm26, %ymm20, %ymm29

// CHECK: vscalefpd %ymm26, %ymm20, %ymm29 {%k2}
// CHECK:  encoding: [0x62,0x02,0xdd,0x22,0x2c,0xea]
          vscalefpd %ymm26, %ymm20, %ymm29 {%k2}

// CHECK: vscalefpd %ymm26, %ymm20, %ymm29 {%k2} {z}
// CHECK:  encoding: [0x62,0x02,0xdd,0xa2,0x2c,0xea]
          vscalefpd %ymm26, %ymm20, %ymm29 {%k2} {z}

// CHECK: vscalefpd (%rcx), %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x62,0xdd,0x20,0x2c,0x29]
          vscalefpd (%rcx), %ymm20, %ymm29

// CHECK: vscalefpd 291(%rax,%r14,8), %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x22,0xdd,0x20,0x2c,0xac,0xf0,0x23,0x01,0x00,0x00]
          vscalefpd 291(%rax,%r14,8), %ymm20, %ymm29

// CHECK: vscalefpd (%rcx){1to4}, %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x62,0xdd,0x30,0x2c,0x29]
          vscalefpd (%rcx){1to4}, %ymm20, %ymm29

// CHECK: vscalefpd 4064(%rdx), %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x62,0xdd,0x20,0x2c,0x6a,0x7f]
          vscalefpd 4064(%rdx), %ymm20, %ymm29

// CHECK: vscalefpd 4096(%rdx), %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x62,0xdd,0x20,0x2c,0xaa,0x00,0x10,0x00,0x00]
          vscalefpd 4096(%rdx), %ymm20, %ymm29

// CHECK: vscalefpd -4096(%rdx), %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x62,0xdd,0x20,0x2c,0x6a,0x80]
          vscalefpd -4096(%rdx), %ymm20, %ymm29

// CHECK: vscalefpd -4128(%rdx), %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x62,0xdd,0x20,0x2c,0xaa,0xe0,0xef,0xff,0xff]
          vscalefpd -4128(%rdx), %ymm20, %ymm29

// CHECK: vscalefpd 1016(%rdx){1to4}, %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x62,0xdd,0x30,0x2c,0x6a,0x7f]
          vscalefpd 1016(%rdx){1to4}, %ymm20, %ymm29

// CHECK: vscalefpd 1024(%rdx){1to4}, %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x62,0xdd,0x30,0x2c,0xaa,0x00,0x04,0x00,0x00]
          vscalefpd 1024(%rdx){1to4}, %ymm20, %ymm29

// CHECK: vscalefpd -1024(%rdx){1to4}, %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x62,0xdd,0x30,0x2c,0x6a,0x80]
          vscalefpd -1024(%rdx){1to4}, %ymm20, %ymm29

// CHECK: vscalefpd -1032(%rdx){1to4}, %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x62,0xdd,0x30,0x2c,0xaa,0xf8,0xfb,0xff,0xff]
          vscalefpd -1032(%rdx){1to4}, %ymm20, %ymm29

// CHECK: vscalefps %xmm22, %xmm27, %xmm19
// CHECK:  encoding: [0x62,0xa2,0x25,0x00,0x2c,0xde]
          vscalefps %xmm22, %xmm27, %xmm19

// CHECK: vscalefps %xmm22, %xmm27, %xmm19 {%k4}
// CHECK:  encoding: [0x62,0xa2,0x25,0x04,0x2c,0xde]
          vscalefps %xmm22, %xmm27, %xmm19 {%k4}

// CHECK: vscalefps %xmm22, %xmm27, %xmm19 {%k4} {z}
// CHECK:  encoding: [0x62,0xa2,0x25,0x84,0x2c,0xde]
          vscalefps %xmm22, %xmm27, %xmm19 {%k4} {z}

// CHECK: vscalefps (%rcx), %xmm27, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x25,0x00,0x2c,0x19]
          vscalefps (%rcx), %xmm27, %xmm19

// CHECK: vscalefps 291(%rax,%r14,8), %xmm27, %xmm19
// CHECK:  encoding: [0x62,0xa2,0x25,0x00,0x2c,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vscalefps 291(%rax,%r14,8), %xmm27, %xmm19

// CHECK: vscalefps (%rcx){1to4}, %xmm27, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x25,0x10,0x2c,0x19]
          vscalefps (%rcx){1to4}, %xmm27, %xmm19

// CHECK: vscalefps 2032(%rdx), %xmm27, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x25,0x00,0x2c,0x5a,0x7f]
          vscalefps 2032(%rdx), %xmm27, %xmm19

// CHECK: vscalefps 2048(%rdx), %xmm27, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x25,0x00,0x2c,0x9a,0x00,0x08,0x00,0x00]
          vscalefps 2048(%rdx), %xmm27, %xmm19

// CHECK: vscalefps -2048(%rdx), %xmm27, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x25,0x00,0x2c,0x5a,0x80]
          vscalefps -2048(%rdx), %xmm27, %xmm19

// CHECK: vscalefps -2064(%rdx), %xmm27, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x25,0x00,0x2c,0x9a,0xf0,0xf7,0xff,0xff]
          vscalefps -2064(%rdx), %xmm27, %xmm19

// CHECK: vscalefps 508(%rdx){1to4}, %xmm27, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x25,0x10,0x2c,0x5a,0x7f]
          vscalefps 508(%rdx){1to4}, %xmm27, %xmm19

// CHECK: vscalefps 512(%rdx){1to4}, %xmm27, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x25,0x10,0x2c,0x9a,0x00,0x02,0x00,0x00]
          vscalefps 512(%rdx){1to4}, %xmm27, %xmm19

// CHECK: vscalefps -512(%rdx){1to4}, %xmm27, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x25,0x10,0x2c,0x5a,0x80]
          vscalefps -512(%rdx){1to4}, %xmm27, %xmm19

// CHECK: vscalefps -516(%rdx){1to4}, %xmm27, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x25,0x10,0x2c,0x9a,0xfc,0xfd,0xff,0xff]
          vscalefps -516(%rdx){1to4}, %xmm27, %xmm19

// CHECK: vscalefps %ymm23, %ymm22, %ymm25
// CHECK:  encoding: [0x62,0x22,0x4d,0x20,0x2c,0xcf]
          vscalefps %ymm23, %ymm22, %ymm25

// CHECK: vscalefps %ymm23, %ymm22, %ymm25 {%k4}
// CHECK:  encoding: [0x62,0x22,0x4d,0x24,0x2c,0xcf]
          vscalefps %ymm23, %ymm22, %ymm25 {%k4}

// CHECK: vscalefps %ymm23, %ymm22, %ymm25 {%k4} {z}
// CHECK:  encoding: [0x62,0x22,0x4d,0xa4,0x2c,0xcf]
          vscalefps %ymm23, %ymm22, %ymm25 {%k4} {z}

// CHECK: vscalefps (%rcx), %ymm22, %ymm25
// CHECK:  encoding: [0x62,0x62,0x4d,0x20,0x2c,0x09]
          vscalefps (%rcx), %ymm22, %ymm25

// CHECK: vscalefps 291(%rax,%r14,8), %ymm22, %ymm25
// CHECK:  encoding: [0x62,0x22,0x4d,0x20,0x2c,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vscalefps 291(%rax,%r14,8), %ymm22, %ymm25

// CHECK: vscalefps (%rcx){1to8}, %ymm22, %ymm25
// CHECK:  encoding: [0x62,0x62,0x4d,0x30,0x2c,0x09]
          vscalefps (%rcx){1to8}, %ymm22, %ymm25

// CHECK: vscalefps 4064(%rdx), %ymm22, %ymm25
// CHECK:  encoding: [0x62,0x62,0x4d,0x20,0x2c,0x4a,0x7f]
          vscalefps 4064(%rdx), %ymm22, %ymm25

// CHECK: vscalefps 4096(%rdx), %ymm22, %ymm25
// CHECK:  encoding: [0x62,0x62,0x4d,0x20,0x2c,0x8a,0x00,0x10,0x00,0x00]
          vscalefps 4096(%rdx), %ymm22, %ymm25

// CHECK: vscalefps -4096(%rdx), %ymm22, %ymm25
// CHECK:  encoding: [0x62,0x62,0x4d,0x20,0x2c,0x4a,0x80]
          vscalefps -4096(%rdx), %ymm22, %ymm25

// CHECK: vscalefps -4128(%rdx), %ymm22, %ymm25
// CHECK:  encoding: [0x62,0x62,0x4d,0x20,0x2c,0x8a,0xe0,0xef,0xff,0xff]
          vscalefps -4128(%rdx), %ymm22, %ymm25

// CHECK: vscalefps 508(%rdx){1to8}, %ymm22, %ymm25
// CHECK:  encoding: [0x62,0x62,0x4d,0x30,0x2c,0x4a,0x7f]
          vscalefps 508(%rdx){1to8}, %ymm22, %ymm25

// CHECK: vscalefps 512(%rdx){1to8}, %ymm22, %ymm25
// CHECK:  encoding: [0x62,0x62,0x4d,0x30,0x2c,0x8a,0x00,0x02,0x00,0x00]
          vscalefps 512(%rdx){1to8}, %ymm22, %ymm25

// CHECK: vscalefps -512(%rdx){1to8}, %ymm22, %ymm25
// CHECK:  encoding: [0x62,0x62,0x4d,0x30,0x2c,0x4a,0x80]
          vscalefps -512(%rdx){1to8}, %ymm22, %ymm25

// CHECK: vscalefps -516(%rdx){1to8}, %ymm22, %ymm25
// CHECK:  encoding: [0x62,0x62,0x4d,0x30,0x2c,0x8a,0xfc,0xfd,0xff,0xff]
          vscalefps -516(%rdx){1to8}, %ymm22, %ymm25

// CHECK: vpmovqb %xmm29, %xmm24
// CHECK:  encoding: [0x62,0x02,0x7e,0x08,0x32,0xe8]
          vpmovqb %xmm29, %xmm24

// CHECK: vpmovqb %xmm29, %xmm24 {%k4}
// CHECK:  encoding: [0x62,0x02,0x7e,0x0c,0x32,0xe8]
          vpmovqb %xmm29, %xmm24 {%k4}

// CHECK: vpmovqb %xmm29, %xmm24 {%k4} {z}
// CHECK:  encoding: [0x62,0x02,0x7e,0x8c,0x32,0xe8]
          vpmovqb %xmm29, %xmm24 {%k4} {z}

// CHECK: vpmovqb %ymm29, %xmm17
// CHECK:  encoding: [0x62,0x22,0x7e,0x28,0x32,0xe9]
          vpmovqb %ymm29, %xmm17

// CHECK: vpmovqb %ymm29, %xmm17 {%k3}
// CHECK:  encoding: [0x62,0x22,0x7e,0x2b,0x32,0xe9]
          vpmovqb %ymm29, %xmm17 {%k3}

// CHECK: vpmovqb %ymm29, %xmm17 {%k3} {z}
// CHECK:  encoding: [0x62,0x22,0x7e,0xab,0x32,0xe9]
          vpmovqb %ymm29, %xmm17 {%k3} {z}

// CHECK: vpmovqb %xmm27, (%rcx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x32,0x19]
          vpmovqb %xmm27, (%rcx)

// CHECK: vpmovqb %xmm27, (%rcx) {%k2}
// CHECK:  encoding: [0x62,0x62,0x7e,0x0a,0x32,0x19]
          vpmovqb %xmm27, (%rcx) {%k2}

// CHECK: vpmovqb %xmm27, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x22,0x7e,0x08,0x32,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpmovqb %xmm27, 291(%rax,%r14,8)

// CHECK: vpmovqb %xmm27, 254(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x32,0x5a,0x7f]
          vpmovqb %xmm27, 254(%rdx)

// CHECK: vpmovqb %xmm27, 256(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x32,0x9a,0x00,0x01,0x00,0x00]
          vpmovqb %xmm27, 256(%rdx)

// CHECK: vpmovqb %xmm27, -256(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x32,0x5a,0x80]
          vpmovqb %xmm27, -256(%rdx)

// CHECK: vpmovqb %xmm27, -258(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x32,0x9a,0xfe,0xfe,0xff,0xff]
          vpmovqb %xmm27, -258(%rdx)

// CHECK: vpmovqb %ymm28, (%rcx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x32,0x21]
          vpmovqb %ymm28, (%rcx)

// CHECK: vpmovqb %ymm28, (%rcx) {%k7}
// CHECK:  encoding: [0x62,0x62,0x7e,0x2f,0x32,0x21]
          vpmovqb %ymm28, (%rcx) {%k7}

// CHECK: vpmovqb %ymm28, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x22,0x7e,0x28,0x32,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpmovqb %ymm28, 291(%rax,%r14,8)

// CHECK: vpmovqb %ymm28, 508(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x32,0x62,0x7f]
          vpmovqb %ymm28, 508(%rdx)

// CHECK: vpmovqb %ymm28, 512(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x32,0xa2,0x00,0x02,0x00,0x00]
          vpmovqb %ymm28, 512(%rdx)

// CHECK: vpmovqb %ymm28, -512(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x32,0x62,0x80]
          vpmovqb %ymm28, -512(%rdx)

// CHECK: vpmovqb %ymm28, -516(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x32,0xa2,0xfc,0xfd,0xff,0xff]
          vpmovqb %ymm28, -516(%rdx)

// CHECK: vpmovsqb %xmm19, %xmm26
// CHECK:  encoding: [0x62,0x82,0x7e,0x08,0x22,0xda]
          vpmovsqb %xmm19, %xmm26

// CHECK: vpmovsqb %xmm19, %xmm26 {%k1}
// CHECK:  encoding: [0x62,0x82,0x7e,0x09,0x22,0xda]
          vpmovsqb %xmm19, %xmm26 {%k1}

// CHECK: vpmovsqb %xmm19, %xmm26 {%k1} {z}
// CHECK:  encoding: [0x62,0x82,0x7e,0x89,0x22,0xda]
          vpmovsqb %xmm19, %xmm26 {%k1} {z}

// CHECK: vpmovsqb %ymm20, %xmm20
// CHECK:  encoding: [0x62,0xa2,0x7e,0x28,0x22,0xe4]
          vpmovsqb %ymm20, %xmm20

// CHECK: vpmovsqb %ymm20, %xmm20 {%k6}
// CHECK:  encoding: [0x62,0xa2,0x7e,0x2e,0x22,0xe4]
          vpmovsqb %ymm20, %xmm20 {%k6}

// CHECK: vpmovsqb %ymm20, %xmm20 {%k6} {z}
// CHECK:  encoding: [0x62,0xa2,0x7e,0xae,0x22,0xe4]
          vpmovsqb %ymm20, %xmm20 {%k6} {z}

// CHECK: vpmovsqb %xmm25, (%rcx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x22,0x09]
          vpmovsqb %xmm25, (%rcx)

// CHECK: vpmovsqb %xmm25, (%rcx) {%k7}
// CHECK:  encoding: [0x62,0x62,0x7e,0x0f,0x22,0x09]
          vpmovsqb %xmm25, (%rcx) {%k7}

// CHECK: vpmovsqb %xmm25, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x22,0x7e,0x08,0x22,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpmovsqb %xmm25, 291(%rax,%r14,8)

// CHECK: vpmovsqb %xmm25, 254(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x22,0x4a,0x7f]
          vpmovsqb %xmm25, 254(%rdx)

// CHECK: vpmovsqb %xmm25, 256(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x22,0x8a,0x00,0x01,0x00,0x00]
          vpmovsqb %xmm25, 256(%rdx)

// CHECK: vpmovsqb %xmm25, -256(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x22,0x4a,0x80]
          vpmovsqb %xmm25, -256(%rdx)

// CHECK: vpmovsqb %xmm25, -258(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x22,0x8a,0xfe,0xfe,0xff,0xff]
          vpmovsqb %xmm25, -258(%rdx)

// CHECK: vpmovsqb %ymm17, (%rcx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x22,0x09]
          vpmovsqb %ymm17, (%rcx)

// CHECK: vpmovsqb %ymm17, (%rcx) {%k4}
// CHECK:  encoding: [0x62,0xe2,0x7e,0x2c,0x22,0x09]
          vpmovsqb %ymm17, (%rcx) {%k4}

// CHECK: vpmovsqb %ymm17, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa2,0x7e,0x28,0x22,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpmovsqb %ymm17, 291(%rax,%r14,8)

// CHECK: vpmovsqb %ymm17, 508(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x22,0x4a,0x7f]
          vpmovsqb %ymm17, 508(%rdx)

// CHECK: vpmovsqb %ymm17, 512(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x22,0x8a,0x00,0x02,0x00,0x00]
          vpmovsqb %ymm17, 512(%rdx)

// CHECK: vpmovsqb %ymm17, -512(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x22,0x4a,0x80]
          vpmovsqb %ymm17, -512(%rdx)

// CHECK: vpmovsqb %ymm17, -516(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x22,0x8a,0xfc,0xfd,0xff,0xff]
          vpmovsqb %ymm17, -516(%rdx)

// CHECK: vpmovusqb %xmm22, %xmm28
// CHECK:  encoding: [0x62,0x82,0x7e,0x08,0x12,0xf4]
          vpmovusqb %xmm22, %xmm28

// CHECK: vpmovusqb %xmm22, %xmm28 {%k2}
// CHECK:  encoding: [0x62,0x82,0x7e,0x0a,0x12,0xf4]
          vpmovusqb %xmm22, %xmm28 {%k2}

// CHECK: vpmovusqb %xmm22, %xmm28 {%k2} {z}
// CHECK:  encoding: [0x62,0x82,0x7e,0x8a,0x12,0xf4]
          vpmovusqb %xmm22, %xmm28 {%k2} {z}

// CHECK: vpmovusqb %ymm23, %xmm22
// CHECK:  encoding: [0x62,0xa2,0x7e,0x28,0x12,0xfe]
          vpmovusqb %ymm23, %xmm22

// CHECK: vpmovusqb %ymm23, %xmm22 {%k7}
// CHECK:  encoding: [0x62,0xa2,0x7e,0x2f,0x12,0xfe]
          vpmovusqb %ymm23, %xmm22 {%k7}

// CHECK: vpmovusqb %ymm23, %xmm22 {%k7} {z}
// CHECK:  encoding: [0x62,0xa2,0x7e,0xaf,0x12,0xfe]
          vpmovusqb %ymm23, %xmm22 {%k7} {z}

// CHECK: vpmovusqb %xmm26, (%rcx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x12,0x11]
          vpmovusqb %xmm26, (%rcx)

// CHECK: vpmovusqb %xmm26, (%rcx) {%k5}
// CHECK:  encoding: [0x62,0x62,0x7e,0x0d,0x12,0x11]
          vpmovusqb %xmm26, (%rcx) {%k5}

// CHECK: vpmovusqb %xmm26, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x22,0x7e,0x08,0x12,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpmovusqb %xmm26, 291(%rax,%r14,8)

// CHECK: vpmovusqb %xmm26, 254(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x12,0x52,0x7f]
          vpmovusqb %xmm26, 254(%rdx)

// CHECK: vpmovusqb %xmm26, 256(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x12,0x92,0x00,0x01,0x00,0x00]
          vpmovusqb %xmm26, 256(%rdx)

// CHECK: vpmovusqb %xmm26, -256(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x12,0x52,0x80]
          vpmovusqb %xmm26, -256(%rdx)

// CHECK: vpmovusqb %xmm26, -258(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x12,0x92,0xfe,0xfe,0xff,0xff]
          vpmovusqb %xmm26, -258(%rdx)

// CHECK: vpmovusqb %ymm30, (%rcx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x12,0x31]
          vpmovusqb %ymm30, (%rcx)

// CHECK: vpmovusqb %ymm30, (%rcx) {%k2}
// CHECK:  encoding: [0x62,0x62,0x7e,0x2a,0x12,0x31]
          vpmovusqb %ymm30, (%rcx) {%k2}

// CHECK: vpmovusqb %ymm30, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x22,0x7e,0x28,0x12,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpmovusqb %ymm30, 291(%rax,%r14,8)

// CHECK: vpmovusqb %ymm30, 508(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x12,0x72,0x7f]
          vpmovusqb %ymm30, 508(%rdx)

// CHECK: vpmovusqb %ymm30, 512(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x12,0xb2,0x00,0x02,0x00,0x00]
          vpmovusqb %ymm30, 512(%rdx)

// CHECK: vpmovusqb %ymm30, -512(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x12,0x72,0x80]
          vpmovusqb %ymm30, -512(%rdx)

// CHECK: vpmovusqb %ymm30, -516(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x12,0xb2,0xfc,0xfd,0xff,0xff]
          vpmovusqb %ymm30, -516(%rdx)

// CHECK: vpmovqw %xmm18, %xmm19
// CHECK:  encoding: [0x62,0xa2,0x7e,0x08,0x34,0xd3]
          vpmovqw %xmm18, %xmm19

// CHECK: vpmovqw %xmm18, %xmm19 {%k4}
// CHECK:  encoding: [0x62,0xa2,0x7e,0x0c,0x34,0xd3]
          vpmovqw %xmm18, %xmm19 {%k4}

// CHECK: vpmovqw %xmm18, %xmm19 {%k4} {z}
// CHECK:  encoding: [0x62,0xa2,0x7e,0x8c,0x34,0xd3]
          vpmovqw %xmm18, %xmm19 {%k4} {z}

// CHECK: vpmovqw %ymm22, %xmm19
// CHECK:  encoding: [0x62,0xa2,0x7e,0x28,0x34,0xf3]
          vpmovqw %ymm22, %xmm19

// CHECK: vpmovqw %ymm22, %xmm19 {%k5}
// CHECK:  encoding: [0x62,0xa2,0x7e,0x2d,0x34,0xf3]
          vpmovqw %ymm22, %xmm19 {%k5}

// CHECK: vpmovqw %ymm22, %xmm19 {%k5} {z}
// CHECK:  encoding: [0x62,0xa2,0x7e,0xad,0x34,0xf3]
          vpmovqw %ymm22, %xmm19 {%k5} {z}

// CHECK: vpmovqw %xmm21, (%rcx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x34,0x29]
          vpmovqw %xmm21, (%rcx)

// CHECK: vpmovqw %xmm21, (%rcx) {%k3}
// CHECK:  encoding: [0x62,0xe2,0x7e,0x0b,0x34,0x29]
          vpmovqw %xmm21, (%rcx) {%k3}

// CHECK: vpmovqw %xmm21, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa2,0x7e,0x08,0x34,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpmovqw %xmm21, 291(%rax,%r14,8)

// CHECK: vpmovqw %xmm21, 508(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x34,0x6a,0x7f]
          vpmovqw %xmm21, 508(%rdx)

// CHECK: vpmovqw %xmm21, 512(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x34,0xaa,0x00,0x02,0x00,0x00]
          vpmovqw %xmm21, 512(%rdx)

// CHECK: vpmovqw %xmm21, -512(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x34,0x6a,0x80]
          vpmovqw %xmm21, -512(%rdx)

// CHECK: vpmovqw %xmm21, -516(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x34,0xaa,0xfc,0xfd,0xff,0xff]
          vpmovqw %xmm21, -516(%rdx)

// CHECK: vpmovqw %ymm28, (%rcx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x34,0x21]
          vpmovqw %ymm28, (%rcx)

// CHECK: vpmovqw %ymm28, (%rcx) {%k6}
// CHECK:  encoding: [0x62,0x62,0x7e,0x2e,0x34,0x21]
          vpmovqw %ymm28, (%rcx) {%k6}

// CHECK: vpmovqw %ymm28, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x22,0x7e,0x28,0x34,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpmovqw %ymm28, 291(%rax,%r14,8)

// CHECK: vpmovqw %ymm28, 1016(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x34,0x62,0x7f]
          vpmovqw %ymm28, 1016(%rdx)

// CHECK: vpmovqw %ymm28, 1024(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x34,0xa2,0x00,0x04,0x00,0x00]
          vpmovqw %ymm28, 1024(%rdx)

// CHECK: vpmovqw %ymm28, -1024(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x34,0x62,0x80]
          vpmovqw %ymm28, -1024(%rdx)

// CHECK: vpmovqw %ymm28, -1032(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x34,0xa2,0xf8,0xfb,0xff,0xff]
          vpmovqw %ymm28, -1032(%rdx)

// CHECK: vpmovsqw %xmm18, %xmm26
// CHECK:  encoding: [0x62,0x82,0x7e,0x08,0x24,0xd2]
          vpmovsqw %xmm18, %xmm26

// CHECK: vpmovsqw %xmm18, %xmm26 {%k7}
// CHECK:  encoding: [0x62,0x82,0x7e,0x0f,0x24,0xd2]
          vpmovsqw %xmm18, %xmm26 {%k7}

// CHECK: vpmovsqw %xmm18, %xmm26 {%k7} {z}
// CHECK:  encoding: [0x62,0x82,0x7e,0x8f,0x24,0xd2]
          vpmovsqw %xmm18, %xmm26 {%k7} {z}

// CHECK: vpmovsqw %ymm20, %xmm28
// CHECK:  encoding: [0x62,0x82,0x7e,0x28,0x24,0xe4]
          vpmovsqw %ymm20, %xmm28

// CHECK: vpmovsqw %ymm20, %xmm28 {%k4}
// CHECK:  encoding: [0x62,0x82,0x7e,0x2c,0x24,0xe4]
          vpmovsqw %ymm20, %xmm28 {%k4}

// CHECK: vpmovsqw %ymm20, %xmm28 {%k4} {z}
// CHECK:  encoding: [0x62,0x82,0x7e,0xac,0x24,0xe4]
          vpmovsqw %ymm20, %xmm28 {%k4} {z}

// CHECK: vpmovsqw %xmm30, (%rcx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x24,0x31]
          vpmovsqw %xmm30, (%rcx)

// CHECK: vpmovsqw %xmm30, (%rcx) {%k4}
// CHECK:  encoding: [0x62,0x62,0x7e,0x0c,0x24,0x31]
          vpmovsqw %xmm30, (%rcx) {%k4}

// CHECK: vpmovsqw %xmm30, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x22,0x7e,0x08,0x24,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpmovsqw %xmm30, 291(%rax,%r14,8)

// CHECK: vpmovsqw %xmm30, 508(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x24,0x72,0x7f]
          vpmovsqw %xmm30, 508(%rdx)

// CHECK: vpmovsqw %xmm30, 512(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x24,0xb2,0x00,0x02,0x00,0x00]
          vpmovsqw %xmm30, 512(%rdx)

// CHECK: vpmovsqw %xmm30, -512(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x24,0x72,0x80]
          vpmovsqw %xmm30, -512(%rdx)

// CHECK: vpmovsqw %xmm30, -516(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x24,0xb2,0xfc,0xfd,0xff,0xff]
          vpmovsqw %xmm30, -516(%rdx)

// CHECK: vpmovsqw %ymm21, (%rcx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x24,0x29]
          vpmovsqw %ymm21, (%rcx)

// CHECK: vpmovsqw %ymm21, (%rcx) {%k5}
// CHECK:  encoding: [0x62,0xe2,0x7e,0x2d,0x24,0x29]
          vpmovsqw %ymm21, (%rcx) {%k5}

// CHECK: vpmovsqw %ymm21, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa2,0x7e,0x28,0x24,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpmovsqw %ymm21, 291(%rax,%r14,8)

// CHECK: vpmovsqw %ymm21, 1016(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x24,0x6a,0x7f]
          vpmovsqw %ymm21, 1016(%rdx)

// CHECK: vpmovsqw %ymm21, 1024(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x24,0xaa,0x00,0x04,0x00,0x00]
          vpmovsqw %ymm21, 1024(%rdx)

// CHECK: vpmovsqw %ymm21, -1024(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x24,0x6a,0x80]
          vpmovsqw %ymm21, -1024(%rdx)

// CHECK: vpmovsqw %ymm21, -1032(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x24,0xaa,0xf8,0xfb,0xff,0xff]
          vpmovsqw %ymm21, -1032(%rdx)

// CHECK: vpmovusqw %xmm20, %xmm29
// CHECK:  encoding: [0x62,0x82,0x7e,0x08,0x14,0xe5]
          vpmovusqw %xmm20, %xmm29

// CHECK: vpmovusqw %xmm20, %xmm29 {%k1}
// CHECK:  encoding: [0x62,0x82,0x7e,0x09,0x14,0xe5]
          vpmovusqw %xmm20, %xmm29 {%k1}

// CHECK: vpmovusqw %xmm20, %xmm29 {%k1} {z}
// CHECK:  encoding: [0x62,0x82,0x7e,0x89,0x14,0xe5]
          vpmovusqw %xmm20, %xmm29 {%k1} {z}

// CHECK: vpmovusqw %ymm21, %xmm20
// CHECK:  encoding: [0x62,0xa2,0x7e,0x28,0x14,0xec]
          vpmovusqw %ymm21, %xmm20

// CHECK: vpmovusqw %ymm21, %xmm20 {%k5}
// CHECK:  encoding: [0x62,0xa2,0x7e,0x2d,0x14,0xec]
          vpmovusqw %ymm21, %xmm20 {%k5}

// CHECK: vpmovusqw %ymm21, %xmm20 {%k5} {z}
// CHECK:  encoding: [0x62,0xa2,0x7e,0xad,0x14,0xec]
          vpmovusqw %ymm21, %xmm20 {%k5} {z}

// CHECK: vpmovusqw %xmm18, (%rcx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x14,0x11]
          vpmovusqw %xmm18, (%rcx)

// CHECK: vpmovusqw %xmm18, (%rcx) {%k1}
// CHECK:  encoding: [0x62,0xe2,0x7e,0x09,0x14,0x11]
          vpmovusqw %xmm18, (%rcx) {%k1}

// CHECK: vpmovusqw %xmm18, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa2,0x7e,0x08,0x14,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpmovusqw %xmm18, 291(%rax,%r14,8)

// CHECK: vpmovusqw %xmm18, 508(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x14,0x52,0x7f]
          vpmovusqw %xmm18, 508(%rdx)

// CHECK: vpmovusqw %xmm18, 512(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x14,0x92,0x00,0x02,0x00,0x00]
          vpmovusqw %xmm18, 512(%rdx)

// CHECK: vpmovusqw %xmm18, -512(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x14,0x52,0x80]
          vpmovusqw %xmm18, -512(%rdx)

// CHECK: vpmovusqw %xmm18, -516(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x14,0x92,0xfc,0xfd,0xff,0xff]
          vpmovusqw %xmm18, -516(%rdx)

// CHECK: vpmovusqw %ymm18, (%rcx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x14,0x11]
          vpmovusqw %ymm18, (%rcx)

// CHECK: vpmovusqw %ymm18, (%rcx) {%k2}
// CHECK:  encoding: [0x62,0xe2,0x7e,0x2a,0x14,0x11]
          vpmovusqw %ymm18, (%rcx) {%k2}

// CHECK: vpmovusqw %ymm18, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa2,0x7e,0x28,0x14,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpmovusqw %ymm18, 291(%rax,%r14,8)

// CHECK: vpmovusqw %ymm18, 1016(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x14,0x52,0x7f]
          vpmovusqw %ymm18, 1016(%rdx)

// CHECK: vpmovusqw %ymm18, 1024(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x14,0x92,0x00,0x04,0x00,0x00]
          vpmovusqw %ymm18, 1024(%rdx)

// CHECK: vpmovusqw %ymm18, -1024(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x14,0x52,0x80]
          vpmovusqw %ymm18, -1024(%rdx)

// CHECK: vpmovusqw %ymm18, -1032(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x14,0x92,0xf8,0xfb,0xff,0xff]
          vpmovusqw %ymm18, -1032(%rdx)

// CHECK: vpmovqd %xmm25, %xmm21
// CHECK:  encoding: [0x62,0x22,0x7e,0x08,0x35,0xcd]
          vpmovqd %xmm25, %xmm21

// CHECK: vpmovqd %xmm25, %xmm21 {%k5}
// CHECK:  encoding: [0x62,0x22,0x7e,0x0d,0x35,0xcd]
          vpmovqd %xmm25, %xmm21 {%k5}

// CHECK: vpmovqd %xmm25, %xmm21 {%k5} {z}
// CHECK:  encoding: [0x62,0x22,0x7e,0x8d,0x35,0xcd]
          vpmovqd %xmm25, %xmm21 {%k5} {z}

// CHECK: vpmovqd %ymm22, %xmm21
// CHECK:  encoding: [0x62,0xa2,0x7e,0x28,0x35,0xf5]
          vpmovqd %ymm22, %xmm21

// CHECK: vpmovqd %ymm22, %xmm21 {%k6}
// CHECK:  encoding: [0x62,0xa2,0x7e,0x2e,0x35,0xf5]
          vpmovqd %ymm22, %xmm21 {%k6}

// CHECK: vpmovqd %ymm22, %xmm21 {%k6} {z}
// CHECK:  encoding: [0x62,0xa2,0x7e,0xae,0x35,0xf5]
          vpmovqd %ymm22, %xmm21 {%k6} {z}

// CHECK: vpmovqd %xmm29, (%rcx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x35,0x29]
          vpmovqd %xmm29, (%rcx)

// CHECK: vpmovqd %xmm29, (%rcx) {%k6}
// CHECK:  encoding: [0x62,0x62,0x7e,0x0e,0x35,0x29]
          vpmovqd %xmm29, (%rcx) {%k6}

// CHECK: vpmovqd %xmm29, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x22,0x7e,0x08,0x35,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpmovqd %xmm29, 291(%rax,%r14,8)

// CHECK: vpmovqd %xmm29, 1016(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x35,0x6a,0x7f]
          vpmovqd %xmm29, 1016(%rdx)

// CHECK: vpmovqd %xmm29, 1024(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x35,0xaa,0x00,0x04,0x00,0x00]
          vpmovqd %xmm29, 1024(%rdx)

// CHECK: vpmovqd %xmm29, -1024(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x35,0x6a,0x80]
          vpmovqd %xmm29, -1024(%rdx)

// CHECK: vpmovqd %xmm29, -1032(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x35,0xaa,0xf8,0xfb,0xff,0xff]
          vpmovqd %xmm29, -1032(%rdx)

// CHECK: vpmovqd %ymm30, (%rcx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x35,0x31]
          vpmovqd %ymm30, (%rcx)

// CHECK: vpmovqd %ymm30, (%rcx) {%k2}
// CHECK:  encoding: [0x62,0x62,0x7e,0x2a,0x35,0x31]
          vpmovqd %ymm30, (%rcx) {%k2}

// CHECK: vpmovqd %ymm30, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x22,0x7e,0x28,0x35,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpmovqd %ymm30, 291(%rax,%r14,8)

// CHECK: vpmovqd %ymm30, 2032(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x35,0x72,0x7f]
          vpmovqd %ymm30, 2032(%rdx)

// CHECK: vpmovqd %ymm30, 2048(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x35,0xb2,0x00,0x08,0x00,0x00]
          vpmovqd %ymm30, 2048(%rdx)

// CHECK: vpmovqd %ymm30, -2048(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x35,0x72,0x80]
          vpmovqd %ymm30, -2048(%rdx)

// CHECK: vpmovqd %ymm30, -2064(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x35,0xb2,0xf0,0xf7,0xff,0xff]
          vpmovqd %ymm30, -2064(%rdx)

// CHECK: vpmovsqd %xmm21, %xmm21
// CHECK:  encoding: [0x62,0xa2,0x7e,0x08,0x25,0xed]
          vpmovsqd %xmm21, %xmm21

// CHECK: vpmovsqd %xmm21, %xmm21 {%k2}
// CHECK:  encoding: [0x62,0xa2,0x7e,0x0a,0x25,0xed]
          vpmovsqd %xmm21, %xmm21 {%k2}

// CHECK: vpmovsqd %xmm21, %xmm21 {%k2} {z}
// CHECK:  encoding: [0x62,0xa2,0x7e,0x8a,0x25,0xed]
          vpmovsqd %xmm21, %xmm21 {%k2} {z}

// CHECK: vpmovsqd %ymm29, %xmm29
// CHECK:  encoding: [0x62,0x02,0x7e,0x28,0x25,0xed]
          vpmovsqd %ymm29, %xmm29

// CHECK: vpmovsqd %ymm29, %xmm29 {%k4}
// CHECK:  encoding: [0x62,0x02,0x7e,0x2c,0x25,0xed]
          vpmovsqd %ymm29, %xmm29 {%k4}

// CHECK: vpmovsqd %ymm29, %xmm29 {%k4} {z}
// CHECK:  encoding: [0x62,0x02,0x7e,0xac,0x25,0xed]
          vpmovsqd %ymm29, %xmm29 {%k4} {z}

// CHECK: vpmovsqd %xmm17, (%rcx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x25,0x09]
          vpmovsqd %xmm17, (%rcx)

// CHECK: vpmovsqd %xmm17, (%rcx) {%k2}
// CHECK:  encoding: [0x62,0xe2,0x7e,0x0a,0x25,0x09]
          vpmovsqd %xmm17, (%rcx) {%k2}

// CHECK: vpmovsqd %xmm17, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa2,0x7e,0x08,0x25,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpmovsqd %xmm17, 291(%rax,%r14,8)

// CHECK: vpmovsqd %xmm17, 1016(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x25,0x4a,0x7f]
          vpmovsqd %xmm17, 1016(%rdx)

// CHECK: vpmovsqd %xmm17, 1024(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x25,0x8a,0x00,0x04,0x00,0x00]
          vpmovsqd %xmm17, 1024(%rdx)

// CHECK: vpmovsqd %xmm17, -1024(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x25,0x4a,0x80]
          vpmovsqd %xmm17, -1024(%rdx)

// CHECK: vpmovsqd %xmm17, -1032(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x25,0x8a,0xf8,0xfb,0xff,0xff]
          vpmovsqd %xmm17, -1032(%rdx)

// CHECK: vpmovsqd %ymm23, (%rcx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x25,0x39]
          vpmovsqd %ymm23, (%rcx)

// CHECK: vpmovsqd %ymm23, (%rcx) {%k5}
// CHECK:  encoding: [0x62,0xe2,0x7e,0x2d,0x25,0x39]
          vpmovsqd %ymm23, (%rcx) {%k5}

// CHECK: vpmovsqd %ymm23, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa2,0x7e,0x28,0x25,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vpmovsqd %ymm23, 291(%rax,%r14,8)

// CHECK: vpmovsqd %ymm23, 2032(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x25,0x7a,0x7f]
          vpmovsqd %ymm23, 2032(%rdx)

// CHECK: vpmovsqd %ymm23, 2048(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x25,0xba,0x00,0x08,0x00,0x00]
          vpmovsqd %ymm23, 2048(%rdx)

// CHECK: vpmovsqd %ymm23, -2048(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x25,0x7a,0x80]
          vpmovsqd %ymm23, -2048(%rdx)

// CHECK: vpmovsqd %ymm23, -2064(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x25,0xba,0xf0,0xf7,0xff,0xff]
          vpmovsqd %ymm23, -2064(%rdx)

// CHECK: vpmovusqd %xmm21, %xmm25
// CHECK:  encoding: [0x62,0x82,0x7e,0x08,0x15,0xe9]
          vpmovusqd %xmm21, %xmm25

// CHECK: vpmovusqd %xmm21, %xmm25 {%k5}
// CHECK:  encoding: [0x62,0x82,0x7e,0x0d,0x15,0xe9]
          vpmovusqd %xmm21, %xmm25 {%k5}

// CHECK: vpmovusqd %xmm21, %xmm25 {%k5} {z}
// CHECK:  encoding: [0x62,0x82,0x7e,0x8d,0x15,0xe9]
          vpmovusqd %xmm21, %xmm25 {%k5} {z}

// CHECK: vpmovusqd %ymm21, %xmm20
// CHECK:  encoding: [0x62,0xa2,0x7e,0x28,0x15,0xec]
          vpmovusqd %ymm21, %xmm20

// CHECK: vpmovusqd %ymm21, %xmm20 {%k2}
// CHECK:  encoding: [0x62,0xa2,0x7e,0x2a,0x15,0xec]
          vpmovusqd %ymm21, %xmm20 {%k2}

// CHECK: vpmovusqd %ymm21, %xmm20 {%k2} {z}
// CHECK:  encoding: [0x62,0xa2,0x7e,0xaa,0x15,0xec]
          vpmovusqd %ymm21, %xmm20 {%k2} {z}

// CHECK: vpmovusqd %xmm18, (%rcx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x15,0x11]
          vpmovusqd %xmm18, (%rcx)

// CHECK: vpmovusqd %xmm18, (%rcx) {%k1}
// CHECK:  encoding: [0x62,0xe2,0x7e,0x09,0x15,0x11]
          vpmovusqd %xmm18, (%rcx) {%k1}

// CHECK: vpmovusqd %xmm18, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa2,0x7e,0x08,0x15,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpmovusqd %xmm18, 291(%rax,%r14,8)

// CHECK: vpmovusqd %xmm18, 1016(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x15,0x52,0x7f]
          vpmovusqd %xmm18, 1016(%rdx)

// CHECK: vpmovusqd %xmm18, 1024(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x15,0x92,0x00,0x04,0x00,0x00]
          vpmovusqd %xmm18, 1024(%rdx)

// CHECK: vpmovusqd %xmm18, -1024(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x15,0x52,0x80]
          vpmovusqd %xmm18, -1024(%rdx)

// CHECK: vpmovusqd %xmm18, -1032(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x15,0x92,0xf8,0xfb,0xff,0xff]
          vpmovusqd %xmm18, -1032(%rdx)

// CHECK: vpmovusqd %ymm29, (%rcx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x15,0x29]
          vpmovusqd %ymm29, (%rcx)

// CHECK: vpmovusqd %ymm29, (%rcx) {%k6}
// CHECK:  encoding: [0x62,0x62,0x7e,0x2e,0x15,0x29]
          vpmovusqd %ymm29, (%rcx) {%k6}

// CHECK: vpmovusqd %ymm29, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x22,0x7e,0x28,0x15,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpmovusqd %ymm29, 291(%rax,%r14,8)

// CHECK: vpmovusqd %ymm29, 2032(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x15,0x6a,0x7f]
          vpmovusqd %ymm29, 2032(%rdx)

// CHECK: vpmovusqd %ymm29, 2048(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x15,0xaa,0x00,0x08,0x00,0x00]
          vpmovusqd %ymm29, 2048(%rdx)

// CHECK: vpmovusqd %ymm29, -2048(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x15,0x6a,0x80]
          vpmovusqd %ymm29, -2048(%rdx)

// CHECK: vpmovusqd %ymm29, -2064(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x15,0xaa,0xf0,0xf7,0xff,0xff]
          vpmovusqd %ymm29, -2064(%rdx)

// CHECK: vpmovdb %xmm21, %xmm30
// CHECK:  encoding: [0x62,0x82,0x7e,0x08,0x31,0xee]
          vpmovdb %xmm21, %xmm30

// CHECK: vpmovdb %xmm21, %xmm30 {%k3}
// CHECK:  encoding: [0x62,0x82,0x7e,0x0b,0x31,0xee]
          vpmovdb %xmm21, %xmm30 {%k3}

// CHECK: vpmovdb %xmm21, %xmm30 {%k3} {z}
// CHECK:  encoding: [0x62,0x82,0x7e,0x8b,0x31,0xee]
          vpmovdb %xmm21, %xmm30 {%k3} {z}

// CHECK: vpmovdb %ymm21, %xmm23
// CHECK:  encoding: [0x62,0xa2,0x7e,0x28,0x31,0xef]
          vpmovdb %ymm21, %xmm23

// CHECK: vpmovdb %ymm21, %xmm23 {%k4}
// CHECK:  encoding: [0x62,0xa2,0x7e,0x2c,0x31,0xef]
          vpmovdb %ymm21, %xmm23 {%k4}

// CHECK: vpmovdb %ymm21, %xmm23 {%k4} {z}
// CHECK:  encoding: [0x62,0xa2,0x7e,0xac,0x31,0xef]
          vpmovdb %ymm21, %xmm23 {%k4} {z}

// CHECK: vpmovdb %xmm29, (%rcx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x31,0x29]
          vpmovdb %xmm29, (%rcx)

// CHECK: vpmovdb %xmm29, (%rcx) {%k3}
// CHECK:  encoding: [0x62,0x62,0x7e,0x0b,0x31,0x29]
          vpmovdb %xmm29, (%rcx) {%k3}

// CHECK: vpmovdb %xmm29, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x22,0x7e,0x08,0x31,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpmovdb %xmm29, 291(%rax,%r14,8)

// CHECK: vpmovdb %xmm29, 508(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x31,0x6a,0x7f]
          vpmovdb %xmm29, 508(%rdx)

// CHECK: vpmovdb %xmm29, 512(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x31,0xaa,0x00,0x02,0x00,0x00]
          vpmovdb %xmm29, 512(%rdx)

// CHECK: vpmovdb %xmm29, -512(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x31,0x6a,0x80]
          vpmovdb %xmm29, -512(%rdx)

// CHECK: vpmovdb %xmm29, -516(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x31,0xaa,0xfc,0xfd,0xff,0xff]
          vpmovdb %xmm29, -516(%rdx)

// CHECK: vpmovdb %ymm26, (%rcx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x31,0x11]
          vpmovdb %ymm26, (%rcx)

// CHECK: vpmovdb %ymm26, (%rcx) {%k6}
// CHECK:  encoding: [0x62,0x62,0x7e,0x2e,0x31,0x11]
          vpmovdb %ymm26, (%rcx) {%k6}

// CHECK: vpmovdb %ymm26, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x22,0x7e,0x28,0x31,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpmovdb %ymm26, 291(%rax,%r14,8)

// CHECK: vpmovdb %ymm26, 1016(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x31,0x52,0x7f]
          vpmovdb %ymm26, 1016(%rdx)

// CHECK: vpmovdb %ymm26, 1024(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x31,0x92,0x00,0x04,0x00,0x00]
          vpmovdb %ymm26, 1024(%rdx)

// CHECK: vpmovdb %ymm26, -1024(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x31,0x52,0x80]
          vpmovdb %ymm26, -1024(%rdx)

// CHECK: vpmovdb %ymm26, -1032(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x31,0x92,0xf8,0xfb,0xff,0xff]
          vpmovdb %ymm26, -1032(%rdx)

// CHECK: vpmovsdb %xmm27, %xmm30
// CHECK:  encoding: [0x62,0x02,0x7e,0x08,0x21,0xde]
          vpmovsdb %xmm27, %xmm30

// CHECK: vpmovsdb %xmm27, %xmm30 {%k1}
// CHECK:  encoding: [0x62,0x02,0x7e,0x09,0x21,0xde]
          vpmovsdb %xmm27, %xmm30 {%k1}

// CHECK: vpmovsdb %xmm27, %xmm30 {%k1} {z}
// CHECK:  encoding: [0x62,0x02,0x7e,0x89,0x21,0xde]
          vpmovsdb %xmm27, %xmm30 {%k1} {z}

// CHECK: vpmovsdb %ymm27, %xmm26
// CHECK:  encoding: [0x62,0x02,0x7e,0x28,0x21,0xda]
          vpmovsdb %ymm27, %xmm26

// CHECK: vpmovsdb %ymm27, %xmm26 {%k3}
// CHECK:  encoding: [0x62,0x02,0x7e,0x2b,0x21,0xda]
          vpmovsdb %ymm27, %xmm26 {%k3}

// CHECK: vpmovsdb %ymm27, %xmm26 {%k3} {z}
// CHECK:  encoding: [0x62,0x02,0x7e,0xab,0x21,0xda]
          vpmovsdb %ymm27, %xmm26 {%k3} {z}

// CHECK: vpmovsdb %xmm30, (%rcx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x21,0x31]
          vpmovsdb %xmm30, (%rcx)

// CHECK: vpmovsdb %xmm30, (%rcx) {%k3}
// CHECK:  encoding: [0x62,0x62,0x7e,0x0b,0x21,0x31]
          vpmovsdb %xmm30, (%rcx) {%k3}

// CHECK: vpmovsdb %xmm30, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x22,0x7e,0x08,0x21,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpmovsdb %xmm30, 291(%rax,%r14,8)

// CHECK: vpmovsdb %xmm30, 508(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x21,0x72,0x7f]
          vpmovsdb %xmm30, 508(%rdx)

// CHECK: vpmovsdb %xmm30, 512(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x21,0xb2,0x00,0x02,0x00,0x00]
          vpmovsdb %xmm30, 512(%rdx)

// CHECK: vpmovsdb %xmm30, -512(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x21,0x72,0x80]
          vpmovsdb %xmm30, -512(%rdx)

// CHECK: vpmovsdb %xmm30, -516(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x21,0xb2,0xfc,0xfd,0xff,0xff]
          vpmovsdb %xmm30, -516(%rdx)

// CHECK: vpmovsdb %ymm25, (%rcx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x21,0x09]
          vpmovsdb %ymm25, (%rcx)

// CHECK: vpmovsdb %ymm25, (%rcx) {%k5}
// CHECK:  encoding: [0x62,0x62,0x7e,0x2d,0x21,0x09]
          vpmovsdb %ymm25, (%rcx) {%k5}

// CHECK: vpmovsdb %ymm25, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x22,0x7e,0x28,0x21,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpmovsdb %ymm25, 291(%rax,%r14,8)

// CHECK: vpmovsdb %ymm25, 1016(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x21,0x4a,0x7f]
          vpmovsdb %ymm25, 1016(%rdx)

// CHECK: vpmovsdb %ymm25, 1024(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x21,0x8a,0x00,0x04,0x00,0x00]
          vpmovsdb %ymm25, 1024(%rdx)

// CHECK: vpmovsdb %ymm25, -1024(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x21,0x4a,0x80]
          vpmovsdb %ymm25, -1024(%rdx)

// CHECK: vpmovsdb %ymm25, -1032(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x21,0x8a,0xf8,0xfb,0xff,0xff]
          vpmovsdb %ymm25, -1032(%rdx)

// CHECK: vpmovusdb %xmm29, %xmm30
// CHECK:  encoding: [0x62,0x02,0x7e,0x08,0x11,0xee]
          vpmovusdb %xmm29, %xmm30

// CHECK: vpmovusdb %xmm29, %xmm30 {%k7}
// CHECK:  encoding: [0x62,0x02,0x7e,0x0f,0x11,0xee]
          vpmovusdb %xmm29, %xmm30 {%k7}

// CHECK: vpmovusdb %xmm29, %xmm30 {%k7} {z}
// CHECK:  encoding: [0x62,0x02,0x7e,0x8f,0x11,0xee]
          vpmovusdb %xmm29, %xmm30 {%k7} {z}

// CHECK: vpmovusdb %ymm17, %xmm23
// CHECK:  encoding: [0x62,0xa2,0x7e,0x28,0x11,0xcf]
          vpmovusdb %ymm17, %xmm23

// CHECK: vpmovusdb %ymm17, %xmm23 {%k6}
// CHECK:  encoding: [0x62,0xa2,0x7e,0x2e,0x11,0xcf]
          vpmovusdb %ymm17, %xmm23 {%k6}

// CHECK: vpmovusdb %ymm17, %xmm23 {%k6} {z}
// CHECK:  encoding: [0x62,0xa2,0x7e,0xae,0x11,0xcf]
          vpmovusdb %ymm17, %xmm23 {%k6} {z}

// CHECK: vpmovusdb %xmm26, (%rcx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x11,0x11]
          vpmovusdb %xmm26, (%rcx)

// CHECK: vpmovusdb %xmm26, (%rcx) {%k7}
// CHECK:  encoding: [0x62,0x62,0x7e,0x0f,0x11,0x11]
          vpmovusdb %xmm26, (%rcx) {%k7}

// CHECK: vpmovusdb %xmm26, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x22,0x7e,0x08,0x11,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpmovusdb %xmm26, 291(%rax,%r14,8)

// CHECK: vpmovusdb %xmm26, 508(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x11,0x52,0x7f]
          vpmovusdb %xmm26, 508(%rdx)

// CHECK: vpmovusdb %xmm26, 512(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x11,0x92,0x00,0x02,0x00,0x00]
          vpmovusdb %xmm26, 512(%rdx)

// CHECK: vpmovusdb %xmm26, -512(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x11,0x52,0x80]
          vpmovusdb %xmm26, -512(%rdx)

// CHECK: vpmovusdb %xmm26, -516(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x11,0x92,0xfc,0xfd,0xff,0xff]
          vpmovusdb %xmm26, -516(%rdx)

// CHECK: vpmovusdb %ymm25, (%rcx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x11,0x09]
          vpmovusdb %ymm25, (%rcx)

// CHECK: vpmovusdb %ymm25, (%rcx) {%k6}
// CHECK:  encoding: [0x62,0x62,0x7e,0x2e,0x11,0x09]
          vpmovusdb %ymm25, (%rcx) {%k6}

// CHECK: vpmovusdb %ymm25, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x22,0x7e,0x28,0x11,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpmovusdb %ymm25, 291(%rax,%r14,8)

// CHECK: vpmovusdb %ymm25, 1016(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x11,0x4a,0x7f]
          vpmovusdb %ymm25, 1016(%rdx)

// CHECK: vpmovusdb %ymm25, 1024(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x11,0x8a,0x00,0x04,0x00,0x00]
          vpmovusdb %ymm25, 1024(%rdx)

// CHECK: vpmovusdb %ymm25, -1024(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x11,0x4a,0x80]
          vpmovusdb %ymm25, -1024(%rdx)

// CHECK: vpmovusdb %ymm25, -1032(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x11,0x8a,0xf8,0xfb,0xff,0xff]
          vpmovusdb %ymm25, -1032(%rdx)

// CHECK: vpmovdw %xmm25, %xmm17
// CHECK:  encoding: [0x62,0x22,0x7e,0x08,0x33,0xc9]
          vpmovdw %xmm25, %xmm17

// CHECK: vpmovdw %xmm25, %xmm17 {%k5}
// CHECK:  encoding: [0x62,0x22,0x7e,0x0d,0x33,0xc9]
          vpmovdw %xmm25, %xmm17 {%k5}

// CHECK: vpmovdw %xmm25, %xmm17 {%k5} {z}
// CHECK:  encoding: [0x62,0x22,0x7e,0x8d,0x33,0xc9]
          vpmovdw %xmm25, %xmm17 {%k5} {z}

// CHECK: vpmovdw %ymm19, %xmm25
// CHECK:  encoding: [0x62,0x82,0x7e,0x28,0x33,0xd9]
          vpmovdw %ymm19, %xmm25

// CHECK: vpmovdw %ymm19, %xmm25 {%k4}
// CHECK:  encoding: [0x62,0x82,0x7e,0x2c,0x33,0xd9]
          vpmovdw %ymm19, %xmm25 {%k4}

// CHECK: vpmovdw %ymm19, %xmm25 {%k4} {z}
// CHECK:  encoding: [0x62,0x82,0x7e,0xac,0x33,0xd9]
          vpmovdw %ymm19, %xmm25 {%k4} {z}

// CHECK: vpmovdw %xmm21, (%rcx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x33,0x29]
          vpmovdw %xmm21, (%rcx)

// CHECK: vpmovdw %xmm21, (%rcx) {%k2}
// CHECK:  encoding: [0x62,0xe2,0x7e,0x0a,0x33,0x29]
          vpmovdw %xmm21, (%rcx) {%k2}

// CHECK: vpmovdw %xmm21, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa2,0x7e,0x08,0x33,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpmovdw %xmm21, 291(%rax,%r14,8)

// CHECK: vpmovdw %xmm21, 1016(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x33,0x6a,0x7f]
          vpmovdw %xmm21, 1016(%rdx)

// CHECK: vpmovdw %xmm21, 1024(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x33,0xaa,0x00,0x04,0x00,0x00]
          vpmovdw %xmm21, 1024(%rdx)

// CHECK: vpmovdw %xmm21, -1024(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x33,0x6a,0x80]
          vpmovdw %xmm21, -1024(%rdx)

// CHECK: vpmovdw %xmm21, -1032(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x33,0xaa,0xf8,0xfb,0xff,0xff]
          vpmovdw %xmm21, -1032(%rdx)

// CHECK: vpmovdw %ymm22, (%rcx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x33,0x31]
          vpmovdw %ymm22, (%rcx)

// CHECK: vpmovdw %ymm22, (%rcx) {%k6}
// CHECK:  encoding: [0x62,0xe2,0x7e,0x2e,0x33,0x31]
          vpmovdw %ymm22, (%rcx) {%k6}

// CHECK: vpmovdw %ymm22, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa2,0x7e,0x28,0x33,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpmovdw %ymm22, 291(%rax,%r14,8)

// CHECK: vpmovdw %ymm22, 2032(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x33,0x72,0x7f]
          vpmovdw %ymm22, 2032(%rdx)

// CHECK: vpmovdw %ymm22, 2048(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x33,0xb2,0x00,0x08,0x00,0x00]
          vpmovdw %ymm22, 2048(%rdx)

// CHECK: vpmovdw %ymm22, -2048(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x33,0x72,0x80]
          vpmovdw %ymm22, -2048(%rdx)

// CHECK: vpmovdw %ymm22, -2064(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x33,0xb2,0xf0,0xf7,0xff,0xff]
          vpmovdw %ymm22, -2064(%rdx)

// CHECK: vpmovsdw %xmm18, %xmm18
// CHECK:  encoding: [0x62,0xa2,0x7e,0x08,0x23,0xd2]
          vpmovsdw %xmm18, %xmm18

// CHECK: vpmovsdw %xmm18, %xmm18 {%k6}
// CHECK:  encoding: [0x62,0xa2,0x7e,0x0e,0x23,0xd2]
          vpmovsdw %xmm18, %xmm18 {%k6}

// CHECK: vpmovsdw %xmm18, %xmm18 {%k6} {z}
// CHECK:  encoding: [0x62,0xa2,0x7e,0x8e,0x23,0xd2]
          vpmovsdw %xmm18, %xmm18 {%k6} {z}

// CHECK: vpmovsdw %ymm18, %xmm20
// CHECK:  encoding: [0x62,0xa2,0x7e,0x28,0x23,0xd4]
          vpmovsdw %ymm18, %xmm20

// CHECK: vpmovsdw %ymm18, %xmm20 {%k2}
// CHECK:  encoding: [0x62,0xa2,0x7e,0x2a,0x23,0xd4]
          vpmovsdw %ymm18, %xmm20 {%k2}

// CHECK: vpmovsdw %ymm18, %xmm20 {%k2} {z}
// CHECK:  encoding: [0x62,0xa2,0x7e,0xaa,0x23,0xd4]
          vpmovsdw %ymm18, %xmm20 {%k2} {z}

// CHECK: vpmovsdw %xmm29, (%rcx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x23,0x29]
          vpmovsdw %xmm29, (%rcx)

// CHECK: vpmovsdw %xmm29, (%rcx) {%k1}
// CHECK:  encoding: [0x62,0x62,0x7e,0x09,0x23,0x29]
          vpmovsdw %xmm29, (%rcx) {%k1}

// CHECK: vpmovsdw %xmm29, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x22,0x7e,0x08,0x23,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpmovsdw %xmm29, 291(%rax,%r14,8)

// CHECK: vpmovsdw %xmm29, 1016(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x23,0x6a,0x7f]
          vpmovsdw %xmm29, 1016(%rdx)

// CHECK: vpmovsdw %xmm29, 1024(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x23,0xaa,0x00,0x04,0x00,0x00]
          vpmovsdw %xmm29, 1024(%rdx)

// CHECK: vpmovsdw %xmm29, -1024(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x23,0x6a,0x80]
          vpmovsdw %xmm29, -1024(%rdx)

// CHECK: vpmovsdw %xmm29, -1032(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x23,0xaa,0xf8,0xfb,0xff,0xff]
          vpmovsdw %xmm29, -1032(%rdx)

// CHECK: vpmovsdw %ymm19, (%rcx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x23,0x19]
          vpmovsdw %ymm19, (%rcx)

// CHECK: vpmovsdw %ymm19, (%rcx) {%k6}
// CHECK:  encoding: [0x62,0xe2,0x7e,0x2e,0x23,0x19]
          vpmovsdw %ymm19, (%rcx) {%k6}

// CHECK: vpmovsdw %ymm19, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa2,0x7e,0x28,0x23,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpmovsdw %ymm19, 291(%rax,%r14,8)

// CHECK: vpmovsdw %ymm19, 2032(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x23,0x5a,0x7f]
          vpmovsdw %ymm19, 2032(%rdx)

// CHECK: vpmovsdw %ymm19, 2048(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x23,0x9a,0x00,0x08,0x00,0x00]
          vpmovsdw %ymm19, 2048(%rdx)

// CHECK: vpmovsdw %ymm19, -2048(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x23,0x5a,0x80]
          vpmovsdw %ymm19, -2048(%rdx)

// CHECK: vpmovsdw %ymm19, -2064(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x23,0x9a,0xf0,0xf7,0xff,0xff]
          vpmovsdw %ymm19, -2064(%rdx)

// CHECK: vpmovusdw %xmm18, %xmm18
// CHECK:  encoding: [0x62,0xa2,0x7e,0x08,0x13,0xd2]
          vpmovusdw %xmm18, %xmm18

// CHECK: vpmovusdw %xmm18, %xmm18 {%k2}
// CHECK:  encoding: [0x62,0xa2,0x7e,0x0a,0x13,0xd2]
          vpmovusdw %xmm18, %xmm18 {%k2}

// CHECK: vpmovusdw %xmm18, %xmm18 {%k2} {z}
// CHECK:  encoding: [0x62,0xa2,0x7e,0x8a,0x13,0xd2]
          vpmovusdw %xmm18, %xmm18 {%k2} {z}

// CHECK: vpmovusdw %ymm25, %xmm28
// CHECK:  encoding: [0x62,0x02,0x7e,0x28,0x13,0xcc]
          vpmovusdw %ymm25, %xmm28

// CHECK: vpmovusdw %ymm25, %xmm28 {%k4}
// CHECK:  encoding: [0x62,0x02,0x7e,0x2c,0x13,0xcc]
          vpmovusdw %ymm25, %xmm28 {%k4}

// CHECK: vpmovusdw %ymm25, %xmm28 {%k4} {z}
// CHECK:  encoding: [0x62,0x02,0x7e,0xac,0x13,0xcc]
          vpmovusdw %ymm25, %xmm28 {%k4} {z}

// CHECK: vpmovusdw %xmm20, (%rcx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x13,0x21]
          vpmovusdw %xmm20, (%rcx)

// CHECK: vpmovusdw %xmm20, (%rcx) {%k6}
// CHECK:  encoding: [0x62,0xe2,0x7e,0x0e,0x13,0x21]
          vpmovusdw %xmm20, (%rcx) {%k6}

// CHECK: vpmovusdw %xmm20, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa2,0x7e,0x08,0x13,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpmovusdw %xmm20, 291(%rax,%r14,8)

// CHECK: vpmovusdw %xmm20, 1016(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x13,0x62,0x7f]
          vpmovusdw %xmm20, 1016(%rdx)

// CHECK: vpmovusdw %xmm20, 1024(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x13,0xa2,0x00,0x04,0x00,0x00]
          vpmovusdw %xmm20, 1024(%rdx)

// CHECK: vpmovusdw %xmm20, -1024(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x13,0x62,0x80]
          vpmovusdw %xmm20, -1024(%rdx)

// CHECK: vpmovusdw %xmm20, -1032(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x13,0xa2,0xf8,0xfb,0xff,0xff]
          vpmovusdw %xmm20, -1032(%rdx)

// CHECK: vpmovusdw %ymm23, (%rcx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x13,0x39]
          vpmovusdw %ymm23, (%rcx)

// CHECK: vpmovusdw %ymm23, (%rcx) {%k1}
// CHECK:  encoding: [0x62,0xe2,0x7e,0x29,0x13,0x39]
          vpmovusdw %ymm23, (%rcx) {%k1}

// CHECK: vpmovusdw %ymm23, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa2,0x7e,0x28,0x13,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vpmovusdw %ymm23, 291(%rax,%r14,8)

// CHECK: vpmovusdw %ymm23, 2032(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x13,0x7a,0x7f]
          vpmovusdw %ymm23, 2032(%rdx)

// CHECK: vpmovusdw %ymm23, 2048(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x13,0xba,0x00,0x08,0x00,0x00]
          vpmovusdw %ymm23, 2048(%rdx)

// CHECK: vpmovusdw %ymm23, -2048(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x13,0x7a,0x80]
          vpmovusdw %ymm23, -2048(%rdx)

// CHECK: vpmovusdw %ymm23, -2064(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x13,0xba,0xf0,0xf7,0xff,0xff]
          vpmovusdw %ymm23, -2064(%rdx)

// CHECK: vrndscalepd $171, %xmm28, %xmm29
// CHECK:  encoding: [0x62,0x03,0xfd,0x08,0x09,0xec,0xab]
          vrndscalepd $0xab, %xmm28, %xmm29

// CHECK: vrndscalepd $171, %xmm28, %xmm29 {%k4}
// CHECK:  encoding: [0x62,0x03,0xfd,0x0c,0x09,0xec,0xab]
          vrndscalepd $0xab, %xmm28, %xmm29 {%k4}

// CHECK: vrndscalepd $171, %xmm28, %xmm29 {%k4} {z}
// CHECK:  encoding: [0x62,0x03,0xfd,0x8c,0x09,0xec,0xab]
          vrndscalepd $0xab, %xmm28, %xmm29 {%k4} {z}

// CHECK: vrndscalepd $123, %xmm28, %xmm29
// CHECK:  encoding: [0x62,0x03,0xfd,0x08,0x09,0xec,0x7b]
          vrndscalepd $0x7b, %xmm28, %xmm29

// CHECK: vrndscalepd $123, (%rcx), %xmm29
// CHECK:  encoding: [0x62,0x63,0xfd,0x08,0x09,0x29,0x7b]
          vrndscalepd $0x7b, (%rcx), %xmm29

// CHECK: vrndscalepd $123, 291(%rax,%r14,8), %xmm29
// CHECK:  encoding: [0x62,0x23,0xfd,0x08,0x09,0xac,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vrndscalepd $0x7b, 291(%rax,%r14,8), %xmm29

// CHECK: vrndscalepd $123, (%rcx){1to2}, %xmm29
// CHECK:  encoding: [0x62,0x63,0xfd,0x18,0x09,0x29,0x7b]
          vrndscalepd $0x7b, (%rcx){1to2}, %xmm29

// CHECK: vrndscalepd $123, 2032(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x63,0xfd,0x08,0x09,0x6a,0x7f,0x7b]
          vrndscalepd $0x7b, 2032(%rdx), %xmm29

// CHECK: vrndscalepd $123, 2048(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x63,0xfd,0x08,0x09,0xaa,0x00,0x08,0x00,0x00,0x7b]
          vrndscalepd $0x7b, 2048(%rdx), %xmm29

// CHECK: vrndscalepd $123, -2048(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x63,0xfd,0x08,0x09,0x6a,0x80,0x7b]
          vrndscalepd $0x7b, -2048(%rdx), %xmm29

// CHECK: vrndscalepd $123, -2064(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x63,0xfd,0x08,0x09,0xaa,0xf0,0xf7,0xff,0xff,0x7b]
          vrndscalepd $0x7b, -2064(%rdx), %xmm29

// CHECK: vrndscalepd $123, 1016(%rdx){1to2}, %xmm29
// CHECK:  encoding: [0x62,0x63,0xfd,0x18,0x09,0x6a,0x7f,0x7b]
          vrndscalepd $0x7b, 1016(%rdx){1to2}, %xmm29

// CHECK: vrndscalepd $123, 1024(%rdx){1to2}, %xmm29
// CHECK:  encoding: [0x62,0x63,0xfd,0x18,0x09,0xaa,0x00,0x04,0x00,0x00,0x7b]
          vrndscalepd $0x7b, 1024(%rdx){1to2}, %xmm29

// CHECK: vrndscalepd $123, -1024(%rdx){1to2}, %xmm29
// CHECK:  encoding: [0x62,0x63,0xfd,0x18,0x09,0x6a,0x80,0x7b]
          vrndscalepd $0x7b, -1024(%rdx){1to2}, %xmm29

// CHECK: vrndscalepd $123, -1032(%rdx){1to2}, %xmm29
// CHECK:  encoding: [0x62,0x63,0xfd,0x18,0x09,0xaa,0xf8,0xfb,0xff,0xff,0x7b]
          vrndscalepd $0x7b, -1032(%rdx){1to2}, %xmm29

// CHECK: vrndscalepd $171, %ymm22, %ymm17
// CHECK:  encoding: [0x62,0xa3,0xfd,0x28,0x09,0xce,0xab]
          vrndscalepd $0xab, %ymm22, %ymm17

// CHECK: vrndscalepd $171, %ymm22, %ymm17 {%k7}
// CHECK:  encoding: [0x62,0xa3,0xfd,0x2f,0x09,0xce,0xab]
          vrndscalepd $0xab, %ymm22, %ymm17 {%k7}

// CHECK: vrndscalepd $171, %ymm22, %ymm17 {%k7} {z}
// CHECK:  encoding: [0x62,0xa3,0xfd,0xaf,0x09,0xce,0xab]
          vrndscalepd $0xab, %ymm22, %ymm17 {%k7} {z}

// CHECK: vrndscalepd $123, %ymm22, %ymm17
// CHECK:  encoding: [0x62,0xa3,0xfd,0x28,0x09,0xce,0x7b]
          vrndscalepd $0x7b, %ymm22, %ymm17

// CHECK: vrndscalepd $123, (%rcx), %ymm17
// CHECK:  encoding: [0x62,0xe3,0xfd,0x28,0x09,0x09,0x7b]
          vrndscalepd $0x7b, (%rcx), %ymm17

// CHECK: vrndscalepd $123, 291(%rax,%r14,8), %ymm17
// CHECK:  encoding: [0x62,0xa3,0xfd,0x28,0x09,0x8c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vrndscalepd $0x7b, 291(%rax,%r14,8), %ymm17

// CHECK: vrndscalepd $123, (%rcx){1to4}, %ymm17
// CHECK:  encoding: [0x62,0xe3,0xfd,0x38,0x09,0x09,0x7b]
          vrndscalepd $0x7b, (%rcx){1to4}, %ymm17

// CHECK: vrndscalepd $123, 4064(%rdx), %ymm17
// CHECK:  encoding: [0x62,0xe3,0xfd,0x28,0x09,0x4a,0x7f,0x7b]
          vrndscalepd $0x7b, 4064(%rdx), %ymm17

// CHECK: vrndscalepd $123, 4096(%rdx), %ymm17
// CHECK:  encoding: [0x62,0xe3,0xfd,0x28,0x09,0x8a,0x00,0x10,0x00,0x00,0x7b]
          vrndscalepd $0x7b, 4096(%rdx), %ymm17

// CHECK: vrndscalepd $123, -4096(%rdx), %ymm17
// CHECK:  encoding: [0x62,0xe3,0xfd,0x28,0x09,0x4a,0x80,0x7b]
          vrndscalepd $0x7b, -4096(%rdx), %ymm17

// CHECK: vrndscalepd $123, -4128(%rdx), %ymm17
// CHECK:  encoding: [0x62,0xe3,0xfd,0x28,0x09,0x8a,0xe0,0xef,0xff,0xff,0x7b]
          vrndscalepd $0x7b, -4128(%rdx), %ymm17

// CHECK: vrndscalepd $123, 1016(%rdx){1to4}, %ymm17
// CHECK:  encoding: [0x62,0xe3,0xfd,0x38,0x09,0x4a,0x7f,0x7b]
          vrndscalepd $0x7b, 1016(%rdx){1to4}, %ymm17

// CHECK: vrndscalepd $123, 1024(%rdx){1to4}, %ymm17
// CHECK:  encoding: [0x62,0xe3,0xfd,0x38,0x09,0x8a,0x00,0x04,0x00,0x00,0x7b]
          vrndscalepd $0x7b, 1024(%rdx){1to4}, %ymm17

// CHECK: vrndscalepd $123, -1024(%rdx){1to4}, %ymm17
// CHECK:  encoding: [0x62,0xe3,0xfd,0x38,0x09,0x4a,0x80,0x7b]
          vrndscalepd $0x7b, -1024(%rdx){1to4}, %ymm17

// CHECK: vrndscalepd $123, -1032(%rdx){1to4}, %ymm17
// CHECK:  encoding: [0x62,0xe3,0xfd,0x38,0x09,0x8a,0xf8,0xfb,0xff,0xff,0x7b]
          vrndscalepd $0x7b, -1032(%rdx){1to4}, %ymm17

// CHECK: vrndscaleps $171, %xmm26, %xmm22
// CHECK:  encoding: [0x62,0x83,0x7d,0x08,0x08,0xf2,0xab]
          vrndscaleps $0xab, %xmm26, %xmm22

// CHECK: vrndscaleps $171, %xmm26, %xmm22 {%k4}
// CHECK:  encoding: [0x62,0x83,0x7d,0x0c,0x08,0xf2,0xab]
          vrndscaleps $0xab, %xmm26, %xmm22 {%k4}

// CHECK: vrndscaleps $171, %xmm26, %xmm22 {%k4} {z}
// CHECK:  encoding: [0x62,0x83,0x7d,0x8c,0x08,0xf2,0xab]
          vrndscaleps $0xab, %xmm26, %xmm22 {%k4} {z}

// CHECK: vrndscaleps $123, %xmm26, %xmm22
// CHECK:  encoding: [0x62,0x83,0x7d,0x08,0x08,0xf2,0x7b]
          vrndscaleps $0x7b, %xmm26, %xmm22

// CHECK: vrndscaleps $123, (%rcx), %xmm22
// CHECK:  encoding: [0x62,0xe3,0x7d,0x08,0x08,0x31,0x7b]
          vrndscaleps $0x7b, (%rcx), %xmm22

// CHECK: vrndscaleps $123, 291(%rax,%r14,8), %xmm22
// CHECK:  encoding: [0x62,0xa3,0x7d,0x08,0x08,0xb4,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vrndscaleps $0x7b, 291(%rax,%r14,8), %xmm22

// CHECK: vrndscaleps $123, (%rcx){1to4}, %xmm22
// CHECK:  encoding: [0x62,0xe3,0x7d,0x18,0x08,0x31,0x7b]
          vrndscaleps $0x7b, (%rcx){1to4}, %xmm22

// CHECK: vrndscaleps $123, 2032(%rdx), %xmm22
// CHECK:  encoding: [0x62,0xe3,0x7d,0x08,0x08,0x72,0x7f,0x7b]
          vrndscaleps $0x7b, 2032(%rdx), %xmm22

// CHECK: vrndscaleps $123, 2048(%rdx), %xmm22
// CHECK:  encoding: [0x62,0xe3,0x7d,0x08,0x08,0xb2,0x00,0x08,0x00,0x00,0x7b]
          vrndscaleps $0x7b, 2048(%rdx), %xmm22

// CHECK: vrndscaleps $123, -2048(%rdx), %xmm22
// CHECK:  encoding: [0x62,0xe3,0x7d,0x08,0x08,0x72,0x80,0x7b]
          vrndscaleps $0x7b, -2048(%rdx), %xmm22

// CHECK: vrndscaleps $123, -2064(%rdx), %xmm22
// CHECK:  encoding: [0x62,0xe3,0x7d,0x08,0x08,0xb2,0xf0,0xf7,0xff,0xff,0x7b]
          vrndscaleps $0x7b, -2064(%rdx), %xmm22

// CHECK: vrndscaleps $123, 508(%rdx){1to4}, %xmm22
// CHECK:  encoding: [0x62,0xe3,0x7d,0x18,0x08,0x72,0x7f,0x7b]
          vrndscaleps $0x7b, 508(%rdx){1to4}, %xmm22

// CHECK: vrndscaleps $123, 512(%rdx){1to4}, %xmm22
// CHECK:  encoding: [0x62,0xe3,0x7d,0x18,0x08,0xb2,0x00,0x02,0x00,0x00,0x7b]
          vrndscaleps $0x7b, 512(%rdx){1to4}, %xmm22

// CHECK: vrndscaleps $123, -512(%rdx){1to4}, %xmm22
// CHECK:  encoding: [0x62,0xe3,0x7d,0x18,0x08,0x72,0x80,0x7b]
          vrndscaleps $0x7b, -512(%rdx){1to4}, %xmm22

// CHECK: vrndscaleps $123, -516(%rdx){1to4}, %xmm22
// CHECK:  encoding: [0x62,0xe3,0x7d,0x18,0x08,0xb2,0xfc,0xfd,0xff,0xff,0x7b]
          vrndscaleps $0x7b, -516(%rdx){1to4}, %xmm22

// CHECK: vrndscaleps $171, %ymm17, %ymm19
// CHECK:  encoding: [0x62,0xa3,0x7d,0x28,0x08,0xd9,0xab]
          vrndscaleps $0xab, %ymm17, %ymm19

// CHECK: vrndscaleps $171, %ymm17, %ymm19 {%k7}
// CHECK:  encoding: [0x62,0xa3,0x7d,0x2f,0x08,0xd9,0xab]
          vrndscaleps $0xab, %ymm17, %ymm19 {%k7}

// CHECK: vrndscaleps $171, %ymm17, %ymm19 {%k7} {z}
// CHECK:  encoding: [0x62,0xa3,0x7d,0xaf,0x08,0xd9,0xab]
          vrndscaleps $0xab, %ymm17, %ymm19 {%k7} {z}

// CHECK: vrndscaleps $123, %ymm17, %ymm19
// CHECK:  encoding: [0x62,0xa3,0x7d,0x28,0x08,0xd9,0x7b]
          vrndscaleps $0x7b, %ymm17, %ymm19

// CHECK: vrndscaleps $123, (%rcx), %ymm19
// CHECK:  encoding: [0x62,0xe3,0x7d,0x28,0x08,0x19,0x7b]
          vrndscaleps $0x7b, (%rcx), %ymm19

// CHECK: vrndscaleps $123, 291(%rax,%r14,8), %ymm19
// CHECK:  encoding: [0x62,0xa3,0x7d,0x28,0x08,0x9c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vrndscaleps $0x7b, 291(%rax,%r14,8), %ymm19

// CHECK: vrndscaleps $123, (%rcx){1to8}, %ymm19
// CHECK:  encoding: [0x62,0xe3,0x7d,0x38,0x08,0x19,0x7b]
          vrndscaleps $0x7b, (%rcx){1to8}, %ymm19

// CHECK: vrndscaleps $123, 4064(%rdx), %ymm19
// CHECK:  encoding: [0x62,0xe3,0x7d,0x28,0x08,0x5a,0x7f,0x7b]
          vrndscaleps $0x7b, 4064(%rdx), %ymm19

// CHECK: vrndscaleps $123, 4096(%rdx), %ymm19
// CHECK:  encoding: [0x62,0xe3,0x7d,0x28,0x08,0x9a,0x00,0x10,0x00,0x00,0x7b]
          vrndscaleps $0x7b, 4096(%rdx), %ymm19

// CHECK: vrndscaleps $123, -4096(%rdx), %ymm19
// CHECK:  encoding: [0x62,0xe3,0x7d,0x28,0x08,0x5a,0x80,0x7b]
          vrndscaleps $0x7b, -4096(%rdx), %ymm19

// CHECK: vrndscaleps $123, -4128(%rdx), %ymm19
// CHECK:  encoding: [0x62,0xe3,0x7d,0x28,0x08,0x9a,0xe0,0xef,0xff,0xff,0x7b]
          vrndscaleps $0x7b, -4128(%rdx), %ymm19

// CHECK: vrndscaleps $123, 508(%rdx){1to8}, %ymm19
// CHECK:  encoding: [0x62,0xe3,0x7d,0x38,0x08,0x5a,0x7f,0x7b]
          vrndscaleps $0x7b, 508(%rdx){1to8}, %ymm19

// CHECK: vrndscaleps $123, 512(%rdx){1to8}, %ymm19
// CHECK:  encoding: [0x62,0xe3,0x7d,0x38,0x08,0x9a,0x00,0x02,0x00,0x00,0x7b]
          vrndscaleps $0x7b, 512(%rdx){1to8}, %ymm19

// CHECK: vrndscaleps $123, -512(%rdx){1to8}, %ymm19
// CHECK:  encoding: [0x62,0xe3,0x7d,0x38,0x08,0x5a,0x80,0x7b]
          vrndscaleps $0x7b, -512(%rdx){1to8}, %ymm19

// CHECK: vrndscaleps $123, -516(%rdx){1to8}, %ymm19
// CHECK:  encoding: [0x62,0xe3,0x7d,0x38,0x08,0x9a,0xfc,0xfd,0xff,0xff,0x7b]
          vrndscaleps $0x7b, -516(%rdx){1to8}, %ymm19

// CHECK: vcvtps2pd %xmm27, %xmm20
// CHECK:  encoding: [0x62,0x81,0x7c,0x08,0x5a,0xe3]
          vcvtps2pd %xmm27, %xmm20

// CHECK: vcvtps2pd %xmm27, %xmm20 {%k3}
// CHECK:  encoding: [0x62,0x81,0x7c,0x0b,0x5a,0xe3]
          vcvtps2pd %xmm27, %xmm20 {%k3}

// CHECK: vcvtps2pd %xmm27, %xmm20 {%k3} {z}
// CHECK:  encoding: [0x62,0x81,0x7c,0x8b,0x5a,0xe3]
          vcvtps2pd %xmm27, %xmm20 {%k3} {z}

// CHECK: vcvtps2pd (%rcx), %xmm20
// CHECK:  encoding: [0x62,0xe1,0x7c,0x08,0x5a,0x21]
          vcvtps2pd (%rcx), %xmm20

// CHECK: vcvtps2pd 291(%rax,%r14,8), %xmm20
// CHECK:  encoding: [0x62,0xa1,0x7c,0x08,0x5a,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vcvtps2pd 291(%rax,%r14,8), %xmm20

// CHECK: vcvtps2pd (%rcx){1to2}, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x7c,0x18,0x5a,0x21]
          vcvtps2pd (%rcx){1to2}, %xmm20

// CHECK: vcvtps2pd 1016(%rdx), %xmm20
// CHECK:  encoding: [0x62,0xe1,0x7c,0x08,0x5a,0x62,0x7f]
          vcvtps2pd 1016(%rdx), %xmm20

// CHECK: vcvtps2pd 1024(%rdx), %xmm20
// CHECK:  encoding: [0x62,0xe1,0x7c,0x08,0x5a,0xa2,0x00,0x04,0x00,0x00]
          vcvtps2pd 1024(%rdx), %xmm20

// CHECK: vcvtps2pd -1024(%rdx), %xmm20
// CHECK:  encoding: [0x62,0xe1,0x7c,0x08,0x5a,0x62,0x80]
          vcvtps2pd -1024(%rdx), %xmm20

// CHECK: vcvtps2pd -1032(%rdx), %xmm20
// CHECK:  encoding: [0x62,0xe1,0x7c,0x08,0x5a,0xa2,0xf8,0xfb,0xff,0xff]
          vcvtps2pd -1032(%rdx), %xmm20

// CHECK: vcvtps2pd 508(%rdx){1to2}, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x7c,0x18,0x5a,0x62,0x7f]
          vcvtps2pd 508(%rdx){1to2}, %xmm20

// CHECK: vcvtps2pd 512(%rdx){1to2}, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x7c,0x18,0x5a,0xa2,0x00,0x02,0x00,0x00]
          vcvtps2pd 512(%rdx){1to2}, %xmm20

// CHECK: vcvtps2pd -512(%rdx){1to2}, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x7c,0x18,0x5a,0x62,0x80]
          vcvtps2pd -512(%rdx){1to2}, %xmm20

// CHECK: vcvtps2pd -516(%rdx){1to2}, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x7c,0x18,0x5a,0xa2,0xfc,0xfd,0xff,0xff]
          vcvtps2pd -516(%rdx){1to2}, %xmm20

// CHECK: vcvtps2pd %xmm18, %ymm22
// CHECK:  encoding: [0x62,0xa1,0x7c,0x28,0x5a,0xf2]
          vcvtps2pd %xmm18, %ymm22

// CHECK: vcvtps2pd %xmm18, %ymm22 {%k2}
// CHECK:  encoding: [0x62,0xa1,0x7c,0x2a,0x5a,0xf2]
          vcvtps2pd %xmm18, %ymm22 {%k2}

// CHECK: vcvtps2pd %xmm18, %ymm22 {%k2} {z}
// CHECK:  encoding: [0x62,0xa1,0x7c,0xaa,0x5a,0xf2]
          vcvtps2pd %xmm18, %ymm22 {%k2} {z}

// CHECK: vcvtps2pd (%rcx), %ymm22
// CHECK:  encoding: [0x62,0xe1,0x7c,0x28,0x5a,0x31]
          vcvtps2pd (%rcx), %ymm22

// CHECK: vcvtps2pd 291(%rax,%r14,8), %ymm22
// CHECK:  encoding: [0x62,0xa1,0x7c,0x28,0x5a,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vcvtps2pd 291(%rax,%r14,8), %ymm22

// CHECK: vcvtps2pd (%rcx){1to4}, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x7c,0x38,0x5a,0x31]
          vcvtps2pd (%rcx){1to4}, %ymm22

// CHECK: vcvtps2pd 2032(%rdx), %ymm22
// CHECK:  encoding: [0x62,0xe1,0x7c,0x28,0x5a,0x72,0x7f]
          vcvtps2pd 2032(%rdx), %ymm22

// CHECK: vcvtps2pd 2048(%rdx), %ymm22
// CHECK:  encoding: [0x62,0xe1,0x7c,0x28,0x5a,0xb2,0x00,0x08,0x00,0x00]
          vcvtps2pd 2048(%rdx), %ymm22

// CHECK: vcvtps2pd -2048(%rdx), %ymm22
// CHECK:  encoding: [0x62,0xe1,0x7c,0x28,0x5a,0x72,0x80]
          vcvtps2pd -2048(%rdx), %ymm22

// CHECK: vcvtps2pd -2064(%rdx), %ymm22
// CHECK:  encoding: [0x62,0xe1,0x7c,0x28,0x5a,0xb2,0xf0,0xf7,0xff,0xff]
          vcvtps2pd -2064(%rdx), %ymm22

// CHECK: vcvtps2pd 508(%rdx){1to4}, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x7c,0x38,0x5a,0x72,0x7f]
          vcvtps2pd 508(%rdx){1to4}, %ymm22

// CHECK: vcvtps2pd 512(%rdx){1to4}, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x7c,0x38,0x5a,0xb2,0x00,0x02,0x00,0x00]
          vcvtps2pd 512(%rdx){1to4}, %ymm22

// CHECK: vcvtps2pd -512(%rdx){1to4}, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x7c,0x38,0x5a,0x72,0x80]
          vcvtps2pd -512(%rdx){1to4}, %ymm22

// CHECK: vcvtps2pd -516(%rdx){1to4}, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x7c,0x38,0x5a,0xb2,0xfc,0xfd,0xff,0xff]
          vcvtps2pd -516(%rdx){1to4}, %ymm22

// CHECK: vcvtpd2ps %xmm27, %xmm27
// CHECK:  encoding: [0x62,0x01,0xfd,0x08,0x5a,0xdb]
          vcvtpd2ps %xmm27, %xmm27

// CHECK: vcvtpd2ps %xmm27, %xmm27 {%k7}
// CHECK:  encoding: [0x62,0x01,0xfd,0x0f,0x5a,0xdb]
          vcvtpd2ps %xmm27, %xmm27 {%k7}

// CHECK: vcvtpd2ps %xmm27, %xmm27 {%k7} {z}
// CHECK:  encoding: [0x62,0x01,0xfd,0x8f,0x5a,0xdb]
          vcvtpd2ps %xmm27, %xmm27 {%k7} {z}

// CHECK: vcvtpd2psx (%rcx), %xmm27
// CHECK:  encoding: [0x62,0x61,0xfd,0x08,0x5a,0x19]
          vcvtpd2psx (%rcx), %xmm27

// CHECK: vcvtpd2psx 291(%rax,%r14,8), %xmm27
// CHECK:  encoding: [0x62,0x21,0xfd,0x08,0x5a,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vcvtpd2psx 291(%rax,%r14,8), %xmm27

// CHECK: vcvtpd2ps (%rcx){1to2}, %xmm27
// CHECK:  encoding: [0x62,0x61,0xfd,0x18,0x5a,0x19]
          vcvtpd2ps (%rcx){1to2}, %xmm27

// CHECK: vcvtpd2psx 2032(%rdx), %xmm27
// CHECK:  encoding: [0x62,0x61,0xfd,0x08,0x5a,0x5a,0x7f]
          vcvtpd2psx 2032(%rdx), %xmm27

// CHECK: vcvtpd2psx 2048(%rdx), %xmm27
// CHECK:  encoding: [0x62,0x61,0xfd,0x08,0x5a,0x9a,0x00,0x08,0x00,0x00]
          vcvtpd2psx 2048(%rdx), %xmm27

// CHECK: vcvtpd2psx -2048(%rdx), %xmm27
// CHECK:  encoding: [0x62,0x61,0xfd,0x08,0x5a,0x5a,0x80]
          vcvtpd2psx -2048(%rdx), %xmm27

// CHECK: vcvtpd2psx -2064(%rdx), %xmm27
// CHECK:  encoding: [0x62,0x61,0xfd,0x08,0x5a,0x9a,0xf0,0xf7,0xff,0xff]
          vcvtpd2psx -2064(%rdx), %xmm27

// CHECK: vcvtpd2ps 1016(%rdx){1to2}, %xmm27
// CHECK:  encoding: [0x62,0x61,0xfd,0x18,0x5a,0x5a,0x7f]
          vcvtpd2ps 1016(%rdx){1to2}, %xmm27

// CHECK: vcvtpd2ps 1024(%rdx){1to2}, %xmm27
// CHECK:  encoding: [0x62,0x61,0xfd,0x18,0x5a,0x9a,0x00,0x04,0x00,0x00]
          vcvtpd2ps 1024(%rdx){1to2}, %xmm27

// CHECK: vcvtpd2ps -1024(%rdx){1to2}, %xmm27
// CHECK:  encoding: [0x62,0x61,0xfd,0x18,0x5a,0x5a,0x80]
          vcvtpd2ps -1024(%rdx){1to2}, %xmm27

// CHECK: vcvtpd2ps -1032(%rdx){1to2}, %xmm27
// CHECK:  encoding: [0x62,0x61,0xfd,0x18,0x5a,0x9a,0xf8,0xfb,0xff,0xff]
          vcvtpd2ps -1032(%rdx){1to2}, %xmm27

// CHECK: vcvtpd2ps %ymm20, %xmm20
// CHECK:  encoding: [0x62,0xa1,0xfd,0x28,0x5a,0xe4]
          vcvtpd2ps %ymm20, %xmm20

// CHECK: vcvtpd2ps %ymm20, %xmm20 {%k6}
// CHECK:  encoding: [0x62,0xa1,0xfd,0x2e,0x5a,0xe4]
          vcvtpd2ps %ymm20, %xmm20 {%k6}

// CHECK: vcvtpd2ps %ymm20, %xmm20 {%k6} {z}
// CHECK:  encoding: [0x62,0xa1,0xfd,0xae,0x5a,0xe4]
          vcvtpd2ps %ymm20, %xmm20 {%k6} {z}

// CHECK: vcvtpd2psy (%rcx), %xmm20
// CHECK:  encoding: [0x62,0xe1,0xfd,0x28,0x5a,0x21]
          vcvtpd2psy (%rcx), %xmm20

// CHECK: vcvtpd2psy 291(%rax,%r14,8), %xmm20
// CHECK:  encoding: [0x62,0xa1,0xfd,0x28,0x5a,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vcvtpd2psy 291(%rax,%r14,8), %xmm20

// CHECK: vcvtpd2ps (%rcx){1to4}, %xmm20
// CHECK:  encoding: [0x62,0xe1,0xfd,0x38,0x5a,0x21]
          vcvtpd2ps (%rcx){1to4}, %xmm20

// CHECK: vcvtpd2psy 4064(%rdx), %xmm20
// CHECK:  encoding: [0x62,0xe1,0xfd,0x28,0x5a,0x62,0x7f]
          vcvtpd2psy 4064(%rdx), %xmm20

// CHECK: vcvtpd2psy 4096(%rdx), %xmm20
// CHECK:  encoding: [0x62,0xe1,0xfd,0x28,0x5a,0xa2,0x00,0x10,0x00,0x00]
          vcvtpd2psy 4096(%rdx), %xmm20

// CHECK: vcvtpd2psy -4096(%rdx), %xmm20
// CHECK:  encoding: [0x62,0xe1,0xfd,0x28,0x5a,0x62,0x80]
          vcvtpd2psy -4096(%rdx), %xmm20

// CHECK: vcvtpd2psy -4128(%rdx), %xmm20
// CHECK:  encoding: [0x62,0xe1,0xfd,0x28,0x5a,0xa2,0xe0,0xef,0xff,0xff]
          vcvtpd2psy -4128(%rdx), %xmm20

// CHECK: vcvtpd2ps 1016(%rdx){1to4}, %xmm20
// CHECK:  encoding: [0x62,0xe1,0xfd,0x38,0x5a,0x62,0x7f]
          vcvtpd2ps 1016(%rdx){1to4}, %xmm20

// CHECK: vcvtpd2ps 1024(%rdx){1to4}, %xmm20
// CHECK:  encoding: [0x62,0xe1,0xfd,0x38,0x5a,0xa2,0x00,0x04,0x00,0x00]
          vcvtpd2ps 1024(%rdx){1to4}, %xmm20

// CHECK: vcvtpd2ps -1024(%rdx){1to4}, %xmm20
// CHECK:  encoding: [0x62,0xe1,0xfd,0x38,0x5a,0x62,0x80]
          vcvtpd2ps -1024(%rdx){1to4}, %xmm20

// CHECK: vcvtpd2ps -1032(%rdx){1to4}, %xmm20
// CHECK:  encoding: [0x62,0xe1,0xfd,0x38,0x5a,0xa2,0xf8,0xfb,0xff,0xff]
          vcvtpd2ps -1032(%rdx){1to4}, %xmm20

// CHECK: vcvtpd2udq %xmm22, %xmm28
// CHECK:  encoding: [0x62,0x21,0xfc,0x08,0x79,0xe6]
          vcvtpd2udq %xmm22, %xmm28

// CHECK: vcvtpd2udq %xmm22, %xmm28 {%k3}
// CHECK:  encoding: [0x62,0x21,0xfc,0x0b,0x79,0xe6]
          vcvtpd2udq %xmm22, %xmm28 {%k3}

// CHECK: vcvtpd2udq %xmm22, %xmm28 {%k3} {z}
// CHECK:  encoding: [0x62,0x21,0xfc,0x8b,0x79,0xe6]
          vcvtpd2udq %xmm22, %xmm28 {%k3} {z}

// CHECK: vcvtpd2udqx (%rcx), %xmm28
// CHECK:  encoding: [0x62,0x61,0xfc,0x08,0x79,0x21]
          vcvtpd2udqx (%rcx), %xmm28

// CHECK: vcvtpd2udqx 291(%rax,%r14,8), %xmm28
// CHECK:  encoding: [0x62,0x21,0xfc,0x08,0x79,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vcvtpd2udqx 291(%rax,%r14,8), %xmm28

// CHECK: vcvtpd2udq (%rcx){1to2}, %xmm28
// CHECK:  encoding: [0x62,0x61,0xfc,0x18,0x79,0x21]
          vcvtpd2udq (%rcx){1to2}, %xmm28

// CHECK: vcvtpd2udqx 2032(%rdx), %xmm28
// CHECK:  encoding: [0x62,0x61,0xfc,0x08,0x79,0x62,0x7f]
          vcvtpd2udqx 2032(%rdx), %xmm28

// CHECK: vcvtpd2udqx 2048(%rdx), %xmm28
// CHECK:  encoding: [0x62,0x61,0xfc,0x08,0x79,0xa2,0x00,0x08,0x00,0x00]
          vcvtpd2udqx 2048(%rdx), %xmm28

// CHECK: vcvtpd2udqx -2048(%rdx), %xmm28
// CHECK:  encoding: [0x62,0x61,0xfc,0x08,0x79,0x62,0x80]
          vcvtpd2udqx -2048(%rdx), %xmm28

// CHECK: vcvtpd2udqx -2064(%rdx), %xmm28
// CHECK:  encoding: [0x62,0x61,0xfc,0x08,0x79,0xa2,0xf0,0xf7,0xff,0xff]
          vcvtpd2udqx -2064(%rdx), %xmm28

// CHECK: vcvtpd2udq 1016(%rdx){1to2}, %xmm28
// CHECK:  encoding: [0x62,0x61,0xfc,0x18,0x79,0x62,0x7f]
          vcvtpd2udq 1016(%rdx){1to2}, %xmm28

// CHECK: vcvtpd2udq 1024(%rdx){1to2}, %xmm28
// CHECK:  encoding: [0x62,0x61,0xfc,0x18,0x79,0xa2,0x00,0x04,0x00,0x00]
          vcvtpd2udq 1024(%rdx){1to2}, %xmm28

// CHECK: vcvtpd2udq -1024(%rdx){1to2}, %xmm28
// CHECK:  encoding: [0x62,0x61,0xfc,0x18,0x79,0x62,0x80]
          vcvtpd2udq -1024(%rdx){1to2}, %xmm28

// CHECK: vcvtpd2udq -1032(%rdx){1to2}, %xmm28
// CHECK:  encoding: [0x62,0x61,0xfc,0x18,0x79,0xa2,0xf8,0xfb,0xff,0xff]
          vcvtpd2udq -1032(%rdx){1to2}, %xmm28

// CHECK: vcvtpd2udq %ymm20, %xmm21
// CHECK:  encoding: [0x62,0xa1,0xfc,0x28,0x79,0xec]
          vcvtpd2udq %ymm20, %xmm21

// CHECK: vcvtpd2udq %ymm20, %xmm21 {%k2}
// CHECK:  encoding: [0x62,0xa1,0xfc,0x2a,0x79,0xec]
          vcvtpd2udq %ymm20, %xmm21 {%k2}

// CHECK: vcvtpd2udq %ymm20, %xmm21 {%k2} {z}
// CHECK:  encoding: [0x62,0xa1,0xfc,0xaa,0x79,0xec]
          vcvtpd2udq %ymm20, %xmm21 {%k2} {z}

// CHECK: vcvtpd2udqy (%rcx), %xmm21
// CHECK:  encoding: [0x62,0xe1,0xfc,0x28,0x79,0x29]
          vcvtpd2udqy (%rcx), %xmm21

// CHECK: vcvtpd2udqy 291(%rax,%r14,8), %xmm21
// CHECK:  encoding: [0x62,0xa1,0xfc,0x28,0x79,0xac,0xf0,0x23,0x01,0x00,0x00]
          vcvtpd2udqy 291(%rax,%r14,8), %xmm21

// CHECK: vcvtpd2udq (%rcx){1to4}, %xmm21
// CHECK:  encoding: [0x62,0xe1,0xfc,0x38,0x79,0x29]
          vcvtpd2udq (%rcx){1to4}, %xmm21

// CHECK: vcvtpd2udqy 4064(%rdx), %xmm21
// CHECK:  encoding: [0x62,0xe1,0xfc,0x28,0x79,0x6a,0x7f]
          vcvtpd2udqy 4064(%rdx), %xmm21

// CHECK: vcvtpd2udqy 4096(%rdx), %xmm21
// CHECK:  encoding: [0x62,0xe1,0xfc,0x28,0x79,0xaa,0x00,0x10,0x00,0x00]
          vcvtpd2udqy 4096(%rdx), %xmm21

// CHECK: vcvtpd2udqy -4096(%rdx), %xmm21
// CHECK:  encoding: [0x62,0xe1,0xfc,0x28,0x79,0x6a,0x80]
          vcvtpd2udqy -4096(%rdx), %xmm21

// CHECK: vcvtpd2udqy -4128(%rdx), %xmm21
// CHECK:  encoding: [0x62,0xe1,0xfc,0x28,0x79,0xaa,0xe0,0xef,0xff,0xff]
          vcvtpd2udqy -4128(%rdx), %xmm21

// CHECK: vcvtpd2udq 1016(%rdx){1to4}, %xmm21
// CHECK:  encoding: [0x62,0xe1,0xfc,0x38,0x79,0x6a,0x7f]
          vcvtpd2udq 1016(%rdx){1to4}, %xmm21

// CHECK: vcvtpd2udq 1024(%rdx){1to4}, %xmm21
// CHECK:  encoding: [0x62,0xe1,0xfc,0x38,0x79,0xaa,0x00,0x04,0x00,0x00]
          vcvtpd2udq 1024(%rdx){1to4}, %xmm21

// CHECK: vcvtpd2udq -1024(%rdx){1to4}, %xmm21
// CHECK:  encoding: [0x62,0xe1,0xfc,0x38,0x79,0x6a,0x80]
          vcvtpd2udq -1024(%rdx){1to4}, %xmm21

// CHECK: vcvtpd2udq -1032(%rdx){1to4}, %xmm21
// CHECK:  encoding: [0x62,0xe1,0xfc,0x38,0x79,0xaa,0xf8,0xfb,0xff,0xff]
          vcvtpd2udq -1032(%rdx){1to4}, %xmm21
// CHECK: vcvtps2udq %xmm19, %xmm30
// CHECK:  encoding: [0x62,0x21,0x7c,0x08,0x79,0xf3]
          vcvtps2udq %xmm19, %xmm30

// CHECK: vcvtps2udq %xmm19, %xmm30 {%k3}
// CHECK:  encoding: [0x62,0x21,0x7c,0x0b,0x79,0xf3]
          vcvtps2udq %xmm19, %xmm30 {%k3}

// CHECK: vcvtps2udq %xmm19, %xmm30 {%k3} {z}
// CHECK:  encoding: [0x62,0x21,0x7c,0x8b,0x79,0xf3]
          vcvtps2udq %xmm19, %xmm30 {%k3} {z}

// CHECK: vcvtps2udq (%rcx), %xmm30
// CHECK:  encoding: [0x62,0x61,0x7c,0x08,0x79,0x31]
          vcvtps2udq (%rcx), %xmm30

// CHECK: vcvtps2udq 291(%rax,%r14,8), %xmm30
// CHECK:  encoding: [0x62,0x21,0x7c,0x08,0x79,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vcvtps2udq 291(%rax,%r14,8), %xmm30

// CHECK: vcvtps2udq (%rcx){1to4}, %xmm30
// CHECK:  encoding: [0x62,0x61,0x7c,0x18,0x79,0x31]
          vcvtps2udq (%rcx){1to4}, %xmm30

// CHECK: vcvtps2udq 2032(%rdx), %xmm30
// CHECK:  encoding: [0x62,0x61,0x7c,0x08,0x79,0x72,0x7f]
          vcvtps2udq 2032(%rdx), %xmm30

// CHECK: vcvtps2udq 2048(%rdx), %xmm30
// CHECK:  encoding: [0x62,0x61,0x7c,0x08,0x79,0xb2,0x00,0x08,0x00,0x00]
          vcvtps2udq 2048(%rdx), %xmm30

// CHECK: vcvtps2udq -2048(%rdx), %xmm30
// CHECK:  encoding: [0x62,0x61,0x7c,0x08,0x79,0x72,0x80]
          vcvtps2udq -2048(%rdx), %xmm30

// CHECK: vcvtps2udq -2064(%rdx), %xmm30
// CHECK:  encoding: [0x62,0x61,0x7c,0x08,0x79,0xb2,0xf0,0xf7,0xff,0xff]
          vcvtps2udq -2064(%rdx), %xmm30

// CHECK: vcvtps2udq 508(%rdx){1to4}, %xmm30
// CHECK:  encoding: [0x62,0x61,0x7c,0x18,0x79,0x72,0x7f]
          vcvtps2udq 508(%rdx){1to4}, %xmm30

// CHECK: vcvtps2udq 512(%rdx){1to4}, %xmm30
// CHECK:  encoding: [0x62,0x61,0x7c,0x18,0x79,0xb2,0x00,0x02,0x00,0x00]
          vcvtps2udq 512(%rdx){1to4}, %xmm30

// CHECK: vcvtps2udq -512(%rdx){1to4}, %xmm30
// CHECK:  encoding: [0x62,0x61,0x7c,0x18,0x79,0x72,0x80]
          vcvtps2udq -512(%rdx){1to4}, %xmm30

// CHECK: vcvtps2udq -516(%rdx){1to4}, %xmm30
// CHECK:  encoding: [0x62,0x61,0x7c,0x18,0x79,0xb2,0xfc,0xfd,0xff,0xff]
          vcvtps2udq -516(%rdx){1to4}, %xmm30

// CHECK: vcvtps2udq %ymm23, %ymm25
// CHECK:  encoding: [0x62,0x21,0x7c,0x28,0x79,0xcf]
          vcvtps2udq %ymm23, %ymm25

// CHECK: vcvtps2udq %ymm23, %ymm25 {%k4}
// CHECK:  encoding: [0x62,0x21,0x7c,0x2c,0x79,0xcf]
          vcvtps2udq %ymm23, %ymm25 {%k4}

// CHECK: vcvtps2udq %ymm23, %ymm25 {%k4} {z}
// CHECK:  encoding: [0x62,0x21,0x7c,0xac,0x79,0xcf]
          vcvtps2udq %ymm23, %ymm25 {%k4} {z}

// CHECK: vcvtps2udq (%rcx), %ymm25
// CHECK:  encoding: [0x62,0x61,0x7c,0x28,0x79,0x09]
          vcvtps2udq (%rcx), %ymm25

// CHECK: vcvtps2udq 291(%rax,%r14,8), %ymm25
// CHECK:  encoding: [0x62,0x21,0x7c,0x28,0x79,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vcvtps2udq 291(%rax,%r14,8), %ymm25

// CHECK: vcvtps2udq (%rcx){1to8}, %ymm25
// CHECK:  encoding: [0x62,0x61,0x7c,0x38,0x79,0x09]
          vcvtps2udq (%rcx){1to8}, %ymm25

// CHECK: vcvtps2udq 4064(%rdx), %ymm25
// CHECK:  encoding: [0x62,0x61,0x7c,0x28,0x79,0x4a,0x7f]
          vcvtps2udq 4064(%rdx), %ymm25

// CHECK: vcvtps2udq 4096(%rdx), %ymm25
// CHECK:  encoding: [0x62,0x61,0x7c,0x28,0x79,0x8a,0x00,0x10,0x00,0x00]
          vcvtps2udq 4096(%rdx), %ymm25

// CHECK: vcvtps2udq -4096(%rdx), %ymm25
// CHECK:  encoding: [0x62,0x61,0x7c,0x28,0x79,0x4a,0x80]
          vcvtps2udq -4096(%rdx), %ymm25

// CHECK: vcvtps2udq -4128(%rdx), %ymm25
// CHECK:  encoding: [0x62,0x61,0x7c,0x28,0x79,0x8a,0xe0,0xef,0xff,0xff]
          vcvtps2udq -4128(%rdx), %ymm25

// CHECK: vcvtps2udq 508(%rdx){1to8}, %ymm25
// CHECK:  encoding: [0x62,0x61,0x7c,0x38,0x79,0x4a,0x7f]
          vcvtps2udq 508(%rdx){1to8}, %ymm25

// CHECK: vcvtps2udq 512(%rdx){1to8}, %ymm25
// CHECK:  encoding: [0x62,0x61,0x7c,0x38,0x79,0x8a,0x00,0x02,0x00,0x00]
          vcvtps2udq 512(%rdx){1to8}, %ymm25

// CHECK: vcvtps2udq -512(%rdx){1to8}, %ymm25
// CHECK:  encoding: [0x62,0x61,0x7c,0x38,0x79,0x4a,0x80]
          vcvtps2udq -512(%rdx){1to8}, %ymm25

// CHECK: vcvtps2udq -516(%rdx){1to8}, %ymm25
// CHECK:  encoding: [0x62,0x61,0x7c,0x38,0x79,0x8a,0xfc,0xfd,0xff,0xff]
          vcvtps2udq -516(%rdx){1to8}, %ymm25

// CHECK: vcvttpd2dq %xmm23, %xmm29
// CHECK:  encoding: [0x62,0x21,0xfd,0x08,0xe6,0xef]
          vcvttpd2dq %xmm23, %xmm29

// CHECK: vcvttpd2dq %xmm23, %xmm29 {%k6}
// CHECK:  encoding: [0x62,0x21,0xfd,0x0e,0xe6,0xef]
          vcvttpd2dq %xmm23, %xmm29 {%k6}

// CHECK: vcvttpd2dq %xmm23, %xmm29 {%k6} {z}
// CHECK:  encoding: [0x62,0x21,0xfd,0x8e,0xe6,0xef]
          vcvttpd2dq %xmm23, %xmm29 {%k6} {z}

// CHECK: vcvttpd2dqx (%rcx), %xmm29
// CHECK:  encoding: [0x62,0x61,0xfd,0x08,0xe6,0x29]
          vcvttpd2dqx (%rcx), %xmm29

// CHECK: vcvttpd2dqx 291(%rax,%r14,8), %xmm29
// CHECK:  encoding: [0x62,0x21,0xfd,0x08,0xe6,0xac,0xf0,0x23,0x01,0x00,0x00]
          vcvttpd2dqx 291(%rax,%r14,8), %xmm29

// CHECK: vcvttpd2dq (%rcx){1to2}, %xmm29
// CHECK:  encoding: [0x62,0x61,0xfd,0x18,0xe6,0x29]
          vcvttpd2dq (%rcx){1to2}, %xmm29

// CHECK: vcvttpd2dqx 2032(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x61,0xfd,0x08,0xe6,0x6a,0x7f]
          vcvttpd2dqx 2032(%rdx), %xmm29

// CHECK: vcvttpd2dqx 2048(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x61,0xfd,0x08,0xe6,0xaa,0x00,0x08,0x00,0x00]
          vcvttpd2dqx 2048(%rdx), %xmm29

// CHECK: vcvttpd2dqx -2048(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x61,0xfd,0x08,0xe6,0x6a,0x80]
          vcvttpd2dqx -2048(%rdx), %xmm29

// CHECK: vcvttpd2dqx -2064(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x61,0xfd,0x08,0xe6,0xaa,0xf0,0xf7,0xff,0xff]
          vcvttpd2dqx -2064(%rdx), %xmm29

// CHECK: vcvttpd2dq 1016(%rdx){1to2}, %xmm29
// CHECK:  encoding: [0x62,0x61,0xfd,0x18,0xe6,0x6a,0x7f]
          vcvttpd2dq 1016(%rdx){1to2}, %xmm29

// CHECK: vcvttpd2dq 1024(%rdx){1to2}, %xmm29
// CHECK:  encoding: [0x62,0x61,0xfd,0x18,0xe6,0xaa,0x00,0x04,0x00,0x00]
          vcvttpd2dq 1024(%rdx){1to2}, %xmm29

// CHECK: vcvttpd2dq -1024(%rdx){1to2}, %xmm29
// CHECK:  encoding: [0x62,0x61,0xfd,0x18,0xe6,0x6a,0x80]
          vcvttpd2dq -1024(%rdx){1to2}, %xmm29

// CHECK: vcvttpd2dq -1032(%rdx){1to2}, %xmm29
// CHECK:  encoding: [0x62,0x61,0xfd,0x18,0xe6,0xaa,0xf8,0xfb,0xff,0xff]
          vcvttpd2dq -1032(%rdx){1to2}, %xmm29

// CHECK: vcvttpd2dq %ymm29, %xmm30
// CHECK:  encoding: [0x62,0x01,0xfd,0x28,0xe6,0xf5]
          vcvttpd2dq %ymm29, %xmm30

// CHECK: vcvttpd2dq %ymm29, %xmm30 {%k6}
// CHECK:  encoding: [0x62,0x01,0xfd,0x2e,0xe6,0xf5]
          vcvttpd2dq %ymm29, %xmm30 {%k6}

// CHECK: vcvttpd2dq %ymm29, %xmm30 {%k6} {z}
// CHECK:  encoding: [0x62,0x01,0xfd,0xae,0xe6,0xf5]
          vcvttpd2dq %ymm29, %xmm30 {%k6} {z}

// CHECK: vcvttpd2dqy (%rcx), %xmm30
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0xe6,0x31]
          vcvttpd2dqy (%rcx), %xmm30

// CHECK: vcvttpd2dqy 291(%rax,%r14,8), %xmm30
// CHECK:  encoding: [0x62,0x21,0xfd,0x28,0xe6,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vcvttpd2dqy 291(%rax,%r14,8), %xmm30

// CHECK: vcvttpd2dq (%rcx){1to4}, %xmm30
// CHECK:  encoding: [0x62,0x61,0xfd,0x38,0xe6,0x31]
          vcvttpd2dq (%rcx){1to4}, %xmm30

// CHECK: vcvttpd2dqy 4064(%rdx), %xmm30
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0xe6,0x72,0x7f]
          vcvttpd2dqy 4064(%rdx), %xmm30

// CHECK: vcvttpd2dqy 4096(%rdx), %xmm30
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0xe6,0xb2,0x00,0x10,0x00,0x00]
          vcvttpd2dqy 4096(%rdx), %xmm30

// CHECK: vcvttpd2dqy -4096(%rdx), %xmm30
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0xe6,0x72,0x80]
          vcvttpd2dqy -4096(%rdx), %xmm30

// CHECK: vcvttpd2dqy -4128(%rdx), %xmm30
// CHECK:  encoding: [0x62,0x61,0xfd,0x28,0xe6,0xb2,0xe0,0xef,0xff,0xff]
          vcvttpd2dqy -4128(%rdx), %xmm30

// CHECK: vcvttpd2dq 1016(%rdx){1to4}, %xmm30
// CHECK:  encoding: [0x62,0x61,0xfd,0x38,0xe6,0x72,0x7f]
          vcvttpd2dq 1016(%rdx){1to4}, %xmm30

// CHECK: vcvttpd2dq 1024(%rdx){1to4}, %xmm30
// CHECK:  encoding: [0x62,0x61,0xfd,0x38,0xe6,0xb2,0x00,0x04,0x00,0x00]
          vcvttpd2dq 1024(%rdx){1to4}, %xmm30

// CHECK: vcvttpd2dq -1024(%rdx){1to4}, %xmm30
// CHECK:  encoding: [0x62,0x61,0xfd,0x38,0xe6,0x72,0x80]
          vcvttpd2dq -1024(%rdx){1to4}, %xmm30

// CHECK: vcvttpd2dq -1032(%rdx){1to4}, %xmm30
// CHECK:  encoding: [0x62,0x61,0xfd,0x38,0xe6,0xb2,0xf8,0xfb,0xff,0xff]
          vcvttpd2dq -1032(%rdx){1to4}, %xmm30

// CHECK: vcvttps2dq %xmm22, %xmm17
// CHECK:  encoding: [0x62,0xa1,0x7e,0x08,0x5b,0xce]
          vcvttps2dq %xmm22, %xmm17

// CHECK: vcvttps2dq %xmm22, %xmm17 {%k4}
// CHECK:  encoding: [0x62,0xa1,0x7e,0x0c,0x5b,0xce]
          vcvttps2dq %xmm22, %xmm17 {%k4}

// CHECK: vcvttps2dq %xmm22, %xmm17 {%k4} {z}
// CHECK:  encoding: [0x62,0xa1,0x7e,0x8c,0x5b,0xce]
          vcvttps2dq %xmm22, %xmm17 {%k4} {z}

// CHECK: vcvttps2dq (%rcx), %xmm17
// CHECK:  encoding: [0x62,0xe1,0x7e,0x08,0x5b,0x09]
          vcvttps2dq (%rcx), %xmm17

// CHECK: vcvttps2dq 291(%rax,%r14,8), %xmm17
// CHECK:  encoding: [0x62,0xa1,0x7e,0x08,0x5b,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vcvttps2dq 291(%rax,%r14,8), %xmm17

// CHECK: vcvttps2dq (%rcx){1to4}, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x7e,0x18,0x5b,0x09]
          vcvttps2dq (%rcx){1to4}, %xmm17

// CHECK: vcvttps2dq 2032(%rdx), %xmm17
// CHECK:  encoding: [0x62,0xe1,0x7e,0x08,0x5b,0x4a,0x7f]
          vcvttps2dq 2032(%rdx), %xmm17

// CHECK: vcvttps2dq 2048(%rdx), %xmm17
// CHECK:  encoding: [0x62,0xe1,0x7e,0x08,0x5b,0x8a,0x00,0x08,0x00,0x00]
          vcvttps2dq 2048(%rdx), %xmm17

// CHECK: vcvttps2dq -2048(%rdx), %xmm17
// CHECK:  encoding: [0x62,0xe1,0x7e,0x08,0x5b,0x4a,0x80]
          vcvttps2dq -2048(%rdx), %xmm17

// CHECK: vcvttps2dq -2064(%rdx), %xmm17
// CHECK:  encoding: [0x62,0xe1,0x7e,0x08,0x5b,0x8a,0xf0,0xf7,0xff,0xff]
          vcvttps2dq -2064(%rdx), %xmm17

// CHECK: vcvttps2dq 508(%rdx){1to4}, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x7e,0x18,0x5b,0x4a,0x7f]
          vcvttps2dq 508(%rdx){1to4}, %xmm17

// CHECK: vcvttps2dq 512(%rdx){1to4}, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x7e,0x18,0x5b,0x8a,0x00,0x02,0x00,0x00]
          vcvttps2dq 512(%rdx){1to4}, %xmm17

// CHECK: vcvttps2dq -512(%rdx){1to4}, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x7e,0x18,0x5b,0x4a,0x80]
          vcvttps2dq -512(%rdx){1to4}, %xmm17

// CHECK: vcvttps2dq -516(%rdx){1to4}, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x7e,0x18,0x5b,0x8a,0xfc,0xfd,0xff,0xff]
          vcvttps2dq -516(%rdx){1to4}, %xmm17

// CHECK: vcvttps2dq %ymm28, %ymm25
// CHECK:  encoding: [0x62,0x01,0x7e,0x28,0x5b,0xcc]
          vcvttps2dq %ymm28, %ymm25

// CHECK: vcvttps2dq %ymm28, %ymm25 {%k2}
// CHECK:  encoding: [0x62,0x01,0x7e,0x2a,0x5b,0xcc]
          vcvttps2dq %ymm28, %ymm25 {%k2}

// CHECK: vcvttps2dq %ymm28, %ymm25 {%k2} {z}
// CHECK:  encoding: [0x62,0x01,0x7e,0xaa,0x5b,0xcc]
          vcvttps2dq %ymm28, %ymm25 {%k2} {z}

// CHECK: vcvttps2dq (%rcx), %ymm25
// CHECK:  encoding: [0x62,0x61,0x7e,0x28,0x5b,0x09]
          vcvttps2dq (%rcx), %ymm25

// CHECK: vcvttps2dq 291(%rax,%r14,8), %ymm25
// CHECK:  encoding: [0x62,0x21,0x7e,0x28,0x5b,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vcvttps2dq 291(%rax,%r14,8), %ymm25

// CHECK: vcvttps2dq (%rcx){1to8}, %ymm25
// CHECK:  encoding: [0x62,0x61,0x7e,0x38,0x5b,0x09]
          vcvttps2dq (%rcx){1to8}, %ymm25

// CHECK: vcvttps2dq 4064(%rdx), %ymm25
// CHECK:  encoding: [0x62,0x61,0x7e,0x28,0x5b,0x4a,0x7f]
          vcvttps2dq 4064(%rdx), %ymm25

// CHECK: vcvttps2dq 4096(%rdx), %ymm25
// CHECK:  encoding: [0x62,0x61,0x7e,0x28,0x5b,0x8a,0x00,0x10,0x00,0x00]
          vcvttps2dq 4096(%rdx), %ymm25

// CHECK: vcvttps2dq -4096(%rdx), %ymm25
// CHECK:  encoding: [0x62,0x61,0x7e,0x28,0x5b,0x4a,0x80]
          vcvttps2dq -4096(%rdx), %ymm25

// CHECK: vcvttps2dq -4128(%rdx), %ymm25
// CHECK:  encoding: [0x62,0x61,0x7e,0x28,0x5b,0x8a,0xe0,0xef,0xff,0xff]
          vcvttps2dq -4128(%rdx), %ymm25

// CHECK: vcvttps2dq 508(%rdx){1to8}, %ymm25
// CHECK:  encoding: [0x62,0x61,0x7e,0x38,0x5b,0x4a,0x7f]
          vcvttps2dq 508(%rdx){1to8}, %ymm25

// CHECK: vcvttps2dq 512(%rdx){1to8}, %ymm25
// CHECK:  encoding: [0x62,0x61,0x7e,0x38,0x5b,0x8a,0x00,0x02,0x00,0x00]
          vcvttps2dq 512(%rdx){1to8}, %ymm25

// CHECK: vcvttps2dq -512(%rdx){1to8}, %ymm25
// CHECK:  encoding: [0x62,0x61,0x7e,0x38,0x5b,0x4a,0x80]
          vcvttps2dq -512(%rdx){1to8}, %ymm25

// CHECK: vcvttps2dq -516(%rdx){1to8}, %ymm25
// CHECK:  encoding: [0x62,0x61,0x7e,0x38,0x5b,0x8a,0xfc,0xfd,0xff,0xff]
          vcvttps2dq -516(%rdx){1to8}, %ymm25

// CHECK: vcvtudq2pd %xmm19, %xmm25
// CHECK:  encoding: [0x62,0x21,0x7e,0x08,0x7a,0xcb]
          vcvtudq2pd %xmm19, %xmm25

// CHECK: vcvtudq2pd %xmm19, %xmm25 {%k4}
// CHECK:  encoding: [0x62,0x21,0x7e,0x0c,0x7a,0xcb]
          vcvtudq2pd %xmm19, %xmm25 {%k4}

// CHECK: vcvtudq2pd %xmm19, %xmm25 {%k4} {z}
// CHECK:  encoding: [0x62,0x21,0x7e,0x8c,0x7a,0xcb]
          vcvtudq2pd %xmm19, %xmm25 {%k4} {z}

// CHECK: vcvtudq2pd (%rcx), %xmm25
// CHECK:  encoding: [0x62,0x61,0x7e,0x08,0x7a,0x09]
          vcvtudq2pd (%rcx), %xmm25

// CHECK: vcvtudq2pd 291(%rax,%r14,8), %xmm25
// CHECK:  encoding: [0x62,0x21,0x7e,0x08,0x7a,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vcvtudq2pd 291(%rax,%r14,8), %xmm25

// CHECK: vcvtudq2pd (%rcx){1to2}, %xmm25
// CHECK:  encoding: [0x62,0x61,0x7e,0x18,0x7a,0x09]
          vcvtudq2pd (%rcx){1to2}, %xmm25

// CHECK: vcvtudq2pd 1016(%rdx), %xmm25
// CHECK:  encoding: [0x62,0x61,0x7e,0x08,0x7a,0x4a,0x7f]
          vcvtudq2pd 1016(%rdx), %xmm25

// CHECK: vcvtudq2pd 1024(%rdx), %xmm25
// CHECK:  encoding: [0x62,0x61,0x7e,0x08,0x7a,0x8a,0x00,0x04,0x00,0x00]
          vcvtudq2pd 1024(%rdx), %xmm25

// CHECK: vcvtudq2pd -1024(%rdx), %xmm25
// CHECK:  encoding: [0x62,0x61,0x7e,0x08,0x7a,0x4a,0x80]
          vcvtudq2pd -1024(%rdx), %xmm25

// CHECK: vcvtudq2pd -1032(%rdx), %xmm25
// CHECK:  encoding: [0x62,0x61,0x7e,0x08,0x7a,0x8a,0xf8,0xfb,0xff,0xff]
          vcvtudq2pd -1032(%rdx), %xmm25

// CHECK: vcvtudq2pd 508(%rdx){1to2}, %xmm25
// CHECK:  encoding: [0x62,0x61,0x7e,0x18,0x7a,0x4a,0x7f]
          vcvtudq2pd 508(%rdx){1to2}, %xmm25

// CHECK: vcvtudq2pd 512(%rdx){1to2}, %xmm25
// CHECK:  encoding: [0x62,0x61,0x7e,0x18,0x7a,0x8a,0x00,0x02,0x00,0x00]
          vcvtudq2pd 512(%rdx){1to2}, %xmm25

// CHECK: vcvtudq2pd -512(%rdx){1to2}, %xmm25
// CHECK:  encoding: [0x62,0x61,0x7e,0x18,0x7a,0x4a,0x80]
          vcvtudq2pd -512(%rdx){1to2}, %xmm25

// CHECK: vcvtudq2pd -516(%rdx){1to2}, %xmm25
// CHECK:  encoding: [0x62,0x61,0x7e,0x18,0x7a,0x8a,0xfc,0xfd,0xff,0xff]
          vcvtudq2pd -516(%rdx){1to2}, %xmm25

// CHECK: vcvtudq2pd %xmm20, %ymm25
// CHECK:  encoding: [0x62,0x21,0x7e,0x28,0x7a,0xcc]
          vcvtudq2pd %xmm20, %ymm25

// CHECK: vcvtudq2pd %xmm20, %ymm25 {%k6}
// CHECK:  encoding: [0x62,0x21,0x7e,0x2e,0x7a,0xcc]
          vcvtudq2pd %xmm20, %ymm25 {%k6}

// CHECK: vcvtudq2pd %xmm20, %ymm25 {%k6} {z}
// CHECK:  encoding: [0x62,0x21,0x7e,0xae,0x7a,0xcc]
          vcvtudq2pd %xmm20, %ymm25 {%k6} {z}

// CHECK: vcvtudq2pd (%rcx), %ymm25
// CHECK:  encoding: [0x62,0x61,0x7e,0x28,0x7a,0x09]
          vcvtudq2pd (%rcx), %ymm25

// CHECK: vcvtudq2pd 291(%rax,%r14,8), %ymm25
// CHECK:  encoding: [0x62,0x21,0x7e,0x28,0x7a,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vcvtudq2pd 291(%rax,%r14,8), %ymm25

// CHECK: vcvtudq2pd (%rcx){1to4}, %ymm25
// CHECK:  encoding: [0x62,0x61,0x7e,0x38,0x7a,0x09]
          vcvtudq2pd (%rcx){1to4}, %ymm25

// CHECK: vcvtudq2pd 2032(%rdx), %ymm25
// CHECK:  encoding: [0x62,0x61,0x7e,0x28,0x7a,0x4a,0x7f]
          vcvtudq2pd 2032(%rdx), %ymm25

// CHECK: vcvtudq2pd 2048(%rdx), %ymm25
// CHECK:  encoding: [0x62,0x61,0x7e,0x28,0x7a,0x8a,0x00,0x08,0x00,0x00]
          vcvtudq2pd 2048(%rdx), %ymm25

// CHECK: vcvtudq2pd -2048(%rdx), %ymm25
// CHECK:  encoding: [0x62,0x61,0x7e,0x28,0x7a,0x4a,0x80]
          vcvtudq2pd -2048(%rdx), %ymm25

// CHECK: vcvtudq2pd -2064(%rdx), %ymm25
// CHECK:  encoding: [0x62,0x61,0x7e,0x28,0x7a,0x8a,0xf0,0xf7,0xff,0xff]
          vcvtudq2pd -2064(%rdx), %ymm25

// CHECK: vcvtudq2pd 508(%rdx){1to4}, %ymm25
// CHECK:  encoding: [0x62,0x61,0x7e,0x38,0x7a,0x4a,0x7f]
          vcvtudq2pd 508(%rdx){1to4}, %ymm25

// CHECK: vcvtudq2pd 512(%rdx){1to4}, %ymm25
// CHECK:  encoding: [0x62,0x61,0x7e,0x38,0x7a,0x8a,0x00,0x02,0x00,0x00]
          vcvtudq2pd 512(%rdx){1to4}, %ymm25

// CHECK: vcvtudq2pd -512(%rdx){1to4}, %ymm25
// CHECK:  encoding: [0x62,0x61,0x7e,0x38,0x7a,0x4a,0x80]
          vcvtudq2pd -512(%rdx){1to4}, %ymm25

// CHECK: vcvtudq2pd -516(%rdx){1to4}, %ymm25
// CHECK:  encoding: [0x62,0x61,0x7e,0x38,0x7a,0x8a,0xfc,0xfd,0xff,0xff]
          vcvtudq2pd -516(%rdx){1to4}, %ymm25

// CHECK: vcvtudq2ps %xmm23, %xmm23
// CHECK:  encoding: [0x62,0xa1,0x7f,0x08,0x7a,0xff]
          vcvtudq2ps %xmm23, %xmm23

// CHECK: vcvtudq2ps %xmm23, %xmm23 {%k1}
// CHECK:  encoding: [0x62,0xa1,0x7f,0x09,0x7a,0xff]
          vcvtudq2ps %xmm23, %xmm23 {%k1}

// CHECK: vcvtudq2ps %xmm23, %xmm23 {%k1} {z}
// CHECK:  encoding: [0x62,0xa1,0x7f,0x89,0x7a,0xff]
          vcvtudq2ps %xmm23, %xmm23 {%k1} {z}

// CHECK: vcvtudq2ps (%rcx), %xmm23
// CHECK:  encoding: [0x62,0xe1,0x7f,0x08,0x7a,0x39]
          vcvtudq2ps (%rcx), %xmm23

// CHECK: vcvtudq2ps 291(%rax,%r14,8), %xmm23
// CHECK:  encoding: [0x62,0xa1,0x7f,0x08,0x7a,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vcvtudq2ps 291(%rax,%r14,8), %xmm23

// CHECK: vcvtudq2ps (%rcx){1to4}, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x7f,0x18,0x7a,0x39]
          vcvtudq2ps (%rcx){1to4}, %xmm23

// CHECK: vcvtudq2ps 2032(%rdx), %xmm23
// CHECK:  encoding: [0x62,0xe1,0x7f,0x08,0x7a,0x7a,0x7f]
          vcvtudq2ps 2032(%rdx), %xmm23

// CHECK: vcvtudq2ps 2048(%rdx), %xmm23
// CHECK:  encoding: [0x62,0xe1,0x7f,0x08,0x7a,0xba,0x00,0x08,0x00,0x00]
          vcvtudq2ps 2048(%rdx), %xmm23

// CHECK: vcvtudq2ps -2048(%rdx), %xmm23
// CHECK:  encoding: [0x62,0xe1,0x7f,0x08,0x7a,0x7a,0x80]
          vcvtudq2ps -2048(%rdx), %xmm23

// CHECK: vcvtudq2ps -2064(%rdx), %xmm23
// CHECK:  encoding: [0x62,0xe1,0x7f,0x08,0x7a,0xba,0xf0,0xf7,0xff,0xff]
          vcvtudq2ps -2064(%rdx), %xmm23

// CHECK: vcvtudq2ps 508(%rdx){1to4}, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x7f,0x18,0x7a,0x7a,0x7f]
          vcvtudq2ps 508(%rdx){1to4}, %xmm23

// CHECK: vcvtudq2ps 512(%rdx){1to4}, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x7f,0x18,0x7a,0xba,0x00,0x02,0x00,0x00]
          vcvtudq2ps 512(%rdx){1to4}, %xmm23

// CHECK: vcvtudq2ps -512(%rdx){1to4}, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x7f,0x18,0x7a,0x7a,0x80]
          vcvtudq2ps -512(%rdx){1to4}, %xmm23

// CHECK: vcvtudq2ps -516(%rdx){1to4}, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x7f,0x18,0x7a,0xba,0xfc,0xfd,0xff,0xff]
          vcvtudq2ps -516(%rdx){1to4}, %xmm23

// CHECK: vcvtudq2ps %ymm25, %ymm23
// CHECK:  encoding: [0x62,0x81,0x7f,0x28,0x7a,0xf9]
          vcvtudq2ps %ymm25, %ymm23

// CHECK: vcvtudq2ps %ymm25, %ymm23 {%k3}
// CHECK:  encoding: [0x62,0x81,0x7f,0x2b,0x7a,0xf9]
          vcvtudq2ps %ymm25, %ymm23 {%k3}

// CHECK: vcvtudq2ps %ymm25, %ymm23 {%k3} {z}
// CHECK:  encoding: [0x62,0x81,0x7f,0xab,0x7a,0xf9]
          vcvtudq2ps %ymm25, %ymm23 {%k3} {z}

// CHECK: vcvtudq2ps (%rcx), %ymm23
// CHECK:  encoding: [0x62,0xe1,0x7f,0x28,0x7a,0x39]
          vcvtudq2ps (%rcx), %ymm23

// CHECK: vcvtudq2ps 291(%rax,%r14,8), %ymm23
// CHECK:  encoding: [0x62,0xa1,0x7f,0x28,0x7a,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vcvtudq2ps 291(%rax,%r14,8), %ymm23

// CHECK: vcvtudq2ps (%rcx){1to8}, %ymm23
// CHECK:  encoding: [0x62,0xe1,0x7f,0x38,0x7a,0x39]
          vcvtudq2ps (%rcx){1to8}, %ymm23

// CHECK: vcvtudq2ps 4064(%rdx), %ymm23
// CHECK:  encoding: [0x62,0xe1,0x7f,0x28,0x7a,0x7a,0x7f]
          vcvtudq2ps 4064(%rdx), %ymm23

// CHECK: vcvtudq2ps 4096(%rdx), %ymm23
// CHECK:  encoding: [0x62,0xe1,0x7f,0x28,0x7a,0xba,0x00,0x10,0x00,0x00]
          vcvtudq2ps 4096(%rdx), %ymm23

// CHECK: vcvtudq2ps -4096(%rdx), %ymm23
// CHECK:  encoding: [0x62,0xe1,0x7f,0x28,0x7a,0x7a,0x80]
          vcvtudq2ps -4096(%rdx), %ymm23

// CHECK: vcvtudq2ps -4128(%rdx), %ymm23
// CHECK:  encoding: [0x62,0xe1,0x7f,0x28,0x7a,0xba,0xe0,0xef,0xff,0xff]
          vcvtudq2ps -4128(%rdx), %ymm23

// CHECK: vcvtudq2ps 508(%rdx){1to8}, %ymm23
// CHECK:  encoding: [0x62,0xe1,0x7f,0x38,0x7a,0x7a,0x7f]
          vcvtudq2ps 508(%rdx){1to8}, %ymm23

// CHECK: vcvtudq2ps 512(%rdx){1to8}, %ymm23
// CHECK:  encoding: [0x62,0xe1,0x7f,0x38,0x7a,0xba,0x00,0x02,0x00,0x00]
          vcvtudq2ps 512(%rdx){1to8}, %ymm23

// CHECK: vcvtudq2ps -512(%rdx){1to8}, %ymm23
// CHECK:  encoding: [0x62,0xe1,0x7f,0x38,0x7a,0x7a,0x80]
          vcvtudq2ps -512(%rdx){1to8}, %ymm23

// CHECK: vcvtudq2ps -516(%rdx){1to8}, %ymm23
// CHECK:  encoding: [0x62,0xe1,0x7f,0x38,0x7a,0xba,0xfc,0xfd,0xff,0xff]
          vcvtudq2ps -516(%rdx){1to8}, %ymm23

// CHECK: vcvtdq2pd %xmm21, %xmm20
// CHECK:  encoding: [0x62,0xa1,0x7e,0x08,0xe6,0xe5]
          vcvtdq2pd %xmm21, %xmm20

// CHECK: vcvtdq2pd %xmm21, %xmm20 {%k5}
// CHECK:  encoding: [0x62,0xa1,0x7e,0x0d,0xe6,0xe5]
          vcvtdq2pd %xmm21, %xmm20 {%k5}

// CHECK: vcvtdq2pd %xmm21, %xmm20 {%k5} {z}
// CHECK:  encoding: [0x62,0xa1,0x7e,0x8d,0xe6,0xe5]
          vcvtdq2pd %xmm21, %xmm20 {%k5} {z}

// CHECK: vcvtdq2pd (%rcx), %xmm20
// CHECK:  encoding: [0x62,0xe1,0x7e,0x08,0xe6,0x21]
          vcvtdq2pd (%rcx), %xmm20

// CHECK: vcvtdq2pd 291(%rax,%r14,8), %xmm20
// CHECK:  encoding: [0x62,0xa1,0x7e,0x08,0xe6,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vcvtdq2pd 291(%rax,%r14,8), %xmm20

// CHECK: vcvtdq2pd (%rcx){1to2}, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x7e,0x18,0xe6,0x21]
          vcvtdq2pd (%rcx){1to2}, %xmm20

// CHECK: vcvtdq2pd 1016(%rdx), %xmm20
// CHECK:  encoding: [0x62,0xe1,0x7e,0x08,0xe6,0x62,0x7f]
          vcvtdq2pd 1016(%rdx), %xmm20

// CHECK: vcvtdq2pd 1024(%rdx), %xmm20
// CHECK:  encoding: [0x62,0xe1,0x7e,0x08,0xe6,0xa2,0x00,0x04,0x00,0x00]
          vcvtdq2pd 1024(%rdx), %xmm20

// CHECK: vcvtdq2pd -1024(%rdx), %xmm20
// CHECK:  encoding: [0x62,0xe1,0x7e,0x08,0xe6,0x62,0x80]
          vcvtdq2pd -1024(%rdx), %xmm20

// CHECK: vcvtdq2pd -1032(%rdx), %xmm20
// CHECK:  encoding: [0x62,0xe1,0x7e,0x08,0xe6,0xa2,0xf8,0xfb,0xff,0xff]
          vcvtdq2pd -1032(%rdx), %xmm20

// CHECK: vcvtdq2pd 508(%rdx){1to2}, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x7e,0x18,0xe6,0x62,0x7f]
          vcvtdq2pd 508(%rdx){1to2}, %xmm20

// CHECK: vcvtdq2pd 512(%rdx){1to2}, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x7e,0x18,0xe6,0xa2,0x00,0x02,0x00,0x00]
          vcvtdq2pd 512(%rdx){1to2}, %xmm20

// CHECK: vcvtdq2pd -512(%rdx){1to2}, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x7e,0x18,0xe6,0x62,0x80]
          vcvtdq2pd -512(%rdx){1to2}, %xmm20

// CHECK: vcvtdq2pd -516(%rdx){1to2}, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x7e,0x18,0xe6,0xa2,0xfc,0xfd,0xff,0xff]
          vcvtdq2pd -516(%rdx){1to2}, %xmm20

// CHECK: vcvtdq2pd %xmm23, %ymm28
// CHECK:  encoding: [0x62,0x21,0x7e,0x28,0xe6,0xe7]
          vcvtdq2pd %xmm23, %ymm28

// CHECK: vcvtdq2pd %xmm23, %ymm28 {%k2}
// CHECK:  encoding: [0x62,0x21,0x7e,0x2a,0xe6,0xe7]
          vcvtdq2pd %xmm23, %ymm28 {%k2}

// CHECK: vcvtdq2pd %xmm23, %ymm28 {%k2} {z}
// CHECK:  encoding: [0x62,0x21,0x7e,0xaa,0xe6,0xe7]
          vcvtdq2pd %xmm23, %ymm28 {%k2} {z}

// CHECK: vcvtdq2pd (%rcx), %ymm28
// CHECK:  encoding: [0x62,0x61,0x7e,0x28,0xe6,0x21]
          vcvtdq2pd (%rcx), %ymm28

// CHECK: vcvtdq2pd 291(%rax,%r14,8), %ymm28
// CHECK:  encoding: [0x62,0x21,0x7e,0x28,0xe6,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vcvtdq2pd 291(%rax,%r14,8), %ymm28

// CHECK: vcvtdq2pd (%rcx){1to4}, %ymm28
// CHECK:  encoding: [0x62,0x61,0x7e,0x38,0xe6,0x21]
          vcvtdq2pd (%rcx){1to4}, %ymm28

// CHECK: vcvtdq2pd 2032(%rdx), %ymm28
// CHECK:  encoding: [0x62,0x61,0x7e,0x28,0xe6,0x62,0x7f]
          vcvtdq2pd 2032(%rdx), %ymm28

// CHECK: vcvtdq2pd 2048(%rdx), %ymm28
// CHECK:  encoding: [0x62,0x61,0x7e,0x28,0xe6,0xa2,0x00,0x08,0x00,0x00]
          vcvtdq2pd 2048(%rdx), %ymm28

// CHECK: vcvtdq2pd -2048(%rdx), %ymm28
// CHECK:  encoding: [0x62,0x61,0x7e,0x28,0xe6,0x62,0x80]
          vcvtdq2pd -2048(%rdx), %ymm28

// CHECK: vcvtdq2pd -2064(%rdx), %ymm28
// CHECK:  encoding: [0x62,0x61,0x7e,0x28,0xe6,0xa2,0xf0,0xf7,0xff,0xff]
          vcvtdq2pd -2064(%rdx), %ymm28

// CHECK: vcvtdq2pd 508(%rdx){1to4}, %ymm28
// CHECK:  encoding: [0x62,0x61,0x7e,0x38,0xe6,0x62,0x7f]
          vcvtdq2pd 508(%rdx){1to4}, %ymm28

// CHECK: vcvtdq2pd 512(%rdx){1to4}, %ymm28
// CHECK:  encoding: [0x62,0x61,0x7e,0x38,0xe6,0xa2,0x00,0x02,0x00,0x00]
          vcvtdq2pd 512(%rdx){1to4}, %ymm28

// CHECK: vcvtdq2pd -512(%rdx){1to4}, %ymm28
// CHECK:  encoding: [0x62,0x61,0x7e,0x38,0xe6,0x62,0x80]
          vcvtdq2pd -512(%rdx){1to4}, %ymm28

// CHECK: vcvtdq2pd -516(%rdx){1to4}, %ymm28
// CHECK:  encoding: [0x62,0x61,0x7e,0x38,0xe6,0xa2,0xfc,0xfd,0xff,0xff]
          vcvtdq2pd -516(%rdx){1to4}, %ymm28

// CHECK: vcvtdq2ps %xmm22, %xmm28
// CHECK:  encoding: [0x62,0x21,0x7c,0x08,0x5b,0xe6]
          vcvtdq2ps %xmm22, %xmm28

// CHECK: vcvtdq2ps %xmm22, %xmm28 {%k1}
// CHECK:  encoding: [0x62,0x21,0x7c,0x09,0x5b,0xe6]
          vcvtdq2ps %xmm22, %xmm28 {%k1}

// CHECK: vcvtdq2ps %xmm22, %xmm28 {%k1} {z}
// CHECK:  encoding: [0x62,0x21,0x7c,0x89,0x5b,0xe6]
          vcvtdq2ps %xmm22, %xmm28 {%k1} {z}

// CHECK: vcvtdq2ps (%rcx), %xmm28
// CHECK:  encoding: [0x62,0x61,0x7c,0x08,0x5b,0x21]
          vcvtdq2ps (%rcx), %xmm28

// CHECK: vcvtdq2ps 291(%rax,%r14,8), %xmm28
// CHECK:  encoding: [0x62,0x21,0x7c,0x08,0x5b,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vcvtdq2ps 291(%rax,%r14,8), %xmm28

// CHECK: vcvtdq2ps (%rcx){1to4}, %xmm28
// CHECK:  encoding: [0x62,0x61,0x7c,0x18,0x5b,0x21]
          vcvtdq2ps (%rcx){1to4}, %xmm28

// CHECK: vcvtdq2ps 2032(%rdx), %xmm28
// CHECK:  encoding: [0x62,0x61,0x7c,0x08,0x5b,0x62,0x7f]
          vcvtdq2ps 2032(%rdx), %xmm28

// CHECK: vcvtdq2ps 2048(%rdx), %xmm28
// CHECK:  encoding: [0x62,0x61,0x7c,0x08,0x5b,0xa2,0x00,0x08,0x00,0x00]
          vcvtdq2ps 2048(%rdx), %xmm28

// CHECK: vcvtdq2ps -2048(%rdx), %xmm28
// CHECK:  encoding: [0x62,0x61,0x7c,0x08,0x5b,0x62,0x80]
          vcvtdq2ps -2048(%rdx), %xmm28

// CHECK: vcvtdq2ps -2064(%rdx), %xmm28
// CHECK:  encoding: [0x62,0x61,0x7c,0x08,0x5b,0xa2,0xf0,0xf7,0xff,0xff]
          vcvtdq2ps -2064(%rdx), %xmm28

// CHECK: vcvtdq2ps 508(%rdx){1to4}, %xmm28
// CHECK:  encoding: [0x62,0x61,0x7c,0x18,0x5b,0x62,0x7f]
          vcvtdq2ps 508(%rdx){1to4}, %xmm28

// CHECK: vcvtdq2ps 512(%rdx){1to4}, %xmm28
// CHECK:  encoding: [0x62,0x61,0x7c,0x18,0x5b,0xa2,0x00,0x02,0x00,0x00]
          vcvtdq2ps 512(%rdx){1to4}, %xmm28

// CHECK: vcvtdq2ps -512(%rdx){1to4}, %xmm28
// CHECK:  encoding: [0x62,0x61,0x7c,0x18,0x5b,0x62,0x80]
          vcvtdq2ps -512(%rdx){1to4}, %xmm28

// CHECK: vcvtdq2ps -516(%rdx){1to4}, %xmm28
// CHECK:  encoding: [0x62,0x61,0x7c,0x18,0x5b,0xa2,0xfc,0xfd,0xff,0xff]
          vcvtdq2ps -516(%rdx){1to4}, %xmm28

// CHECK: vcvtdq2ps %ymm23, %ymm24
// CHECK:  encoding: [0x62,0x21,0x7c,0x28,0x5b,0xc7]
          vcvtdq2ps %ymm23, %ymm24

// CHECK: vcvtdq2ps %ymm23, %ymm24 {%k3}
// CHECK:  encoding: [0x62,0x21,0x7c,0x2b,0x5b,0xc7]
          vcvtdq2ps %ymm23, %ymm24 {%k3}

// CHECK: vcvtdq2ps %ymm23, %ymm24 {%k3} {z}
// CHECK:  encoding: [0x62,0x21,0x7c,0xab,0x5b,0xc7]
          vcvtdq2ps %ymm23, %ymm24 {%k3} {z}

// CHECK: vcvtdq2ps (%rcx), %ymm24
// CHECK:  encoding: [0x62,0x61,0x7c,0x28,0x5b,0x01]
          vcvtdq2ps (%rcx), %ymm24

// CHECK: vcvtdq2ps 291(%rax,%r14,8), %ymm24
// CHECK:  encoding: [0x62,0x21,0x7c,0x28,0x5b,0x84,0xf0,0x23,0x01,0x00,0x00]
          vcvtdq2ps 291(%rax,%r14,8), %ymm24

// CHECK: vcvtdq2ps (%rcx){1to8}, %ymm24
// CHECK:  encoding: [0x62,0x61,0x7c,0x38,0x5b,0x01]
          vcvtdq2ps (%rcx){1to8}, %ymm24

// CHECK: vcvtdq2ps 4064(%rdx), %ymm24
// CHECK:  encoding: [0x62,0x61,0x7c,0x28,0x5b,0x42,0x7f]
          vcvtdq2ps 4064(%rdx), %ymm24

// CHECK: vcvtdq2ps 4096(%rdx), %ymm24
// CHECK:  encoding: [0x62,0x61,0x7c,0x28,0x5b,0x82,0x00,0x10,0x00,0x00]
          vcvtdq2ps 4096(%rdx), %ymm24

// CHECK: vcvtdq2ps -4096(%rdx), %ymm24
// CHECK:  encoding: [0x62,0x61,0x7c,0x28,0x5b,0x42,0x80]
          vcvtdq2ps -4096(%rdx), %ymm24

// CHECK: vcvtdq2ps -4128(%rdx), %ymm24
// CHECK:  encoding: [0x62,0x61,0x7c,0x28,0x5b,0x82,0xe0,0xef,0xff,0xff]
          vcvtdq2ps -4128(%rdx), %ymm24

// CHECK: vcvtdq2ps 508(%rdx){1to8}, %ymm24
// CHECK:  encoding: [0x62,0x61,0x7c,0x38,0x5b,0x42,0x7f]
          vcvtdq2ps 508(%rdx){1to8}, %ymm24

// CHECK: vcvtdq2ps 512(%rdx){1to8}, %ymm24
// CHECK:  encoding: [0x62,0x61,0x7c,0x38,0x5b,0x82,0x00,0x02,0x00,0x00]
          vcvtdq2ps 512(%rdx){1to8}, %ymm24

// CHECK: vcvtdq2ps -512(%rdx){1to8}, %ymm24
// CHECK:  encoding: [0x62,0x61,0x7c,0x38,0x5b,0x42,0x80]
          vcvtdq2ps -512(%rdx){1to8}, %ymm24

// CHECK: vcvtdq2ps -516(%rdx){1to8}, %ymm24
// CHECK:  encoding: [0x62,0x61,0x7c,0x38,0x5b,0x82,0xfc,0xfd,0xff,0xff]
          vcvtdq2ps -516(%rdx){1to8}, %ymm24
// CHECK: vunpckhps %xmm27, %xmm19, %xmm30
// CHECK:  encoding: [0x62,0x01,0x64,0x00,0x15,0xf3]
          vunpckhps %xmm27, %xmm19, %xmm30

// CHECK: vunpckhps %xmm27, %xmm19, %xmm30 {%k2}
// CHECK:  encoding: [0x62,0x01,0x64,0x02,0x15,0xf3]
          vunpckhps %xmm27, %xmm19, %xmm30 {%k2}

// CHECK: vunpckhps %xmm27, %xmm19, %xmm30 {%k2} {z}
// CHECK:  encoding: [0x62,0x01,0x64,0x82,0x15,0xf3]
          vunpckhps %xmm27, %xmm19, %xmm30 {%k2} {z}

// CHECK: vunpckhps (%rcx), %xmm19, %xmm30
// CHECK:  encoding: [0x62,0x61,0x64,0x00,0x15,0x31]
          vunpckhps (%rcx), %xmm19, %xmm30

// CHECK: vunpckhps 291(%rax,%r14,8), %xmm19, %xmm30
// CHECK:  encoding: [0x62,0x21,0x64,0x00,0x15,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vunpckhps 291(%rax,%r14,8), %xmm19, %xmm30

// CHECK: vunpckhps (%rcx){1to4}, %xmm19, %xmm30
// CHECK:  encoding: [0x62,0x61,0x64,0x10,0x15,0x31]
          vunpckhps (%rcx){1to4}, %xmm19, %xmm30

// CHECK: vunpckhps 2032(%rdx), %xmm19, %xmm30
// CHECK:  encoding: [0x62,0x61,0x64,0x00,0x15,0x72,0x7f]
          vunpckhps 2032(%rdx), %xmm19, %xmm30

// CHECK: vunpckhps 2048(%rdx), %xmm19, %xmm30
// CHECK:  encoding: [0x62,0x61,0x64,0x00,0x15,0xb2,0x00,0x08,0x00,0x00]
          vunpckhps 2048(%rdx), %xmm19, %xmm30

// CHECK: vunpckhps -2048(%rdx), %xmm19, %xmm30
// CHECK:  encoding: [0x62,0x61,0x64,0x00,0x15,0x72,0x80]
          vunpckhps -2048(%rdx), %xmm19, %xmm30

// CHECK: vunpckhps -2064(%rdx), %xmm19, %xmm30
// CHECK:  encoding: [0x62,0x61,0x64,0x00,0x15,0xb2,0xf0,0xf7,0xff,0xff]
          vunpckhps -2064(%rdx), %xmm19, %xmm30

// CHECK: vunpckhps 508(%rdx){1to4}, %xmm19, %xmm30
// CHECK:  encoding: [0x62,0x61,0x64,0x10,0x15,0x72,0x7f]
          vunpckhps 508(%rdx){1to4}, %xmm19, %xmm30

// CHECK: vunpckhps 512(%rdx){1to4}, %xmm19, %xmm30
// CHECK:  encoding: [0x62,0x61,0x64,0x10,0x15,0xb2,0x00,0x02,0x00,0x00]
          vunpckhps 512(%rdx){1to4}, %xmm19, %xmm30

// CHECK: vunpckhps -512(%rdx){1to4}, %xmm19, %xmm30
// CHECK:  encoding: [0x62,0x61,0x64,0x10,0x15,0x72,0x80]
          vunpckhps -512(%rdx){1to4}, %xmm19, %xmm30

// CHECK: vunpckhps -516(%rdx){1to4}, %xmm19, %xmm30
// CHECK:  encoding: [0x62,0x61,0x64,0x10,0x15,0xb2,0xfc,0xfd,0xff,0xff]
          vunpckhps -516(%rdx){1to4}, %xmm19, %xmm30

// CHECK: vunpckhps %ymm25, %ymm25, %ymm21
// CHECK:  encoding: [0x62,0x81,0x34,0x20,0x15,0xe9]
          vunpckhps %ymm25, %ymm25, %ymm21

// CHECK: vunpckhps %ymm25, %ymm25, %ymm21 {%k5}
// CHECK:  encoding: [0x62,0x81,0x34,0x25,0x15,0xe9]
          vunpckhps %ymm25, %ymm25, %ymm21 {%k5}

// CHECK: vunpckhps %ymm25, %ymm25, %ymm21 {%k5} {z}
// CHECK:  encoding: [0x62,0x81,0x34,0xa5,0x15,0xe9]
          vunpckhps %ymm25, %ymm25, %ymm21 {%k5} {z}

// CHECK: vunpckhps (%rcx), %ymm25, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x34,0x20,0x15,0x29]
          vunpckhps (%rcx), %ymm25, %ymm21

// CHECK: vunpckhps 291(%rax,%r14,8), %ymm25, %ymm21
// CHECK:  encoding: [0x62,0xa1,0x34,0x20,0x15,0xac,0xf0,0x23,0x01,0x00,0x00]
          vunpckhps 291(%rax,%r14,8), %ymm25, %ymm21

// CHECK: vunpckhps (%rcx){1to8}, %ymm25, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x34,0x30,0x15,0x29]
          vunpckhps (%rcx){1to8}, %ymm25, %ymm21

// CHECK: vunpckhps 4064(%rdx), %ymm25, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x34,0x20,0x15,0x6a,0x7f]
          vunpckhps 4064(%rdx), %ymm25, %ymm21

// CHECK: vunpckhps 4096(%rdx), %ymm25, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x34,0x20,0x15,0xaa,0x00,0x10,0x00,0x00]
          vunpckhps 4096(%rdx), %ymm25, %ymm21

// CHECK: vunpckhps -4096(%rdx), %ymm25, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x34,0x20,0x15,0x6a,0x80]
          vunpckhps -4096(%rdx), %ymm25, %ymm21

// CHECK: vunpckhps -4128(%rdx), %ymm25, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x34,0x20,0x15,0xaa,0xe0,0xef,0xff,0xff]
          vunpckhps -4128(%rdx), %ymm25, %ymm21

// CHECK: vunpckhps 508(%rdx){1to8}, %ymm25, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x34,0x30,0x15,0x6a,0x7f]
          vunpckhps 508(%rdx){1to8}, %ymm25, %ymm21

// CHECK: vunpckhps 512(%rdx){1to8}, %ymm25, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x34,0x30,0x15,0xaa,0x00,0x02,0x00,0x00]
          vunpckhps 512(%rdx){1to8}, %ymm25, %ymm21

// CHECK: vunpckhps -512(%rdx){1to8}, %ymm25, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x34,0x30,0x15,0x6a,0x80]
          vunpckhps -512(%rdx){1to8}, %ymm25, %ymm21

// CHECK: vunpckhps -516(%rdx){1to8}, %ymm25, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x34,0x30,0x15,0xaa,0xfc,0xfd,0xff,0xff]
          vunpckhps -516(%rdx){1to8}, %ymm25, %ymm21

// CHECK: vunpcklps %xmm26, %xmm24, %xmm29
// CHECK:  encoding: [0x62,0x01,0x3c,0x00,0x14,0xea]
          vunpcklps %xmm26, %xmm24, %xmm29

// CHECK: vunpcklps %xmm26, %xmm24, %xmm29 {%k6}
// CHECK:  encoding: [0x62,0x01,0x3c,0x06,0x14,0xea]
          vunpcklps %xmm26, %xmm24, %xmm29 {%k6}

// CHECK: vunpcklps %xmm26, %xmm24, %xmm29 {%k6} {z}
// CHECK:  encoding: [0x62,0x01,0x3c,0x86,0x14,0xea]
          vunpcklps %xmm26, %xmm24, %xmm29 {%k6} {z}

// CHECK: vunpcklps (%rcx), %xmm24, %xmm29
// CHECK:  encoding: [0x62,0x61,0x3c,0x00,0x14,0x29]
          vunpcklps (%rcx), %xmm24, %xmm29

// CHECK: vunpcklps 291(%rax,%r14,8), %xmm24, %xmm29
// CHECK:  encoding: [0x62,0x21,0x3c,0x00,0x14,0xac,0xf0,0x23,0x01,0x00,0x00]
          vunpcklps 291(%rax,%r14,8), %xmm24, %xmm29

// CHECK: vunpcklps (%rcx){1to4}, %xmm24, %xmm29
// CHECK:  encoding: [0x62,0x61,0x3c,0x10,0x14,0x29]
          vunpcklps (%rcx){1to4}, %xmm24, %xmm29

// CHECK: vunpcklps 2032(%rdx), %xmm24, %xmm29
// CHECK:  encoding: [0x62,0x61,0x3c,0x00,0x14,0x6a,0x7f]
          vunpcklps 2032(%rdx), %xmm24, %xmm29

// CHECK: vunpcklps 2048(%rdx), %xmm24, %xmm29
// CHECK:  encoding: [0x62,0x61,0x3c,0x00,0x14,0xaa,0x00,0x08,0x00,0x00]
          vunpcklps 2048(%rdx), %xmm24, %xmm29

// CHECK: vunpcklps -2048(%rdx), %xmm24, %xmm29
// CHECK:  encoding: [0x62,0x61,0x3c,0x00,0x14,0x6a,0x80]
          vunpcklps -2048(%rdx), %xmm24, %xmm29

// CHECK: vunpcklps -2064(%rdx), %xmm24, %xmm29
// CHECK:  encoding: [0x62,0x61,0x3c,0x00,0x14,0xaa,0xf0,0xf7,0xff,0xff]
          vunpcklps -2064(%rdx), %xmm24, %xmm29

// CHECK: vunpcklps 508(%rdx){1to4}, %xmm24, %xmm29
// CHECK:  encoding: [0x62,0x61,0x3c,0x10,0x14,0x6a,0x7f]
          vunpcklps 508(%rdx){1to4}, %xmm24, %xmm29

// CHECK: vunpcklps 512(%rdx){1to4}, %xmm24, %xmm29
// CHECK:  encoding: [0x62,0x61,0x3c,0x10,0x14,0xaa,0x00,0x02,0x00,0x00]
          vunpcklps 512(%rdx){1to4}, %xmm24, %xmm29

// CHECK: vunpcklps -512(%rdx){1to4}, %xmm24, %xmm29
// CHECK:  encoding: [0x62,0x61,0x3c,0x10,0x14,0x6a,0x80]
          vunpcklps -512(%rdx){1to4}, %xmm24, %xmm29

// CHECK: vunpcklps -516(%rdx){1to4}, %xmm24, %xmm29
// CHECK:  encoding: [0x62,0x61,0x3c,0x10,0x14,0xaa,0xfc,0xfd,0xff,0xff]
          vunpcklps -516(%rdx){1to4}, %xmm24, %xmm29

// CHECK: vunpcklps %ymm18, %ymm18, %ymm26
// CHECK:  encoding: [0x62,0x21,0x6c,0x20,0x14,0xd2]
          vunpcklps %ymm18, %ymm18, %ymm26

// CHECK: vunpcklps %ymm18, %ymm18, %ymm26 {%k1}
// CHECK:  encoding: [0x62,0x21,0x6c,0x21,0x14,0xd2]
          vunpcklps %ymm18, %ymm18, %ymm26 {%k1}

// CHECK: vunpcklps %ymm18, %ymm18, %ymm26 {%k1} {z}
// CHECK:  encoding: [0x62,0x21,0x6c,0xa1,0x14,0xd2]
          vunpcklps %ymm18, %ymm18, %ymm26 {%k1} {z}

// CHECK: vunpcklps (%rcx), %ymm18, %ymm26
// CHECK:  encoding: [0x62,0x61,0x6c,0x20,0x14,0x11]
          vunpcklps (%rcx), %ymm18, %ymm26

// CHECK: vunpcklps 291(%rax,%r14,8), %ymm18, %ymm26
// CHECK:  encoding: [0x62,0x21,0x6c,0x20,0x14,0x94,0xf0,0x23,0x01,0x00,0x00]
          vunpcklps 291(%rax,%r14,8), %ymm18, %ymm26

// CHECK: vunpcklps (%rcx){1to8}, %ymm18, %ymm26
// CHECK:  encoding: [0x62,0x61,0x6c,0x30,0x14,0x11]
          vunpcklps (%rcx){1to8}, %ymm18, %ymm26

// CHECK: vunpcklps 4064(%rdx), %ymm18, %ymm26
// CHECK:  encoding: [0x62,0x61,0x6c,0x20,0x14,0x52,0x7f]
          vunpcklps 4064(%rdx), %ymm18, %ymm26

// CHECK: vunpcklps 4096(%rdx), %ymm18, %ymm26
// CHECK:  encoding: [0x62,0x61,0x6c,0x20,0x14,0x92,0x00,0x10,0x00,0x00]
          vunpcklps 4096(%rdx), %ymm18, %ymm26

// CHECK: vunpcklps -4096(%rdx), %ymm18, %ymm26
// CHECK:  encoding: [0x62,0x61,0x6c,0x20,0x14,0x52,0x80]
          vunpcklps -4096(%rdx), %ymm18, %ymm26

// CHECK: vunpcklps -4128(%rdx), %ymm18, %ymm26
// CHECK:  encoding: [0x62,0x61,0x6c,0x20,0x14,0x92,0xe0,0xef,0xff,0xff]
          vunpcklps -4128(%rdx), %ymm18, %ymm26

// CHECK: vunpcklps 508(%rdx){1to8}, %ymm18, %ymm26
// CHECK:  encoding: [0x62,0x61,0x6c,0x30,0x14,0x52,0x7f]
          vunpcklps 508(%rdx){1to8}, %ymm18, %ymm26

// CHECK: vunpcklps 512(%rdx){1to8}, %ymm18, %ymm26
// CHECK:  encoding: [0x62,0x61,0x6c,0x30,0x14,0x92,0x00,0x02,0x00,0x00]
          vunpcklps 512(%rdx){1to8}, %ymm18, %ymm26

// CHECK: vunpcklps -512(%rdx){1to8}, %ymm18, %ymm26
// CHECK:  encoding: [0x62,0x61,0x6c,0x30,0x14,0x52,0x80]
          vunpcklps -512(%rdx){1to8}, %ymm18, %ymm26

// CHECK: vunpcklps -516(%rdx){1to8}, %ymm18, %ymm26
// CHECK:  encoding: [0x62,0x61,0x6c,0x30,0x14,0x92,0xfc,0xfd,0xff,0xff]
          vunpcklps -516(%rdx){1to8}, %ymm18, %ymm26

// CHECK: vunpckhpd %xmm26, %xmm25, %xmm19
// CHECK:  encoding: [0x62,0x81,0xb5,0x00,0x15,0xda]
          vunpckhpd %xmm26, %xmm25, %xmm19

// CHECK: vunpckhpd %xmm26, %xmm25, %xmm19 {%k3}
// CHECK:  encoding: [0x62,0x81,0xb5,0x03,0x15,0xda]
          vunpckhpd %xmm26, %xmm25, %xmm19 {%k3}

// CHECK: vunpckhpd %xmm26, %xmm25, %xmm19 {%k3} {z}
// CHECK:  encoding: [0x62,0x81,0xb5,0x83,0x15,0xda]
          vunpckhpd %xmm26, %xmm25, %xmm19 {%k3} {z}

// CHECK: vunpckhpd (%rcx), %xmm25, %xmm19
// CHECK:  encoding: [0x62,0xe1,0xb5,0x00,0x15,0x19]
          vunpckhpd (%rcx), %xmm25, %xmm19

// CHECK: vunpckhpd 291(%rax,%r14,8), %xmm25, %xmm19
// CHECK:  encoding: [0x62,0xa1,0xb5,0x00,0x15,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vunpckhpd 291(%rax,%r14,8), %xmm25, %xmm19

// CHECK: vunpckhpd (%rcx){1to2}, %xmm25, %xmm19
// CHECK:  encoding: [0x62,0xe1,0xb5,0x10,0x15,0x19]
          vunpckhpd (%rcx){1to2}, %xmm25, %xmm19

// CHECK: vunpckhpd 2032(%rdx), %xmm25, %xmm19
// CHECK:  encoding: [0x62,0xe1,0xb5,0x00,0x15,0x5a,0x7f]
          vunpckhpd 2032(%rdx), %xmm25, %xmm19

// CHECK: vunpckhpd 2048(%rdx), %xmm25, %xmm19
// CHECK:  encoding: [0x62,0xe1,0xb5,0x00,0x15,0x9a,0x00,0x08,0x00,0x00]
          vunpckhpd 2048(%rdx), %xmm25, %xmm19

// CHECK: vunpckhpd -2048(%rdx), %xmm25, %xmm19
// CHECK:  encoding: [0x62,0xe1,0xb5,0x00,0x15,0x5a,0x80]
          vunpckhpd -2048(%rdx), %xmm25, %xmm19

// CHECK: vunpckhpd -2064(%rdx), %xmm25, %xmm19
// CHECK:  encoding: [0x62,0xe1,0xb5,0x00,0x15,0x9a,0xf0,0xf7,0xff,0xff]
          vunpckhpd -2064(%rdx), %xmm25, %xmm19

// CHECK: vunpckhpd 1016(%rdx){1to2}, %xmm25, %xmm19
// CHECK:  encoding: [0x62,0xe1,0xb5,0x10,0x15,0x5a,0x7f]
          vunpckhpd 1016(%rdx){1to2}, %xmm25, %xmm19

// CHECK: vunpckhpd 1024(%rdx){1to2}, %xmm25, %xmm19
// CHECK:  encoding: [0x62,0xe1,0xb5,0x10,0x15,0x9a,0x00,0x04,0x00,0x00]
          vunpckhpd 1024(%rdx){1to2}, %xmm25, %xmm19

// CHECK: vunpckhpd -1024(%rdx){1to2}, %xmm25, %xmm19
// CHECK:  encoding: [0x62,0xe1,0xb5,0x10,0x15,0x5a,0x80]
          vunpckhpd -1024(%rdx){1to2}, %xmm25, %xmm19

// CHECK: vunpckhpd -1032(%rdx){1to2}, %xmm25, %xmm19
// CHECK:  encoding: [0x62,0xe1,0xb5,0x10,0x15,0x9a,0xf8,0xfb,0xff,0xff]
          vunpckhpd -1032(%rdx){1to2}, %xmm25, %xmm19

// CHECK: vunpckhpd %ymm24, %ymm22, %ymm25
// CHECK:  encoding: [0x62,0x01,0xcd,0x20,0x15,0xc8]
          vunpckhpd %ymm24, %ymm22, %ymm25

// CHECK: vunpckhpd %ymm24, %ymm22, %ymm25 {%k7}
// CHECK:  encoding: [0x62,0x01,0xcd,0x27,0x15,0xc8]
          vunpckhpd %ymm24, %ymm22, %ymm25 {%k7}

// CHECK: vunpckhpd %ymm24, %ymm22, %ymm25 {%k7} {z}
// CHECK:  encoding: [0x62,0x01,0xcd,0xa7,0x15,0xc8]
          vunpckhpd %ymm24, %ymm22, %ymm25 {%k7} {z}

// CHECK: vunpckhpd (%rcx), %ymm22, %ymm25
// CHECK:  encoding: [0x62,0x61,0xcd,0x20,0x15,0x09]
          vunpckhpd (%rcx), %ymm22, %ymm25

// CHECK: vunpckhpd 291(%rax,%r14,8), %ymm22, %ymm25
// CHECK:  encoding: [0x62,0x21,0xcd,0x20,0x15,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vunpckhpd 291(%rax,%r14,8), %ymm22, %ymm25

// CHECK: vunpckhpd (%rcx){1to4}, %ymm22, %ymm25
// CHECK:  encoding: [0x62,0x61,0xcd,0x30,0x15,0x09]
          vunpckhpd (%rcx){1to4}, %ymm22, %ymm25

// CHECK: vunpckhpd 4064(%rdx), %ymm22, %ymm25
// CHECK:  encoding: [0x62,0x61,0xcd,0x20,0x15,0x4a,0x7f]
          vunpckhpd 4064(%rdx), %ymm22, %ymm25

// CHECK: vunpckhpd 4096(%rdx), %ymm22, %ymm25
// CHECK:  encoding: [0x62,0x61,0xcd,0x20,0x15,0x8a,0x00,0x10,0x00,0x00]
          vunpckhpd 4096(%rdx), %ymm22, %ymm25

// CHECK: vunpckhpd -4096(%rdx), %ymm22, %ymm25
// CHECK:  encoding: [0x62,0x61,0xcd,0x20,0x15,0x4a,0x80]
          vunpckhpd -4096(%rdx), %ymm22, %ymm25

// CHECK: vunpckhpd -4128(%rdx), %ymm22, %ymm25
// CHECK:  encoding: [0x62,0x61,0xcd,0x20,0x15,0x8a,0xe0,0xef,0xff,0xff]
          vunpckhpd -4128(%rdx), %ymm22, %ymm25

// CHECK: vunpckhpd 1016(%rdx){1to4}, %ymm22, %ymm25
// CHECK:  encoding: [0x62,0x61,0xcd,0x30,0x15,0x4a,0x7f]
          vunpckhpd 1016(%rdx){1to4}, %ymm22, %ymm25

// CHECK: vunpckhpd 1024(%rdx){1to4}, %ymm22, %ymm25
// CHECK:  encoding: [0x62,0x61,0xcd,0x30,0x15,0x8a,0x00,0x04,0x00,0x00]
          vunpckhpd 1024(%rdx){1to4}, %ymm22, %ymm25

// CHECK: vunpckhpd -1024(%rdx){1to4}, %ymm22, %ymm25
// CHECK:  encoding: [0x62,0x61,0xcd,0x30,0x15,0x4a,0x80]
          vunpckhpd -1024(%rdx){1to4}, %ymm22, %ymm25

// CHECK: vunpckhpd -1032(%rdx){1to4}, %ymm22, %ymm25
// CHECK:  encoding: [0x62,0x61,0xcd,0x30,0x15,0x8a,0xf8,0xfb,0xff,0xff]
          vunpckhpd -1032(%rdx){1to4}, %ymm22, %ymm25

// CHECK: vunpcklpd %xmm18, %xmm26, %xmm30
// CHECK:  encoding: [0x62,0x21,0xad,0x00,0x14,0xf2]
          vunpcklpd %xmm18, %xmm26, %xmm30

// CHECK: vunpcklpd %xmm18, %xmm26, %xmm30 {%k5}
// CHECK:  encoding: [0x62,0x21,0xad,0x05,0x14,0xf2]
          vunpcklpd %xmm18, %xmm26, %xmm30 {%k5}

// CHECK: vunpcklpd %xmm18, %xmm26, %xmm30 {%k5} {z}
// CHECK:  encoding: [0x62,0x21,0xad,0x85,0x14,0xf2]
          vunpcklpd %xmm18, %xmm26, %xmm30 {%k5} {z}

// CHECK: vunpcklpd (%rcx), %xmm26, %xmm30
// CHECK:  encoding: [0x62,0x61,0xad,0x00,0x14,0x31]
          vunpcklpd (%rcx), %xmm26, %xmm30

// CHECK: vunpcklpd 291(%rax,%r14,8), %xmm26, %xmm30
// CHECK:  encoding: [0x62,0x21,0xad,0x00,0x14,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vunpcklpd 291(%rax,%r14,8), %xmm26, %xmm30

// CHECK: vunpcklpd (%rcx){1to2}, %xmm26, %xmm30
// CHECK:  encoding: [0x62,0x61,0xad,0x10,0x14,0x31]
          vunpcklpd (%rcx){1to2}, %xmm26, %xmm30

// CHECK: vunpcklpd 2032(%rdx), %xmm26, %xmm30
// CHECK:  encoding: [0x62,0x61,0xad,0x00,0x14,0x72,0x7f]
          vunpcklpd 2032(%rdx), %xmm26, %xmm30

// CHECK: vunpcklpd 2048(%rdx), %xmm26, %xmm30
// CHECK:  encoding: [0x62,0x61,0xad,0x00,0x14,0xb2,0x00,0x08,0x00,0x00]
          vunpcklpd 2048(%rdx), %xmm26, %xmm30

// CHECK: vunpcklpd -2048(%rdx), %xmm26, %xmm30
// CHECK:  encoding: [0x62,0x61,0xad,0x00,0x14,0x72,0x80]
          vunpcklpd -2048(%rdx), %xmm26, %xmm30

// CHECK: vunpcklpd -2064(%rdx), %xmm26, %xmm30
// CHECK:  encoding: [0x62,0x61,0xad,0x00,0x14,0xb2,0xf0,0xf7,0xff,0xff]
          vunpcklpd -2064(%rdx), %xmm26, %xmm30

// CHECK: vunpcklpd 1016(%rdx){1to2}, %xmm26, %xmm30
// CHECK:  encoding: [0x62,0x61,0xad,0x10,0x14,0x72,0x7f]
          vunpcklpd 1016(%rdx){1to2}, %xmm26, %xmm30

// CHECK: vunpcklpd 1024(%rdx){1to2}, %xmm26, %xmm30
// CHECK:  encoding: [0x62,0x61,0xad,0x10,0x14,0xb2,0x00,0x04,0x00,0x00]
          vunpcklpd 1024(%rdx){1to2}, %xmm26, %xmm30

// CHECK: vunpcklpd -1024(%rdx){1to2}, %xmm26, %xmm30
// CHECK:  encoding: [0x62,0x61,0xad,0x10,0x14,0x72,0x80]
          vunpcklpd -1024(%rdx){1to2}, %xmm26, %xmm30

// CHECK: vunpcklpd -1032(%rdx){1to2}, %xmm26, %xmm30
// CHECK:  encoding: [0x62,0x61,0xad,0x10,0x14,0xb2,0xf8,0xfb,0xff,0xff]
          vunpcklpd -1032(%rdx){1to2}, %xmm26, %xmm30

// CHECK: vunpcklpd %ymm17, %ymm26, %ymm20
// CHECK:  encoding: [0x62,0xa1,0xad,0x20,0x14,0xe1]
          vunpcklpd %ymm17, %ymm26, %ymm20

// CHECK: vunpcklpd %ymm17, %ymm26, %ymm20 {%k2}
// CHECK:  encoding: [0x62,0xa1,0xad,0x22,0x14,0xe1]
          vunpcklpd %ymm17, %ymm26, %ymm20 {%k2}

// CHECK: vunpcklpd %ymm17, %ymm26, %ymm20 {%k2} {z}
// CHECK:  encoding: [0x62,0xa1,0xad,0xa2,0x14,0xe1]
          vunpcklpd %ymm17, %ymm26, %ymm20 {%k2} {z}

// CHECK: vunpcklpd (%rcx), %ymm26, %ymm20
// CHECK:  encoding: [0x62,0xe1,0xad,0x20,0x14,0x21]
          vunpcklpd (%rcx), %ymm26, %ymm20

// CHECK: vunpcklpd 291(%rax,%r14,8), %ymm26, %ymm20
// CHECK:  encoding: [0x62,0xa1,0xad,0x20,0x14,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vunpcklpd 291(%rax,%r14,8), %ymm26, %ymm20

// CHECK: vunpcklpd (%rcx){1to4}, %ymm26, %ymm20
// CHECK:  encoding: [0x62,0xe1,0xad,0x30,0x14,0x21]
          vunpcklpd (%rcx){1to4}, %ymm26, %ymm20

// CHECK: vunpcklpd 4064(%rdx), %ymm26, %ymm20
// CHECK:  encoding: [0x62,0xe1,0xad,0x20,0x14,0x62,0x7f]
          vunpcklpd 4064(%rdx), %ymm26, %ymm20

// CHECK: vunpcklpd 4096(%rdx), %ymm26, %ymm20
// CHECK:  encoding: [0x62,0xe1,0xad,0x20,0x14,0xa2,0x00,0x10,0x00,0x00]
          vunpcklpd 4096(%rdx), %ymm26, %ymm20

// CHECK: vunpcklpd -4096(%rdx), %ymm26, %ymm20
// CHECK:  encoding: [0x62,0xe1,0xad,0x20,0x14,0x62,0x80]
          vunpcklpd -4096(%rdx), %ymm26, %ymm20

// CHECK: vunpcklpd -4128(%rdx), %ymm26, %ymm20
// CHECK:  encoding: [0x62,0xe1,0xad,0x20,0x14,0xa2,0xe0,0xef,0xff,0xff]
          vunpcklpd -4128(%rdx), %ymm26, %ymm20

// CHECK: vunpcklpd 1016(%rdx){1to4}, %ymm26, %ymm20
// CHECK:  encoding: [0x62,0xe1,0xad,0x30,0x14,0x62,0x7f]
          vunpcklpd 1016(%rdx){1to4}, %ymm26, %ymm20

// CHECK: vunpcklpd 1024(%rdx){1to4}, %ymm26, %ymm20
// CHECK:  encoding: [0x62,0xe1,0xad,0x30,0x14,0xa2,0x00,0x04,0x00,0x00]
          vunpcklpd 1024(%rdx){1to4}, %ymm26, %ymm20

// CHECK: vunpcklpd -1024(%rdx){1to4}, %ymm26, %ymm20
// CHECK:  encoding: [0x62,0xe1,0xad,0x30,0x14,0x62,0x80]
          vunpcklpd -1024(%rdx){1to4}, %ymm26, %ymm20

// CHECK: vunpcklpd -1032(%rdx){1to4}, %ymm26, %ymm20
// CHECK:  encoding: [0x62,0xe1,0xad,0x30,0x14,0xa2,0xf8,0xfb,0xff,0xff]
          vunpcklpd -1032(%rdx){1to4}, %ymm26, %ymm20

// CHECK: vpunpckldq %xmm17, %xmm21, %xmm25
// CHECK:  encoding: [0x62,0x21,0x55,0x00,0x62,0xc9]
          vpunpckldq %xmm17, %xmm21, %xmm25

// CHECK: vpunpckldq %xmm17, %xmm21, %xmm25 {%k7}
// CHECK:  encoding: [0x62,0x21,0x55,0x07,0x62,0xc9]
          vpunpckldq %xmm17, %xmm21, %xmm25 {%k7}

// CHECK: vpunpckldq %xmm17, %xmm21, %xmm25 {%k7} {z}
// CHECK:  encoding: [0x62,0x21,0x55,0x87,0x62,0xc9]
          vpunpckldq %xmm17, %xmm21, %xmm25 {%k7} {z}

// CHECK: vpunpckldq (%rcx), %xmm21, %xmm25
// CHECK:  encoding: [0x62,0x61,0x55,0x00,0x62,0x09]
          vpunpckldq (%rcx), %xmm21, %xmm25

// CHECK: vpunpckldq 291(%rax,%r14,8), %xmm21, %xmm25
// CHECK:  encoding: [0x62,0x21,0x55,0x00,0x62,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpunpckldq 291(%rax,%r14,8), %xmm21, %xmm25

// CHECK: vpunpckldq (%rcx){1to4}, %xmm21, %xmm25
// CHECK:  encoding: [0x62,0x61,0x55,0x10,0x62,0x09]
          vpunpckldq (%rcx){1to4}, %xmm21, %xmm25

// CHECK: vpunpckldq 2032(%rdx), %xmm21, %xmm25
// CHECK:  encoding: [0x62,0x61,0x55,0x00,0x62,0x4a,0x7f]
          vpunpckldq 2032(%rdx), %xmm21, %xmm25

// CHECK: vpunpckldq 2048(%rdx), %xmm21, %xmm25
// CHECK:  encoding: [0x62,0x61,0x55,0x00,0x62,0x8a,0x00,0x08,0x00,0x00]
          vpunpckldq 2048(%rdx), %xmm21, %xmm25

// CHECK: vpunpckldq -2048(%rdx), %xmm21, %xmm25
// CHECK:  encoding: [0x62,0x61,0x55,0x00,0x62,0x4a,0x80]
          vpunpckldq -2048(%rdx), %xmm21, %xmm25

// CHECK: vpunpckldq -2064(%rdx), %xmm21, %xmm25
// CHECK:  encoding: [0x62,0x61,0x55,0x00,0x62,0x8a,0xf0,0xf7,0xff,0xff]
          vpunpckldq -2064(%rdx), %xmm21, %xmm25

// CHECK: vpunpckldq 508(%rdx){1to4}, %xmm21, %xmm25
// CHECK:  encoding: [0x62,0x61,0x55,0x10,0x62,0x4a,0x7f]
          vpunpckldq 508(%rdx){1to4}, %xmm21, %xmm25

// CHECK: vpunpckldq 512(%rdx){1to4}, %xmm21, %xmm25
// CHECK:  encoding: [0x62,0x61,0x55,0x10,0x62,0x8a,0x00,0x02,0x00,0x00]
          vpunpckldq 512(%rdx){1to4}, %xmm21, %xmm25

// CHECK: vpunpckldq -512(%rdx){1to4}, %xmm21, %xmm25
// CHECK:  encoding: [0x62,0x61,0x55,0x10,0x62,0x4a,0x80]
          vpunpckldq -512(%rdx){1to4}, %xmm21, %xmm25

// CHECK: vpunpckldq -516(%rdx){1to4}, %xmm21, %xmm25
// CHECK:  encoding: [0x62,0x61,0x55,0x10,0x62,0x8a,0xfc,0xfd,0xff,0xff]
          vpunpckldq -516(%rdx){1to4}, %xmm21, %xmm25

// CHECK: vpunpckldq %ymm26, %ymm19, %ymm20
// CHECK:  encoding: [0x62,0x81,0x65,0x20,0x62,0xe2]
          vpunpckldq %ymm26, %ymm19, %ymm20

// CHECK: vpunpckldq %ymm26, %ymm19, %ymm20 {%k7}
// CHECK:  encoding: [0x62,0x81,0x65,0x27,0x62,0xe2]
          vpunpckldq %ymm26, %ymm19, %ymm20 {%k7}

// CHECK: vpunpckldq %ymm26, %ymm19, %ymm20 {%k7} {z}
// CHECK:  encoding: [0x62,0x81,0x65,0xa7,0x62,0xe2]
          vpunpckldq %ymm26, %ymm19, %ymm20 {%k7} {z}

// CHECK: vpunpckldq (%rcx), %ymm19, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x65,0x20,0x62,0x21]
          vpunpckldq (%rcx), %ymm19, %ymm20

// CHECK: vpunpckldq 291(%rax,%r14,8), %ymm19, %ymm20
// CHECK:  encoding: [0x62,0xa1,0x65,0x20,0x62,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpunpckldq 291(%rax,%r14,8), %ymm19, %ymm20

// CHECK: vpunpckldq (%rcx){1to8}, %ymm19, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x65,0x30,0x62,0x21]
          vpunpckldq (%rcx){1to8}, %ymm19, %ymm20

// CHECK: vpunpckldq 4064(%rdx), %ymm19, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x65,0x20,0x62,0x62,0x7f]
          vpunpckldq 4064(%rdx), %ymm19, %ymm20

// CHECK: vpunpckldq 4096(%rdx), %ymm19, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x65,0x20,0x62,0xa2,0x00,0x10,0x00,0x00]
          vpunpckldq 4096(%rdx), %ymm19, %ymm20

// CHECK: vpunpckldq -4096(%rdx), %ymm19, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x65,0x20,0x62,0x62,0x80]
          vpunpckldq -4096(%rdx), %ymm19, %ymm20

// CHECK: vpunpckldq -4128(%rdx), %ymm19, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x65,0x20,0x62,0xa2,0xe0,0xef,0xff,0xff]
          vpunpckldq -4128(%rdx), %ymm19, %ymm20

// CHECK: vpunpckldq 508(%rdx){1to8}, %ymm19, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x65,0x30,0x62,0x62,0x7f]
          vpunpckldq 508(%rdx){1to8}, %ymm19, %ymm20

// CHECK: vpunpckldq 512(%rdx){1to8}, %ymm19, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x65,0x30,0x62,0xa2,0x00,0x02,0x00,0x00]
          vpunpckldq 512(%rdx){1to8}, %ymm19, %ymm20

// CHECK: vpunpckldq -512(%rdx){1to8}, %ymm19, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x65,0x30,0x62,0x62,0x80]
          vpunpckldq -512(%rdx){1to8}, %ymm19, %ymm20

// CHECK: vpunpckldq -516(%rdx){1to8}, %ymm19, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x65,0x30,0x62,0xa2,0xfc,0xfd,0xff,0xff]
          vpunpckldq -516(%rdx){1to8}, %ymm19, %ymm20

// CHECK: vpunpckhdq %xmm27, %xmm24, %xmm28
// CHECK:  encoding: [0x62,0x01,0x3d,0x00,0x6a,0xe3]
          vpunpckhdq %xmm27, %xmm24, %xmm28

// CHECK: vpunpckhdq %xmm27, %xmm24, %xmm28 {%k7}
// CHECK:  encoding: [0x62,0x01,0x3d,0x07,0x6a,0xe3]
          vpunpckhdq %xmm27, %xmm24, %xmm28 {%k7}

// CHECK: vpunpckhdq %xmm27, %xmm24, %xmm28 {%k7} {z}
// CHECK:  encoding: [0x62,0x01,0x3d,0x87,0x6a,0xe3]
          vpunpckhdq %xmm27, %xmm24, %xmm28 {%k7} {z}

// CHECK: vpunpckhdq (%rcx), %xmm24, %xmm28
// CHECK:  encoding: [0x62,0x61,0x3d,0x00,0x6a,0x21]
          vpunpckhdq (%rcx), %xmm24, %xmm28

// CHECK: vpunpckhdq 291(%rax,%r14,8), %xmm24, %xmm28
// CHECK:  encoding: [0x62,0x21,0x3d,0x00,0x6a,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpunpckhdq 291(%rax,%r14,8), %xmm24, %xmm28

// CHECK: vpunpckhdq (%rcx){1to4}, %xmm24, %xmm28
// CHECK:  encoding: [0x62,0x61,0x3d,0x10,0x6a,0x21]
          vpunpckhdq (%rcx){1to4}, %xmm24, %xmm28

// CHECK: vpunpckhdq 2032(%rdx), %xmm24, %xmm28
// CHECK:  encoding: [0x62,0x61,0x3d,0x00,0x6a,0x62,0x7f]
          vpunpckhdq 2032(%rdx), %xmm24, %xmm28

// CHECK: vpunpckhdq 2048(%rdx), %xmm24, %xmm28
// CHECK:  encoding: [0x62,0x61,0x3d,0x00,0x6a,0xa2,0x00,0x08,0x00,0x00]
          vpunpckhdq 2048(%rdx), %xmm24, %xmm28

// CHECK: vpunpckhdq -2048(%rdx), %xmm24, %xmm28
// CHECK:  encoding: [0x62,0x61,0x3d,0x00,0x6a,0x62,0x80]
          vpunpckhdq -2048(%rdx), %xmm24, %xmm28

// CHECK: vpunpckhdq -2064(%rdx), %xmm24, %xmm28
// CHECK:  encoding: [0x62,0x61,0x3d,0x00,0x6a,0xa2,0xf0,0xf7,0xff,0xff]
          vpunpckhdq -2064(%rdx), %xmm24, %xmm28

// CHECK: vpunpckhdq 508(%rdx){1to4}, %xmm24, %xmm28
// CHECK:  encoding: [0x62,0x61,0x3d,0x10,0x6a,0x62,0x7f]
          vpunpckhdq 508(%rdx){1to4}, %xmm24, %xmm28

// CHECK: vpunpckhdq 512(%rdx){1to4}, %xmm24, %xmm28
// CHECK:  encoding: [0x62,0x61,0x3d,0x10,0x6a,0xa2,0x00,0x02,0x00,0x00]
          vpunpckhdq 512(%rdx){1to4}, %xmm24, %xmm28

// CHECK: vpunpckhdq -512(%rdx){1to4}, %xmm24, %xmm28
// CHECK:  encoding: [0x62,0x61,0x3d,0x10,0x6a,0x62,0x80]
          vpunpckhdq -512(%rdx){1to4}, %xmm24, %xmm28

// CHECK: vpunpckhdq -516(%rdx){1to4}, %xmm24, %xmm28
// CHECK:  encoding: [0x62,0x61,0x3d,0x10,0x6a,0xa2,0xfc,0xfd,0xff,0xff]
          vpunpckhdq -516(%rdx){1to4}, %xmm24, %xmm28

// CHECK: vpunpckhdq %ymm28, %ymm24, %ymm26
// CHECK:  encoding: [0x62,0x01,0x3d,0x20,0x6a,0xd4]
          vpunpckhdq %ymm28, %ymm24, %ymm26

// CHECK: vpunpckhdq %ymm28, %ymm24, %ymm26 {%k2}
// CHECK:  encoding: [0x62,0x01,0x3d,0x22,0x6a,0xd4]
          vpunpckhdq %ymm28, %ymm24, %ymm26 {%k2}

// CHECK: vpunpckhdq %ymm28, %ymm24, %ymm26 {%k2} {z}
// CHECK:  encoding: [0x62,0x01,0x3d,0xa2,0x6a,0xd4]
          vpunpckhdq %ymm28, %ymm24, %ymm26 {%k2} {z}

// CHECK: vpunpckhdq (%rcx), %ymm24, %ymm26
// CHECK:  encoding: [0x62,0x61,0x3d,0x20,0x6a,0x11]
          vpunpckhdq (%rcx), %ymm24, %ymm26

// CHECK: vpunpckhdq 291(%rax,%r14,8), %ymm24, %ymm26
// CHECK:  encoding: [0x62,0x21,0x3d,0x20,0x6a,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpunpckhdq 291(%rax,%r14,8), %ymm24, %ymm26

// CHECK: vpunpckhdq (%rcx){1to8}, %ymm24, %ymm26
// CHECK:  encoding: [0x62,0x61,0x3d,0x30,0x6a,0x11]
          vpunpckhdq (%rcx){1to8}, %ymm24, %ymm26

// CHECK: vpunpckhdq 4064(%rdx), %ymm24, %ymm26
// CHECK:  encoding: [0x62,0x61,0x3d,0x20,0x6a,0x52,0x7f]
          vpunpckhdq 4064(%rdx), %ymm24, %ymm26

// CHECK: vpunpckhdq 4096(%rdx), %ymm24, %ymm26
// CHECK:  encoding: [0x62,0x61,0x3d,0x20,0x6a,0x92,0x00,0x10,0x00,0x00]
          vpunpckhdq 4096(%rdx), %ymm24, %ymm26

// CHECK: vpunpckhdq -4096(%rdx), %ymm24, %ymm26
// CHECK:  encoding: [0x62,0x61,0x3d,0x20,0x6a,0x52,0x80]
          vpunpckhdq -4096(%rdx), %ymm24, %ymm26

// CHECK: vpunpckhdq -4128(%rdx), %ymm24, %ymm26
// CHECK:  encoding: [0x62,0x61,0x3d,0x20,0x6a,0x92,0xe0,0xef,0xff,0xff]
          vpunpckhdq -4128(%rdx), %ymm24, %ymm26

// CHECK: vpunpckhdq 508(%rdx){1to8}, %ymm24, %ymm26
// CHECK:  encoding: [0x62,0x61,0x3d,0x30,0x6a,0x52,0x7f]
          vpunpckhdq 508(%rdx){1to8}, %ymm24, %ymm26

// CHECK: vpunpckhdq 512(%rdx){1to8}, %ymm24, %ymm26
// CHECK:  encoding: [0x62,0x61,0x3d,0x30,0x6a,0x92,0x00,0x02,0x00,0x00]
          vpunpckhdq 512(%rdx){1to8}, %ymm24, %ymm26

// CHECK: vpunpckhdq -512(%rdx){1to8}, %ymm24, %ymm26
// CHECK:  encoding: [0x62,0x61,0x3d,0x30,0x6a,0x52,0x80]
          vpunpckhdq -512(%rdx){1to8}, %ymm24, %ymm26

// CHECK: vpunpckhdq -516(%rdx){1to8}, %ymm24, %ymm26
// CHECK:  encoding: [0x62,0x61,0x3d,0x30,0x6a,0x92,0xfc,0xfd,0xff,0xff]
          vpunpckhdq -516(%rdx){1to8}, %ymm24, %ymm26

// CHECK: vpunpcklqdq %xmm23, %xmm27, %xmm17
// CHECK:  encoding: [0x62,0xa1,0xa5,0x00,0x6c,0xcf]
          vpunpcklqdq %xmm23, %xmm27, %xmm17

// CHECK: vpunpcklqdq %xmm23, %xmm27, %xmm17 {%k6}
// CHECK:  encoding: [0x62,0xa1,0xa5,0x06,0x6c,0xcf]
          vpunpcklqdq %xmm23, %xmm27, %xmm17 {%k6}

// CHECK: vpunpcklqdq %xmm23, %xmm27, %xmm17 {%k6} {z}
// CHECK:  encoding: [0x62,0xa1,0xa5,0x86,0x6c,0xcf]
          vpunpcklqdq %xmm23, %xmm27, %xmm17 {%k6} {z}

// CHECK: vpunpcklqdq (%rcx), %xmm27, %xmm17
// CHECK:  encoding: [0x62,0xe1,0xa5,0x00,0x6c,0x09]
          vpunpcklqdq (%rcx), %xmm27, %xmm17

// CHECK: vpunpcklqdq 291(%rax,%r14,8), %xmm27, %xmm17
// CHECK:  encoding: [0x62,0xa1,0xa5,0x00,0x6c,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpunpcklqdq 291(%rax,%r14,8), %xmm27, %xmm17

// CHECK: vpunpcklqdq (%rcx){1to2}, %xmm27, %xmm17
// CHECK:  encoding: [0x62,0xe1,0xa5,0x10,0x6c,0x09]
          vpunpcklqdq (%rcx){1to2}, %xmm27, %xmm17

// CHECK: vpunpcklqdq 2032(%rdx), %xmm27, %xmm17
// CHECK:  encoding: [0x62,0xe1,0xa5,0x00,0x6c,0x4a,0x7f]
          vpunpcklqdq 2032(%rdx), %xmm27, %xmm17

// CHECK: vpunpcklqdq 2048(%rdx), %xmm27, %xmm17
// CHECK:  encoding: [0x62,0xe1,0xa5,0x00,0x6c,0x8a,0x00,0x08,0x00,0x00]
          vpunpcklqdq 2048(%rdx), %xmm27, %xmm17

// CHECK: vpunpcklqdq -2048(%rdx), %xmm27, %xmm17
// CHECK:  encoding: [0x62,0xe1,0xa5,0x00,0x6c,0x4a,0x80]
          vpunpcklqdq -2048(%rdx), %xmm27, %xmm17

// CHECK: vpunpcklqdq -2064(%rdx), %xmm27, %xmm17
// CHECK:  encoding: [0x62,0xe1,0xa5,0x00,0x6c,0x8a,0xf0,0xf7,0xff,0xff]
          vpunpcklqdq -2064(%rdx), %xmm27, %xmm17

// CHECK: vpunpcklqdq 1016(%rdx){1to2}, %xmm27, %xmm17
// CHECK:  encoding: [0x62,0xe1,0xa5,0x10,0x6c,0x4a,0x7f]
          vpunpcklqdq 1016(%rdx){1to2}, %xmm27, %xmm17

// CHECK: vpunpcklqdq 1024(%rdx){1to2}, %xmm27, %xmm17
// CHECK:  encoding: [0x62,0xe1,0xa5,0x10,0x6c,0x8a,0x00,0x04,0x00,0x00]
          vpunpcklqdq 1024(%rdx){1to2}, %xmm27, %xmm17

// CHECK: vpunpcklqdq -1024(%rdx){1to2}, %xmm27, %xmm17
// CHECK:  encoding: [0x62,0xe1,0xa5,0x10,0x6c,0x4a,0x80]
          vpunpcklqdq -1024(%rdx){1to2}, %xmm27, %xmm17

// CHECK: vpunpcklqdq -1032(%rdx){1to2}, %xmm27, %xmm17
// CHECK:  encoding: [0x62,0xe1,0xa5,0x10,0x6c,0x8a,0xf8,0xfb,0xff,0xff]
          vpunpcklqdq -1032(%rdx){1to2}, %xmm27, %xmm17

// CHECK: vpunpcklqdq %ymm28, %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x01,0xdd,0x20,0x6c,0xec]
          vpunpcklqdq %ymm28, %ymm20, %ymm29

// CHECK: vpunpcklqdq %ymm28, %ymm20, %ymm29 {%k7}
// CHECK:  encoding: [0x62,0x01,0xdd,0x27,0x6c,0xec]
          vpunpcklqdq %ymm28, %ymm20, %ymm29 {%k7}

// CHECK: vpunpcklqdq %ymm28, %ymm20, %ymm29 {%k7} {z}
// CHECK:  encoding: [0x62,0x01,0xdd,0xa7,0x6c,0xec]
          vpunpcklqdq %ymm28, %ymm20, %ymm29 {%k7} {z}

// CHECK: vpunpcklqdq (%rcx), %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x61,0xdd,0x20,0x6c,0x29]
          vpunpcklqdq (%rcx), %ymm20, %ymm29

// CHECK: vpunpcklqdq 291(%rax,%r14,8), %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x21,0xdd,0x20,0x6c,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpunpcklqdq 291(%rax,%r14,8), %ymm20, %ymm29

// CHECK: vpunpcklqdq (%rcx){1to4}, %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x61,0xdd,0x30,0x6c,0x29]
          vpunpcklqdq (%rcx){1to4}, %ymm20, %ymm29

// CHECK: vpunpcklqdq 4064(%rdx), %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x61,0xdd,0x20,0x6c,0x6a,0x7f]
          vpunpcklqdq 4064(%rdx), %ymm20, %ymm29

// CHECK: vpunpcklqdq 4096(%rdx), %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x61,0xdd,0x20,0x6c,0xaa,0x00,0x10,0x00,0x00]
          vpunpcklqdq 4096(%rdx), %ymm20, %ymm29

// CHECK: vpunpcklqdq -4096(%rdx), %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x61,0xdd,0x20,0x6c,0x6a,0x80]
          vpunpcklqdq -4096(%rdx), %ymm20, %ymm29

// CHECK: vpunpcklqdq -4128(%rdx), %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x61,0xdd,0x20,0x6c,0xaa,0xe0,0xef,0xff,0xff]
          vpunpcklqdq -4128(%rdx), %ymm20, %ymm29

// CHECK: vpunpcklqdq 1016(%rdx){1to4}, %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x61,0xdd,0x30,0x6c,0x6a,0x7f]
          vpunpcklqdq 1016(%rdx){1to4}, %ymm20, %ymm29

// CHECK: vpunpcklqdq 1024(%rdx){1to4}, %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x61,0xdd,0x30,0x6c,0xaa,0x00,0x04,0x00,0x00]
          vpunpcklqdq 1024(%rdx){1to4}, %ymm20, %ymm29

// CHECK: vpunpcklqdq -1024(%rdx){1to4}, %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x61,0xdd,0x30,0x6c,0x6a,0x80]
          vpunpcklqdq -1024(%rdx){1to4}, %ymm20, %ymm29

// CHECK: vpunpcklqdq -1032(%rdx){1to4}, %ymm20, %ymm29
// CHECK:  encoding: [0x62,0x61,0xdd,0x30,0x6c,0xaa,0xf8,0xfb,0xff,0xff]
          vpunpcklqdq -1032(%rdx){1to4}, %ymm20, %ymm29

// CHECK: vpunpckhqdq %xmm24, %xmm19, %xmm19
// CHECK:  encoding: [0x62,0x81,0xe5,0x00,0x6d,0xd8]
          vpunpckhqdq %xmm24, %xmm19, %xmm19

// CHECK: vpunpckhqdq %xmm24, %xmm19, %xmm19 {%k6}
// CHECK:  encoding: [0x62,0x81,0xe5,0x06,0x6d,0xd8]
          vpunpckhqdq %xmm24, %xmm19, %xmm19 {%k6}

// CHECK: vpunpckhqdq %xmm24, %xmm19, %xmm19 {%k6} {z}
// CHECK:  encoding: [0x62,0x81,0xe5,0x86,0x6d,0xd8]
          vpunpckhqdq %xmm24, %xmm19, %xmm19 {%k6} {z}

// CHECK: vpunpckhqdq (%rcx), %xmm19, %xmm19
// CHECK:  encoding: [0x62,0xe1,0xe5,0x00,0x6d,0x19]
          vpunpckhqdq (%rcx), %xmm19, %xmm19

// CHECK: vpunpckhqdq 291(%rax,%r14,8), %xmm19, %xmm19
// CHECK:  encoding: [0x62,0xa1,0xe5,0x00,0x6d,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpunpckhqdq 291(%rax,%r14,8), %xmm19, %xmm19

// CHECK: vpunpckhqdq (%rcx){1to2}, %xmm19, %xmm19
// CHECK:  encoding: [0x62,0xe1,0xe5,0x10,0x6d,0x19]
          vpunpckhqdq (%rcx){1to2}, %xmm19, %xmm19

// CHECK: vpunpckhqdq 2032(%rdx), %xmm19, %xmm19
// CHECK:  encoding: [0x62,0xe1,0xe5,0x00,0x6d,0x5a,0x7f]
          vpunpckhqdq 2032(%rdx), %xmm19, %xmm19

// CHECK: vpunpckhqdq 2048(%rdx), %xmm19, %xmm19
// CHECK:  encoding: [0x62,0xe1,0xe5,0x00,0x6d,0x9a,0x00,0x08,0x00,0x00]
          vpunpckhqdq 2048(%rdx), %xmm19, %xmm19

// CHECK: vpunpckhqdq -2048(%rdx), %xmm19, %xmm19
// CHECK:  encoding: [0x62,0xe1,0xe5,0x00,0x6d,0x5a,0x80]
          vpunpckhqdq -2048(%rdx), %xmm19, %xmm19

// CHECK: vpunpckhqdq -2064(%rdx), %xmm19, %xmm19
// CHECK:  encoding: [0x62,0xe1,0xe5,0x00,0x6d,0x9a,0xf0,0xf7,0xff,0xff]
          vpunpckhqdq -2064(%rdx), %xmm19, %xmm19

// CHECK: vpunpckhqdq 1016(%rdx){1to2}, %xmm19, %xmm19
// CHECK:  encoding: [0x62,0xe1,0xe5,0x10,0x6d,0x5a,0x7f]
          vpunpckhqdq 1016(%rdx){1to2}, %xmm19, %xmm19

// CHECK: vpunpckhqdq 1024(%rdx){1to2}, %xmm19, %xmm19
// CHECK:  encoding: [0x62,0xe1,0xe5,0x10,0x6d,0x9a,0x00,0x04,0x00,0x00]
          vpunpckhqdq 1024(%rdx){1to2}, %xmm19, %xmm19

// CHECK: vpunpckhqdq -1024(%rdx){1to2}, %xmm19, %xmm19
// CHECK:  encoding: [0x62,0xe1,0xe5,0x10,0x6d,0x5a,0x80]
          vpunpckhqdq -1024(%rdx){1to2}, %xmm19, %xmm19

// CHECK: vpunpckhqdq -1032(%rdx){1to2}, %xmm19, %xmm19
// CHECK:  encoding: [0x62,0xe1,0xe5,0x10,0x6d,0x9a,0xf8,0xfb,0xff,0xff]
          vpunpckhqdq -1032(%rdx){1to2}, %xmm19, %xmm19

// CHECK: vpunpckhqdq %ymm28, %ymm19, %ymm20
// CHECK:  encoding: [0x62,0x81,0xe5,0x20,0x6d,0xe4]
          vpunpckhqdq %ymm28, %ymm19, %ymm20

// CHECK: vpunpckhqdq %ymm28, %ymm19, %ymm20 {%k6}
// CHECK:  encoding: [0x62,0x81,0xe5,0x26,0x6d,0xe4]
          vpunpckhqdq %ymm28, %ymm19, %ymm20 {%k6}

// CHECK: vpunpckhqdq %ymm28, %ymm19, %ymm20 {%k6} {z}
// CHECK:  encoding: [0x62,0x81,0xe5,0xa6,0x6d,0xe4]
          vpunpckhqdq %ymm28, %ymm19, %ymm20 {%k6} {z}

// CHECK: vpunpckhqdq (%rcx), %ymm19, %ymm20
// CHECK:  encoding: [0x62,0xe1,0xe5,0x20,0x6d,0x21]
          vpunpckhqdq (%rcx), %ymm19, %ymm20

// CHECK: vpunpckhqdq 291(%rax,%r14,8), %ymm19, %ymm20
// CHECK:  encoding: [0x62,0xa1,0xe5,0x20,0x6d,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpunpckhqdq 291(%rax,%r14,8), %ymm19, %ymm20

// CHECK: vpunpckhqdq (%rcx){1to4}, %ymm19, %ymm20
// CHECK:  encoding: [0x62,0xe1,0xe5,0x30,0x6d,0x21]
          vpunpckhqdq (%rcx){1to4}, %ymm19, %ymm20

// CHECK: vpunpckhqdq 4064(%rdx), %ymm19, %ymm20
// CHECK:  encoding: [0x62,0xe1,0xe5,0x20,0x6d,0x62,0x7f]
          vpunpckhqdq 4064(%rdx), %ymm19, %ymm20

// CHECK: vpunpckhqdq 4096(%rdx), %ymm19, %ymm20
// CHECK:  encoding: [0x62,0xe1,0xe5,0x20,0x6d,0xa2,0x00,0x10,0x00,0x00]
          vpunpckhqdq 4096(%rdx), %ymm19, %ymm20

// CHECK: vpunpckhqdq -4096(%rdx), %ymm19, %ymm20
// CHECK:  encoding: [0x62,0xe1,0xe5,0x20,0x6d,0x62,0x80]
          vpunpckhqdq -4096(%rdx), %ymm19, %ymm20

// CHECK: vpunpckhqdq -4128(%rdx), %ymm19, %ymm20
// CHECK:  encoding: [0x62,0xe1,0xe5,0x20,0x6d,0xa2,0xe0,0xef,0xff,0xff]
          vpunpckhqdq -4128(%rdx), %ymm19, %ymm20

// CHECK: vpunpckhqdq 1016(%rdx){1to4}, %ymm19, %ymm20
// CHECK:  encoding: [0x62,0xe1,0xe5,0x30,0x6d,0x62,0x7f]
          vpunpckhqdq 1016(%rdx){1to4}, %ymm19, %ymm20

// CHECK: vpunpckhqdq 1024(%rdx){1to4}, %ymm19, %ymm20
// CHECK:  encoding: [0x62,0xe1,0xe5,0x30,0x6d,0xa2,0x00,0x04,0x00,0x00]
          vpunpckhqdq 1024(%rdx){1to4}, %ymm19, %ymm20

// CHECK: vpunpckhqdq -1024(%rdx){1to4}, %ymm19, %ymm20
// CHECK:  encoding: [0x62,0xe1,0xe5,0x30,0x6d,0x62,0x80]
          vpunpckhqdq -1024(%rdx){1to4}, %ymm19, %ymm20

// CHECK: vpunpckhqdq -1032(%rdx){1to4}, %ymm19, %ymm20
// CHECK:  encoding: [0x62,0xe1,0xe5,0x30,0x6d,0xa2,0xf8,0xfb,0xff,0xff]
          vpunpckhqdq -1032(%rdx){1to4}, %ymm19, %ymm20

// CHECK: vinsertf32x4 $171, %xmm27, %ymm18, %ymm18
// CHECK:  encoding: [0x62,0x83,0x6d,0x20,0x18,0xd3,0xab]
          vinsertf32x4 $0xab, %xmm27, %ymm18, %ymm18

// CHECK: vinsertf32x4 $171, %xmm27, %ymm18, %ymm18 {%k7}
// CHECK:  encoding: [0x62,0x83,0x6d,0x27,0x18,0xd3,0xab]
          vinsertf32x4 $0xab, %xmm27, %ymm18, %ymm18 {%k7}

// CHECK: vinsertf32x4 $171, %xmm27, %ymm18, %ymm18 {%k7} {z}
// CHECK:  encoding: [0x62,0x83,0x6d,0xa7,0x18,0xd3,0xab]
          vinsertf32x4 $0xab, %xmm27, %ymm18, %ymm18 {%k7} {z}

// CHECK: vinsertf32x4 $123, %xmm27, %ymm18, %ymm18
// CHECK:  encoding: [0x62,0x83,0x6d,0x20,0x18,0xd3,0x7b]
          vinsertf32x4 $0x7b, %xmm27, %ymm18, %ymm18

// CHECK: vinsertf32x4 $123, (%rcx), %ymm18, %ymm18
// CHECK:  encoding: [0x62,0xe3,0x6d,0x20,0x18,0x11,0x7b]
          vinsertf32x4 $0x7b, (%rcx), %ymm18, %ymm18

// CHECK: vinsertf32x4 $123, 291(%rax,%r14,8), %ymm18, %ymm18
// CHECK:  encoding: [0x62,0xa3,0x6d,0x20,0x18,0x94,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vinsertf32x4 $0x7b, 291(%rax,%r14,8), %ymm18, %ymm18

// CHECK: vinsertf32x4 $123, 2032(%rdx), %ymm18, %ymm18
// CHECK:  encoding: [0x62,0xe3,0x6d,0x20,0x18,0x52,0x7f,0x7b]
          vinsertf32x4 $0x7b, 2032(%rdx), %ymm18, %ymm18

// CHECK: vinsertf32x4 $123, 2048(%rdx), %ymm18, %ymm18
// CHECK:  encoding: [0x62,0xe3,0x6d,0x20,0x18,0x92,0x00,0x08,0x00,0x00,0x7b]
          vinsertf32x4 $0x7b, 2048(%rdx), %ymm18, %ymm18

// CHECK: vinsertf32x4 $123, -2048(%rdx), %ymm18, %ymm18
// CHECK:  encoding: [0x62,0xe3,0x6d,0x20,0x18,0x52,0x80,0x7b]
          vinsertf32x4 $0x7b, -2048(%rdx), %ymm18, %ymm18

// CHECK: vinsertf32x4 $123, -2064(%rdx), %ymm18, %ymm18
// CHECK:  encoding: [0x62,0xe3,0x6d,0x20,0x18,0x92,0xf0,0xf7,0xff,0xff,0x7b]
          vinsertf32x4 $0x7b, -2064(%rdx), %ymm18, %ymm18

// CHECK: vinserti32x4 $171, %xmm24, %ymm28, %ymm17
// CHECK:  encoding: [0x62,0x83,0x1d,0x20,0x38,0xc8,0xab]
          vinserti32x4 $0xab, %xmm24, %ymm28, %ymm17

// CHECK: vinserti32x4 $171, %xmm24, %ymm28, %ymm17 {%k3}
// CHECK:  encoding: [0x62,0x83,0x1d,0x23,0x38,0xc8,0xab]
          vinserti32x4 $0xab, %xmm24, %ymm28, %ymm17 {%k3}

// CHECK: vinserti32x4 $171, %xmm24, %ymm28, %ymm17 {%k3} {z}
// CHECK:  encoding: [0x62,0x83,0x1d,0xa3,0x38,0xc8,0xab]
          vinserti32x4 $0xab, %xmm24, %ymm28, %ymm17 {%k3} {z}

// CHECK: vinserti32x4 $123, %xmm24, %ymm28, %ymm17
// CHECK:  encoding: [0x62,0x83,0x1d,0x20,0x38,0xc8,0x7b]
          vinserti32x4 $0x7b, %xmm24, %ymm28, %ymm17

// CHECK: vinserti32x4 $123, (%rcx), %ymm28, %ymm17
// CHECK:  encoding: [0x62,0xe3,0x1d,0x20,0x38,0x09,0x7b]
          vinserti32x4 $0x7b, (%rcx), %ymm28, %ymm17

// CHECK: vinserti32x4 $123, 291(%rax,%r14,8), %ymm28, %ymm17
// CHECK:  encoding: [0x62,0xa3,0x1d,0x20,0x38,0x8c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vinserti32x4 $0x7b, 291(%rax,%r14,8), %ymm28, %ymm17

// CHECK: vinserti32x4 $123, 2032(%rdx), %ymm28, %ymm17
// CHECK:  encoding: [0x62,0xe3,0x1d,0x20,0x38,0x4a,0x7f,0x7b]
          vinserti32x4 $0x7b, 2032(%rdx), %ymm28, %ymm17

// CHECK: vinserti32x4 $123, 2048(%rdx), %ymm28, %ymm17
// CHECK:  encoding: [0x62,0xe3,0x1d,0x20,0x38,0x8a,0x00,0x08,0x00,0x00,0x7b]
          vinserti32x4 $0x7b, 2048(%rdx), %ymm28, %ymm17

// CHECK: vinserti32x4 $123, -2048(%rdx), %ymm28, %ymm17
// CHECK:  encoding: [0x62,0xe3,0x1d,0x20,0x38,0x4a,0x80,0x7b]
          vinserti32x4 $0x7b, -2048(%rdx), %ymm28, %ymm17

// CHECK: vinserti32x4 $123, -2064(%rdx), %ymm28, %ymm17
// CHECK:  encoding: [0x62,0xe3,0x1d,0x20,0x38,0x8a,0xf0,0xf7,0xff,0xff,0x7b]
          vinserti32x4 $0x7b, -2064(%rdx), %ymm28, %ymm17

// CHECK: vextractf32x4 $171, %ymm17, %xmm28
// CHECK:  encoding: [0x62,0x83,0x7d,0x28,0x19,0xcc,0xab]
          vextractf32x4 $0xab, %ymm17, %xmm28

// CHECK: vextractf32x4 $171, %ymm17, %xmm28 {%k6}
// CHECK:  encoding: [0x62,0x83,0x7d,0x2e,0x19,0xcc,0xab]
          vextractf32x4 $0xab, %ymm17, %xmm28 {%k6}

// CHECK: vextractf32x4 $171, %ymm17, %xmm28 {%k6} {z}
// CHECK:  encoding: [0x62,0x83,0x7d,0xae,0x19,0xcc,0xab]
          vextractf32x4 $0xab, %ymm17, %xmm28 {%k6} {z}

// CHECK: vextractf32x4 $123, %ymm17, %xmm28
// CHECK:  encoding: [0x62,0x83,0x7d,0x28,0x19,0xcc,0x7b]
          vextractf32x4 $0x7b, %ymm17, %xmm28

// CHECK: vextractf32x4 $171, %ymm20, (%rcx)
// CHECK:  encoding: [0x62,0xe3,0x7d,0x28,0x19,0x21,0xab]
          vextractf32x4 $0xab, %ymm20, (%rcx)

// CHECK: vextractf32x4 $171, %ymm20, (%rcx) {%k2}
// CHECK:  encoding: [0x62,0xe3,0x7d,0x2a,0x19,0x21,0xab]
          vextractf32x4 $0xab, %ymm20, (%rcx) {%k2}

// CHECK: vextractf32x4 $123, %ymm20, (%rcx)
// CHECK:  encoding: [0x62,0xe3,0x7d,0x28,0x19,0x21,0x7b]
          vextractf32x4 $0x7b, %ymm20, (%rcx)

// CHECK: vextractf32x4 $123, %ymm20, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa3,0x7d,0x28,0x19,0xa4,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vextractf32x4 $0x7b, %ymm20, 291(%rax,%r14,8)

// CHECK: vextractf32x4 $123, %ymm20, 2032(%rdx)
// CHECK:  encoding: [0x62,0xe3,0x7d,0x28,0x19,0x62,0x7f,0x7b]
          vextractf32x4 $0x7b, %ymm20, 2032(%rdx)

// CHECK: vextractf32x4 $123, %ymm20, 2048(%rdx)
// CHECK:  encoding: [0x62,0xe3,0x7d,0x28,0x19,0xa2,0x00,0x08,0x00,0x00,0x7b]
          vextractf32x4 $0x7b, %ymm20, 2048(%rdx)

// CHECK: vextractf32x4 $123, %ymm20, -2048(%rdx)
// CHECK:  encoding: [0x62,0xe3,0x7d,0x28,0x19,0x62,0x80,0x7b]
          vextractf32x4 $0x7b, %ymm20, -2048(%rdx)

// CHECK: vextractf32x4 $123, %ymm20, -2064(%rdx)
// CHECK:  encoding: [0x62,0xe3,0x7d,0x28,0x19,0xa2,0xf0,0xf7,0xff,0xff,0x7b]
          vextractf32x4 $0x7b, %ymm20, -2064(%rdx)

// CHECK: vextracti32x4 $171, %ymm21, %xmm20
// CHECK:  encoding: [0x62,0xa3,0x7d,0x28,0x39,0xec,0xab]
          vextracti32x4 $0xab, %ymm21, %xmm20

// CHECK: vextracti32x4 $171, %ymm21, %xmm20 {%k4}
// CHECK:  encoding: [0x62,0xa3,0x7d,0x2c,0x39,0xec,0xab]
          vextracti32x4 $0xab, %ymm21, %xmm20 {%k4}

// CHECK: vextracti32x4 $171, %ymm21, %xmm20 {%k4} {z}
// CHECK:  encoding: [0x62,0xa3,0x7d,0xac,0x39,0xec,0xab]
          vextracti32x4 $0xab, %ymm21, %xmm20 {%k4} {z}

// CHECK: vextracti32x4 $123, %ymm21, %xmm20
// CHECK:  encoding: [0x62,0xa3,0x7d,0x28,0x39,0xec,0x7b]
          vextracti32x4 $0x7b, %ymm21, %xmm20

// CHECK: vextracti32x4 $171, %ymm28, (%rcx)
// CHECK:  encoding: [0x62,0x63,0x7d,0x28,0x39,0x21,0xab]
          vextracti32x4 $0xab, %ymm28, (%rcx)

// CHECK: vextracti32x4 $171, %ymm28, (%rcx) {%k6}
// CHECK:  encoding: [0x62,0x63,0x7d,0x2e,0x39,0x21,0xab]
          vextracti32x4 $0xab, %ymm28, (%rcx) {%k6}

// CHECK: vextracti32x4 $123, %ymm28, (%rcx)
// CHECK:  encoding: [0x62,0x63,0x7d,0x28,0x39,0x21,0x7b]
          vextracti32x4 $0x7b, %ymm28, (%rcx)

// CHECK: vextracti32x4 $123, %ymm28, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x23,0x7d,0x28,0x39,0xa4,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vextracti32x4 $0x7b, %ymm28, 291(%rax,%r14,8)

// CHECK: vextracti32x4 $123, %ymm28, 2032(%rdx)
// CHECK:  encoding: [0x62,0x63,0x7d,0x28,0x39,0x62,0x7f,0x7b]
          vextracti32x4 $0x7b, %ymm28, 2032(%rdx)

// CHECK: vextracti32x4 $123, %ymm28, 2048(%rdx)
// CHECK:  encoding: [0x62,0x63,0x7d,0x28,0x39,0xa2,0x00,0x08,0x00,0x00,0x7b]
          vextracti32x4 $0x7b, %ymm28, 2048(%rdx)

// CHECK: vextracti32x4 $123, %ymm28, -2048(%rdx)
// CHECK:  encoding: [0x62,0x63,0x7d,0x28,0x39,0x62,0x80,0x7b]
          vextracti32x4 $0x7b, %ymm28, -2048(%rdx)

// CHECK: vextracti32x4 $123, %ymm28, -2064(%rdx)
// CHECK:  encoding: [0x62,0x63,0x7d,0x28,0x39,0xa2,0xf0,0xf7,0xff,0xff,0x7b]
          vextracti32x4 $0x7b, %ymm28, -2064(%rdx)

// CHECK: vgetmantps $171, %xmm23, %xmm29
// CHECK:  encoding: [0x62,0x23,0x7d,0x08,0x26,0xef,0xab]
          vgetmantps $0xab, %xmm23, %xmm29

// CHECK: vgetmantps $171, %xmm23, %xmm29 {%k5}
// CHECK:  encoding: [0x62,0x23,0x7d,0x0d,0x26,0xef,0xab]
          vgetmantps $0xab, %xmm23, %xmm29 {%k5}

// CHECK: vgetmantps $171, %xmm23, %xmm29 {%k5} {z}
// CHECK:  encoding: [0x62,0x23,0x7d,0x8d,0x26,0xef,0xab]
          vgetmantps $0xab, %xmm23, %xmm29 {%k5} {z}

// CHECK: vgetmantps $123, %xmm23, %xmm29
// CHECK:  encoding: [0x62,0x23,0x7d,0x08,0x26,0xef,0x7b]
          vgetmantps $0x7b, %xmm23, %xmm29

// CHECK: vgetmantps $123, (%rcx), %xmm29
// CHECK:  encoding: [0x62,0x63,0x7d,0x08,0x26,0x29,0x7b]
          vgetmantps $0x7b, (%rcx), %xmm29

// CHECK: vgetmantps $123, 291(%rax,%r14,8), %xmm29
// CHECK:  encoding: [0x62,0x23,0x7d,0x08,0x26,0xac,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vgetmantps $0x7b, 291(%rax,%r14,8), %xmm29

// CHECK: vgetmantps $123, (%rcx){1to4}, %xmm29
// CHECK:  encoding: [0x62,0x63,0x7d,0x18,0x26,0x29,0x7b]
          vgetmantps $0x7b, (%rcx){1to4}, %xmm29

// CHECK: vgetmantps $123, 2032(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x63,0x7d,0x08,0x26,0x6a,0x7f,0x7b]
          vgetmantps $0x7b, 2032(%rdx), %xmm29

// CHECK: vgetmantps $123, 2048(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x63,0x7d,0x08,0x26,0xaa,0x00,0x08,0x00,0x00,0x7b]
          vgetmantps $0x7b, 2048(%rdx), %xmm29

// CHECK: vgetmantps $123, -2048(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x63,0x7d,0x08,0x26,0x6a,0x80,0x7b]
          vgetmantps $0x7b, -2048(%rdx), %xmm29

// CHECK: vgetmantps $123, -2064(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x63,0x7d,0x08,0x26,0xaa,0xf0,0xf7,0xff,0xff,0x7b]
          vgetmantps $0x7b, -2064(%rdx), %xmm29

// CHECK: vgetmantps $123, 508(%rdx){1to4}, %xmm29
// CHECK:  encoding: [0x62,0x63,0x7d,0x18,0x26,0x6a,0x7f,0x7b]
          vgetmantps $0x7b, 508(%rdx){1to4}, %xmm29

// CHECK: vgetmantps $123, 512(%rdx){1to4}, %xmm29
// CHECK:  encoding: [0x62,0x63,0x7d,0x18,0x26,0xaa,0x00,0x02,0x00,0x00,0x7b]
          vgetmantps $0x7b, 512(%rdx){1to4}, %xmm29

// CHECK: vgetmantps $123, -512(%rdx){1to4}, %xmm29
// CHECK:  encoding: [0x62,0x63,0x7d,0x18,0x26,0x6a,0x80,0x7b]
          vgetmantps $0x7b, -512(%rdx){1to4}, %xmm29

// CHECK: vgetmantps $123, -516(%rdx){1to4}, %xmm29
// CHECK:  encoding: [0x62,0x63,0x7d,0x18,0x26,0xaa,0xfc,0xfd,0xff,0xff,0x7b]
          vgetmantps $0x7b, -516(%rdx){1to4}, %xmm29

// CHECK: vgetmantps $171, %ymm29, %ymm17
// CHECK:  encoding: [0x62,0x83,0x7d,0x28,0x26,0xcd,0xab]
          vgetmantps $0xab, %ymm29, %ymm17

// CHECK: vgetmantps $171, %ymm29, %ymm17 {%k1}
// CHECK:  encoding: [0x62,0x83,0x7d,0x29,0x26,0xcd,0xab]
          vgetmantps $0xab, %ymm29, %ymm17 {%k1}

// CHECK: vgetmantps $171, %ymm29, %ymm17 {%k1} {z}
// CHECK:  encoding: [0x62,0x83,0x7d,0xa9,0x26,0xcd,0xab]
          vgetmantps $0xab, %ymm29, %ymm17 {%k1} {z}

// CHECK: vgetmantps $123, %ymm29, %ymm17
// CHECK:  encoding: [0x62,0x83,0x7d,0x28,0x26,0xcd,0x7b]
          vgetmantps $0x7b, %ymm29, %ymm17

// CHECK: vgetmantps $123, (%rcx), %ymm17
// CHECK:  encoding: [0x62,0xe3,0x7d,0x28,0x26,0x09,0x7b]
          vgetmantps $0x7b, (%rcx), %ymm17

// CHECK: vgetmantps $123, 291(%rax,%r14,8), %ymm17
// CHECK:  encoding: [0x62,0xa3,0x7d,0x28,0x26,0x8c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vgetmantps $0x7b, 291(%rax,%r14,8), %ymm17

// CHECK: vgetmantps $123, (%rcx){1to8}, %ymm17
// CHECK:  encoding: [0x62,0xe3,0x7d,0x38,0x26,0x09,0x7b]
          vgetmantps $0x7b, (%rcx){1to8}, %ymm17

// CHECK: vgetmantps $123, 4064(%rdx), %ymm17
// CHECK:  encoding: [0x62,0xe3,0x7d,0x28,0x26,0x4a,0x7f,0x7b]
          vgetmantps $0x7b, 4064(%rdx), %ymm17

// CHECK: vgetmantps $123, 4096(%rdx), %ymm17
// CHECK:  encoding: [0x62,0xe3,0x7d,0x28,0x26,0x8a,0x00,0x10,0x00,0x00,0x7b]
          vgetmantps $0x7b, 4096(%rdx), %ymm17

// CHECK: vgetmantps $123, -4096(%rdx), %ymm17
// CHECK:  encoding: [0x62,0xe3,0x7d,0x28,0x26,0x4a,0x80,0x7b]
          vgetmantps $0x7b, -4096(%rdx), %ymm17

// CHECK: vgetmantps $123, -4128(%rdx), %ymm17
// CHECK:  encoding: [0x62,0xe3,0x7d,0x28,0x26,0x8a,0xe0,0xef,0xff,0xff,0x7b]
          vgetmantps $0x7b, -4128(%rdx), %ymm17

// CHECK: vgetmantps $123, 508(%rdx){1to8}, %ymm17
// CHECK:  encoding: [0x62,0xe3,0x7d,0x38,0x26,0x4a,0x7f,0x7b]
          vgetmantps $0x7b, 508(%rdx){1to8}, %ymm17

// CHECK: vgetmantps $123, 512(%rdx){1to8}, %ymm17
// CHECK:  encoding: [0x62,0xe3,0x7d,0x38,0x26,0x8a,0x00,0x02,0x00,0x00,0x7b]
          vgetmantps $0x7b, 512(%rdx){1to8}, %ymm17

// CHECK: vgetmantps $123, -512(%rdx){1to8}, %ymm17
// CHECK:  encoding: [0x62,0xe3,0x7d,0x38,0x26,0x4a,0x80,0x7b]
          vgetmantps $0x7b, -512(%rdx){1to8}, %ymm17

// CHECK: vgetmantps $123, -516(%rdx){1to8}, %ymm17
// CHECK:  encoding: [0x62,0xe3,0x7d,0x38,0x26,0x8a,0xfc,0xfd,0xff,0xff,0x7b]
          vgetmantps $0x7b, -516(%rdx){1to8}, %ymm17

// CHECK: vgetmantpd $171, %xmm29, %xmm28
// CHECK:  encoding: [0x62,0x03,0xfd,0x08,0x26,0xe5,0xab]
          vgetmantpd $0xab, %xmm29, %xmm28

// CHECK: vgetmantpd $171, %xmm29, %xmm28 {%k4}
// CHECK:  encoding: [0x62,0x03,0xfd,0x0c,0x26,0xe5,0xab]
          vgetmantpd $0xab, %xmm29, %xmm28 {%k4}

// CHECK: vgetmantpd $171, %xmm29, %xmm28 {%k4} {z}
// CHECK:  encoding: [0x62,0x03,0xfd,0x8c,0x26,0xe5,0xab]
          vgetmantpd $0xab, %xmm29, %xmm28 {%k4} {z}

// CHECK: vgetmantpd $123, %xmm29, %xmm28
// CHECK:  encoding: [0x62,0x03,0xfd,0x08,0x26,0xe5,0x7b]
          vgetmantpd $0x7b, %xmm29, %xmm28

// CHECK: vgetmantpd $123, (%rcx), %xmm28
// CHECK:  encoding: [0x62,0x63,0xfd,0x08,0x26,0x21,0x7b]
          vgetmantpd $0x7b, (%rcx), %xmm28

// CHECK: vgetmantpd $123, 291(%rax,%r14,8), %xmm28
// CHECK:  encoding: [0x62,0x23,0xfd,0x08,0x26,0xa4,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vgetmantpd $0x7b, 291(%rax,%r14,8), %xmm28

// CHECK: vgetmantpd $123, (%rcx){1to2}, %xmm28
// CHECK:  encoding: [0x62,0x63,0xfd,0x18,0x26,0x21,0x7b]
          vgetmantpd $0x7b, (%rcx){1to2}, %xmm28

// CHECK: vgetmantpd $123, 2032(%rdx), %xmm28
// CHECK:  encoding: [0x62,0x63,0xfd,0x08,0x26,0x62,0x7f,0x7b]
          vgetmantpd $0x7b, 2032(%rdx), %xmm28

// CHECK: vgetmantpd $123, 2048(%rdx), %xmm28
// CHECK:  encoding: [0x62,0x63,0xfd,0x08,0x26,0xa2,0x00,0x08,0x00,0x00,0x7b]
          vgetmantpd $0x7b, 2048(%rdx), %xmm28

// CHECK: vgetmantpd $123, -2048(%rdx), %xmm28
// CHECK:  encoding: [0x62,0x63,0xfd,0x08,0x26,0x62,0x80,0x7b]
          vgetmantpd $0x7b, -2048(%rdx), %xmm28

// CHECK: vgetmantpd $123, -2064(%rdx), %xmm28
// CHECK:  encoding: [0x62,0x63,0xfd,0x08,0x26,0xa2,0xf0,0xf7,0xff,0xff,0x7b]
          vgetmantpd $0x7b, -2064(%rdx), %xmm28

// CHECK: vgetmantpd $123, 1016(%rdx){1to2}, %xmm28
// CHECK:  encoding: [0x62,0x63,0xfd,0x18,0x26,0x62,0x7f,0x7b]
          vgetmantpd $0x7b, 1016(%rdx){1to2}, %xmm28

// CHECK: vgetmantpd $123, 1024(%rdx){1to2}, %xmm28
// CHECK:  encoding: [0x62,0x63,0xfd,0x18,0x26,0xa2,0x00,0x04,0x00,0x00,0x7b]
          vgetmantpd $0x7b, 1024(%rdx){1to2}, %xmm28

// CHECK: vgetmantpd $123, -1024(%rdx){1to2}, %xmm28
// CHECK:  encoding: [0x62,0x63,0xfd,0x18,0x26,0x62,0x80,0x7b]
          vgetmantpd $0x7b, -1024(%rdx){1to2}, %xmm28

// CHECK: vgetmantpd $123, -1032(%rdx){1to2}, %xmm28
// CHECK:  encoding: [0x62,0x63,0xfd,0x18,0x26,0xa2,0xf8,0xfb,0xff,0xff,0x7b]
          vgetmantpd $0x7b, -1032(%rdx){1to2}, %xmm28

// CHECK: vgetmantpd $171, %ymm23, %ymm23
// CHECK:  encoding: [0x62,0xa3,0xfd,0x28,0x26,0xff,0xab]
          vgetmantpd $0xab, %ymm23, %ymm23

// CHECK: vgetmantpd $171, %ymm23, %ymm23 {%k5}
// CHECK:  encoding: [0x62,0xa3,0xfd,0x2d,0x26,0xff,0xab]
          vgetmantpd $0xab, %ymm23, %ymm23 {%k5}

// CHECK: vgetmantpd $171, %ymm23, %ymm23 {%k5} {z}
// CHECK:  encoding: [0x62,0xa3,0xfd,0xad,0x26,0xff,0xab]
          vgetmantpd $0xab, %ymm23, %ymm23 {%k5} {z}

// CHECK: vgetmantpd $123, %ymm23, %ymm23
// CHECK:  encoding: [0x62,0xa3,0xfd,0x28,0x26,0xff,0x7b]
          vgetmantpd $0x7b, %ymm23, %ymm23

// CHECK: vgetmantpd $123, (%rcx), %ymm23
// CHECK:  encoding: [0x62,0xe3,0xfd,0x28,0x26,0x39,0x7b]
          vgetmantpd $0x7b, (%rcx), %ymm23

// CHECK: vgetmantpd $123, 291(%rax,%r14,8), %ymm23
// CHECK:  encoding: [0x62,0xa3,0xfd,0x28,0x26,0xbc,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vgetmantpd $0x7b, 291(%rax,%r14,8), %ymm23

// CHECK: vgetmantpd $123, (%rcx){1to4}, %ymm23
// CHECK:  encoding: [0x62,0xe3,0xfd,0x38,0x26,0x39,0x7b]
          vgetmantpd $0x7b, (%rcx){1to4}, %ymm23

// CHECK: vgetmantpd $123, 4064(%rdx), %ymm23
// CHECK:  encoding: [0x62,0xe3,0xfd,0x28,0x26,0x7a,0x7f,0x7b]
          vgetmantpd $0x7b, 4064(%rdx), %ymm23

// CHECK: vgetmantpd $123, 4096(%rdx), %ymm23
// CHECK:  encoding: [0x62,0xe3,0xfd,0x28,0x26,0xba,0x00,0x10,0x00,0x00,0x7b]
          vgetmantpd $0x7b, 4096(%rdx), %ymm23

// CHECK: vgetmantpd $123, -4096(%rdx), %ymm23
// CHECK:  encoding: [0x62,0xe3,0xfd,0x28,0x26,0x7a,0x80,0x7b]
          vgetmantpd $0x7b, -4096(%rdx), %ymm23

// CHECK: vgetmantpd $123, -4128(%rdx), %ymm23
// CHECK:  encoding: [0x62,0xe3,0xfd,0x28,0x26,0xba,0xe0,0xef,0xff,0xff,0x7b]
          vgetmantpd $0x7b, -4128(%rdx), %ymm23

// CHECK: vgetmantpd $123, 1016(%rdx){1to4}, %ymm23
// CHECK:  encoding: [0x62,0xe3,0xfd,0x38,0x26,0x7a,0x7f,0x7b]
          vgetmantpd $0x7b, 1016(%rdx){1to4}, %ymm23

// CHECK: vgetmantpd $123, 1024(%rdx){1to4}, %ymm23
// CHECK:  encoding: [0x62,0xe3,0xfd,0x38,0x26,0xba,0x00,0x04,0x00,0x00,0x7b]
          vgetmantpd $0x7b, 1024(%rdx){1to4}, %ymm23

// CHECK: vgetmantpd $123, -1024(%rdx){1to4}, %ymm23
// CHECK:  encoding: [0x62,0xe3,0xfd,0x38,0x26,0x7a,0x80,0x7b]
          vgetmantpd $0x7b, -1024(%rdx){1to4}, %ymm23

// CHECK: vgetmantpd $123, -1032(%rdx){1to4}, %ymm23
// CHECK:  encoding: [0x62,0xe3,0xfd,0x38,0x26,0xba,0xf8,0xfb,0xff,0xff,0x7b]
          vgetmantpd $0x7b, -1032(%rdx){1to4}, %ymm23

// CHECK: vshufps $171, %xmm21, %xmm23, %xmm17
// CHECK:  encoding: [0x62,0xa1,0x44,0x00,0xc6,0xcd,0xab]
          vshufps $0xab, %xmm21, %xmm23, %xmm17

// CHECK: vshufps $171, %xmm21, %xmm23, %xmm17 {%k3}
// CHECK:  encoding: [0x62,0xa1,0x44,0x03,0xc6,0xcd,0xab]
          vshufps $0xab, %xmm21, %xmm23, %xmm17 {%k3}

// CHECK: vshufps $171, %xmm21, %xmm23, %xmm17 {%k3} {z}
// CHECK:  encoding: [0x62,0xa1,0x44,0x83,0xc6,0xcd,0xab]
          vshufps $0xab, %xmm21, %xmm23, %xmm17 {%k3} {z}

// CHECK: vshufps $123, %xmm21, %xmm23, %xmm17
// CHECK:  encoding: [0x62,0xa1,0x44,0x00,0xc6,0xcd,0x7b]
          vshufps $0x7b, %xmm21, %xmm23, %xmm17

// CHECK: vshufps $123, (%rcx), %xmm23, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x44,0x00,0xc6,0x09,0x7b]
          vshufps $0x7b, (%rcx), %xmm23, %xmm17

// CHECK: vshufps $123, 291(%rax,%r14,8), %xmm23, %xmm17
// CHECK:  encoding: [0x62,0xa1,0x44,0x00,0xc6,0x8c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vshufps $0x7b, 291(%rax,%r14,8), %xmm23, %xmm17

// CHECK: vshufps $123, (%rcx){1to4}, %xmm23, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x44,0x10,0xc6,0x09,0x7b]
          vshufps $0x7b, (%rcx){1to4}, %xmm23, %xmm17

// CHECK: vshufps $123, 2032(%rdx), %xmm23, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x44,0x00,0xc6,0x4a,0x7f,0x7b]
          vshufps $0x7b, 2032(%rdx), %xmm23, %xmm17

// CHECK: vshufps $123, 2048(%rdx), %xmm23, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x44,0x00,0xc6,0x8a,0x00,0x08,0x00,0x00,0x7b]
          vshufps $0x7b, 2048(%rdx), %xmm23, %xmm17

// CHECK: vshufps $123, -2048(%rdx), %xmm23, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x44,0x00,0xc6,0x4a,0x80,0x7b]
          vshufps $0x7b, -2048(%rdx), %xmm23, %xmm17

// CHECK: vshufps $123, -2064(%rdx), %xmm23, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x44,0x00,0xc6,0x8a,0xf0,0xf7,0xff,0xff,0x7b]
          vshufps $0x7b, -2064(%rdx), %xmm23, %xmm17

// CHECK: vshufps $123, 508(%rdx){1to4}, %xmm23, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x44,0x10,0xc6,0x4a,0x7f,0x7b]
          vshufps $0x7b, 508(%rdx){1to4}, %xmm23, %xmm17

// CHECK: vshufps $123, 512(%rdx){1to4}, %xmm23, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x44,0x10,0xc6,0x8a,0x00,0x02,0x00,0x00,0x7b]
          vshufps $0x7b, 512(%rdx){1to4}, %xmm23, %xmm17

// CHECK: vshufps $123, -512(%rdx){1to4}, %xmm23, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x44,0x10,0xc6,0x4a,0x80,0x7b]
          vshufps $0x7b, -512(%rdx){1to4}, %xmm23, %xmm17

// CHECK: vshufps $123, -516(%rdx){1to4}, %xmm23, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x44,0x10,0xc6,0x8a,0xfc,0xfd,0xff,0xff,0x7b]
          vshufps $0x7b, -516(%rdx){1to4}, %xmm23, %xmm17

// CHECK: vshufps $171, %ymm23, %ymm25, %ymm19
// CHECK:  encoding: [0x62,0xa1,0x34,0x20,0xc6,0xdf,0xab]
          vshufps $0xab, %ymm23, %ymm25, %ymm19

// CHECK: vshufps $171, %ymm23, %ymm25, %ymm19 {%k3}
// CHECK:  encoding: [0x62,0xa1,0x34,0x23,0xc6,0xdf,0xab]
          vshufps $0xab, %ymm23, %ymm25, %ymm19 {%k3}

// CHECK: vshufps $171, %ymm23, %ymm25, %ymm19 {%k3} {z}
// CHECK:  encoding: [0x62,0xa1,0x34,0xa3,0xc6,0xdf,0xab]
          vshufps $0xab, %ymm23, %ymm25, %ymm19 {%k3} {z}

// CHECK: vshufps $123, %ymm23, %ymm25, %ymm19
// CHECK:  encoding: [0x62,0xa1,0x34,0x20,0xc6,0xdf,0x7b]
          vshufps $0x7b, %ymm23, %ymm25, %ymm19

// CHECK: vshufps $123, (%rcx), %ymm25, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x34,0x20,0xc6,0x19,0x7b]
          vshufps $0x7b, (%rcx), %ymm25, %ymm19

// CHECK: vshufps $123, 291(%rax,%r14,8), %ymm25, %ymm19
// CHECK:  encoding: [0x62,0xa1,0x34,0x20,0xc6,0x9c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vshufps $0x7b, 291(%rax,%r14,8), %ymm25, %ymm19

// CHECK: vshufps $123, (%rcx){1to8}, %ymm25, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x34,0x30,0xc6,0x19,0x7b]
          vshufps $0x7b, (%rcx){1to8}, %ymm25, %ymm19

// CHECK: vshufps $123, 4064(%rdx), %ymm25, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x34,0x20,0xc6,0x5a,0x7f,0x7b]
          vshufps $0x7b, 4064(%rdx), %ymm25, %ymm19

// CHECK: vshufps $123, 4096(%rdx), %ymm25, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x34,0x20,0xc6,0x9a,0x00,0x10,0x00,0x00,0x7b]
          vshufps $0x7b, 4096(%rdx), %ymm25, %ymm19

// CHECK: vshufps $123, -4096(%rdx), %ymm25, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x34,0x20,0xc6,0x5a,0x80,0x7b]
          vshufps $0x7b, -4096(%rdx), %ymm25, %ymm19

// CHECK: vshufps $123, -4128(%rdx), %ymm25, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x34,0x20,0xc6,0x9a,0xe0,0xef,0xff,0xff,0x7b]
          vshufps $0x7b, -4128(%rdx), %ymm25, %ymm19

// CHECK: vshufps $123, 508(%rdx){1to8}, %ymm25, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x34,0x30,0xc6,0x5a,0x7f,0x7b]
          vshufps $0x7b, 508(%rdx){1to8}, %ymm25, %ymm19

// CHECK: vshufps $123, 512(%rdx){1to8}, %ymm25, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x34,0x30,0xc6,0x9a,0x00,0x02,0x00,0x00,0x7b]
          vshufps $0x7b, 512(%rdx){1to8}, %ymm25, %ymm19

// CHECK: vshufps $123, -512(%rdx){1to8}, %ymm25, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x34,0x30,0xc6,0x5a,0x80,0x7b]
          vshufps $0x7b, -512(%rdx){1to8}, %ymm25, %ymm19

// CHECK: vshufps $123, -516(%rdx){1to8}, %ymm25, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x34,0x30,0xc6,0x9a,0xfc,0xfd,0xff,0xff,0x7b]
          vshufps $0x7b, -516(%rdx){1to8}, %ymm25, %ymm19

// CHECK: vshufpd $171, %xmm22, %xmm21, %xmm20
// CHECK:  encoding: [0x62,0xa1,0xd5,0x00,0xc6,0xe6,0xab]
          vshufpd $0xab, %xmm22, %xmm21, %xmm20

// CHECK: vshufpd $171, %xmm22, %xmm21, %xmm20 {%k3}
// CHECK:  encoding: [0x62,0xa1,0xd5,0x03,0xc6,0xe6,0xab]
          vshufpd $0xab, %xmm22, %xmm21, %xmm20 {%k3}

// CHECK: vshufpd $171, %xmm22, %xmm21, %xmm20 {%k3} {z}
// CHECK:  encoding: [0x62,0xa1,0xd5,0x83,0xc6,0xe6,0xab]
          vshufpd $0xab, %xmm22, %xmm21, %xmm20 {%k3} {z}

// CHECK: vshufpd $123, %xmm22, %xmm21, %xmm20
// CHECK:  encoding: [0x62,0xa1,0xd5,0x00,0xc6,0xe6,0x7b]
          vshufpd $0x7b, %xmm22, %xmm21, %xmm20

// CHECK: vshufpd $123, (%rcx), %xmm21, %xmm20
// CHECK:  encoding: [0x62,0xe1,0xd5,0x00,0xc6,0x21,0x7b]
          vshufpd $0x7b, (%rcx), %xmm21, %xmm20

// CHECK: vshufpd $123, 291(%rax,%r14,8), %xmm21, %xmm20
// CHECK:  encoding: [0x62,0xa1,0xd5,0x00,0xc6,0xa4,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vshufpd $0x7b, 291(%rax,%r14,8), %xmm21, %xmm20

// CHECK: vshufpd $123, (%rcx){1to2}, %xmm21, %xmm20
// CHECK:  encoding: [0x62,0xe1,0xd5,0x10,0xc6,0x21,0x7b]
          vshufpd $0x7b, (%rcx){1to2}, %xmm21, %xmm20

// CHECK: vshufpd $123, 2032(%rdx), %xmm21, %xmm20
// CHECK:  encoding: [0x62,0xe1,0xd5,0x00,0xc6,0x62,0x7f,0x7b]
          vshufpd $0x7b, 2032(%rdx), %xmm21, %xmm20

// CHECK: vshufpd $123, 2048(%rdx), %xmm21, %xmm20
// CHECK:  encoding: [0x62,0xe1,0xd5,0x00,0xc6,0xa2,0x00,0x08,0x00,0x00,0x7b]
          vshufpd $0x7b, 2048(%rdx), %xmm21, %xmm20

// CHECK: vshufpd $123, -2048(%rdx), %xmm21, %xmm20
// CHECK:  encoding: [0x62,0xe1,0xd5,0x00,0xc6,0x62,0x80,0x7b]
          vshufpd $0x7b, -2048(%rdx), %xmm21, %xmm20

// CHECK: vshufpd $123, -2064(%rdx), %xmm21, %xmm20
// CHECK:  encoding: [0x62,0xe1,0xd5,0x00,0xc6,0xa2,0xf0,0xf7,0xff,0xff,0x7b]
          vshufpd $0x7b, -2064(%rdx), %xmm21, %xmm20

// CHECK: vshufpd $123, 1016(%rdx){1to2}, %xmm21, %xmm20
// CHECK:  encoding: [0x62,0xe1,0xd5,0x10,0xc6,0x62,0x7f,0x7b]
          vshufpd $0x7b, 1016(%rdx){1to2}, %xmm21, %xmm20

// CHECK: vshufpd $123, 1024(%rdx){1to2}, %xmm21, %xmm20
// CHECK:  encoding: [0x62,0xe1,0xd5,0x10,0xc6,0xa2,0x00,0x04,0x00,0x00,0x7b]
          vshufpd $0x7b, 1024(%rdx){1to2}, %xmm21, %xmm20

// CHECK: vshufpd $123, -1024(%rdx){1to2}, %xmm21, %xmm20
// CHECK:  encoding: [0x62,0xe1,0xd5,0x10,0xc6,0x62,0x80,0x7b]
          vshufpd $0x7b, -1024(%rdx){1to2}, %xmm21, %xmm20

// CHECK: vshufpd $123, -1032(%rdx){1to2}, %xmm21, %xmm20
// CHECK:  encoding: [0x62,0xe1,0xd5,0x10,0xc6,0xa2,0xf8,0xfb,0xff,0xff,0x7b]
          vshufpd $0x7b, -1032(%rdx){1to2}, %xmm21, %xmm20

// CHECK: vshufpd $171, %ymm22, %ymm29, %ymm24
// CHECK:  encoding: [0x62,0x21,0x95,0x20,0xc6,0xc6,0xab]
          vshufpd $0xab, %ymm22, %ymm29, %ymm24

// CHECK: vshufpd $171, %ymm22, %ymm29, %ymm24 {%k6}
// CHECK:  encoding: [0x62,0x21,0x95,0x26,0xc6,0xc6,0xab]
          vshufpd $0xab, %ymm22, %ymm29, %ymm24 {%k6}

// CHECK: vshufpd $171, %ymm22, %ymm29, %ymm24 {%k6} {z}
// CHECK:  encoding: [0x62,0x21,0x95,0xa6,0xc6,0xc6,0xab]
          vshufpd $0xab, %ymm22, %ymm29, %ymm24 {%k6} {z}

// CHECK: vshufpd $123, %ymm22, %ymm29, %ymm24
// CHECK:  encoding: [0x62,0x21,0x95,0x20,0xc6,0xc6,0x7b]
          vshufpd $0x7b, %ymm22, %ymm29, %ymm24

// CHECK: vshufpd $123, (%rcx), %ymm29, %ymm24
// CHECK:  encoding: [0x62,0x61,0x95,0x20,0xc6,0x01,0x7b]
          vshufpd $0x7b, (%rcx), %ymm29, %ymm24

// CHECK: vshufpd $123, 291(%rax,%r14,8), %ymm29, %ymm24
// CHECK:  encoding: [0x62,0x21,0x95,0x20,0xc6,0x84,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vshufpd $0x7b, 291(%rax,%r14,8), %ymm29, %ymm24

// CHECK: vshufpd $123, (%rcx){1to4}, %ymm29, %ymm24
// CHECK:  encoding: [0x62,0x61,0x95,0x30,0xc6,0x01,0x7b]
          vshufpd $0x7b, (%rcx){1to4}, %ymm29, %ymm24

// CHECK: vshufpd $123, 4064(%rdx), %ymm29, %ymm24
// CHECK:  encoding: [0x62,0x61,0x95,0x20,0xc6,0x42,0x7f,0x7b]
          vshufpd $0x7b, 4064(%rdx), %ymm29, %ymm24

// CHECK: vshufpd $123, 4096(%rdx), %ymm29, %ymm24
// CHECK:  encoding: [0x62,0x61,0x95,0x20,0xc6,0x82,0x00,0x10,0x00,0x00,0x7b]
          vshufpd $0x7b, 4096(%rdx), %ymm29, %ymm24

// CHECK: vshufpd $123, -4096(%rdx), %ymm29, %ymm24
// CHECK:  encoding: [0x62,0x61,0x95,0x20,0xc6,0x42,0x80,0x7b]
          vshufpd $0x7b, -4096(%rdx), %ymm29, %ymm24

// CHECK: vshufpd $123, -4128(%rdx), %ymm29, %ymm24
// CHECK:  encoding: [0x62,0x61,0x95,0x20,0xc6,0x82,0xe0,0xef,0xff,0xff,0x7b]
          vshufpd $0x7b, -4128(%rdx), %ymm29, %ymm24

// CHECK: vshufpd $123, 1016(%rdx){1to4}, %ymm29, %ymm24
// CHECK:  encoding: [0x62,0x61,0x95,0x30,0xc6,0x42,0x7f,0x7b]
          vshufpd $0x7b, 1016(%rdx){1to4}, %ymm29, %ymm24

// CHECK: vshufpd $123, 1024(%rdx){1to4}, %ymm29, %ymm24
// CHECK:  encoding: [0x62,0x61,0x95,0x30,0xc6,0x82,0x00,0x04,0x00,0x00,0x7b]
          vshufpd $0x7b, 1024(%rdx){1to4}, %ymm29, %ymm24

// CHECK: vshufpd $123, -1024(%rdx){1to4}, %ymm29, %ymm24
// CHECK:  encoding: [0x62,0x61,0x95,0x30,0xc6,0x42,0x80,0x7b]
          vshufpd $0x7b, -1024(%rdx){1to4}, %ymm29, %ymm24

// CHECK: vshufpd $123, -1032(%rdx){1to4}, %ymm29, %ymm24
// CHECK:  encoding: [0x62,0x61,0x95,0x30,0xc6,0x82,0xf8,0xfb,0xff,0xff,0x7b]
          vshufpd $0x7b, -1032(%rdx){1to4}, %ymm29, %ymm24

// CHECK: vscatterqps %xmm28, 123(%r14,%xmm31,8) {%k1}
// CHECK:  encoding: [0x62,0x02,0x7d,0x01,0xa3,0xa4,0xfe,0x7b,0x00,0x00,0x00]
          vscatterqps %xmm28, 123(%r14, %xmm31,8) {%k1}

// CHECK: vscatterqps %xmm28, 123(%r14,%xmm31,8) {%k1}
// CHECK:  encoding: [0x62,0x02,0x7d,0x01,0xa3,0xa4,0xfe,0x7b,0x00,0x00,0x00]
          vscatterqps %xmm28, 123(%r14, %xmm31,8) {%k1}

// CHECK: vscatterqps %xmm28, 256(%r9,%xmm31) {%k1}
// CHECK:  encoding: [0x62,0x02,0x7d,0x01,0xa3,0x64,0x39,0x40]
          vscatterqps %xmm28, 256(%r9, %xmm31) {%k1}

// CHECK: vscatterqps %xmm28, 1024(%rcx,%xmm31,4) {%k1}
// CHECK:  encoding: [0x62,0x22,0x7d,0x01,0xa3,0xa4,0xb9,0x00,0x04,0x00,0x00]
          vscatterqps %xmm28, 1024(%rcx, %xmm31,4) {%k1}

// CHECK: vscatterqps %xmm25, 123(%r14,%ymm31,8) {%k1}
// CHECK:  encoding: [0x62,0x02,0x7d,0x21,0xa3,0x8c,0xfe,0x7b,0x00,0x00,0x00]
          vscatterqps %xmm25, 123(%r14, %ymm31,8) {%k1}

// CHECK: vscatterqps %xmm25, 123(%r14,%ymm31,8) {%k1}
// CHECK:  encoding: [0x62,0x02,0x7d,0x21,0xa3,0x8c,0xfe,0x7b,0x00,0x00,0x00]
          vscatterqps %xmm25, 123(%r14, %ymm31,8) {%k1}

// CHECK: vscatterqps %xmm25, 256(%r9,%ymm31) {%k1}
// CHECK:  encoding: [0x62,0x02,0x7d,0x21,0xa3,0x4c,0x39,0x40]
          vscatterqps %xmm25, 256(%r9, %ymm31) {%k1}

// CHECK: vscatterqps %xmm25, 1024(%rcx,%ymm31,4) {%k1}
// CHECK:  encoding: [0x62,0x22,0x7d,0x21,0xa3,0x8c,0xb9,0x00,0x04,0x00,0x00]
          vscatterqps %xmm25, 1024(%rcx, %ymm31,4) {%k1}

// CHECK: vscatterqpd %xmm21, 123(%r14,%xmm31,8) {%k1}
// CHECK:  encoding: [0x62,0x82,0xfd,0x01,0xa3,0xac,0xfe,0x7b,0x00,0x00,0x00]
          vscatterqpd %xmm21, 123(%r14, %xmm31,8) {%k1}

// CHECK: vscatterqpd %xmm21, 123(%r14,%xmm31,8) {%k1}
// CHECK:  encoding: [0x62,0x82,0xfd,0x01,0xa3,0xac,0xfe,0x7b,0x00,0x00,0x00]
          vscatterqpd %xmm21, 123(%r14, %xmm31,8) {%k1}

// CHECK: vscatterqpd %xmm21, 256(%r9,%xmm31) {%k1}
// CHECK:  encoding: [0x62,0x82,0xfd,0x01,0xa3,0x6c,0x39,0x20]
          vscatterqpd %xmm21, 256(%r9, %xmm31) {%k1}

// CHECK: vscatterqpd %xmm21, 1024(%rcx,%xmm31,4) {%k1}
// CHECK:  encoding: [0x62,0xa2,0xfd,0x01,0xa3,0xac,0xb9,0x00,0x04,0x00,0x00]
          vscatterqpd %xmm21, 1024(%rcx, %xmm31,4) {%k1}

// CHECK: vscatterqpd %ymm23, 123(%r14,%ymm31,8) {%k1}
// CHECK:  encoding: [0x62,0x82,0xfd,0x21,0xa3,0xbc,0xfe,0x7b,0x00,0x00,0x00]
          vscatterqpd %ymm23, 123(%r14, %ymm31,8) {%k1}

// CHECK: vscatterqpd %ymm23, 123(%r14,%ymm31,8) {%k1}
// CHECK:  encoding: [0x62,0x82,0xfd,0x21,0xa3,0xbc,0xfe,0x7b,0x00,0x00,0x00]
          vscatterqpd %ymm23, 123(%r14, %ymm31,8) {%k1}

// CHECK: vscatterqpd %ymm23, 256(%r9,%ymm31) {%k1}
// CHECK:  encoding: [0x62,0x82,0xfd,0x21,0xa3,0x7c,0x39,0x20]
          vscatterqpd %ymm23, 256(%r9, %ymm31) {%k1}

// CHECK: vscatterqpd %ymm23, 1024(%rcx,%ymm31,4) {%k1}
// CHECK:  encoding: [0x62,0xa2,0xfd,0x21,0xa3,0xbc,0xb9,0x00,0x04,0x00,0x00]
          vscatterqpd %ymm23, 1024(%rcx, %ymm31,4) {%k1}

// CHECK: vscatterdps %xmm24, 123(%r14,%xmm31,8) {%k1}
// CHECK:  encoding: [0x62,0x02,0x7d,0x01,0xa2,0x84,0xfe,0x7b,0x00,0x00,0x00]
          vscatterdps %xmm24, 123(%r14, %xmm31,8) {%k1}

// CHECK: vscatterdps %xmm24, 123(%r14,%xmm31,8) {%k1}
// CHECK:  encoding: [0x62,0x02,0x7d,0x01,0xa2,0x84,0xfe,0x7b,0x00,0x00,0x00]
          vscatterdps %xmm24, 123(%r14, %xmm31,8) {%k1}

// CHECK: vscatterdps %xmm24, 256(%r9,%xmm31) {%k1}
// CHECK:  encoding: [0x62,0x02,0x7d,0x01,0xa2,0x44,0x39,0x40]
          vscatterdps %xmm24, 256(%r9, %xmm31) {%k1}

// CHECK: vscatterdps %xmm24, 1024(%rcx,%xmm31,4) {%k1}
// CHECK:  encoding: [0x62,0x22,0x7d,0x01,0xa2,0x84,0xb9,0x00,0x04,0x00,0x00]
          vscatterdps %xmm24, 1024(%rcx, %xmm31,4) {%k1}

// CHECK: vscatterdps %ymm23, 123(%r14,%ymm31,8) {%k1}
// CHECK:  encoding: [0x62,0x82,0x7d,0x21,0xa2,0xbc,0xfe,0x7b,0x00,0x00,0x00]
          vscatterdps %ymm23, 123(%r14, %ymm31,8) {%k1}

// CHECK: vscatterdps %ymm23, 123(%r14,%ymm31,8) {%k1}
// CHECK:  encoding: [0x62,0x82,0x7d,0x21,0xa2,0xbc,0xfe,0x7b,0x00,0x00,0x00]
          vscatterdps %ymm23, 123(%r14, %ymm31,8) {%k1}

// CHECK: vscatterdps %ymm23, 256(%r9,%ymm31) {%k1}
// CHECK:  encoding: [0x62,0x82,0x7d,0x21,0xa2,0x7c,0x39,0x40]
          vscatterdps %ymm23, 256(%r9, %ymm31) {%k1}

// CHECK: vscatterdps %ymm23, 1024(%rcx,%ymm31,4) {%k1}
// CHECK:  encoding: [0x62,0xa2,0x7d,0x21,0xa2,0xbc,0xb9,0x00,0x04,0x00,0x00]
          vscatterdps %ymm23, 1024(%rcx, %ymm31,4) {%k1}

// CHECK: vscatterdpd %xmm18, 123(%r14,%xmm31,8) {%k1}
// CHECK:  encoding: [0x62,0x82,0xfd,0x01,0xa2,0x94,0xfe,0x7b,0x00,0x00,0x00]
          vscatterdpd %xmm18, 123(%r14, %xmm31,8) {%k1}

// CHECK: vscatterdpd %xmm18, 123(%r14,%xmm31,8) {%k1}
// CHECK:  encoding: [0x62,0x82,0xfd,0x01,0xa2,0x94,0xfe,0x7b,0x00,0x00,0x00]
          vscatterdpd %xmm18, 123(%r14, %xmm31,8) {%k1}

// CHECK: vscatterdpd %xmm18, 256(%r9,%xmm31) {%k1}
// CHECK:  encoding: [0x62,0x82,0xfd,0x01,0xa2,0x54,0x39,0x20]
          vscatterdpd %xmm18, 256(%r9, %xmm31) {%k1}

// CHECK: vscatterdpd %xmm18, 1024(%rcx,%xmm31,4) {%k1}
// CHECK:  encoding: [0x62,0xa2,0xfd,0x01,0xa2,0x94,0xb9,0x00,0x04,0x00,0x00]
          vscatterdpd %xmm18, 1024(%rcx, %xmm31,4) {%k1}

// CHECK: vscatterdpd %ymm30, 123(%r14,%xmm31,8) {%k1}
// CHECK:  encoding: [0x62,0x02,0xfd,0x21,0xa2,0xb4,0xfe,0x7b,0x00,0x00,0x00]
          vscatterdpd %ymm30, 123(%r14, %xmm31,8) {%k1}

// CHECK: vscatterdpd %ymm30, 123(%r14,%xmm31,8) {%k1}
// CHECK:  encoding: [0x62,0x02,0xfd,0x21,0xa2,0xb4,0xfe,0x7b,0x00,0x00,0x00]
          vscatterdpd %ymm30, 123(%r14, %xmm31,8) {%k1}

// CHECK: vscatterdpd %ymm30, 256(%r9,%xmm31) {%k1}
// CHECK:  encoding: [0x62,0x02,0xfd,0x21,0xa2,0x74,0x39,0x20]
          vscatterdpd %ymm30, 256(%r9, %xmm31) {%k1}

// CHECK: vscatterdpd %ymm30, 1024(%rcx,%xmm31,4) {%k1}
// CHECK:  encoding: [0x62,0x22,0xfd,0x21,0xa2,0xb4,0xb9,0x00,0x04,0x00,0x00]
          vscatterdpd %ymm30, 1024(%rcx, %xmm31,4) {%k1}

// CHECK: vpermilps $171, %xmm28, %xmm20
// CHECK:  encoding: [0x62,0x83,0x7d,0x08,0x04,0xe4,0xab]
          vpermilps $0xab, %xmm28, %xmm20

// CHECK: vpermilps $171, %xmm28, %xmm20 {%k4}
// CHECK:  encoding: [0x62,0x83,0x7d,0x0c,0x04,0xe4,0xab]
          vpermilps $0xab, %xmm28, %xmm20 {%k4}

// CHECK: vpermilps $171, %xmm28, %xmm20 {%k4} {z}
// CHECK:  encoding: [0x62,0x83,0x7d,0x8c,0x04,0xe4,0xab]
          vpermilps $0xab, %xmm28, %xmm20 {%k4} {z}

// CHECK: vpermilps $123, %xmm28, %xmm20
// CHECK:  encoding: [0x62,0x83,0x7d,0x08,0x04,0xe4,0x7b]
          vpermilps $0x7b, %xmm28, %xmm20

// CHECK: vpermilps $123, (%rcx), %xmm20
// CHECK:  encoding: [0x62,0xe3,0x7d,0x08,0x04,0x21,0x7b]
          vpermilps $0x7b, (%rcx), %xmm20

// CHECK: vpermilps $123, 291(%rax,%r14,8), %xmm20
// CHECK:  encoding: [0x62,0xa3,0x7d,0x08,0x04,0xa4,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpermilps $0x7b, 291(%rax,%r14,8), %xmm20

// CHECK: vpermilps $123, (%rcx){1to4}, %xmm20
// CHECK:  encoding: [0x62,0xe3,0x7d,0x18,0x04,0x21,0x7b]
          vpermilps $0x7b, (%rcx){1to4}, %xmm20

// CHECK: vpermilps $123, 2032(%rdx), %xmm20
// CHECK:  encoding: [0x62,0xe3,0x7d,0x08,0x04,0x62,0x7f,0x7b]
          vpermilps $0x7b, 2032(%rdx), %xmm20

// CHECK: vpermilps $123, 2048(%rdx), %xmm20
// CHECK:  encoding: [0x62,0xe3,0x7d,0x08,0x04,0xa2,0x00,0x08,0x00,0x00,0x7b]
          vpermilps $0x7b, 2048(%rdx), %xmm20

// CHECK: vpermilps $123, -2048(%rdx), %xmm20
// CHECK:  encoding: [0x62,0xe3,0x7d,0x08,0x04,0x62,0x80,0x7b]
          vpermilps $0x7b, -2048(%rdx), %xmm20

// CHECK: vpermilps $123, -2064(%rdx), %xmm20
// CHECK:  encoding: [0x62,0xe3,0x7d,0x08,0x04,0xa2,0xf0,0xf7,0xff,0xff,0x7b]
          vpermilps $0x7b, -2064(%rdx), %xmm20

// CHECK: vpermilps $123, 508(%rdx){1to4}, %xmm20
// CHECK:  encoding: [0x62,0xe3,0x7d,0x18,0x04,0x62,0x7f,0x7b]
          vpermilps $0x7b, 508(%rdx){1to4}, %xmm20

// CHECK: vpermilps $123, 512(%rdx){1to4}, %xmm20
// CHECK:  encoding: [0x62,0xe3,0x7d,0x18,0x04,0xa2,0x00,0x02,0x00,0x00,0x7b]
          vpermilps $0x7b, 512(%rdx){1to4}, %xmm20

// CHECK: vpermilps $123, -512(%rdx){1to4}, %xmm20
// CHECK:  encoding: [0x62,0xe3,0x7d,0x18,0x04,0x62,0x80,0x7b]
          vpermilps $0x7b, -512(%rdx){1to4}, %xmm20

// CHECK: vpermilps $123, -516(%rdx){1to4}, %xmm20
// CHECK:  encoding: [0x62,0xe3,0x7d,0x18,0x04,0xa2,0xfc,0xfd,0xff,0xff,0x7b]
          vpermilps $0x7b, -516(%rdx){1to4}, %xmm20

// CHECK: vpermilps $171, %ymm17, %ymm30
// CHECK:  encoding: [0x62,0x23,0x7d,0x28,0x04,0xf1,0xab]
          vpermilps $0xab, %ymm17, %ymm30

// CHECK: vpermilps $171, %ymm17, %ymm30 {%k5}
// CHECK:  encoding: [0x62,0x23,0x7d,0x2d,0x04,0xf1,0xab]
          vpermilps $0xab, %ymm17, %ymm30 {%k5}

// CHECK: vpermilps $171, %ymm17, %ymm30 {%k5} {z}
// CHECK:  encoding: [0x62,0x23,0x7d,0xad,0x04,0xf1,0xab]
          vpermilps $0xab, %ymm17, %ymm30 {%k5} {z}

// CHECK: vpermilps $123, %ymm17, %ymm30
// CHECK:  encoding: [0x62,0x23,0x7d,0x28,0x04,0xf1,0x7b]
          vpermilps $0x7b, %ymm17, %ymm30

// CHECK: vpermilps $123, (%rcx), %ymm30
// CHECK:  encoding: [0x62,0x63,0x7d,0x28,0x04,0x31,0x7b]
          vpermilps $0x7b, (%rcx), %ymm30

// CHECK: vpermilps $123, 291(%rax,%r14,8), %ymm30
// CHECK:  encoding: [0x62,0x23,0x7d,0x28,0x04,0xb4,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpermilps $0x7b, 291(%rax,%r14,8), %ymm30

// CHECK: vpermilps $123, (%rcx){1to8}, %ymm30
// CHECK:  encoding: [0x62,0x63,0x7d,0x38,0x04,0x31,0x7b]
          vpermilps $0x7b, (%rcx){1to8}, %ymm30

// CHECK: vpermilps $123, 4064(%rdx), %ymm30
// CHECK:  encoding: [0x62,0x63,0x7d,0x28,0x04,0x72,0x7f,0x7b]
          vpermilps $0x7b, 4064(%rdx), %ymm30

// CHECK: vpermilps $123, 4096(%rdx), %ymm30
// CHECK:  encoding: [0x62,0x63,0x7d,0x28,0x04,0xb2,0x00,0x10,0x00,0x00,0x7b]
          vpermilps $0x7b, 4096(%rdx), %ymm30

// CHECK: vpermilps $123, -4096(%rdx), %ymm30
// CHECK:  encoding: [0x62,0x63,0x7d,0x28,0x04,0x72,0x80,0x7b]
          vpermilps $0x7b, -4096(%rdx), %ymm30

// CHECK: vpermilps $123, -4128(%rdx), %ymm30
// CHECK:  encoding: [0x62,0x63,0x7d,0x28,0x04,0xb2,0xe0,0xef,0xff,0xff,0x7b]
          vpermilps $0x7b, -4128(%rdx), %ymm30

// CHECK: vpermilps $123, 508(%rdx){1to8}, %ymm30
// CHECK:  encoding: [0x62,0x63,0x7d,0x38,0x04,0x72,0x7f,0x7b]
          vpermilps $0x7b, 508(%rdx){1to8}, %ymm30

// CHECK: vpermilps $123, 512(%rdx){1to8}, %ymm30
// CHECK:  encoding: [0x62,0x63,0x7d,0x38,0x04,0xb2,0x00,0x02,0x00,0x00,0x7b]
          vpermilps $0x7b, 512(%rdx){1to8}, %ymm30

// CHECK: vpermilps $123, -512(%rdx){1to8}, %ymm30
// CHECK:  encoding: [0x62,0x63,0x7d,0x38,0x04,0x72,0x80,0x7b]
          vpermilps $0x7b, -512(%rdx){1to8}, %ymm30

// CHECK: vpermilps $123, -516(%rdx){1to8}, %ymm30
// CHECK:  encoding: [0x62,0x63,0x7d,0x38,0x04,0xb2,0xfc,0xfd,0xff,0xff,0x7b]
          vpermilps $0x7b, -516(%rdx){1to8}, %ymm30

// CHECK: vpermilps %xmm22, %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x22,0x1d,0x00,0x0c,0xe6]
          vpermilps %xmm22, %xmm28, %xmm28

// CHECK: vpermilps %xmm22, %xmm28, %xmm28 {%k6}
// CHECK:  encoding: [0x62,0x22,0x1d,0x06,0x0c,0xe6]
          vpermilps %xmm22, %xmm28, %xmm28 {%k6}

// CHECK: vpermilps %xmm22, %xmm28, %xmm28 {%k6} {z}
// CHECK:  encoding: [0x62,0x22,0x1d,0x86,0x0c,0xe6]
          vpermilps %xmm22, %xmm28, %xmm28 {%k6} {z}

// CHECK: vpermilps (%rcx), %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x62,0x1d,0x00,0x0c,0x21]
          vpermilps (%rcx), %xmm28, %xmm28

// CHECK: vpermilps 291(%rax,%r14,8), %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x22,0x1d,0x00,0x0c,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpermilps 291(%rax,%r14,8), %xmm28, %xmm28

// CHECK: vpermilps (%rcx){1to4}, %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x62,0x1d,0x10,0x0c,0x21]
          vpermilps (%rcx){1to4}, %xmm28, %xmm28

// CHECK: vpermilps 2032(%rdx), %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x62,0x1d,0x00,0x0c,0x62,0x7f]
          vpermilps 2032(%rdx), %xmm28, %xmm28

// CHECK: vpermilps 2048(%rdx), %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x62,0x1d,0x00,0x0c,0xa2,0x00,0x08,0x00,0x00]
          vpermilps 2048(%rdx), %xmm28, %xmm28

// CHECK: vpermilps -2048(%rdx), %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x62,0x1d,0x00,0x0c,0x62,0x80]
          vpermilps -2048(%rdx), %xmm28, %xmm28

// CHECK: vpermilps -2064(%rdx), %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x62,0x1d,0x00,0x0c,0xa2,0xf0,0xf7,0xff,0xff]
          vpermilps -2064(%rdx), %xmm28, %xmm28

// CHECK: vpermilps 508(%rdx){1to4}, %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x62,0x1d,0x10,0x0c,0x62,0x7f]
          vpermilps 508(%rdx){1to4}, %xmm28, %xmm28

// CHECK: vpermilps 512(%rdx){1to4}, %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x62,0x1d,0x10,0x0c,0xa2,0x00,0x02,0x00,0x00]
          vpermilps 512(%rdx){1to4}, %xmm28, %xmm28

// CHECK: vpermilps -512(%rdx){1to4}, %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x62,0x1d,0x10,0x0c,0x62,0x80]
          vpermilps -512(%rdx){1to4}, %xmm28, %xmm28

// CHECK: vpermilps -516(%rdx){1to4}, %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x62,0x1d,0x10,0x0c,0xa2,0xfc,0xfd,0xff,0xff]
          vpermilps -516(%rdx){1to4}, %xmm28, %xmm28

// CHECK: vpermilps %ymm21, %ymm28, %ymm29
// CHECK:  encoding: [0x62,0x22,0x1d,0x20,0x0c,0xed]
          vpermilps %ymm21, %ymm28, %ymm29

// CHECK: vpermilps %ymm21, %ymm28, %ymm29 {%k2}
// CHECK:  encoding: [0x62,0x22,0x1d,0x22,0x0c,0xed]
          vpermilps %ymm21, %ymm28, %ymm29 {%k2}

// CHECK: vpermilps %ymm21, %ymm28, %ymm29 {%k2} {z}
// CHECK:  encoding: [0x62,0x22,0x1d,0xa2,0x0c,0xed]
          vpermilps %ymm21, %ymm28, %ymm29 {%k2} {z}

// CHECK: vpermilps (%rcx), %ymm28, %ymm29
// CHECK:  encoding: [0x62,0x62,0x1d,0x20,0x0c,0x29]
          vpermilps (%rcx), %ymm28, %ymm29

// CHECK: vpermilps 291(%rax,%r14,8), %ymm28, %ymm29
// CHECK:  encoding: [0x62,0x22,0x1d,0x20,0x0c,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpermilps 291(%rax,%r14,8), %ymm28, %ymm29

// CHECK: vpermilps (%rcx){1to8}, %ymm28, %ymm29
// CHECK:  encoding: [0x62,0x62,0x1d,0x30,0x0c,0x29]
          vpermilps (%rcx){1to8}, %ymm28, %ymm29

// CHECK: vpermilps 4064(%rdx), %ymm28, %ymm29
// CHECK:  encoding: [0x62,0x62,0x1d,0x20,0x0c,0x6a,0x7f]
          vpermilps 4064(%rdx), %ymm28, %ymm29

// CHECK: vpermilps 4096(%rdx), %ymm28, %ymm29
// CHECK:  encoding: [0x62,0x62,0x1d,0x20,0x0c,0xaa,0x00,0x10,0x00,0x00]
          vpermilps 4096(%rdx), %ymm28, %ymm29

// CHECK: vpermilps -4096(%rdx), %ymm28, %ymm29
// CHECK:  encoding: [0x62,0x62,0x1d,0x20,0x0c,0x6a,0x80]
          vpermilps -4096(%rdx), %ymm28, %ymm29

// CHECK: vpermilps -4128(%rdx), %ymm28, %ymm29
// CHECK:  encoding: [0x62,0x62,0x1d,0x20,0x0c,0xaa,0xe0,0xef,0xff,0xff]
          vpermilps -4128(%rdx), %ymm28, %ymm29

// CHECK: vpermilps 508(%rdx){1to8}, %ymm28, %ymm29
// CHECK:  encoding: [0x62,0x62,0x1d,0x30,0x0c,0x6a,0x7f]
          vpermilps 508(%rdx){1to8}, %ymm28, %ymm29

// CHECK: vpermilps 512(%rdx){1to8}, %ymm28, %ymm29
// CHECK:  encoding: [0x62,0x62,0x1d,0x30,0x0c,0xaa,0x00,0x02,0x00,0x00]
          vpermilps 512(%rdx){1to8}, %ymm28, %ymm29

// CHECK: vpermilps -512(%rdx){1to8}, %ymm28, %ymm29
// CHECK:  encoding: [0x62,0x62,0x1d,0x30,0x0c,0x6a,0x80]
          vpermilps -512(%rdx){1to8}, %ymm28, %ymm29

// CHECK: vpermilps -516(%rdx){1to8}, %ymm28, %ymm29
// CHECK:  encoding: [0x62,0x62,0x1d,0x30,0x0c,0xaa,0xfc,0xfd,0xff,0xff]
          vpermilps -516(%rdx){1to8}, %ymm28, %ymm29

// CHECK: vpermilpd $171, %xmm19, %xmm29
// CHECK:  encoding: [0x62,0x23,0xfd,0x08,0x05,0xeb,0xab]
          vpermilpd $0xab, %xmm19, %xmm29

// CHECK: vpermilpd $171, %xmm19, %xmm29 {%k7}
// CHECK:  encoding: [0x62,0x23,0xfd,0x0f,0x05,0xeb,0xab]
          vpermilpd $0xab, %xmm19, %xmm29 {%k7}

// CHECK: vpermilpd $171, %xmm19, %xmm29 {%k7} {z}
// CHECK:  encoding: [0x62,0x23,0xfd,0x8f,0x05,0xeb,0xab]
          vpermilpd $0xab, %xmm19, %xmm29 {%k7} {z}

// CHECK: vpermilpd $123, %xmm19, %xmm29
// CHECK:  encoding: [0x62,0x23,0xfd,0x08,0x05,0xeb,0x7b]
          vpermilpd $0x7b, %xmm19, %xmm29

// CHECK: vpermilpd $123, (%rcx), %xmm29
// CHECK:  encoding: [0x62,0x63,0xfd,0x08,0x05,0x29,0x7b]
          vpermilpd $0x7b, (%rcx), %xmm29

// CHECK: vpermilpd $123, 291(%rax,%r14,8), %xmm29
// CHECK:  encoding: [0x62,0x23,0xfd,0x08,0x05,0xac,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpermilpd $0x7b, 291(%rax,%r14,8), %xmm29

// CHECK: vpermilpd $123, (%rcx){1to2}, %xmm29
// CHECK:  encoding: [0x62,0x63,0xfd,0x18,0x05,0x29,0x7b]
          vpermilpd $0x7b, (%rcx){1to2}, %xmm29

// CHECK: vpermilpd $123, 2032(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x63,0xfd,0x08,0x05,0x6a,0x7f,0x7b]
          vpermilpd $0x7b, 2032(%rdx), %xmm29

// CHECK: vpermilpd $123, 2048(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x63,0xfd,0x08,0x05,0xaa,0x00,0x08,0x00,0x00,0x7b]
          vpermilpd $0x7b, 2048(%rdx), %xmm29

// CHECK: vpermilpd $123, -2048(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x63,0xfd,0x08,0x05,0x6a,0x80,0x7b]
          vpermilpd $0x7b, -2048(%rdx), %xmm29

// CHECK: vpermilpd $123, -2064(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x63,0xfd,0x08,0x05,0xaa,0xf0,0xf7,0xff,0xff,0x7b]
          vpermilpd $0x7b, -2064(%rdx), %xmm29

// CHECK: vpermilpd $123, 1016(%rdx){1to2}, %xmm29
// CHECK:  encoding: [0x62,0x63,0xfd,0x18,0x05,0x6a,0x7f,0x7b]
          vpermilpd $0x7b, 1016(%rdx){1to2}, %xmm29

// CHECK: vpermilpd $123, 1024(%rdx){1to2}, %xmm29
// CHECK:  encoding: [0x62,0x63,0xfd,0x18,0x05,0xaa,0x00,0x04,0x00,0x00,0x7b]
          vpermilpd $0x7b, 1024(%rdx){1to2}, %xmm29

// CHECK: vpermilpd $123, -1024(%rdx){1to2}, %xmm29
// CHECK:  encoding: [0x62,0x63,0xfd,0x18,0x05,0x6a,0x80,0x7b]
          vpermilpd $0x7b, -1024(%rdx){1to2}, %xmm29

// CHECK: vpermilpd $123, -1032(%rdx){1to2}, %xmm29
// CHECK:  encoding: [0x62,0x63,0xfd,0x18,0x05,0xaa,0xf8,0xfb,0xff,0xff,0x7b]
          vpermilpd $0x7b, -1032(%rdx){1to2}, %xmm29

// CHECK: vpermilpd $171, %ymm24, %ymm17
// CHECK:  encoding: [0x62,0x83,0xfd,0x28,0x05,0xc8,0xab]
          vpermilpd $0xab, %ymm24, %ymm17

// CHECK: vpermilpd $171, %ymm24, %ymm17 {%k6}
// CHECK:  encoding: [0x62,0x83,0xfd,0x2e,0x05,0xc8,0xab]
          vpermilpd $0xab, %ymm24, %ymm17 {%k6}

// CHECK: vpermilpd $171, %ymm24, %ymm17 {%k6} {z}
// CHECK:  encoding: [0x62,0x83,0xfd,0xae,0x05,0xc8,0xab]
          vpermilpd $0xab, %ymm24, %ymm17 {%k6} {z}

// CHECK: vpermilpd $123, %ymm24, %ymm17
// CHECK:  encoding: [0x62,0x83,0xfd,0x28,0x05,0xc8,0x7b]
          vpermilpd $0x7b, %ymm24, %ymm17

// CHECK: vpermilpd $123, (%rcx), %ymm17
// CHECK:  encoding: [0x62,0xe3,0xfd,0x28,0x05,0x09,0x7b]
          vpermilpd $0x7b, (%rcx), %ymm17

// CHECK: vpermilpd $123, 291(%rax,%r14,8), %ymm17
// CHECK:  encoding: [0x62,0xa3,0xfd,0x28,0x05,0x8c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpermilpd $0x7b, 291(%rax,%r14,8), %ymm17

// CHECK: vpermilpd $123, (%rcx){1to4}, %ymm17
// CHECK:  encoding: [0x62,0xe3,0xfd,0x38,0x05,0x09,0x7b]
          vpermilpd $0x7b, (%rcx){1to4}, %ymm17

// CHECK: vpermilpd $123, 4064(%rdx), %ymm17
// CHECK:  encoding: [0x62,0xe3,0xfd,0x28,0x05,0x4a,0x7f,0x7b]
          vpermilpd $0x7b, 4064(%rdx), %ymm17

// CHECK: vpermilpd $123, 4096(%rdx), %ymm17
// CHECK:  encoding: [0x62,0xe3,0xfd,0x28,0x05,0x8a,0x00,0x10,0x00,0x00,0x7b]
          vpermilpd $0x7b, 4096(%rdx), %ymm17

// CHECK: vpermilpd $123, -4096(%rdx), %ymm17
// CHECK:  encoding: [0x62,0xe3,0xfd,0x28,0x05,0x4a,0x80,0x7b]
          vpermilpd $0x7b, -4096(%rdx), %ymm17

// CHECK: vpermilpd $123, -4128(%rdx), %ymm17
// CHECK:  encoding: [0x62,0xe3,0xfd,0x28,0x05,0x8a,0xe0,0xef,0xff,0xff,0x7b]
          vpermilpd $0x7b, -4128(%rdx), %ymm17

// CHECK: vpermilpd $123, 1016(%rdx){1to4}, %ymm17
// CHECK:  encoding: [0x62,0xe3,0xfd,0x38,0x05,0x4a,0x7f,0x7b]
          vpermilpd $0x7b, 1016(%rdx){1to4}, %ymm17

// CHECK: vpermilpd $123, 1024(%rdx){1to4}, %ymm17
// CHECK:  encoding: [0x62,0xe3,0xfd,0x38,0x05,0x8a,0x00,0x04,0x00,0x00,0x7b]
          vpermilpd $0x7b, 1024(%rdx){1to4}, %ymm17

// CHECK: vpermilpd $123, -1024(%rdx){1to4}, %ymm17
// CHECK:  encoding: [0x62,0xe3,0xfd,0x38,0x05,0x4a,0x80,0x7b]
          vpermilpd $0x7b, -1024(%rdx){1to4}, %ymm17

// CHECK: vpermilpd $123, -1032(%rdx){1to4}, %ymm17
// CHECK:  encoding: [0x62,0xe3,0xfd,0x38,0x05,0x8a,0xf8,0xfb,0xff,0xff,0x7b]
          vpermilpd $0x7b, -1032(%rdx){1to4}, %ymm17

// CHECK: vpermilpd %xmm17, %xmm27, %xmm26
// CHECK:  encoding: [0x62,0x22,0xa5,0x00,0x0d,0xd1]
          vpermilpd %xmm17, %xmm27, %xmm26

// CHECK: vpermilpd %xmm17, %xmm27, %xmm26 {%k2}
// CHECK:  encoding: [0x62,0x22,0xa5,0x02,0x0d,0xd1]
          vpermilpd %xmm17, %xmm27, %xmm26 {%k2}

// CHECK: vpermilpd %xmm17, %xmm27, %xmm26 {%k2} {z}
// CHECK:  encoding: [0x62,0x22,0xa5,0x82,0x0d,0xd1]
          vpermilpd %xmm17, %xmm27, %xmm26 {%k2} {z}

// CHECK: vpermilpd (%rcx), %xmm27, %xmm26
// CHECK:  encoding: [0x62,0x62,0xa5,0x00,0x0d,0x11]
          vpermilpd (%rcx), %xmm27, %xmm26

// CHECK: vpermilpd 291(%rax,%r14,8), %xmm27, %xmm26
// CHECK:  encoding: [0x62,0x22,0xa5,0x00,0x0d,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpermilpd 291(%rax,%r14,8), %xmm27, %xmm26

// CHECK: vpermilpd (%rcx){1to2}, %xmm27, %xmm26
// CHECK:  encoding: [0x62,0x62,0xa5,0x10,0x0d,0x11]
          vpermilpd (%rcx){1to2}, %xmm27, %xmm26

// CHECK: vpermilpd 2032(%rdx), %xmm27, %xmm26
// CHECK:  encoding: [0x62,0x62,0xa5,0x00,0x0d,0x52,0x7f]
          vpermilpd 2032(%rdx), %xmm27, %xmm26

// CHECK: vpermilpd 2048(%rdx), %xmm27, %xmm26
// CHECK:  encoding: [0x62,0x62,0xa5,0x00,0x0d,0x92,0x00,0x08,0x00,0x00]
          vpermilpd 2048(%rdx), %xmm27, %xmm26

// CHECK: vpermilpd -2048(%rdx), %xmm27, %xmm26
// CHECK:  encoding: [0x62,0x62,0xa5,0x00,0x0d,0x52,0x80]
          vpermilpd -2048(%rdx), %xmm27, %xmm26

// CHECK: vpermilpd -2064(%rdx), %xmm27, %xmm26
// CHECK:  encoding: [0x62,0x62,0xa5,0x00,0x0d,0x92,0xf0,0xf7,0xff,0xff]
          vpermilpd -2064(%rdx), %xmm27, %xmm26

// CHECK: vpermilpd 1016(%rdx){1to2}, %xmm27, %xmm26
// CHECK:  encoding: [0x62,0x62,0xa5,0x10,0x0d,0x52,0x7f]
          vpermilpd 1016(%rdx){1to2}, %xmm27, %xmm26

// CHECK: vpermilpd 1024(%rdx){1to2}, %xmm27, %xmm26
// CHECK:  encoding: [0x62,0x62,0xa5,0x10,0x0d,0x92,0x00,0x04,0x00,0x00]
          vpermilpd 1024(%rdx){1to2}, %xmm27, %xmm26

// CHECK: vpermilpd -1024(%rdx){1to2}, %xmm27, %xmm26
// CHECK:  encoding: [0x62,0x62,0xa5,0x10,0x0d,0x52,0x80]
          vpermilpd -1024(%rdx){1to2}, %xmm27, %xmm26

// CHECK: vpermilpd -1032(%rdx){1to2}, %xmm27, %xmm26
// CHECK:  encoding: [0x62,0x62,0xa5,0x10,0x0d,0x92,0xf8,0xfb,0xff,0xff]
          vpermilpd -1032(%rdx){1to2}, %xmm27, %xmm26

// CHECK: vpermilpd %ymm24, %ymm26, %ymm26
// CHECK:  encoding: [0x62,0x02,0xad,0x20,0x0d,0xd0]
          vpermilpd %ymm24, %ymm26, %ymm26

// CHECK: vpermilpd %ymm24, %ymm26, %ymm26 {%k5}
// CHECK:  encoding: [0x62,0x02,0xad,0x25,0x0d,0xd0]
          vpermilpd %ymm24, %ymm26, %ymm26 {%k5}

// CHECK: vpermilpd %ymm24, %ymm26, %ymm26 {%k5} {z}
// CHECK:  encoding: [0x62,0x02,0xad,0xa5,0x0d,0xd0]
          vpermilpd %ymm24, %ymm26, %ymm26 {%k5} {z}

// CHECK: vpermilpd (%rcx), %ymm26, %ymm26
// CHECK:  encoding: [0x62,0x62,0xad,0x20,0x0d,0x11]
          vpermilpd (%rcx), %ymm26, %ymm26

// CHECK: vpermilpd 291(%rax,%r14,8), %ymm26, %ymm26
// CHECK:  encoding: [0x62,0x22,0xad,0x20,0x0d,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpermilpd 291(%rax,%r14,8), %ymm26, %ymm26

// CHECK: vpermilpd (%rcx){1to4}, %ymm26, %ymm26
// CHECK:  encoding: [0x62,0x62,0xad,0x30,0x0d,0x11]
          vpermilpd (%rcx){1to4}, %ymm26, %ymm26

// CHECK: vpermilpd 4064(%rdx), %ymm26, %ymm26
// CHECK:  encoding: [0x62,0x62,0xad,0x20,0x0d,0x52,0x7f]
          vpermilpd 4064(%rdx), %ymm26, %ymm26

// CHECK: vpermilpd 4096(%rdx), %ymm26, %ymm26
// CHECK:  encoding: [0x62,0x62,0xad,0x20,0x0d,0x92,0x00,0x10,0x00,0x00]
          vpermilpd 4096(%rdx), %ymm26, %ymm26

// CHECK: vpermilpd -4096(%rdx), %ymm26, %ymm26
// CHECK:  encoding: [0x62,0x62,0xad,0x20,0x0d,0x52,0x80]
          vpermilpd -4096(%rdx), %ymm26, %ymm26

// CHECK: vpermilpd -4128(%rdx), %ymm26, %ymm26
// CHECK:  encoding: [0x62,0x62,0xad,0x20,0x0d,0x92,0xe0,0xef,0xff,0xff]
          vpermilpd -4128(%rdx), %ymm26, %ymm26

// CHECK: vpermilpd 1016(%rdx){1to4}, %ymm26, %ymm26
// CHECK:  encoding: [0x62,0x62,0xad,0x30,0x0d,0x52,0x7f]
          vpermilpd 1016(%rdx){1to4}, %ymm26, %ymm26

// CHECK: vpermilpd 1024(%rdx){1to4}, %ymm26, %ymm26
// CHECK:  encoding: [0x62,0x62,0xad,0x30,0x0d,0x92,0x00,0x04,0x00,0x00]
          vpermilpd 1024(%rdx){1to4}, %ymm26, %ymm26

// CHECK: vpermilpd -1024(%rdx){1to4}, %ymm26, %ymm26
// CHECK:  encoding: [0x62,0x62,0xad,0x30,0x0d,0x52,0x80]
          vpermilpd -1024(%rdx){1to4}, %ymm26, %ymm26

// CHECK: vpermilpd -1032(%rdx){1to4}, %ymm26, %ymm26
// CHECK:  encoding: [0x62,0x62,0xad,0x30,0x0d,0x92,0xf8,0xfb,0xff,0xff]
          vpermilpd -1032(%rdx){1to4}, %ymm26, %ymm26

// CHECK: vcvtpd2dq %xmm20, %xmm25
// CHECK:  encoding: [0x62,0x21,0xff,0x08,0xe6,0xcc]
          vcvtpd2dq %xmm20, %xmm25

// CHECK: vcvtpd2dq %xmm20, %xmm25 {%k2}
// CHECK:  encoding: [0x62,0x21,0xff,0x0a,0xe6,0xcc]
          vcvtpd2dq %xmm20, %xmm25 {%k2}

// CHECK: vcvtpd2dq %xmm20, %xmm25 {%k2} {z}
// CHECK:  encoding: [0x62,0x21,0xff,0x8a,0xe6,0xcc]
          vcvtpd2dq %xmm20, %xmm25 {%k2} {z}

// CHECK: vcvtpd2dqx (%rcx), %xmm25
// CHECK:  encoding: [0x62,0x61,0xff,0x08,0xe6,0x09]
          vcvtpd2dqx (%rcx), %xmm25

// CHECK: vcvtpd2dqx 291(%rax,%r14,8), %xmm25
// CHECK:  encoding: [0x62,0x21,0xff,0x08,0xe6,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vcvtpd2dqx 291(%rax,%r14,8), %xmm25

// CHECK: vcvtpd2dq (%rcx){1to2}, %xmm25
// CHECK:  encoding: [0x62,0x61,0xff,0x18,0xe6,0x09]
          vcvtpd2dq (%rcx){1to2}, %xmm25

// CHECK: vcvtpd2dqx 2032(%rdx), %xmm25
// CHECK:  encoding: [0x62,0x61,0xff,0x08,0xe6,0x4a,0x7f]
          vcvtpd2dqx 2032(%rdx), %xmm25

// CHECK: vcvtpd2dqx 2048(%rdx), %xmm25
// CHECK:  encoding: [0x62,0x61,0xff,0x08,0xe6,0x8a,0x00,0x08,0x00,0x00]
          vcvtpd2dqx 2048(%rdx), %xmm25

// CHECK: vcvtpd2dqx -2048(%rdx), %xmm25
// CHECK:  encoding: [0x62,0x61,0xff,0x08,0xe6,0x4a,0x80]
          vcvtpd2dqx -2048(%rdx), %xmm25

// CHECK: vcvtpd2dqx -2064(%rdx), %xmm25
// CHECK:  encoding: [0x62,0x61,0xff,0x08,0xe6,0x8a,0xf0,0xf7,0xff,0xff]
          vcvtpd2dqx -2064(%rdx), %xmm25

// CHECK: vcvtpd2dq 1016(%rdx){1to2}, %xmm25
// CHECK:  encoding: [0x62,0x61,0xff,0x18,0xe6,0x4a,0x7f]
          vcvtpd2dq 1016(%rdx){1to2}, %xmm25

// CHECK: vcvtpd2dq 1024(%rdx){1to2}, %xmm25
// CHECK:  encoding: [0x62,0x61,0xff,0x18,0xe6,0x8a,0x00,0x04,0x00,0x00]
          vcvtpd2dq 1024(%rdx){1to2}, %xmm25

// CHECK: vcvtpd2dq -1024(%rdx){1to2}, %xmm25
// CHECK:  encoding: [0x62,0x61,0xff,0x18,0xe6,0x4a,0x80]
          vcvtpd2dq -1024(%rdx){1to2}, %xmm25

// CHECK: vcvtpd2dq -1032(%rdx){1to2}, %xmm25
// CHECK:  encoding: [0x62,0x61,0xff,0x18,0xe6,0x8a,0xf8,0xfb,0xff,0xff]
          vcvtpd2dq -1032(%rdx){1to2}, %xmm25

// CHECK: vcvtpd2dq %ymm28, %xmm30
// CHECK:  encoding: [0x62,0x01,0xff,0x28,0xe6,0xf4]
          vcvtpd2dq %ymm28, %xmm30

// CHECK: vcvtpd2dq %ymm28, %xmm30 {%k3}
// CHECK:  encoding: [0x62,0x01,0xff,0x2b,0xe6,0xf4]
          vcvtpd2dq %ymm28, %xmm30 {%k3}

// CHECK: vcvtpd2dq %ymm28, %xmm30 {%k3} {z}
// CHECK:  encoding: [0x62,0x01,0xff,0xab,0xe6,0xf4]
          vcvtpd2dq %ymm28, %xmm30 {%k3} {z}

// CHECK: vcvtpd2dqy (%rcx), %xmm30
// CHECK:  encoding: [0x62,0x61,0xff,0x28,0xe6,0x31]
          vcvtpd2dqy (%rcx), %xmm30

// CHECK: vcvtpd2dqy 291(%rax,%r14,8), %xmm30
// CHECK:  encoding: [0x62,0x21,0xff,0x28,0xe6,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vcvtpd2dqy 291(%rax,%r14,8), %xmm30

// CHECK: vcvtpd2dq (%rcx){1to4}, %xmm30
// CHECK:  encoding: [0x62,0x61,0xff,0x38,0xe6,0x31]
          vcvtpd2dq (%rcx){1to4}, %xmm30

// CHECK: vcvtpd2dqy 4064(%rdx), %xmm30
// CHECK:  encoding: [0x62,0x61,0xff,0x28,0xe6,0x72,0x7f]
          vcvtpd2dqy 4064(%rdx), %xmm30

// CHECK: vcvtpd2dqy 4096(%rdx), %xmm30
// CHECK:  encoding: [0x62,0x61,0xff,0x28,0xe6,0xb2,0x00,0x10,0x00,0x00]
          vcvtpd2dqy 4096(%rdx), %xmm30

// CHECK: vcvtpd2dqy -4096(%rdx), %xmm30
// CHECK:  encoding: [0x62,0x61,0xff,0x28,0xe6,0x72,0x80]
          vcvtpd2dqy -4096(%rdx), %xmm30

// CHECK: vcvtpd2dqy -4128(%rdx), %xmm30
// CHECK:  encoding: [0x62,0x61,0xff,0x28,0xe6,0xb2,0xe0,0xef,0xff,0xff]
          vcvtpd2dqy -4128(%rdx), %xmm30

// CHECK: vcvtpd2dq 1016(%rdx){1to4}, %xmm30
// CHECK:  encoding: [0x62,0x61,0xff,0x38,0xe6,0x72,0x7f]
          vcvtpd2dq 1016(%rdx){1to4}, %xmm30

// CHECK: vcvtpd2dq 1024(%rdx){1to4}, %xmm30
// CHECK:  encoding: [0x62,0x61,0xff,0x38,0xe6,0xb2,0x00,0x04,0x00,0x00]
          vcvtpd2dq 1024(%rdx){1to4}, %xmm30

// CHECK: vcvtpd2dq -1024(%rdx){1to4}, %xmm30
// CHECK:  encoding: [0x62,0x61,0xff,0x38,0xe6,0x72,0x80]
          vcvtpd2dq -1024(%rdx){1to4}, %xmm30

// CHECK: vcvtpd2dq -1032(%rdx){1to4}, %xmm30
// CHECK:  encoding: [0x62,0x61,0xff,0x38,0xe6,0xb2,0xf8,0xfb,0xff,0xff]
          vcvtpd2dq -1032(%rdx){1to4}, %xmm30

// CHECK: vcvtpd2ps %xmm27, %xmm27
// CHECK:  encoding: [0x62,0x01,0xfd,0x08,0x5a,0xdb]
          vcvtpd2ps %xmm27, %xmm27

// CHECK: vcvtpd2ps %xmm27, %xmm27 {%k7}
// CHECK:  encoding: [0x62,0x01,0xfd,0x0f,0x5a,0xdb]
          vcvtpd2ps %xmm27, %xmm27 {%k7}

// CHECK: vcvtpd2ps %xmm27, %xmm27 {%k7} {z}
// CHECK:  encoding: [0x62,0x01,0xfd,0x8f,0x5a,0xdb]
          vcvtpd2ps %xmm27, %xmm27 {%k7} {z}

// CHECK: vcvtpd2psx (%rcx), %xmm27
// CHECK:  encoding: [0x62,0x61,0xfd,0x08,0x5a,0x19]
          vcvtpd2psx (%rcx), %xmm27

// CHECK: vcvtpd2psx 291(%rax,%r14,8), %xmm27
// CHECK:  encoding: [0x62,0x21,0xfd,0x08,0x5a,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vcvtpd2psx 291(%rax,%r14,8), %xmm27

// CHECK: vcvtpd2ps (%rcx){1to2}, %xmm27
// CHECK:  encoding: [0x62,0x61,0xfd,0x18,0x5a,0x19]
          vcvtpd2ps (%rcx){1to2}, %xmm27

// CHECK: vcvtpd2psx 2032(%rdx), %xmm27
// CHECK:  encoding: [0x62,0x61,0xfd,0x08,0x5a,0x5a,0x7f]
          vcvtpd2psx 2032(%rdx), %xmm27

// CHECK: vcvtpd2psx 2048(%rdx), %xmm27
// CHECK:  encoding: [0x62,0x61,0xfd,0x08,0x5a,0x9a,0x00,0x08,0x00,0x00]
          vcvtpd2psx 2048(%rdx), %xmm27

// CHECK: vcvtpd2psx -2048(%rdx), %xmm27
// CHECK:  encoding: [0x62,0x61,0xfd,0x08,0x5a,0x5a,0x80]
          vcvtpd2psx -2048(%rdx), %xmm27

// CHECK: vcvtpd2psx -2064(%rdx), %xmm27
// CHECK:  encoding: [0x62,0x61,0xfd,0x08,0x5a,0x9a,0xf0,0xf7,0xff,0xff]
          vcvtpd2psx -2064(%rdx), %xmm27

// CHECK: vcvtpd2ps 1016(%rdx){1to2}, %xmm27
// CHECK:  encoding: [0x62,0x61,0xfd,0x18,0x5a,0x5a,0x7f]
          vcvtpd2ps 1016(%rdx){1to2}, %xmm27

// CHECK: vcvtpd2ps 1024(%rdx){1to2}, %xmm27
// CHECK:  encoding: [0x62,0x61,0xfd,0x18,0x5a,0x9a,0x00,0x04,0x00,0x00]
          vcvtpd2ps 1024(%rdx){1to2}, %xmm27

// CHECK: vcvtpd2ps -1024(%rdx){1to2}, %xmm27
// CHECK:  encoding: [0x62,0x61,0xfd,0x18,0x5a,0x5a,0x80]
          vcvtpd2ps -1024(%rdx){1to2}, %xmm27

// CHECK: vcvtpd2ps -1032(%rdx){1to2}, %xmm27
// CHECK:  encoding: [0x62,0x61,0xfd,0x18,0x5a,0x9a,0xf8,0xfb,0xff,0xff]
          vcvtpd2ps -1032(%rdx){1to2}, %xmm27

// CHECK: vcvtpd2ps %ymm20, %xmm20
// CHECK:  encoding: [0x62,0xa1,0xfd,0x28,0x5a,0xe4]
          vcvtpd2ps %ymm20, %xmm20

// CHECK: vcvtpd2ps %ymm20, %xmm20 {%k6}
// CHECK:  encoding: [0x62,0xa1,0xfd,0x2e,0x5a,0xe4]
          vcvtpd2ps %ymm20, %xmm20 {%k6}

// CHECK: vcvtpd2ps %ymm20, %xmm20 {%k6} {z}
// CHECK:  encoding: [0x62,0xa1,0xfd,0xae,0x5a,0xe4]
          vcvtpd2ps %ymm20, %xmm20 {%k6} {z}

// CHECK: vcvtpd2psy (%rcx), %xmm20
// CHECK:  encoding: [0x62,0xe1,0xfd,0x28,0x5a,0x21]
          vcvtpd2psy (%rcx), %xmm20

// CHECK: vcvtpd2psy 291(%rax,%r14,8), %xmm20
// CHECK:  encoding: [0x62,0xa1,0xfd,0x28,0x5a,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vcvtpd2psy 291(%rax,%r14,8), %xmm20

// CHECK: vcvtpd2ps (%rcx){1to4}, %xmm20
// CHECK:  encoding: [0x62,0xe1,0xfd,0x38,0x5a,0x21]
          vcvtpd2ps (%rcx){1to4}, %xmm20

// CHECK: vcvtpd2psy 4064(%rdx), %xmm20
// CHECK:  encoding: [0x62,0xe1,0xfd,0x28,0x5a,0x62,0x7f]
          vcvtpd2psy 4064(%rdx), %xmm20

// CHECK: vcvtpd2psy 4096(%rdx), %xmm20
// CHECK:  encoding: [0x62,0xe1,0xfd,0x28,0x5a,0xa2,0x00,0x10,0x00,0x00]
          vcvtpd2psy 4096(%rdx), %xmm20

// CHECK: vcvtpd2psy -4096(%rdx), %xmm20
// CHECK:  encoding: [0x62,0xe1,0xfd,0x28,0x5a,0x62,0x80]
          vcvtpd2psy -4096(%rdx), %xmm20

// CHECK: vcvtpd2psy -4128(%rdx), %xmm20
// CHECK:  encoding: [0x62,0xe1,0xfd,0x28,0x5a,0xa2,0xe0,0xef,0xff,0xff]
          vcvtpd2psy -4128(%rdx), %xmm20

// CHECK: vcvtpd2ps 1016(%rdx){1to4}, %xmm20
// CHECK:  encoding: [0x62,0xe1,0xfd,0x38,0x5a,0x62,0x7f]
          vcvtpd2ps 1016(%rdx){1to4}, %xmm20

// CHECK: vcvtpd2ps 1024(%rdx){1to4}, %xmm20
// CHECK:  encoding: [0x62,0xe1,0xfd,0x38,0x5a,0xa2,0x00,0x04,0x00,0x00]
          vcvtpd2ps 1024(%rdx){1to4}, %xmm20

// CHECK: vcvtpd2ps -1024(%rdx){1to4}, %xmm20
// CHECK:  encoding: [0x62,0xe1,0xfd,0x38,0x5a,0x62,0x80]
          vcvtpd2ps -1024(%rdx){1to4}, %xmm20

// CHECK: vcvtpd2ps -1032(%rdx){1to4}, %xmm20
// CHECK:  encoding: [0x62,0xe1,0xfd,0x38,0x5a,0xa2,0xf8,0xfb,0xff,0xff]
          vcvtpd2ps -1032(%rdx){1to4}, %xmm20

// CHECK: vcvttpd2udq %xmm26, %xmm23
// CHECK:  encoding: [0x62,0x81,0xfc,0x08,0x78,0xfa]
          vcvttpd2udq %xmm26, %xmm23

// CHECK: vcvttpd2udq %xmm26, %xmm23 {%k2}
// CHECK:  encoding: [0x62,0x81,0xfc,0x0a,0x78,0xfa]
          vcvttpd2udq %xmm26, %xmm23 {%k2}

// CHECK: vcvttpd2udq %xmm26, %xmm23 {%k2} {z}
// CHECK:  encoding: [0x62,0x81,0xfc,0x8a,0x78,0xfa]
          vcvttpd2udq %xmm26, %xmm23 {%k2} {z}

// CHECK: vcvttpd2udqx (%rcx), %xmm23
// CHECK:  encoding: [0x62,0xe1,0xfc,0x08,0x78,0x39]
          vcvttpd2udqx (%rcx), %xmm23

// CHECK: vcvttpd2udqx 291(%rax,%r14,8), %xmm23
// CHECK:  encoding: [0x62,0xa1,0xfc,0x08,0x78,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vcvttpd2udqx 291(%rax,%r14,8), %xmm23

// CHECK: vcvttpd2udq (%rcx){1to2}, %xmm23
// CHECK:  encoding: [0x62,0xe1,0xfc,0x18,0x78,0x39]
          vcvttpd2udq (%rcx){1to2}, %xmm23

// CHECK: vcvttpd2udqx 2032(%rdx), %xmm23
// CHECK:  encoding: [0x62,0xe1,0xfc,0x08,0x78,0x7a,0x7f]
          vcvttpd2udqx 2032(%rdx), %xmm23

// CHECK: vcvttpd2udqx 2048(%rdx), %xmm23
// CHECK:  encoding: [0x62,0xe1,0xfc,0x08,0x78,0xba,0x00,0x08,0x00,0x00]
          vcvttpd2udqx 2048(%rdx), %xmm23

// CHECK: vcvttpd2udqx -2048(%rdx), %xmm23
// CHECK:  encoding: [0x62,0xe1,0xfc,0x08,0x78,0x7a,0x80]
          vcvttpd2udqx -2048(%rdx), %xmm23

// CHECK: vcvttpd2udqx -2064(%rdx), %xmm23
// CHECK:  encoding: [0x62,0xe1,0xfc,0x08,0x78,0xba,0xf0,0xf7,0xff,0xff]
          vcvttpd2udqx -2064(%rdx), %xmm23

// CHECK: vcvttpd2udq 1016(%rdx){1to2}, %xmm23
// CHECK:  encoding: [0x62,0xe1,0xfc,0x18,0x78,0x7a,0x7f]
          vcvttpd2udq 1016(%rdx){1to2}, %xmm23

// CHECK: vcvttpd2udq 1024(%rdx){1to2}, %xmm23
// CHECK:  encoding: [0x62,0xe1,0xfc,0x18,0x78,0xba,0x00,0x04,0x00,0x00]
          vcvttpd2udq 1024(%rdx){1to2}, %xmm23

// CHECK: vcvttpd2udq -1024(%rdx){1to2}, %xmm23
// CHECK:  encoding: [0x62,0xe1,0xfc,0x18,0x78,0x7a,0x80]
          vcvttpd2udq -1024(%rdx){1to2}, %xmm23

// CHECK: vcvttpd2udq -1032(%rdx){1to2}, %xmm23
// CHECK:  encoding: [0x62,0xe1,0xfc,0x18,0x78,0xba,0xf8,0xfb,0xff,0xff]
          vcvttpd2udq -1032(%rdx){1to2}, %xmm23

// CHECK: vcvttpd2udq %ymm23, %xmm28
// CHECK:  encoding: [0x62,0x21,0xfc,0x28,0x78,0xe7]
          vcvttpd2udq %ymm23, %xmm28

// CHECK: vcvttpd2udq %ymm23, %xmm28 {%k6}
// CHECK:  encoding: [0x62,0x21,0xfc,0x2e,0x78,0xe7]
          vcvttpd2udq %ymm23, %xmm28 {%k6}

// CHECK: vcvttpd2udq %ymm23, %xmm28 {%k6} {z}
// CHECK:  encoding: [0x62,0x21,0xfc,0xae,0x78,0xe7]
          vcvttpd2udq %ymm23, %xmm28 {%k6} {z}

// CHECK: vcvttpd2udqy (%rcx), %xmm28
// CHECK:  encoding: [0x62,0x61,0xfc,0x28,0x78,0x21]
          vcvttpd2udqy (%rcx), %xmm28

// CHECK: vcvttpd2udqy 291(%rax,%r14,8), %xmm28
// CHECK:  encoding: [0x62,0x21,0xfc,0x28,0x78,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vcvttpd2udqy 291(%rax,%r14,8), %xmm28

// CHECK: vcvttpd2udq (%rcx){1to4}, %xmm28
// CHECK:  encoding: [0x62,0x61,0xfc,0x38,0x78,0x21]
          vcvttpd2udq (%rcx){1to4}, %xmm28

// CHECK: vcvttpd2udqy 4064(%rdx), %xmm28
// CHECK:  encoding: [0x62,0x61,0xfc,0x28,0x78,0x62,0x7f]
          vcvttpd2udqy 4064(%rdx), %xmm28

// CHECK: vcvttpd2udqy 4096(%rdx), %xmm28
// CHECK:  encoding: [0x62,0x61,0xfc,0x28,0x78,0xa2,0x00,0x10,0x00,0x00]
          vcvttpd2udqy 4096(%rdx), %xmm28

// CHECK: vcvttpd2udqy -4096(%rdx), %xmm28
// CHECK:  encoding: [0x62,0x61,0xfc,0x28,0x78,0x62,0x80]
          vcvttpd2udqy -4096(%rdx), %xmm28

// CHECK: vcvttpd2udqy -4128(%rdx), %xmm28
// CHECK:  encoding: [0x62,0x61,0xfc,0x28,0x78,0xa2,0xe0,0xef,0xff,0xff]
          vcvttpd2udqy -4128(%rdx), %xmm28

// CHECK: vcvttpd2udq 1016(%rdx){1to4}, %xmm28
// CHECK:  encoding: [0x62,0x61,0xfc,0x38,0x78,0x62,0x7f]
          vcvttpd2udq 1016(%rdx){1to4}, %xmm28

// CHECK: vcvttpd2udq 1024(%rdx){1to4}, %xmm28
// CHECK:  encoding: [0x62,0x61,0xfc,0x38,0x78,0xa2,0x00,0x04,0x00,0x00]
          vcvttpd2udq 1024(%rdx){1to4}, %xmm28

// CHECK: vcvttpd2udq -1024(%rdx){1to4}, %xmm28
// CHECK:  encoding: [0x62,0x61,0xfc,0x38,0x78,0x62,0x80]
          vcvttpd2udq -1024(%rdx){1to4}, %xmm28

// CHECK: vcvttpd2udq -1032(%rdx){1to4}, %xmm28
// CHECK:  encoding: [0x62,0x61,0xfc,0x38,0x78,0xa2,0xf8,0xfb,0xff,0xff]
          vcvttpd2udq -1032(%rdx){1to4}, %xmm28

// CHECK: vpternlogd $171, %xmm25, %xmm19, %xmm27
// CHECK:  encoding: [0x62,0x03,0x65,0x00,0x25,0xd9,0xab]
          vpternlogd $0xab, %xmm25, %xmm19, %xmm27

// CHECK: vpternlogd $171, %xmm25, %xmm19, %xmm27 {%k7}
// CHECK:  encoding: [0x62,0x03,0x65,0x07,0x25,0xd9,0xab]
          vpternlogd $0xab, %xmm25, %xmm19, %xmm27 {%k7}

// CHECK: vpternlogd $171, %xmm25, %xmm19, %xmm27 {%k7} {z}
// CHECK:  encoding: [0x62,0x03,0x65,0x87,0x25,0xd9,0xab]
          vpternlogd $0xab, %xmm25, %xmm19, %xmm27 {%k7} {z}

// CHECK: vpternlogd $123, %xmm25, %xmm19, %xmm27
// CHECK:  encoding: [0x62,0x03,0x65,0x00,0x25,0xd9,0x7b]
          vpternlogd $0x7b, %xmm25, %xmm19, %xmm27

// CHECK: vpternlogd $123, (%rcx), %xmm19, %xmm27
// CHECK:  encoding: [0x62,0x63,0x65,0x00,0x25,0x19,0x7b]
          vpternlogd $0x7b, (%rcx), %xmm19, %xmm27

// CHECK: vpternlogd $123, 291(%rax,%r14,8), %xmm19, %xmm27
// CHECK:  encoding: [0x62,0x23,0x65,0x00,0x25,0x9c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpternlogd $0x7b, 291(%rax,%r14,8), %xmm19, %xmm27

// CHECK: vpternlogd $123, (%rcx){1to4}, %xmm19, %xmm27
// CHECK:  encoding: [0x62,0x63,0x65,0x10,0x25,0x19,0x7b]
          vpternlogd $0x7b, (%rcx){1to4}, %xmm19, %xmm27

// CHECK: vpternlogd $123, 2032(%rdx), %xmm19, %xmm27
// CHECK:  encoding: [0x62,0x63,0x65,0x00,0x25,0x5a,0x7f,0x7b]
          vpternlogd $0x7b, 2032(%rdx), %xmm19, %xmm27

// CHECK: vpternlogd $123, 2048(%rdx), %xmm19, %xmm27
// CHECK:  encoding: [0x62,0x63,0x65,0x00,0x25,0x9a,0x00,0x08,0x00,0x00,0x7b]
          vpternlogd $0x7b, 2048(%rdx), %xmm19, %xmm27

// CHECK: vpternlogd $123, -2048(%rdx), %xmm19, %xmm27
// CHECK:  encoding: [0x62,0x63,0x65,0x00,0x25,0x5a,0x80,0x7b]
          vpternlogd $0x7b, -2048(%rdx), %xmm19, %xmm27

// CHECK: vpternlogd $123, -2064(%rdx), %xmm19, %xmm27
// CHECK:  encoding: [0x62,0x63,0x65,0x00,0x25,0x9a,0xf0,0xf7,0xff,0xff,0x7b]
          vpternlogd $0x7b, -2064(%rdx), %xmm19, %xmm27

// CHECK: vpternlogd $123, 508(%rdx){1to4}, %xmm19, %xmm27
// CHECK:  encoding: [0x62,0x63,0x65,0x10,0x25,0x5a,0x7f,0x7b]
          vpternlogd $0x7b, 508(%rdx){1to4}, %xmm19, %xmm27

// CHECK: vpternlogd $123, 512(%rdx){1to4}, %xmm19, %xmm27
// CHECK:  encoding: [0x62,0x63,0x65,0x10,0x25,0x9a,0x00,0x02,0x00,0x00,0x7b]
          vpternlogd $0x7b, 512(%rdx){1to4}, %xmm19, %xmm27

// CHECK: vpternlogd $123, -512(%rdx){1to4}, %xmm19, %xmm27
// CHECK:  encoding: [0x62,0x63,0x65,0x10,0x25,0x5a,0x80,0x7b]
          vpternlogd $0x7b, -512(%rdx){1to4}, %xmm19, %xmm27

// CHECK: vpternlogd $123, -516(%rdx){1to4}, %xmm19, %xmm27
// CHECK:  encoding: [0x62,0x63,0x65,0x10,0x25,0x9a,0xfc,0xfd,0xff,0xff,0x7b]
          vpternlogd $0x7b, -516(%rdx){1to4}, %xmm19, %xmm27

// CHECK: vpternlogd $171, %ymm20, %ymm17, %ymm29
// CHECK:  encoding: [0x62,0x23,0x75,0x20,0x25,0xec,0xab]
          vpternlogd $0xab, %ymm20, %ymm17, %ymm29

// CHECK: vpternlogd $171, %ymm20, %ymm17, %ymm29 {%k3}
// CHECK:  encoding: [0x62,0x23,0x75,0x23,0x25,0xec,0xab]
          vpternlogd $0xab, %ymm20, %ymm17, %ymm29 {%k3}

// CHECK: vpternlogd $171, %ymm20, %ymm17, %ymm29 {%k3} {z}
// CHECK:  encoding: [0x62,0x23,0x75,0xa3,0x25,0xec,0xab]
          vpternlogd $0xab, %ymm20, %ymm17, %ymm29 {%k3} {z}

// CHECK: vpternlogd $123, %ymm20, %ymm17, %ymm29
// CHECK:  encoding: [0x62,0x23,0x75,0x20,0x25,0xec,0x7b]
          vpternlogd $0x7b, %ymm20, %ymm17, %ymm29

// CHECK: vpternlogd $123, (%rcx), %ymm17, %ymm29
// CHECK:  encoding: [0x62,0x63,0x75,0x20,0x25,0x29,0x7b]
          vpternlogd $0x7b, (%rcx), %ymm17, %ymm29

// CHECK: vpternlogd $123, 291(%rax,%r14,8), %ymm17, %ymm29
// CHECK:  encoding: [0x62,0x23,0x75,0x20,0x25,0xac,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpternlogd $0x7b, 291(%rax,%r14,8), %ymm17, %ymm29

// CHECK: vpternlogd $123, (%rcx){1to8}, %ymm17, %ymm29
// CHECK:  encoding: [0x62,0x63,0x75,0x30,0x25,0x29,0x7b]
          vpternlogd $0x7b, (%rcx){1to8}, %ymm17, %ymm29

// CHECK: vpternlogd $123, 4064(%rdx), %ymm17, %ymm29
// CHECK:  encoding: [0x62,0x63,0x75,0x20,0x25,0x6a,0x7f,0x7b]
          vpternlogd $0x7b, 4064(%rdx), %ymm17, %ymm29

// CHECK: vpternlogd $123, 4096(%rdx), %ymm17, %ymm29
// CHECK:  encoding: [0x62,0x63,0x75,0x20,0x25,0xaa,0x00,0x10,0x00,0x00,0x7b]
          vpternlogd $0x7b, 4096(%rdx), %ymm17, %ymm29

// CHECK: vpternlogd $123, -4096(%rdx), %ymm17, %ymm29
// CHECK:  encoding: [0x62,0x63,0x75,0x20,0x25,0x6a,0x80,0x7b]
          vpternlogd $0x7b, -4096(%rdx), %ymm17, %ymm29

// CHECK: vpternlogd $123, -4128(%rdx), %ymm17, %ymm29
// CHECK:  encoding: [0x62,0x63,0x75,0x20,0x25,0xaa,0xe0,0xef,0xff,0xff,0x7b]
          vpternlogd $0x7b, -4128(%rdx), %ymm17, %ymm29

// CHECK: vpternlogd $123, 508(%rdx){1to8}, %ymm17, %ymm29
// CHECK:  encoding: [0x62,0x63,0x75,0x30,0x25,0x6a,0x7f,0x7b]
          vpternlogd $0x7b, 508(%rdx){1to8}, %ymm17, %ymm29

// CHECK: vpternlogd $123, 512(%rdx){1to8}, %ymm17, %ymm29
// CHECK:  encoding: [0x62,0x63,0x75,0x30,0x25,0xaa,0x00,0x02,0x00,0x00,0x7b]
          vpternlogd $0x7b, 512(%rdx){1to8}, %ymm17, %ymm29

// CHECK: vpternlogd $123, -512(%rdx){1to8}, %ymm17, %ymm29
// CHECK:  encoding: [0x62,0x63,0x75,0x30,0x25,0x6a,0x80,0x7b]
          vpternlogd $0x7b, -512(%rdx){1to8}, %ymm17, %ymm29

// CHECK: vpternlogd $123, -516(%rdx){1to8}, %ymm17, %ymm29
// CHECK:  encoding: [0x62,0x63,0x75,0x30,0x25,0xaa,0xfc,0xfd,0xff,0xff,0x7b]
          vpternlogd $0x7b, -516(%rdx){1to8}, %ymm17, %ymm29

// CHECK: vpternlogq $171, %xmm22, %xmm25, %xmm17
// CHECK:  encoding: [0x62,0xa3,0xb5,0x00,0x25,0xce,0xab]
          vpternlogq $0xab, %xmm22, %xmm25, %xmm17

// CHECK: vpternlogq $171, %xmm22, %xmm25, %xmm17 {%k1}
// CHECK:  encoding: [0x62,0xa3,0xb5,0x01,0x25,0xce,0xab]
          vpternlogq $0xab, %xmm22, %xmm25, %xmm17 {%k1}

// CHECK: vpternlogq $171, %xmm22, %xmm25, %xmm17 {%k1} {z}
// CHECK:  encoding: [0x62,0xa3,0xb5,0x81,0x25,0xce,0xab]
          vpternlogq $0xab, %xmm22, %xmm25, %xmm17 {%k1} {z}

// CHECK: vpternlogq $123, %xmm22, %xmm25, %xmm17
// CHECK:  encoding: [0x62,0xa3,0xb5,0x00,0x25,0xce,0x7b]
          vpternlogq $0x7b, %xmm22, %xmm25, %xmm17

// CHECK: vpternlogq $123, (%rcx), %xmm25, %xmm17
// CHECK:  encoding: [0x62,0xe3,0xb5,0x00,0x25,0x09,0x7b]
          vpternlogq $0x7b, (%rcx), %xmm25, %xmm17

// CHECK: vpternlogq $123, 291(%rax,%r14,8), %xmm25, %xmm17
// CHECK:  encoding: [0x62,0xa3,0xb5,0x00,0x25,0x8c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpternlogq $0x7b, 291(%rax,%r14,8), %xmm25, %xmm17

// CHECK: vpternlogq $123, (%rcx){1to2}, %xmm25, %xmm17
// CHECK:  encoding: [0x62,0xe3,0xb5,0x10,0x25,0x09,0x7b]
          vpternlogq $0x7b, (%rcx){1to2}, %xmm25, %xmm17

// CHECK: vpternlogq $123, 2032(%rdx), %xmm25, %xmm17
// CHECK:  encoding: [0x62,0xe3,0xb5,0x00,0x25,0x4a,0x7f,0x7b]
          vpternlogq $0x7b, 2032(%rdx), %xmm25, %xmm17

// CHECK: vpternlogq $123, 2048(%rdx), %xmm25, %xmm17
// CHECK:  encoding: [0x62,0xe3,0xb5,0x00,0x25,0x8a,0x00,0x08,0x00,0x00,0x7b]
          vpternlogq $0x7b, 2048(%rdx), %xmm25, %xmm17

// CHECK: vpternlogq $123, -2048(%rdx), %xmm25, %xmm17
// CHECK:  encoding: [0x62,0xe3,0xb5,0x00,0x25,0x4a,0x80,0x7b]
          vpternlogq $0x7b, -2048(%rdx), %xmm25, %xmm17

// CHECK: vpternlogq $123, -2064(%rdx), %xmm25, %xmm17
// CHECK:  encoding: [0x62,0xe3,0xb5,0x00,0x25,0x8a,0xf0,0xf7,0xff,0xff,0x7b]
          vpternlogq $0x7b, -2064(%rdx), %xmm25, %xmm17

// CHECK: vpternlogq $123, 1016(%rdx){1to2}, %xmm25, %xmm17
// CHECK:  encoding: [0x62,0xe3,0xb5,0x10,0x25,0x4a,0x7f,0x7b]
          vpternlogq $0x7b, 1016(%rdx){1to2}, %xmm25, %xmm17

// CHECK: vpternlogq $123, 1024(%rdx){1to2}, %xmm25, %xmm17
// CHECK:  encoding: [0x62,0xe3,0xb5,0x10,0x25,0x8a,0x00,0x04,0x00,0x00,0x7b]
          vpternlogq $0x7b, 1024(%rdx){1to2}, %xmm25, %xmm17

// CHECK: vpternlogq $123, -1024(%rdx){1to2}, %xmm25, %xmm17
// CHECK:  encoding: [0x62,0xe3,0xb5,0x10,0x25,0x4a,0x80,0x7b]
          vpternlogq $0x7b, -1024(%rdx){1to2}, %xmm25, %xmm17

// CHECK: vpternlogq $123, -1032(%rdx){1to2}, %xmm25, %xmm17
// CHECK:  encoding: [0x62,0xe3,0xb5,0x10,0x25,0x8a,0xf8,0xfb,0xff,0xff,0x7b]
          vpternlogq $0x7b, -1032(%rdx){1to2}, %xmm25, %xmm17

// CHECK: vpternlogq $171, %ymm25, %ymm23, %ymm26
// CHECK:  encoding: [0x62,0x03,0xc5,0x20,0x25,0xd1,0xab]
          vpternlogq $0xab, %ymm25, %ymm23, %ymm26

// CHECK: vpternlogq $171, %ymm25, %ymm23, %ymm26 {%k6}
// CHECK:  encoding: [0x62,0x03,0xc5,0x26,0x25,0xd1,0xab]
          vpternlogq $0xab, %ymm25, %ymm23, %ymm26 {%k6}

// CHECK: vpternlogq $171, %ymm25, %ymm23, %ymm26 {%k6} {z}
// CHECK:  encoding: [0x62,0x03,0xc5,0xa6,0x25,0xd1,0xab]
          vpternlogq $0xab, %ymm25, %ymm23, %ymm26 {%k6} {z}

// CHECK: vpternlogq $123, %ymm25, %ymm23, %ymm26
// CHECK:  encoding: [0x62,0x03,0xc5,0x20,0x25,0xd1,0x7b]
          vpternlogq $0x7b, %ymm25, %ymm23, %ymm26

// CHECK: vpternlogq $123, (%rcx), %ymm23, %ymm26
// CHECK:  encoding: [0x62,0x63,0xc5,0x20,0x25,0x11,0x7b]
          vpternlogq $0x7b, (%rcx), %ymm23, %ymm26

// CHECK: vpternlogq $123, 291(%rax,%r14,8), %ymm23, %ymm26
// CHECK:  encoding: [0x62,0x23,0xc5,0x20,0x25,0x94,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpternlogq $0x7b, 291(%rax,%r14,8), %ymm23, %ymm26

// CHECK: vpternlogq $123, (%rcx){1to4}, %ymm23, %ymm26
// CHECK:  encoding: [0x62,0x63,0xc5,0x30,0x25,0x11,0x7b]
          vpternlogq $0x7b, (%rcx){1to4}, %ymm23, %ymm26

// CHECK: vpternlogq $123, 4064(%rdx), %ymm23, %ymm26
// CHECK:  encoding: [0x62,0x63,0xc5,0x20,0x25,0x52,0x7f,0x7b]
          vpternlogq $0x7b, 4064(%rdx), %ymm23, %ymm26

// CHECK: vpternlogq $123, 4096(%rdx), %ymm23, %ymm26
// CHECK:  encoding: [0x62,0x63,0xc5,0x20,0x25,0x92,0x00,0x10,0x00,0x00,0x7b]
          vpternlogq $0x7b, 4096(%rdx), %ymm23, %ymm26

// CHECK: vpternlogq $123, -4096(%rdx), %ymm23, %ymm26
// CHECK:  encoding: [0x62,0x63,0xc5,0x20,0x25,0x52,0x80,0x7b]
          vpternlogq $0x7b, -4096(%rdx), %ymm23, %ymm26

// CHECK: vpternlogq $123, -4128(%rdx), %ymm23, %ymm26
// CHECK:  encoding: [0x62,0x63,0xc5,0x20,0x25,0x92,0xe0,0xef,0xff,0xff,0x7b]
          vpternlogq $0x7b, -4128(%rdx), %ymm23, %ymm26

// CHECK: vpternlogq $123, 1016(%rdx){1to4}, %ymm23, %ymm26
// CHECK:  encoding: [0x62,0x63,0xc5,0x30,0x25,0x52,0x7f,0x7b]
          vpternlogq $0x7b, 1016(%rdx){1to4}, %ymm23, %ymm26

// CHECK: vpternlogq $123, 1024(%rdx){1to4}, %ymm23, %ymm26
// CHECK:  encoding: [0x62,0x63,0xc5,0x30,0x25,0x92,0x00,0x04,0x00,0x00,0x7b]
          vpternlogq $0x7b, 1024(%rdx){1to4}, %ymm23, %ymm26

// CHECK: vpternlogq $123, -1024(%rdx){1to4}, %ymm23, %ymm26
// CHECK:  encoding: [0x62,0x63,0xc5,0x30,0x25,0x52,0x80,0x7b]
          vpternlogq $0x7b, -1024(%rdx){1to4}, %ymm23, %ymm26

// CHECK: vpternlogq $123, -1032(%rdx){1to4}, %ymm23, %ymm26
// CHECK:  encoding: [0x62,0x63,0xc5,0x30,0x25,0x92,0xf8,0xfb,0xff,0xff,0x7b]
          vpternlogq $0x7b, -1032(%rdx){1to4}, %ymm23, %ymm26

// CHECK: vpbroadcastd (%rcx), %xmm29
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x58,0x29]
          vpbroadcastd (%rcx), %xmm29

// CHECK: vpbroadcastd (%rcx), %xmm29 {%k1}
// CHECK:  encoding: [0x62,0x62,0x7d,0x09,0x58,0x29]
          vpbroadcastd (%rcx), %xmm29 {%k1}

// CHECK: vpbroadcastd (%rcx), %xmm29 {%k1} {z}
// CHECK:  encoding: [0x62,0x62,0x7d,0x89,0x58,0x29]
          vpbroadcastd (%rcx), %xmm29 {%k1} {z}

// CHECK: vpbroadcastd 291(%rax,%r14,8), %xmm29
// CHECK:  encoding: [0x62,0x22,0x7d,0x08,0x58,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpbroadcastd 291(%rax,%r14,8), %xmm29

// CHECK: vpbroadcastd 508(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x58,0x6a,0x7f]
          vpbroadcastd 508(%rdx), %xmm29

// CHECK: vpbroadcastd 512(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x58,0xaa,0x00,0x02,0x00,0x00]
          vpbroadcastd 512(%rdx), %xmm29

// CHECK: vpbroadcastd -512(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x58,0x6a,0x80]
          vpbroadcastd -512(%rdx), %xmm29

// CHECK: vpbroadcastd -516(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x58,0xaa,0xfc,0xfd,0xff,0xff]
          vpbroadcastd -516(%rdx), %xmm29

// CHECK: vpbroadcastd (%rcx), %ymm28
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x58,0x21]
          vpbroadcastd (%rcx), %ymm28

// CHECK: vpbroadcastd (%rcx), %ymm28 {%k2}
// CHECK:  encoding: [0x62,0x62,0x7d,0x2a,0x58,0x21]
          vpbroadcastd (%rcx), %ymm28 {%k2}

// CHECK: vpbroadcastd (%rcx), %ymm28 {%k2} {z}
// CHECK:  encoding: [0x62,0x62,0x7d,0xaa,0x58,0x21]
          vpbroadcastd (%rcx), %ymm28 {%k2} {z}

// CHECK: vpbroadcastd 291(%rax,%r14,8), %ymm28
// CHECK:  encoding: [0x62,0x22,0x7d,0x28,0x58,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpbroadcastd 291(%rax,%r14,8), %ymm28

// CHECK: vpbroadcastd 508(%rdx), %ymm28
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x58,0x62,0x7f]
          vpbroadcastd 508(%rdx), %ymm28

// CHECK: vpbroadcastd 512(%rdx), %ymm28
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x58,0xa2,0x00,0x02,0x00,0x00]
          vpbroadcastd 512(%rdx), %ymm28

// CHECK: vpbroadcastd -512(%rdx), %ymm28
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x58,0x62,0x80]
          vpbroadcastd -512(%rdx), %ymm28

// CHECK: vpbroadcastd -516(%rdx), %ymm28
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x58,0xa2,0xfc,0xfd,0xff,0xff]
          vpbroadcastd -516(%rdx), %ymm28

// CHECK: vpbroadcastd %xmm18, %xmm29
// CHECK:  encoding: [0x62,0x22,0x7d,0x08,0x58,0xea]
          vpbroadcastd %xmm18, %xmm29

// CHECK: vpbroadcastd %xmm18, %xmm29 {%k2}
// CHECK:  encoding: [0x62,0x22,0x7d,0x0a,0x58,0xea]
          vpbroadcastd %xmm18, %xmm29 {%k2}

// CHECK: vpbroadcastd %xmm18, %xmm29 {%k2} {z}
// CHECK:  encoding: [0x62,0x22,0x7d,0x8a,0x58,0xea]
          vpbroadcastd %xmm18, %xmm29 {%k2} {z}

// CHECK: vpbroadcastd %xmm26, %ymm17
// CHECK:  encoding: [0x62,0x82,0x7d,0x28,0x58,0xca]
          vpbroadcastd %xmm26, %ymm17

// CHECK: vpbroadcastd %xmm26, %ymm17 {%k3}
// CHECK:  encoding: [0x62,0x82,0x7d,0x2b,0x58,0xca]
          vpbroadcastd %xmm26, %ymm17 {%k3}

// CHECK: vpbroadcastd %xmm26, %ymm17 {%k3} {z}
// CHECK:  encoding: [0x62,0x82,0x7d,0xab,0x58,0xca]
          vpbroadcastd %xmm26, %ymm17 {%k3} {z}

// CHECK: vpbroadcastd %eax, %xmm22
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x7c,0xf0]
          vpbroadcastd %eax, %xmm22

// CHECK: vpbroadcastd %eax, %xmm22 {%k5}
// CHECK:  encoding: [0x62,0xe2,0x7d,0x0d,0x7c,0xf0]
          vpbroadcastd %eax, %xmm22 {%k5}

// CHECK: vpbroadcastd %eax, %xmm22 {%k5} {z}
// CHECK:  encoding: [0x62,0xe2,0x7d,0x8d,0x7c,0xf0]
          vpbroadcastd %eax, %xmm22 {%k5} {z}

// CHECK: vpbroadcastd %ebp, %xmm22
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x7c,0xf5]
          vpbroadcastd %ebp, %xmm22

// CHECK: vpbroadcastd %r13d, %xmm22
// CHECK:  encoding: [0x62,0xc2,0x7d,0x08,0x7c,0xf5]
          vpbroadcastd %r13d, %xmm22

// CHECK: vpbroadcastd %eax, %ymm25
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x7c,0xc8]
          vpbroadcastd %eax, %ymm25

// CHECK: vpbroadcastd %eax, %ymm25 {%k5}
// CHECK:  encoding: [0x62,0x62,0x7d,0x2d,0x7c,0xc8]
          vpbroadcastd %eax, %ymm25 {%k5}

// CHECK: vpbroadcastd %eax, %ymm25 {%k5} {z}
// CHECK:  encoding: [0x62,0x62,0x7d,0xad,0x7c,0xc8]
          vpbroadcastd %eax, %ymm25 {%k5} {z}

// CHECK: vpbroadcastd %ebp, %ymm25
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x7c,0xcd]
          vpbroadcastd %ebp, %ymm25

// CHECK: vpbroadcastd %r13d, %ymm25
// CHECK:  encoding: [0x62,0x42,0x7d,0x28,0x7c,0xcd]
          vpbroadcastd %r13d, %ymm25

// CHECK: vpbroadcastq (%rcx), %xmm30
// CHECK:  encoding: [0x62,0x62,0xfd,0x08,0x59,0x31]
          vpbroadcastq (%rcx), %xmm30

// CHECK: vpbroadcastq (%rcx), %xmm30 {%k7}
// CHECK:  encoding: [0x62,0x62,0xfd,0x0f,0x59,0x31]
          vpbroadcastq (%rcx), %xmm30 {%k7}

// CHECK: vpbroadcastq (%rcx), %xmm30 {%k7} {z}
// CHECK:  encoding: [0x62,0x62,0xfd,0x8f,0x59,0x31]
          vpbroadcastq (%rcx), %xmm30 {%k7} {z}

// CHECK: vpbroadcastq 291(%rax,%r14,8), %xmm30
// CHECK:  encoding: [0x62,0x22,0xfd,0x08,0x59,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpbroadcastq 291(%rax,%r14,8), %xmm30

// CHECK: vpbroadcastq 1016(%rdx), %xmm30
// CHECK:  encoding: [0x62,0x62,0xfd,0x08,0x59,0x72,0x7f]
          vpbroadcastq 1016(%rdx), %xmm30

// CHECK: vpbroadcastq 1024(%rdx), %xmm30
// CHECK:  encoding: [0x62,0x62,0xfd,0x08,0x59,0xb2,0x00,0x04,0x00,0x00]
          vpbroadcastq 1024(%rdx), %xmm30

// CHECK: vpbroadcastq -1024(%rdx), %xmm30
// CHECK:  encoding: [0x62,0x62,0xfd,0x08,0x59,0x72,0x80]
          vpbroadcastq -1024(%rdx), %xmm30

// CHECK: vpbroadcastq -1032(%rdx), %xmm30
// CHECK:  encoding: [0x62,0x62,0xfd,0x08,0x59,0xb2,0xf8,0xfb,0xff,0xff]
          vpbroadcastq -1032(%rdx), %xmm30

// CHECK: vpbroadcastq (%rcx), %ymm19
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0x59,0x19]
          vpbroadcastq (%rcx), %ymm19

// CHECK: vpbroadcastq (%rcx), %ymm19 {%k7}
// CHECK:  encoding: [0x62,0xe2,0xfd,0x2f,0x59,0x19]
          vpbroadcastq (%rcx), %ymm19 {%k7}

// CHECK: vpbroadcastq (%rcx), %ymm19 {%k7} {z}
// CHECK:  encoding: [0x62,0xe2,0xfd,0xaf,0x59,0x19]
          vpbroadcastq (%rcx), %ymm19 {%k7} {z}

// CHECK: vpbroadcastq 291(%rax,%r14,8), %ymm19
// CHECK:  encoding: [0x62,0xa2,0xfd,0x28,0x59,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpbroadcastq 291(%rax,%r14,8), %ymm19

// CHECK: vpbroadcastq 1016(%rdx), %ymm19
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0x59,0x5a,0x7f]
          vpbroadcastq 1016(%rdx), %ymm19

// CHECK: vpbroadcastq 1024(%rdx), %ymm19
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0x59,0x9a,0x00,0x04,0x00,0x00]
          vpbroadcastq 1024(%rdx), %ymm19

// CHECK: vpbroadcastq -1024(%rdx), %ymm19
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0x59,0x5a,0x80]
          vpbroadcastq -1024(%rdx), %ymm19

// CHECK: vpbroadcastq -1032(%rdx), %ymm19
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0x59,0x9a,0xf8,0xfb,0xff,0xff]
          vpbroadcastq -1032(%rdx), %ymm19

// CHECK: vpbroadcastq %xmm24, %xmm19
// CHECK:  encoding: [0x62,0x82,0xfd,0x08,0x59,0xd8]
          vpbroadcastq %xmm24, %xmm19

// CHECK: vpbroadcastq %xmm24, %xmm19 {%k6}
// CHECK:  encoding: [0x62,0x82,0xfd,0x0e,0x59,0xd8]
          vpbroadcastq %xmm24, %xmm19 {%k6}

// CHECK: vpbroadcastq %xmm24, %xmm19 {%k6} {z}
// CHECK:  encoding: [0x62,0x82,0xfd,0x8e,0x59,0xd8]
          vpbroadcastq %xmm24, %xmm19 {%k6} {z}

// CHECK: vpbroadcastq %xmm26, %ymm19
// CHECK:  encoding: [0x62,0x82,0xfd,0x28,0x59,0xda]
          vpbroadcastq %xmm26, %ymm19

// CHECK: vpbroadcastq %xmm26, %ymm19 {%k6}
// CHECK:  encoding: [0x62,0x82,0xfd,0x2e,0x59,0xda]
          vpbroadcastq %xmm26, %ymm19 {%k6}

// CHECK: vpbroadcastq %xmm26, %ymm19 {%k6} {z}
// CHECK:  encoding: [0x62,0x82,0xfd,0xae,0x59,0xda]
          vpbroadcastq %xmm26, %ymm19 {%k6} {z}

// CHECK: vpbroadcastq %rax, %xmm22
// CHECK:  encoding: [0x62,0xe2,0xfd,0x08,0x7c,0xf0]
          vpbroadcastq %rax, %xmm22

// CHECK: vpbroadcastq %rax, %xmm22 {%k2}
// CHECK:  encoding: [0x62,0xe2,0xfd,0x0a,0x7c,0xf0]
          vpbroadcastq %rax, %xmm22 {%k2}

// CHECK: vpbroadcastq %rax, %xmm22 {%k2} {z}
// CHECK:  encoding: [0x62,0xe2,0xfd,0x8a,0x7c,0xf0]
          vpbroadcastq %rax, %xmm22 {%k2} {z}

// CHECK: vpbroadcastq %r8, %xmm22
// CHECK:  encoding: [0x62,0xc2,0xfd,0x08,0x7c,0xf0]
          vpbroadcastq %r8, %xmm22

// CHECK: vpbroadcastq %rax, %ymm19
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0x7c,0xd8]
          vpbroadcastq %rax, %ymm19

// CHECK: vpbroadcastq %rax, %ymm19 {%k5}
// CHECK:  encoding: [0x62,0xe2,0xfd,0x2d,0x7c,0xd8]
          vpbroadcastq %rax, %ymm19 {%k5}

// CHECK: vpbroadcastq %rax, %ymm19 {%k5} {z}
// CHECK:  encoding: [0x62,0xe2,0xfd,0xad,0x7c,0xd8]
          vpbroadcastq %rax, %ymm19 {%k5} {z}

// CHECK: vpbroadcastq %r8, %ymm19
// CHECK:  encoding: [0x62,0xc2,0xfd,0x28,0x7c,0xd8]
          vpbroadcastq %r8, %ymm19

// CHECK: vcvtph2ps %xmm17, %xmm27
// CHECK:  encoding: [0x62,0x22,0x7d,0x08,0x13,0xd9]
          vcvtph2ps %xmm17, %xmm27

// CHECK: vcvtph2ps %xmm17, %xmm27 {%k2}
// CHECK:  encoding: [0x62,0x22,0x7d,0x0a,0x13,0xd9]
          vcvtph2ps %xmm17, %xmm27 {%k2}

// CHECK: vcvtph2ps %xmm17, %xmm27 {%k2} {z}
// CHECK:  encoding: [0x62,0x22,0x7d,0x8a,0x13,0xd9]
          vcvtph2ps %xmm17, %xmm27 {%k2} {z}

// CHECK: vcvtph2ps (%rcx), %xmm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x13,0x19]
          vcvtph2ps (%rcx), %xmm27

// CHECK: vcvtph2ps 291(%rax,%r14,8), %xmm27
// CHECK:  encoding: [0x62,0x22,0x7d,0x08,0x13,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vcvtph2ps 291(%rax,%r14,8), %xmm27

// CHECK: vcvtph2ps 1016(%rdx), %xmm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x13,0x5a,0x7f]
          vcvtph2ps 1016(%rdx), %xmm27

// CHECK: vcvtph2ps 1024(%rdx), %xmm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x13,0x9a,0x00,0x04,0x00,0x00]
          vcvtph2ps 1024(%rdx), %xmm27

// CHECK: vcvtph2ps -1024(%rdx), %xmm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x13,0x5a,0x80]
          vcvtph2ps -1024(%rdx), %xmm27

// CHECK: vcvtph2ps -1032(%rdx), %xmm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x13,0x9a,0xf8,0xfb,0xff,0xff]
          vcvtph2ps -1032(%rdx), %xmm27

// CHECK: vcvtph2ps %xmm22, %ymm30
// CHECK:  encoding: [0x62,0x22,0x7d,0x28,0x13,0xf6]
          vcvtph2ps %xmm22, %ymm30

// CHECK: vcvtph2ps %xmm22, %ymm30 {%k7}
// CHECK:  encoding: [0x62,0x22,0x7d,0x2f,0x13,0xf6]
          vcvtph2ps %xmm22, %ymm30 {%k7}

// CHECK: vcvtph2ps %xmm22, %ymm30 {%k7} {z}
// CHECK:  encoding: [0x62,0x22,0x7d,0xaf,0x13,0xf6]
          vcvtph2ps %xmm22, %ymm30 {%k7} {z}

// CHECK: vcvtph2ps (%rcx), %ymm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x13,0x31]
          vcvtph2ps (%rcx), %ymm30

// CHECK: vcvtph2ps 291(%rax,%r14,8), %ymm30
// CHECK:  encoding: [0x62,0x22,0x7d,0x28,0x13,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vcvtph2ps 291(%rax,%r14,8), %ymm30

// CHECK: vcvtph2ps 2032(%rdx), %ymm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x13,0x72,0x7f]
          vcvtph2ps 2032(%rdx), %ymm30

// CHECK: vcvtph2ps 2048(%rdx), %ymm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x13,0xb2,0x00,0x08,0x00,0x00]
          vcvtph2ps 2048(%rdx), %ymm30

// CHECK: vcvtph2ps -2048(%rdx), %ymm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x13,0x72,0x80]
          vcvtph2ps -2048(%rdx), %ymm30

// CHECK: vcvtph2ps -2064(%rdx), %ymm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x13,0xb2,0xf0,0xf7,0xff,0xff]
          vcvtph2ps -2064(%rdx), %ymm30

// CHECK: vcvtps2ph $171, %xmm25, %xmm21
// CHECK:  encoding: [0x62,0x23,0x7d,0x08,0x1d,0xcd,0xab]
          vcvtps2ph $0xab, %xmm25, %xmm21

// CHECK: vcvtps2ph $171, %xmm25, %xmm21 {%k5}
// CHECK:  encoding: [0x62,0x23,0x7d,0x0d,0x1d,0xcd,0xab]
          vcvtps2ph $0xab, %xmm25, %xmm21 {%k5}

// CHECK: vcvtps2ph $171, %xmm25, %xmm21 {%k5} {z}
// CHECK:  encoding: [0x62,0x23,0x7d,0x8d,0x1d,0xcd,0xab]
          vcvtps2ph $0xab, %xmm25, %xmm21 {%k5} {z}

// CHECK: vcvtps2ph $123, %xmm25, %xmm21
// CHECK:  encoding: [0x62,0x23,0x7d,0x08,0x1d,0xcd,0x7b]
          vcvtps2ph $0x7b, %xmm25, %xmm21

// CHECK: vcvtps2ph $171, %ymm28, %xmm23
// CHECK:  encoding: [0x62,0x23,0x7d,0x28,0x1d,0xe7,0xab]
          vcvtps2ph $0xab, %ymm28, %xmm23

// CHECK: vcvtps2ph $171, %ymm28, %xmm23 {%k3}
// CHECK:  encoding: [0x62,0x23,0x7d,0x2b,0x1d,0xe7,0xab]
          vcvtps2ph $0xab, %ymm28, %xmm23 {%k3}

// CHECK: vcvtps2ph $171, %ymm28, %xmm23 {%k3} {z}
// CHECK:  encoding: [0x62,0x23,0x7d,0xab,0x1d,0xe7,0xab]
          vcvtps2ph $0xab, %ymm28, %xmm23 {%k3} {z}

// CHECK: vcvtps2ph $123, %ymm28, %xmm23
// CHECK:  encoding: [0x62,0x23,0x7d,0x28,0x1d,0xe7,0x7b]
          vcvtps2ph $0x7b, %ymm28, %xmm23

// CHECK: vcvtps2ph $171, %xmm27, (%rcx)
// CHECK:  encoding: [0x62,0x63,0x7d,0x08,0x1d,0x19,0xab]
          vcvtps2ph $0xab, %xmm27, (%rcx)

// CHECK: vcvtps2ph $171, %xmm27, (%rcx) {%k4}
// CHECK:  encoding: [0x62,0x63,0x7d,0x0c,0x1d,0x19,0xab]
          vcvtps2ph $0xab, %xmm27, (%rcx) {%k4}

// CHECK: vcvtps2ph $123, %xmm27, (%rcx)
// CHECK:  encoding: [0x62,0x63,0x7d,0x08,0x1d,0x19,0x7b]
          vcvtps2ph $0x7b, %xmm27, (%rcx)

// CHECK: vcvtps2ph $123, %xmm27, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x23,0x7d,0x08,0x1d,0x9c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vcvtps2ph $0x7b, %xmm27, 291(%rax,%r14,8)

// CHECK: vcvtps2ph $123, %xmm27, 1016(%rdx)
// CHECK:  encoding: [0x62,0x63,0x7d,0x08,0x1d,0x5a,0x7f,0x7b]
          vcvtps2ph $0x7b, %xmm27, 1016(%rdx)

// CHECK: vcvtps2ph $123, %xmm27, 1024(%rdx)
// CHECK:  encoding: [0x62,0x63,0x7d,0x08,0x1d,0x9a,0x00,0x04,0x00,0x00,0x7b]
          vcvtps2ph $0x7b, %xmm27, 1024(%rdx)

// CHECK: vcvtps2ph $123, %xmm27, -1024(%rdx)
// CHECK:  encoding: [0x62,0x63,0x7d,0x08,0x1d,0x5a,0x80,0x7b]
          vcvtps2ph $0x7b, %xmm27, -1024(%rdx)

// CHECK: vcvtps2ph $123, %xmm27, -1032(%rdx)
// CHECK:  encoding: [0x62,0x63,0x7d,0x08,0x1d,0x9a,0xf8,0xfb,0xff,0xff,0x7b]
          vcvtps2ph $0x7b, %xmm27, -1032(%rdx)

// CHECK: vcvtps2ph $171, %ymm30, (%rcx)
// CHECK:  encoding: [0x62,0x63,0x7d,0x28,0x1d,0x31,0xab]
          vcvtps2ph $0xab, %ymm30, (%rcx)

// CHECK: vcvtps2ph $171, %ymm30, (%rcx) {%k2}
// CHECK:  encoding: [0x62,0x63,0x7d,0x2a,0x1d,0x31,0xab]
          vcvtps2ph $0xab, %ymm30, (%rcx) {%k2}

// CHECK: vcvtps2ph $123, %ymm30, (%rcx)
// CHECK:  encoding: [0x62,0x63,0x7d,0x28,0x1d,0x31,0x7b]
          vcvtps2ph $0x7b, %ymm30, (%rcx)

// CHECK: vcvtps2ph $123, %ymm30, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x23,0x7d,0x28,0x1d,0xb4,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vcvtps2ph $0x7b, %ymm30, 291(%rax,%r14,8)

// CHECK: vcvtps2ph $123, %ymm30, 2032(%rdx)
// CHECK:  encoding: [0x62,0x63,0x7d,0x28,0x1d,0x72,0x7f,0x7b]
          vcvtps2ph $0x7b, %ymm30, 2032(%rdx)

// CHECK: vcvtps2ph $123, %ymm30, 2048(%rdx)
// CHECK:  encoding: [0x62,0x63,0x7d,0x28,0x1d,0xb2,0x00,0x08,0x00,0x00,0x7b]
          vcvtps2ph $0x7b, %ymm30, 2048(%rdx)

// CHECK: vcvtps2ph $123, %ymm30, -2048(%rdx)
// CHECK:  encoding: [0x62,0x63,0x7d,0x28,0x1d,0x72,0x80,0x7b]
          vcvtps2ph $0x7b, %ymm30, -2048(%rdx)

// CHECK: vcvtps2ph $123, %ymm30, -2064(%rdx)
// CHECK:  encoding: [0x62,0x63,0x7d,0x28,0x1d,0xb2,0xf0,0xf7,0xff,0xff,0x7b]
          vcvtps2ph $0x7b, %ymm30, -2064(%rdx)

// CHECK: vmovshdup %xmm18, %xmm23
// CHECK:  encoding: [0x62,0xa1,0x7e,0x08,0x16,0xfa]
          vmovshdup %xmm18, %xmm23

// CHECK: vmovshdup %xmm18, %xmm23 {%k2}
// CHECK:  encoding: [0x62,0xa1,0x7e,0x0a,0x16,0xfa]
          vmovshdup %xmm18, %xmm23 {%k2}

// CHECK: vmovshdup %xmm18, %xmm23 {%k2} {z}
// CHECK:  encoding: [0x62,0xa1,0x7e,0x8a,0x16,0xfa]
          vmovshdup %xmm18, %xmm23 {%k2} {z}

// CHECK: vmovshdup (%rcx), %xmm23
// CHECK:  encoding: [0x62,0xe1,0x7e,0x08,0x16,0x39]
          vmovshdup (%rcx), %xmm23

// CHECK: vmovshdup 291(%rax,%r14,8), %xmm23
// CHECK:  encoding: [0x62,0xa1,0x7e,0x08,0x16,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vmovshdup 291(%rax,%r14,8), %xmm23

// CHECK: vmovshdup 2032(%rdx), %xmm23
// CHECK:  encoding: [0x62,0xe1,0x7e,0x08,0x16,0x7a,0x7f]
          vmovshdup 2032(%rdx), %xmm23

// CHECK: vmovshdup 2048(%rdx), %xmm23
// CHECK:  encoding: [0x62,0xe1,0x7e,0x08,0x16,0xba,0x00,0x08,0x00,0x00]
          vmovshdup 2048(%rdx), %xmm23

// CHECK: vmovshdup -2048(%rdx), %xmm23
// CHECK:  encoding: [0x62,0xe1,0x7e,0x08,0x16,0x7a,0x80]
          vmovshdup -2048(%rdx), %xmm23

// CHECK: vmovshdup -2064(%rdx), %xmm23
// CHECK:  encoding: [0x62,0xe1,0x7e,0x08,0x16,0xba,0xf0,0xf7,0xff,0xff]
          vmovshdup -2064(%rdx), %xmm23

// CHECK: vmovshdup %ymm24, %ymm18
// CHECK:  encoding: [0x62,0x81,0x7e,0x28,0x16,0xd0]
          vmovshdup %ymm24, %ymm18

// CHECK: vmovshdup %ymm24, %ymm18 {%k3}
// CHECK:  encoding: [0x62,0x81,0x7e,0x2b,0x16,0xd0]
          vmovshdup %ymm24, %ymm18 {%k3}

// CHECK: vmovshdup %ymm24, %ymm18 {%k3} {z}
// CHECK:  encoding: [0x62,0x81,0x7e,0xab,0x16,0xd0]
          vmovshdup %ymm24, %ymm18 {%k3} {z}

// CHECK: vmovshdup (%rcx), %ymm18
// CHECK:  encoding: [0x62,0xe1,0x7e,0x28,0x16,0x11]
          vmovshdup (%rcx), %ymm18

// CHECK: vmovshdup 291(%rax,%r14,8), %ymm18
// CHECK:  encoding: [0x62,0xa1,0x7e,0x28,0x16,0x94,0xf0,0x23,0x01,0x00,0x00]
          vmovshdup 291(%rax,%r14,8), %ymm18

// CHECK: vmovshdup 4064(%rdx), %ymm18
// CHECK:  encoding: [0x62,0xe1,0x7e,0x28,0x16,0x52,0x7f]
          vmovshdup 4064(%rdx), %ymm18

// CHECK: vmovshdup 4096(%rdx), %ymm18
// CHECK:  encoding: [0x62,0xe1,0x7e,0x28,0x16,0x92,0x00,0x10,0x00,0x00]
          vmovshdup 4096(%rdx), %ymm18

// CHECK: vmovshdup -4096(%rdx), %ymm18
// CHECK:  encoding: [0x62,0xe1,0x7e,0x28,0x16,0x52,0x80]
          vmovshdup -4096(%rdx), %ymm18

// CHECK: vmovshdup -4128(%rdx), %ymm18
// CHECK:  encoding: [0x62,0xe1,0x7e,0x28,0x16,0x92,0xe0,0xef,0xff,0xff]
          vmovshdup -4128(%rdx), %ymm18

// CHECK: vmovsldup %xmm21, %xmm25
// CHECK:  encoding: [0x62,0x21,0x7e,0x08,0x12,0xcd]
          vmovsldup %xmm21, %xmm25

// CHECK: vmovsldup %xmm21, %xmm25 {%k5}
// CHECK:  encoding: [0x62,0x21,0x7e,0x0d,0x12,0xcd]
          vmovsldup %xmm21, %xmm25 {%k5}

// CHECK: vmovsldup %xmm21, %xmm25 {%k5} {z}
// CHECK:  encoding: [0x62,0x21,0x7e,0x8d,0x12,0xcd]
          vmovsldup %xmm21, %xmm25 {%k5} {z}

// CHECK: vmovsldup (%rcx), %xmm25
// CHECK:  encoding: [0x62,0x61,0x7e,0x08,0x12,0x09]
          vmovsldup (%rcx), %xmm25

// CHECK: vmovsldup 291(%rax,%r14,8), %xmm25
// CHECK:  encoding: [0x62,0x21,0x7e,0x08,0x12,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vmovsldup 291(%rax,%r14,8), %xmm25

// CHECK: vmovsldup 2032(%rdx), %xmm25
// CHECK:  encoding: [0x62,0x61,0x7e,0x08,0x12,0x4a,0x7f]
          vmovsldup 2032(%rdx), %xmm25

// CHECK: vmovsldup 2048(%rdx), %xmm25
// CHECK:  encoding: [0x62,0x61,0x7e,0x08,0x12,0x8a,0x00,0x08,0x00,0x00]
          vmovsldup 2048(%rdx), %xmm25

// CHECK: vmovsldup -2048(%rdx), %xmm25
// CHECK:  encoding: [0x62,0x61,0x7e,0x08,0x12,0x4a,0x80]
          vmovsldup -2048(%rdx), %xmm25

// CHECK: vmovsldup -2064(%rdx), %xmm25
// CHECK:  encoding: [0x62,0x61,0x7e,0x08,0x12,0x8a,0xf0,0xf7,0xff,0xff]
          vmovsldup -2064(%rdx), %xmm25

// CHECK: vmovsldup %ymm29, %ymm24
// CHECK:  encoding: [0x62,0x01,0x7e,0x28,0x12,0xc5]
          vmovsldup %ymm29, %ymm24

// CHECK: vmovsldup %ymm29, %ymm24 {%k5}
// CHECK:  encoding: [0x62,0x01,0x7e,0x2d,0x12,0xc5]
          vmovsldup %ymm29, %ymm24 {%k5}

// CHECK: vmovsldup %ymm29, %ymm24 {%k5} {z}
// CHECK:  encoding: [0x62,0x01,0x7e,0xad,0x12,0xc5]
          vmovsldup %ymm29, %ymm24 {%k5} {z}

// CHECK: vmovsldup (%rcx), %ymm24
// CHECK:  encoding: [0x62,0x61,0x7e,0x28,0x12,0x01]
          vmovsldup (%rcx), %ymm24

// CHECK: vmovsldup 291(%rax,%r14,8), %ymm24
// CHECK:  encoding: [0x62,0x21,0x7e,0x28,0x12,0x84,0xf0,0x23,0x01,0x00,0x00]
          vmovsldup 291(%rax,%r14,8), %ymm24

// CHECK: vmovsldup 4064(%rdx), %ymm24
// CHECK:  encoding: [0x62,0x61,0x7e,0x28,0x12,0x42,0x7f]
          vmovsldup 4064(%rdx), %ymm24

// CHECK: vmovsldup 4096(%rdx), %ymm24
// CHECK:  encoding: [0x62,0x61,0x7e,0x28,0x12,0x82,0x00,0x10,0x00,0x00]
          vmovsldup 4096(%rdx), %ymm24

// CHECK: vmovsldup -4096(%rdx), %ymm24
// CHECK:  encoding: [0x62,0x61,0x7e,0x28,0x12,0x42,0x80]
          vmovsldup -4096(%rdx), %ymm24

// CHECK: vmovsldup -4128(%rdx), %ymm24
// CHECK:  encoding: [0x62,0x61,0x7e,0x28,0x12,0x82,0xe0,0xef,0xff,0xff]
          vmovsldup -4128(%rdx), %ymm24

// CHECK: vmovddup %xmm23, %xmm17
// CHECK:  encoding: [0x62,0xa1,0xff,0x08,0x12,0xcf]
          vmovddup %xmm23, %xmm17

// CHECK: vmovddup %xmm23, %xmm17 {%k6}
// CHECK:  encoding: [0x62,0xa1,0xff,0x0e,0x12,0xcf]
          vmovddup %xmm23, %xmm17 {%k6}

// CHECK: vmovddup %xmm23, %xmm17 {%k6} {z}
// CHECK:  encoding: [0x62,0xa1,0xff,0x8e,0x12,0xcf]
          vmovddup %xmm23, %xmm17 {%k6} {z}

// CHECK: vmovddup (%rcx), %xmm17
// CHECK:  encoding: [0x62,0xe1,0xff,0x08,0x12,0x09]
          vmovddup (%rcx), %xmm17

// CHECK: vmovddup 291(%rax,%r14,8), %xmm17
// CHECK:  encoding: [0x62,0xa1,0xff,0x08,0x12,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vmovddup 291(%rax,%r14,8), %xmm17

// CHECK: vmovddup 1016(%rdx), %xmm17
// CHECK:  encoding: [0x62,0xe1,0xff,0x08,0x12,0x4a,0x7f]
          vmovddup 1016(%rdx), %xmm17

// CHECK: vmovddup 1024(%rdx), %xmm17
// CHECK:  encoding: [0x62,0xe1,0xff,0x08,0x12,0x8a,0x00,0x04,0x00,0x00]
          vmovddup 1024(%rdx), %xmm17

// CHECK: vmovddup -1024(%rdx), %xmm17
// CHECK:  encoding: [0x62,0xe1,0xff,0x08,0x12,0x4a,0x80]
          vmovddup -1024(%rdx), %xmm17

// CHECK: vmovddup -1032(%rdx), %xmm17
// CHECK:  encoding: [0x62,0xe1,0xff,0x08,0x12,0x8a,0xf8,0xfb,0xff,0xff]
          vmovddup -1032(%rdx), %xmm17

// CHECK: vmovddup %ymm25, %ymm18
// CHECK:  encoding: [0x62,0x81,0xff,0x28,0x12,0xd1]
          vmovddup %ymm25, %ymm18

// CHECK: vmovddup %ymm25, %ymm18 {%k4}
// CHECK:  encoding: [0x62,0x81,0xff,0x2c,0x12,0xd1]
          vmovddup %ymm25, %ymm18 {%k4}

// CHECK: vmovddup %ymm25, %ymm18 {%k4} {z}
// CHECK:  encoding: [0x62,0x81,0xff,0xac,0x12,0xd1]
          vmovddup %ymm25, %ymm18 {%k4} {z}

// CHECK: vmovddup (%rcx), %ymm18
// CHECK:  encoding: [0x62,0xe1,0xff,0x28,0x12,0x11]
          vmovddup (%rcx), %ymm18

// CHECK: vmovddup 291(%rax,%r14,8), %ymm18
// CHECK:  encoding: [0x62,0xa1,0xff,0x28,0x12,0x94,0xf0,0x23,0x01,0x00,0x00]
          vmovddup 291(%rax,%r14,8), %ymm18

// CHECK: vmovddup 4064(%rdx), %ymm18
// CHECK:  encoding: [0x62,0xe1,0xff,0x28,0x12,0x52,0x7f]
          vmovddup 4064(%rdx), %ymm18

// CHECK: vmovddup 4096(%rdx), %ymm18
// CHECK:  encoding: [0x62,0xe1,0xff,0x28,0x12,0x92,0x00,0x10,0x00,0x00]
          vmovddup 4096(%rdx), %ymm18

// CHECK: vmovddup -4096(%rdx), %ymm18
// CHECK:  encoding: [0x62,0xe1,0xff,0x28,0x12,0x52,0x80]
          vmovddup -4096(%rdx), %ymm18

// CHECK: vmovddup -4128(%rdx), %ymm18
// CHECK:  encoding: [0x62,0xe1,0xff,0x28,0x12,0x92,0xe0,0xef,0xff,0xff]
          vmovddup -4128(%rdx), %ymm18

// CHECK: vmovapd.s %xmm27, %xmm26
// CHECK:  encoding: [0x62,0x01,0xfd,0x08,0x29,0xda]
          vmovapd.s %xmm27, %xmm26

// CHECK: vmovapd.s %xmm27, %xmm26 {%k6}
// CHECK:  encoding: [0x62,0x01,0xfd,0x0e,0x29,0xda]
          vmovapd.s %xmm27, %xmm26 {%k6}

// CHECK: vmovapd.s %xmm27, %xmm26 {%k6} {z}
// CHECK:  encoding: [0x62,0x01,0xfd,0x8e,0x29,0xda]
          vmovapd.s %xmm27, %xmm26 {%k6} {z}

// CHECK: vmovapd.s %xmm26, %xmm17
// CHECK:  encoding: [0x62,0x21,0xfd,0x08,0x29,0xd1]
          vmovapd.s %xmm26, %xmm17

// CHECK: vmovapd.s %xmm26, %xmm17 {%k2}
// CHECK:  encoding: [0x62,0x21,0xfd,0x0a,0x29,0xd1]
          vmovapd.s %xmm26, %xmm17 {%k2}

// CHECK: vmovapd.s %xmm26, %xmm17 {%k2} {z}
// CHECK:  encoding: [0x62,0x21,0xfd,0x8a,0x29,0xd1]
          vmovapd.s %xmm26, %xmm17 {%k2} {z}

// CHECK: vmovapd.s %ymm20, %ymm18
// CHECK:  encoding: [0x62,0xa1,0xfd,0x28,0x29,0xe2]
          vmovapd.s %ymm20, %ymm18

// CHECK: vmovapd.s %ymm20, %ymm18 {%k2}
// CHECK:  encoding: [0x62,0xa1,0xfd,0x2a,0x29,0xe2]
          vmovapd.s %ymm20, %ymm18 {%k2}

// CHECK: vmovapd.s %ymm20, %ymm18 {%k2} {z}
// CHECK:  encoding: [0x62,0xa1,0xfd,0xaa,0x29,0xe2]
          vmovapd.s %ymm20, %ymm18 {%k2} {z}

// CHECK: vmovapd.s %ymm20, %ymm21
// CHECK:  encoding: [0x62,0xa1,0xfd,0x28,0x29,0xe5]
          vmovapd.s %ymm20, %ymm21

// CHECK: vmovapd.s %ymm20, %ymm21 {%k6}
// CHECK:  encoding: [0x62,0xa1,0xfd,0x2e,0x29,0xe5]
          vmovapd.s %ymm20, %ymm21 {%k6}

// CHECK: vmovapd.s %ymm20, %ymm21 {%k6} {z}
// CHECK:  encoding: [0x62,0xa1,0xfd,0xae,0x29,0xe5]
          vmovapd.s %ymm20, %ymm21 {%k6} {z}

// CHECK: vmovapd.s %xmm29, %xmm17
// CHECK:  encoding: [0x62,0x21,0xfd,0x08,0x29,0xe9]
          vmovapd.s %xmm29, %xmm17

// CHECK: vmovapd.s %xmm29, %xmm17 {%k1}
// CHECK:  encoding: [0x62,0x21,0xfd,0x09,0x29,0xe9]
          vmovapd.s %xmm29, %xmm17 {%k1}

// CHECK: vmovapd.s %xmm29, %xmm17 {%k1} {z}
// CHECK:  encoding: [0x62,0x21,0xfd,0x89,0x29,0xe9]
          vmovapd.s %xmm29, %xmm17 {%k1} {z}

// CHECK: vmovapd.s %xmm27, %xmm19
// CHECK:  encoding: [0x62,0x21,0xfd,0x08,0x29,0xdb]
          vmovapd.s %xmm27, %xmm19

// CHECK: vmovapd.s %xmm27, %xmm19 {%k1}
// CHECK:  encoding: [0x62,0x21,0xfd,0x09,0x29,0xdb]
          vmovapd.s %xmm27, %xmm19 {%k1}

// CHECK: vmovapd.s %xmm27, %xmm19 {%k1} {z}
// CHECK:  encoding: [0x62,0x21,0xfd,0x89,0x29,0xdb]
          vmovapd.s %xmm27, %xmm19 {%k1} {z}

// CHECK: vmovapd.s %ymm18, %ymm19
// CHECK:  encoding: [0x62,0xa1,0xfd,0x28,0x29,0xd3]
          vmovapd.s %ymm18, %ymm19

// CHECK: vmovapd.s %ymm18, %ymm19 {%k4}
// CHECK:  encoding: [0x62,0xa1,0xfd,0x2c,0x29,0xd3]
          vmovapd.s %ymm18, %ymm19 {%k4}

// CHECK: vmovapd.s %ymm18, %ymm19 {%k4} {z}
// CHECK:  encoding: [0x62,0xa1,0xfd,0xac,0x29,0xd3]
          vmovapd.s %ymm18, %ymm19 {%k4} {z}

// CHECK: vmovapd.s %ymm28, %ymm20
// CHECK:  encoding: [0x62,0x21,0xfd,0x28,0x29,0xe4]
          vmovapd.s %ymm28, %ymm20

// CHECK: vmovapd.s %ymm28, %ymm20 {%k5}
// CHECK:  encoding: [0x62,0x21,0xfd,0x2d,0x29,0xe4]
          vmovapd.s %ymm28, %ymm20 {%k5}

// CHECK: vmovapd.s %ymm28, %ymm20 {%k5} {z}
// CHECK:  encoding: [0x62,0x21,0xfd,0xad,0x29,0xe4]
          vmovapd.s %ymm28, %ymm20 {%k5} {z}

// CHECK: vmovaps.s %xmm23, %xmm18
// CHECK:  encoding: [0x62,0xa1,0x7c,0x08,0x29,0xfa]
          vmovaps.s %xmm23, %xmm18

// CHECK: vmovaps.s %xmm23, %xmm18 {%k5}
// CHECK:  encoding: [0x62,0xa1,0x7c,0x0d,0x29,0xfa]
          vmovaps.s %xmm23, %xmm18 {%k5}

// CHECK: vmovaps.s %xmm23, %xmm18 {%k5} {z}
// CHECK:  encoding: [0x62,0xa1,0x7c,0x8d,0x29,0xfa]
          vmovaps.s %xmm23, %xmm18 {%k5} {z}

// CHECK: vmovaps.s %xmm24, %xmm18
// CHECK:  encoding: [0x62,0x21,0x7c,0x08,0x29,0xc2]
          vmovaps.s %xmm24, %xmm18

// CHECK: vmovaps.s %xmm24, %xmm18 {%k6}
// CHECK:  encoding: [0x62,0x21,0x7c,0x0e,0x29,0xc2]
          vmovaps.s %xmm24, %xmm18 {%k6}

// CHECK: vmovaps.s %xmm24, %xmm18 {%k6} {z}
// CHECK:  encoding: [0x62,0x21,0x7c,0x8e,0x29,0xc2]
          vmovaps.s %xmm24, %xmm18 {%k6} {z}

// CHECK: vmovaps.s %ymm23, %ymm26
// CHECK:  encoding: [0x62,0x81,0x7c,0x28,0x29,0xfa]
          vmovaps.s %ymm23, %ymm26

// CHECK: vmovaps.s %ymm23, %ymm26 {%k5}
// CHECK:  encoding: [0x62,0x81,0x7c,0x2d,0x29,0xfa]
          vmovaps.s %ymm23, %ymm26 {%k5}

// CHECK: vmovaps.s %ymm23, %ymm26 {%k5} {z}
// CHECK:  encoding: [0x62,0x81,0x7c,0xad,0x29,0xfa]
          vmovaps.s %ymm23, %ymm26 {%k5} {z}

// CHECK: vmovaps.s %ymm17, %ymm27
// CHECK:  encoding: [0x62,0x81,0x7c,0x28,0x29,0xcb]
          vmovaps.s %ymm17, %ymm27

// CHECK: vmovaps.s %ymm17, %ymm27 {%k1}
// CHECK:  encoding: [0x62,0x81,0x7c,0x29,0x29,0xcb]
          vmovaps.s %ymm17, %ymm27 {%k1}

// CHECK: vmovaps.s %ymm17, %ymm27 {%k1} {z}
// CHECK:  encoding: [0x62,0x81,0x7c,0xa9,0x29,0xcb]
          vmovaps.s %ymm17, %ymm27 {%k1} {z}

// CHECK: vmovaps.s %xmm28, %xmm17
// CHECK:  encoding: [0x62,0x21,0x7c,0x08,0x29,0xe1]
          vmovaps.s %xmm28, %xmm17

// CHECK: vmovaps.s %xmm28, %xmm17 {%k2}
// CHECK:  encoding: [0x62,0x21,0x7c,0x0a,0x29,0xe1]
          vmovaps.s %xmm28, %xmm17 {%k2}

// CHECK: vmovaps.s %xmm28, %xmm17 {%k2} {z}
// CHECK:  encoding: [0x62,0x21,0x7c,0x8a,0x29,0xe1]
          vmovaps.s %xmm28, %xmm17 {%k2} {z}

// CHECK: vmovaps.s %xmm19, %xmm21
// CHECK:  encoding: [0x62,0xa1,0x7c,0x08,0x29,0xdd]
          vmovaps.s %xmm19, %xmm21

// CHECK: vmovaps.s %xmm19, %xmm21 {%k1}
// CHECK:  encoding: [0x62,0xa1,0x7c,0x09,0x29,0xdd]
          vmovaps.s %xmm19, %xmm21 {%k1}

// CHECK: vmovaps.s %xmm19, %xmm21 {%k1} {z}
// CHECK:  encoding: [0x62,0xa1,0x7c,0x89,0x29,0xdd]
          vmovaps.s %xmm19, %xmm21 {%k1} {z}

// CHECK: vmovaps.s %ymm26, %ymm18
// CHECK:  encoding: [0x62,0x21,0x7c,0x28,0x29,0xd2]
          vmovaps.s %ymm26, %ymm18

// CHECK: vmovaps.s %ymm26, %ymm18 {%k5}
// CHECK:  encoding: [0x62,0x21,0x7c,0x2d,0x29,0xd2]
          vmovaps.s %ymm26, %ymm18 {%k5}

// CHECK: vmovaps.s %ymm26, %ymm18 {%k5} {z}
// CHECK:  encoding: [0x62,0x21,0x7c,0xad,0x29,0xd2]
          vmovaps.s %ymm26, %ymm18 {%k5} {z}

// CHECK: vmovaps.s %ymm27, %ymm17
// CHECK:  encoding: [0x62,0x21,0x7c,0x28,0x29,0xd9]
          vmovaps.s %ymm27, %ymm17

// CHECK: vmovaps.s %ymm27, %ymm17 {%k6}
// CHECK:  encoding: [0x62,0x21,0x7c,0x2e,0x29,0xd9]
          vmovaps.s %ymm27, %ymm17 {%k6}

// CHECK: vmovaps.s %ymm27, %ymm17 {%k6} {z}
// CHECK:  encoding: [0x62,0x21,0x7c,0xae,0x29,0xd9]
          vmovaps.s %ymm27, %ymm17 {%k6} {z}

// CHECK: vmovdqa32.s %xmm25, %xmm25
// CHECK:  encoding: [0x62,0x01,0x7d,0x08,0x7f,0xc9]
          vmovdqa32.s %xmm25, %xmm25

// CHECK: vmovdqa32.s %xmm25, %xmm25 {%k5}
// CHECK:  encoding: [0x62,0x01,0x7d,0x0d,0x7f,0xc9]
          vmovdqa32.s %xmm25, %xmm25 {%k5}

// CHECK: vmovdqa32.s %xmm25, %xmm25 {%k5} {z}
// CHECK:  encoding: [0x62,0x01,0x7d,0x8d,0x7f,0xc9]
          vmovdqa32.s %xmm25, %xmm25 {%k5} {z}

// CHECK: vmovdqa32.s %xmm17, %xmm22
// CHECK:  encoding: [0x62,0xa1,0x7d,0x08,0x7f,0xce]
          vmovdqa32.s %xmm17, %xmm22

// CHECK: vmovdqa32.s %xmm17, %xmm22 {%k2}
// CHECK:  encoding: [0x62,0xa1,0x7d,0x0a,0x7f,0xce]
          vmovdqa32.s %xmm17, %xmm22 {%k2}

// CHECK: vmovdqa32.s %xmm17, %xmm22 {%k2} {z}
// CHECK:  encoding: [0x62,0xa1,0x7d,0x8a,0x7f,0xce]
          vmovdqa32.s %xmm17, %xmm22 {%k2} {z}

// CHECK: vmovdqa32.s %ymm20, %ymm30
// CHECK:  encoding: [0x62,0x81,0x7d,0x28,0x7f,0xe6]
          vmovdqa32.s %ymm20, %ymm30

// CHECK: vmovdqa32.s %ymm20, %ymm30 {%k2}
// CHECK:  encoding: [0x62,0x81,0x7d,0x2a,0x7f,0xe6]
          vmovdqa32.s %ymm20, %ymm30 {%k2}

// CHECK: vmovdqa32.s %ymm20, %ymm30 {%k2} {z}
// CHECK:  encoding: [0x62,0x81,0x7d,0xaa,0x7f,0xe6]
          vmovdqa32.s %ymm20, %ymm30 {%k2} {z}

// CHECK: vmovdqa32.s %ymm17, %ymm20
// CHECK:  encoding: [0x62,0xa1,0x7d,0x28,0x7f,0xcc]
          vmovdqa32.s %ymm17, %ymm20

// CHECK: vmovdqa32.s %ymm17, %ymm20 {%k3}
// CHECK:  encoding: [0x62,0xa1,0x7d,0x2b,0x7f,0xcc]
          vmovdqa32.s %ymm17, %ymm20 {%k3}

// CHECK: vmovdqa32.s %ymm17, %ymm20 {%k3} {z}
// CHECK:  encoding: [0x62,0xa1,0x7d,0xab,0x7f,0xcc]
          vmovdqa32.s %ymm17, %ymm20 {%k3} {z}

// CHECK: vmovdqa32.s %xmm27, %xmm21
// CHECK:  encoding: [0x62,0x21,0x7d,0x08,0x7f,0xdd]
          vmovdqa32.s %xmm27, %xmm21

// CHECK: vmovdqa32.s %xmm27, %xmm21 {%k4}
// CHECK:  encoding: [0x62,0x21,0x7d,0x0c,0x7f,0xdd]
          vmovdqa32.s %xmm27, %xmm21 {%k4}

// CHECK: vmovdqa32.s %xmm27, %xmm21 {%k4} {z}
// CHECK:  encoding: [0x62,0x21,0x7d,0x8c,0x7f,0xdd]
          vmovdqa32.s %xmm27, %xmm21 {%k4} {z}

// CHECK: vmovdqa32.s %xmm20, %xmm24
// CHECK:  encoding: [0x62,0x81,0x7d,0x08,0x7f,0xe0]
          vmovdqa32.s %xmm20, %xmm24

// CHECK: vmovdqa32.s %xmm20, %xmm24 {%k4}
// CHECK:  encoding: [0x62,0x81,0x7d,0x0c,0x7f,0xe0]
          vmovdqa32.s %xmm20, %xmm24 {%k4}

// CHECK: vmovdqa32.s %xmm20, %xmm24 {%k4} {z}
// CHECK:  encoding: [0x62,0x81,0x7d,0x8c,0x7f,0xe0]
          vmovdqa32.s %xmm20, %xmm24 {%k4} {z}

// CHECK: vmovdqa32.s %ymm22, %ymm18
// CHECK:  encoding: [0x62,0xa1,0x7d,0x28,0x7f,0xf2]
          vmovdqa32.s %ymm22, %ymm18

// CHECK: vmovdqa32.s %ymm22, %ymm18 {%k5}
// CHECK:  encoding: [0x62,0xa1,0x7d,0x2d,0x7f,0xf2]
          vmovdqa32.s %ymm22, %ymm18 {%k5}

// CHECK: vmovdqa32.s %ymm22, %ymm18 {%k5} {z}
// CHECK:  encoding: [0x62,0xa1,0x7d,0xad,0x7f,0xf2]
          vmovdqa32.s %ymm22, %ymm18 {%k5} {z}

// CHECK: vmovdqa32.s %ymm22, %ymm18
// CHECK:  encoding: [0x62,0xa1,0x7d,0x28,0x7f,0xf2]
          vmovdqa32.s %ymm22, %ymm18

// CHECK: vmovdqa32.s %ymm22, %ymm18 {%k3}
// CHECK:  encoding: [0x62,0xa1,0x7d,0x2b,0x7f,0xf2]
          vmovdqa32.s %ymm22, %ymm18 {%k3}

// CHECK: vmovdqa32.s %ymm22, %ymm18 {%k3} {z}
// CHECK:  encoding: [0x62,0xa1,0x7d,0xab,0x7f,0xf2]
          vmovdqa32.s %ymm22, %ymm18 {%k3} {z}

// CHECK: vmovdqa64.s %xmm22, %xmm23
// CHECK:  encoding: [0x62,0xa1,0xfd,0x08,0x7f,0xf7]
          vmovdqa64.s %xmm22, %xmm23

// CHECK: vmovdqa64.s %xmm22, %xmm23 {%k3}
// CHECK:  encoding: [0x62,0xa1,0xfd,0x0b,0x7f,0xf7]
          vmovdqa64.s %xmm22, %xmm23 {%k3}

// CHECK: vmovdqa64.s %xmm22, %xmm23 {%k3} {z}
// CHECK:  encoding: [0x62,0xa1,0xfd,0x8b,0x7f,0xf7]
          vmovdqa64.s %xmm22, %xmm23 {%k3} {z}

// CHECK: vmovdqa64.s %xmm25, %xmm18
// CHECK:  encoding: [0x62,0x21,0xfd,0x08,0x7f,0xca]
          vmovdqa64.s %xmm25, %xmm18

// CHECK: vmovdqa64.s %xmm25, %xmm18 {%k4}
// CHECK:  encoding: [0x62,0x21,0xfd,0x0c,0x7f,0xca]
          vmovdqa64.s %xmm25, %xmm18 {%k4}

// CHECK: vmovdqa64.s %xmm25, %xmm18 {%k4} {z}
// CHECK:  encoding: [0x62,0x21,0xfd,0x8c,0x7f,0xca]
          vmovdqa64.s %xmm25, %xmm18 {%k4} {z}

// CHECK: vmovdqa64.s %ymm26, %ymm22
// CHECK:  encoding: [0x62,0x21,0xfd,0x28,0x7f,0xd6]
          vmovdqa64.s %ymm26, %ymm22

// CHECK: vmovdqa64.s %ymm26, %ymm22 {%k1}
// CHECK:  encoding: [0x62,0x21,0xfd,0x29,0x7f,0xd6]
          vmovdqa64.s %ymm26, %ymm22 {%k1}

// CHECK: vmovdqa64.s %ymm26, %ymm22 {%k1} {z}
// CHECK:  encoding: [0x62,0x21,0xfd,0xa9,0x7f,0xd6]
          vmovdqa64.s %ymm26, %ymm22 {%k1} {z}

// CHECK: vmovdqa64.s %ymm24, %ymm21
// CHECK:  encoding: [0x62,0x21,0xfd,0x28,0x7f,0xc5]
          vmovdqa64.s %ymm24, %ymm21

// CHECK: vmovdqa64.s %ymm24, %ymm21 {%k6}
// CHECK:  encoding: [0x62,0x21,0xfd,0x2e,0x7f,0xc5]
          vmovdqa64.s %ymm24, %ymm21 {%k6}

// CHECK: vmovdqa64.s %ymm24, %ymm21 {%k6} {z}
// CHECK:  encoding: [0x62,0x21,0xfd,0xae,0x7f,0xc5]
          vmovdqa64.s %ymm24, %ymm21 {%k6} {z}

// CHECK: vmovdqa64.s %xmm29, %xmm25
// CHECK:  encoding: [0x62,0x01,0xfd,0x08,0x7f,0xe9]
          vmovdqa64.s %xmm29, %xmm25

// CHECK: vmovdqa64.s %xmm29, %xmm25 {%k1}
// CHECK:  encoding: [0x62,0x01,0xfd,0x09,0x7f,0xe9]
          vmovdqa64.s %xmm29, %xmm25 {%k1}

// CHECK: vmovdqa64.s %xmm29, %xmm25 {%k1} {z}
// CHECK:  encoding: [0x62,0x01,0xfd,0x89,0x7f,0xe9]
          vmovdqa64.s %xmm29, %xmm25 {%k1} {z}

// CHECK: vmovdqa64.s %xmm19, %xmm26
// CHECK:  encoding: [0x62,0x81,0xfd,0x08,0x7f,0xda]
          vmovdqa64.s %xmm19, %xmm26

// CHECK: vmovdqa64.s %xmm19, %xmm26 {%k3}
// CHECK:  encoding: [0x62,0x81,0xfd,0x0b,0x7f,0xda]
          vmovdqa64.s %xmm19, %xmm26 {%k3}

// CHECK: vmovdqa64.s %xmm19, %xmm26 {%k3} {z}
// CHECK:  encoding: [0x62,0x81,0xfd,0x8b,0x7f,0xda]
          vmovdqa64.s %xmm19, %xmm26 {%k3} {z}

// CHECK: vmovdqa64.s %ymm28, %ymm29
// CHECK:  encoding: [0x62,0x01,0xfd,0x28,0x7f,0xe5]
          vmovdqa64.s %ymm28, %ymm29

// CHECK: vmovdqa64.s %ymm28, %ymm29 {%k1}
// CHECK:  encoding: [0x62,0x01,0xfd,0x29,0x7f,0xe5]
          vmovdqa64.s %ymm28, %ymm29 {%k1}

// CHECK: vmovdqa64.s %ymm28, %ymm29 {%k1} {z}
// CHECK:  encoding: [0x62,0x01,0xfd,0xa9,0x7f,0xe5]
          vmovdqa64.s %ymm28, %ymm29 {%k1} {z}

// CHECK: vmovdqa64.s %ymm21, %ymm17
// CHECK:  encoding: [0x62,0xa1,0xfd,0x28,0x7f,0xe9]
          vmovdqa64.s %ymm21, %ymm17

// CHECK: vmovdqa64.s %ymm21, %ymm17 {%k4}
// CHECK:  encoding: [0x62,0xa1,0xfd,0x2c,0x7f,0xe9]
          vmovdqa64.s %ymm21, %ymm17 {%k4}

// CHECK: vmovdqa64.s %ymm21, %ymm17 {%k4} {z}
// CHECK:  encoding: [0x62,0xa1,0xfd,0xac,0x7f,0xe9]
          vmovdqa64.s %ymm21, %ymm17 {%k4} {z}

// CHECK: vmovdqu32.s %xmm22, %xmm18
// CHECK:  encoding: [0x62,0xa1,0x7e,0x08,0x7f,0xf2]
          vmovdqu32.s %xmm22, %xmm18

// CHECK: vmovdqu32.s %xmm22, %xmm18 {%k1}
// CHECK:  encoding: [0x62,0xa1,0x7e,0x09,0x7f,0xf2]
          vmovdqu32.s %xmm22, %xmm18 {%k1}

// CHECK: vmovdqu32.s %xmm22, %xmm18 {%k1} {z}
// CHECK:  encoding: [0x62,0xa1,0x7e,0x89,0x7f,0xf2]
          vmovdqu32.s %xmm22, %xmm18 {%k1} {z}

// CHECK: vmovdqu32.s %xmm26, %xmm25
// CHECK:  encoding: [0x62,0x01,0x7e,0x08,0x7f,0xd1]
          vmovdqu32.s %xmm26, %xmm25

// CHECK: vmovdqu32.s %xmm26, %xmm25 {%k2}
// CHECK:  encoding: [0x62,0x01,0x7e,0x0a,0x7f,0xd1]
          vmovdqu32.s %xmm26, %xmm25 {%k2}

// CHECK: vmovdqu32.s %xmm26, %xmm25 {%k2} {z}
// CHECK:  encoding: [0x62,0x01,0x7e,0x8a,0x7f,0xd1]
          vmovdqu32.s %xmm26, %xmm25 {%k2} {z}

// CHECK: vmovdqu32.s %ymm26, %ymm22
// CHECK:  encoding: [0x62,0x21,0x7e,0x28,0x7f,0xd6]
          vmovdqu32.s %ymm26, %ymm22

// CHECK: vmovdqu32.s %ymm26, %ymm22 {%k3}
// CHECK:  encoding: [0x62,0x21,0x7e,0x2b,0x7f,0xd6]
          vmovdqu32.s %ymm26, %ymm22 {%k3}

// CHECK: vmovdqu32.s %ymm26, %ymm22 {%k3} {z}
// CHECK:  encoding: [0x62,0x21,0x7e,0xab,0x7f,0xd6]
          vmovdqu32.s %ymm26, %ymm22 {%k3} {z}

// CHECK: vmovdqu32.s %ymm24, %ymm27
// CHECK:  encoding: [0x62,0x01,0x7e,0x28,0x7f,0xc3]
          vmovdqu32.s %ymm24, %ymm27

// CHECK: vmovdqu32.s %ymm24, %ymm27 {%k1}
// CHECK:  encoding: [0x62,0x01,0x7e,0x29,0x7f,0xc3]
          vmovdqu32.s %ymm24, %ymm27 {%k1}

// CHECK: vmovdqu32.s %ymm24, %ymm27 {%k1} {z}
// CHECK:  encoding: [0x62,0x01,0x7e,0xa9,0x7f,0xc3]
          vmovdqu32.s %ymm24, %ymm27 {%k1} {z}

// CHECK: vmovdqu32.s %xmm19, %xmm21
// CHECK:  encoding: [0x62,0xa1,0x7e,0x08,0x7f,0xdd]
          vmovdqu32.s %xmm19, %xmm21

// CHECK: vmovdqu32.s %xmm19, %xmm21 {%k1}
// CHECK:  encoding: [0x62,0xa1,0x7e,0x09,0x7f,0xdd]
          vmovdqu32.s %xmm19, %xmm21 {%k1}

// CHECK: vmovdqu32.s %xmm19, %xmm21 {%k1} {z}
// CHECK:  encoding: [0x62,0xa1,0x7e,0x89,0x7f,0xdd]
          vmovdqu32.s %xmm19, %xmm21 {%k1} {z}

// CHECK: vmovdqu32.s %xmm25, %xmm22
// CHECK:  encoding: [0x62,0x21,0x7e,0x08,0x7f,0xce]
          vmovdqu32.s %xmm25, %xmm22

// CHECK: vmovdqu32.s %xmm25, %xmm22 {%k7}
// CHECK:  encoding: [0x62,0x21,0x7e,0x0f,0x7f,0xce]
          vmovdqu32.s %xmm25, %xmm22 {%k7}

// CHECK: vmovdqu32.s %xmm25, %xmm22 {%k7} {z}
// CHECK:  encoding: [0x62,0x21,0x7e,0x8f,0x7f,0xce]
          vmovdqu32.s %xmm25, %xmm22 {%k7} {z}

// CHECK: vmovdqu32.s %ymm17, %ymm29
// CHECK:  encoding: [0x62,0x81,0x7e,0x28,0x7f,0xcd]
          vmovdqu32.s %ymm17, %ymm29

// CHECK: vmovdqu32.s %ymm17, %ymm29 {%k1}
// CHECK:  encoding: [0x62,0x81,0x7e,0x29,0x7f,0xcd]
          vmovdqu32.s %ymm17, %ymm29 {%k1}

// CHECK: vmovdqu32.s %ymm17, %ymm29 {%k1} {z}
// CHECK:  encoding: [0x62,0x81,0x7e,0xa9,0x7f,0xcd]
          vmovdqu32.s %ymm17, %ymm29 {%k1} {z}

// CHECK: vmovdqu32.s %ymm26, %ymm24
// CHECK:  encoding: [0x62,0x01,0x7e,0x28,0x7f,0xd0]
          vmovdqu32.s %ymm26, %ymm24

// CHECK: vmovdqu32.s %ymm26, %ymm24 {%k1}
// CHECK:  encoding: [0x62,0x01,0x7e,0x29,0x7f,0xd0]
          vmovdqu32.s %ymm26, %ymm24 {%k1}

// CHECK: vmovdqu32.s %ymm26, %ymm24 {%k1} {z}
// CHECK:  encoding: [0x62,0x01,0x7e,0xa9,0x7f,0xd0]
          vmovdqu32.s %ymm26, %ymm24 {%k1} {z}

// CHECK: vmovdqu64.s %xmm17, %xmm23
// CHECK:  encoding: [0x62,0xa1,0xfe,0x08,0x7f,0xcf]
          vmovdqu64.s %xmm17, %xmm23

// CHECK: vmovdqu64.s %xmm17, %xmm23 {%k1}
// CHECK:  encoding: [0x62,0xa1,0xfe,0x09,0x7f,0xcf]
          vmovdqu64.s %xmm17, %xmm23 {%k1}

// CHECK: vmovdqu64.s %xmm17, %xmm23 {%k1} {z}
// CHECK:  encoding: [0x62,0xa1,0xfe,0x89,0x7f,0xcf]
          vmovdqu64.s %xmm17, %xmm23 {%k1} {z}

// CHECK: vmovdqu64.s %xmm29, %xmm26
// CHECK:  encoding: [0x62,0x01,0xfe,0x08,0x7f,0xea]
          vmovdqu64.s %xmm29, %xmm26

// CHECK: vmovdqu64.s %xmm29, %xmm26 {%k1}
// CHECK:  encoding: [0x62,0x01,0xfe,0x09,0x7f,0xea]
          vmovdqu64.s %xmm29, %xmm26 {%k1}

// CHECK: vmovdqu64.s %xmm29, %xmm26 {%k1} {z}
// CHECK:  encoding: [0x62,0x01,0xfe,0x89,0x7f,0xea]
          vmovdqu64.s %xmm29, %xmm26 {%k1} {z}

// CHECK: vmovdqu64.s %ymm26, %ymm19
// CHECK:  encoding: [0x62,0x21,0xfe,0x28,0x7f,0xd3]
          vmovdqu64.s %ymm26, %ymm19

// CHECK: vmovdqu64.s %ymm26, %ymm19 {%k3}
// CHECK:  encoding: [0x62,0x21,0xfe,0x2b,0x7f,0xd3]
          vmovdqu64.s %ymm26, %ymm19 {%k3}

// CHECK: vmovdqu64.s %ymm26, %ymm19 {%k3} {z}
// CHECK:  encoding: [0x62,0x21,0xfe,0xab,0x7f,0xd3]
          vmovdqu64.s %ymm26, %ymm19 {%k3} {z}

// CHECK: vmovdqu64.s %ymm17, %ymm24
// CHECK:  encoding: [0x62,0x81,0xfe,0x28,0x7f,0xc8]
          vmovdqu64.s %ymm17, %ymm24

// CHECK: vmovdqu64.s %ymm17, %ymm24 {%k6}
// CHECK:  encoding: [0x62,0x81,0xfe,0x2e,0x7f,0xc8]
          vmovdqu64.s %ymm17, %ymm24 {%k6}

// CHECK: vmovdqu64.s %ymm17, %ymm24 {%k6} {z}
// CHECK:  encoding: [0x62,0x81,0xfe,0xae,0x7f,0xc8]
          vmovdqu64.s %ymm17, %ymm24 {%k6} {z}

// CHECK: vmovdqu64.s %xmm26, %xmm21
// CHECK:  encoding: [0x62,0x21,0xfe,0x08,0x7f,0xd5]
          vmovdqu64.s %xmm26, %xmm21

// CHECK: vmovdqu64.s %xmm26, %xmm21 {%k1}
// CHECK:  encoding: [0x62,0x21,0xfe,0x09,0x7f,0xd5]
          vmovdqu64.s %xmm26, %xmm21 {%k1}

// CHECK: vmovdqu64.s %xmm26, %xmm21 {%k1} {z}
// CHECK:  encoding: [0x62,0x21,0xfe,0x89,0x7f,0xd5]
          vmovdqu64.s %xmm26, %xmm21 {%k1} {z}

// CHECK: vmovdqu64.s %xmm17, %xmm18
// CHECK:  encoding: [0x62,0xa1,0xfe,0x08,0x7f,0xca]
          vmovdqu64.s %xmm17, %xmm18

// CHECK: vmovdqu64.s %xmm17, %xmm18 {%k6}
// CHECK:  encoding: [0x62,0xa1,0xfe,0x0e,0x7f,0xca]
          vmovdqu64.s %xmm17, %xmm18 {%k6}

// CHECK: vmovdqu64.s %xmm17, %xmm18 {%k6} {z}
// CHECK:  encoding: [0x62,0xa1,0xfe,0x8e,0x7f,0xca]
          vmovdqu64.s %xmm17, %xmm18 {%k6} {z}

// CHECK: vmovdqu64.s %ymm24, %ymm27
// CHECK:  encoding: [0x62,0x01,0xfe,0x28,0x7f,0xc3]
          vmovdqu64.s %ymm24, %ymm27

// CHECK: vmovdqu64.s %ymm24, %ymm27 {%k3}
// CHECK:  encoding: [0x62,0x01,0xfe,0x2b,0x7f,0xc3]
          vmovdqu64.s %ymm24, %ymm27 {%k3}

// CHECK: vmovdqu64.s %ymm24, %ymm27 {%k3} {z}
// CHECK:  encoding: [0x62,0x01,0xfe,0xab,0x7f,0xc3]
          vmovdqu64.s %ymm24, %ymm27 {%k3} {z}

// CHECK: vmovdqu64.s %ymm17, %ymm18
// CHECK:  encoding: [0x62,0xa1,0xfe,0x28,0x7f,0xca]
          vmovdqu64.s %ymm17, %ymm18

// CHECK: vmovdqu64.s %ymm17, %ymm18 {%k6}
// CHECK:  encoding: [0x62,0xa1,0xfe,0x2e,0x7f,0xca]
          vmovdqu64.s %ymm17, %ymm18 {%k6}

// CHECK: vmovdqu64.s %ymm17, %ymm18 {%k6} {z}
// CHECK:  encoding: [0x62,0xa1,0xfe,0xae,0x7f,0xca]
          vmovdqu64.s %ymm17, %ymm18 {%k6} {z}

// CHECK: vmovupd.s %xmm27, %xmm17
// CHECK:  encoding: [0x62,0x21,0xfd,0x08,0x11,0xd9]
          vmovupd.s %xmm27, %xmm17

// CHECK: vmovupd.s %xmm27, %xmm17 {%k2}
// CHECK:  encoding: [0x62,0x21,0xfd,0x0a,0x11,0xd9]
          vmovupd.s %xmm27, %xmm17 {%k2}

// CHECK: vmovupd.s %xmm27, %xmm17 {%k2} {z}
// CHECK:  encoding: [0x62,0x21,0xfd,0x8a,0x11,0xd9]
          vmovupd.s %xmm27, %xmm17 {%k2} {z}

// CHECK: vmovupd.s %xmm21, %xmm17
// CHECK:  encoding: [0x62,0xa1,0xfd,0x08,0x11,0xe9]
          vmovupd.s %xmm21, %xmm17

// CHECK: vmovupd.s %xmm21, %xmm17 {%k2}
// CHECK:  encoding: [0x62,0xa1,0xfd,0x0a,0x11,0xe9]
          vmovupd.s %xmm21, %xmm17 {%k2}

// CHECK: vmovupd.s %xmm21, %xmm17 {%k2} {z}
// CHECK:  encoding: [0x62,0xa1,0xfd,0x8a,0x11,0xe9]
          vmovupd.s %xmm21, %xmm17 {%k2} {z}

// CHECK: vmovupd.s %ymm21, %ymm24
// CHECK:  encoding: [0x62,0x81,0xfd,0x28,0x11,0xe8]
          vmovupd.s %ymm21, %ymm24

// CHECK: vmovupd.s %ymm21, %ymm24 {%k7}
// CHECK:  encoding: [0x62,0x81,0xfd,0x2f,0x11,0xe8]
          vmovupd.s %ymm21, %ymm24 {%k7}

// CHECK: vmovupd.s %ymm21, %ymm24 {%k7} {z}
// CHECK:  encoding: [0x62,0x81,0xfd,0xaf,0x11,0xe8]
          vmovupd.s %ymm21, %ymm24 {%k7} {z}

// CHECK: vmovupd.s %ymm27, %ymm21
// CHECK:  encoding: [0x62,0x21,0xfd,0x28,0x11,0xdd]
          vmovupd.s %ymm27, %ymm21

// CHECK: vmovupd.s %ymm27, %ymm21 {%k6}
// CHECK:  encoding: [0x62,0x21,0xfd,0x2e,0x11,0xdd]
          vmovupd.s %ymm27, %ymm21 {%k6}

// CHECK: vmovupd.s %ymm27, %ymm21 {%k6} {z}
// CHECK:  encoding: [0x62,0x21,0xfd,0xae,0x11,0xdd]
          vmovupd.s %ymm27, %ymm21 {%k6} {z}

// CHECK: vmovupd.s %xmm23, %xmm27
// CHECK:  encoding: [0x62,0x81,0xfd,0x08,0x11,0xfb]
          vmovupd.s %xmm23, %xmm27

// CHECK: vmovupd.s %xmm23, %xmm27 {%k7}
// CHECK:  encoding: [0x62,0x81,0xfd,0x0f,0x11,0xfb]
          vmovupd.s %xmm23, %xmm27 {%k7}

// CHECK: vmovupd.s %xmm23, %xmm27 {%k7} {z}
// CHECK:  encoding: [0x62,0x81,0xfd,0x8f,0x11,0xfb]
          vmovupd.s %xmm23, %xmm27 {%k7} {z}

// CHECK: vmovupd.s %xmm17, %xmm30
// CHECK:  encoding: [0x62,0x81,0xfd,0x08,0x11,0xce]
          vmovupd.s %xmm17, %xmm30

// CHECK: vmovupd.s %xmm17, %xmm30 {%k7}
// CHECK:  encoding: [0x62,0x81,0xfd,0x0f,0x11,0xce]
          vmovupd.s %xmm17, %xmm30 {%k7}

// CHECK: vmovupd.s %xmm17, %xmm30 {%k7} {z}
// CHECK:  encoding: [0x62,0x81,0xfd,0x8f,0x11,0xce]
          vmovupd.s %xmm17, %xmm30 {%k7} {z}

// CHECK: vmovupd.s %ymm28, %ymm24
// CHECK:  encoding: [0x62,0x01,0xfd,0x28,0x11,0xe0]
          vmovupd.s %ymm28, %ymm24

// CHECK: vmovupd.s %ymm28, %ymm24 {%k6}
// CHECK:  encoding: [0x62,0x01,0xfd,0x2e,0x11,0xe0]
          vmovupd.s %ymm28, %ymm24 {%k6}

// CHECK: vmovupd.s %ymm28, %ymm24 {%k6} {z}
// CHECK:  encoding: [0x62,0x01,0xfd,0xae,0x11,0xe0]
          vmovupd.s %ymm28, %ymm24 {%k6} {z}

// CHECK: vmovupd.s %ymm22, %ymm20
// CHECK:  encoding: [0x62,0xa1,0xfd,0x28,0x11,0xf4]
          vmovupd.s %ymm22, %ymm20

// CHECK: vmovupd.s %ymm22, %ymm20 {%k1}
// CHECK:  encoding: [0x62,0xa1,0xfd,0x29,0x11,0xf4]
          vmovupd.s %ymm22, %ymm20 {%k1}

// CHECK: vmovupd.s %ymm22, %ymm20 {%k1} {z}
// CHECK:  encoding: [0x62,0xa1,0xfd,0xa9,0x11,0xf4]
          vmovupd.s %ymm22, %ymm20 {%k1} {z}

// CHECK: vmovups.s %xmm20, %xmm21
// CHECK:  encoding: [0x62,0xa1,0x7c,0x08,0x11,0xe5]
          vmovups.s %xmm20, %xmm21

// CHECK: vmovups.s %xmm20, %xmm21 {%k5}
// CHECK:  encoding: [0x62,0xa1,0x7c,0x0d,0x11,0xe5]
          vmovups.s %xmm20, %xmm21 {%k5}

// CHECK: vmovups.s %xmm20, %xmm21 {%k5} {z}
// CHECK:  encoding: [0x62,0xa1,0x7c,0x8d,0x11,0xe5]
          vmovups.s %xmm20, %xmm21 {%k5} {z}

// CHECK: vmovups.s %xmm19, %xmm28
// CHECK:  encoding: [0x62,0x81,0x7c,0x08,0x11,0xdc]
          vmovups.s %xmm19, %xmm28

// CHECK: vmovups.s %xmm19, %xmm28 {%k5}
// CHECK:  encoding: [0x62,0x81,0x7c,0x0d,0x11,0xdc]
          vmovups.s %xmm19, %xmm28 {%k5}

// CHECK: vmovups.s %xmm19, %xmm28 {%k5} {z}
// CHECK:  encoding: [0x62,0x81,0x7c,0x8d,0x11,0xdc]
          vmovups.s %xmm19, %xmm28 {%k5} {z}

// CHECK: vmovups.s %ymm19, %ymm19
// CHECK:  encoding: [0x62,0xa1,0x7c,0x28,0x11,0xdb]
          vmovups.s %ymm19, %ymm19

// CHECK: vmovups.s %ymm19, %ymm19 {%k5}
// CHECK:  encoding: [0x62,0xa1,0x7c,0x2d,0x11,0xdb]
          vmovups.s %ymm19, %ymm19 {%k5}

// CHECK: vmovups.s %ymm19, %ymm19 {%k5} {z}
// CHECK:  encoding: [0x62,0xa1,0x7c,0xad,0x11,0xdb]
          vmovups.s %ymm19, %ymm19 {%k5} {z}

// CHECK: vmovups.s %ymm29, %ymm30
// CHECK:  encoding: [0x62,0x01,0x7c,0x28,0x11,0xee]
          vmovups.s %ymm29, %ymm30

// CHECK: vmovups.s %ymm29, %ymm30 {%k6}
// CHECK:  encoding: [0x62,0x01,0x7c,0x2e,0x11,0xee]
          vmovups.s %ymm29, %ymm30 {%k6}

// CHECK: vmovups.s %ymm29, %ymm30 {%k6} {z}
// CHECK:  encoding: [0x62,0x01,0x7c,0xae,0x11,0xee]
          vmovups.s %ymm29, %ymm30 {%k6} {z}

// CHECK: vmovups.s %xmm25, %xmm23
// CHECK:  encoding: [0x62,0x21,0x7c,0x08,0x11,0xcf]
          vmovups.s %xmm25, %xmm23

// CHECK: vmovups.s %xmm25, %xmm23 {%k4}
// CHECK:  encoding: [0x62,0x21,0x7c,0x0c,0x11,0xcf]
          vmovups.s %xmm25, %xmm23 {%k4}

// CHECK: vmovups.s %xmm25, %xmm23 {%k4} {z}
// CHECK:  encoding: [0x62,0x21,0x7c,0x8c,0x11,0xcf]
          vmovups.s %xmm25, %xmm23 {%k4} {z}

// CHECK: vmovups.s %xmm21, %xmm29
// CHECK:  encoding: [0x62,0x81,0x7c,0x08,0x11,0xed]
          vmovups.s %xmm21, %xmm29

// CHECK: vmovups.s %xmm21, %xmm29 {%k3}
// CHECK:  encoding: [0x62,0x81,0x7c,0x0b,0x11,0xed]
          vmovups.s %xmm21, %xmm29 {%k3}

// CHECK: vmovups.s %xmm21, %xmm29 {%k3} {z}
// CHECK:  encoding: [0x62,0x81,0x7c,0x8b,0x11,0xed]
          vmovups.s %xmm21, %xmm29 {%k3} {z}

// CHECK: vmovups.s %ymm28, %ymm30
// CHECK:  encoding: [0x62,0x01,0x7c,0x28,0x11,0xe6]
          vmovups.s %ymm28, %ymm30

// CHECK: vmovups.s %ymm28, %ymm30 {%k1}
// CHECK:  encoding: [0x62,0x01,0x7c,0x29,0x11,0xe6]
          vmovups.s %ymm28, %ymm30 {%k1}

// CHECK: vmovups.s %ymm28, %ymm30 {%k1} {z}
// CHECK:  encoding: [0x62,0x01,0x7c,0xa9,0x11,0xe6]
          vmovups.s %ymm28, %ymm30 {%k1} {z}

// CHECK: vmovups.s %ymm19, %ymm22
// CHECK:  encoding: [0x62,0xa1,0x7c,0x28,0x11,0xde]
          vmovups.s %ymm19, %ymm22

// CHECK: vmovups.s %ymm19, %ymm22 {%k1}
// CHECK:  encoding: [0x62,0xa1,0x7c,0x29,0x11,0xde]
          vmovups.s %ymm19, %ymm22 {%k1}

// CHECK: vmovups.s %ymm19, %ymm22 {%k1} {z}
// CHECK:  encoding: [0x62,0xa1,0x7c,0xa9,0x11,0xde]
          vmovups.s %ymm19, %ymm22 {%k1} {z}

