// RUN: llvm-mc -triple x86_64-unknown-unknown -mcpu=knl -mattr=+avx512cd -mattr=+avx512vl  --show-encoding %s | FileCheck %s

// CHECK: vplzcntq %xmm20, %xmm18
// CHECK:  encoding: [0x62,0xa2,0xfd,0x08,0x44,0xd4]
          vplzcntq %xmm20, %xmm18

// CHECK: vplzcntq %xmm20, %xmm18 {%k1}
// CHECK:  encoding: [0x62,0xa2,0xfd,0x09,0x44,0xd4]
          vplzcntq %xmm20, %xmm18 {%k1}

// CHECK: vplzcntq %xmm20, %xmm18 {%k1} {z}
// CHECK:  encoding: [0x62,0xa2,0xfd,0x89,0x44,0xd4]
          vplzcntq %xmm20, %xmm18 {%k1} {z}

// CHECK: vplzcntq (%rcx), %xmm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x08,0x44,0x11]
          vplzcntq (%rcx), %xmm18

// CHECK: vplzcntq 291(%rax,%r14,8), %xmm18
// CHECK:  encoding: [0x62,0xa2,0xfd,0x08,0x44,0x94,0xf0,0x23,0x01,0x00,0x00]
          vplzcntq 291(%rax,%r14,8), %xmm18

// CHECK: vplzcntq (%rcx){1to2}, %xmm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x18,0x44,0x11]
          vplzcntq (%rcx){1to2}, %xmm18

// CHECK: vplzcntq 2032(%rdx), %xmm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x08,0x44,0x52,0x7f]
          vplzcntq 2032(%rdx), %xmm18

// CHECK: vplzcntq 2048(%rdx), %xmm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x08,0x44,0x92,0x00,0x08,0x00,0x00]
          vplzcntq 2048(%rdx), %xmm18

// CHECK: vplzcntq -2048(%rdx), %xmm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x08,0x44,0x52,0x80]
          vplzcntq -2048(%rdx), %xmm18

// CHECK: vplzcntq -2064(%rdx), %xmm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x08,0x44,0x92,0xf0,0xf7,0xff,0xff]
          vplzcntq -2064(%rdx), %xmm18

// CHECK: vplzcntq 1016(%rdx){1to2}, %xmm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x18,0x44,0x52,0x7f]
          vplzcntq 1016(%rdx){1to2}, %xmm18

// CHECK: vplzcntq 1024(%rdx){1to2}, %xmm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x18,0x44,0x92,0x00,0x04,0x00,0x00]
          vplzcntq 1024(%rdx){1to2}, %xmm18

// CHECK: vplzcntq -1024(%rdx){1to2}, %xmm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x18,0x44,0x52,0x80]
          vplzcntq -1024(%rdx){1to2}, %xmm18

// CHECK: vplzcntq -1032(%rdx){1to2}, %xmm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x18,0x44,0x92,0xf8,0xfb,0xff,0xff]
          vplzcntq -1032(%rdx){1to2}, %xmm18

// CHECK: vplzcntq %ymm22, %ymm21
// CHECK:  encoding: [0x62,0xa2,0xfd,0x28,0x44,0xee]
          vplzcntq %ymm22, %ymm21

// CHECK: vplzcntq %ymm22, %ymm21 {%k7}
// CHECK:  encoding: [0x62,0xa2,0xfd,0x2f,0x44,0xee]
          vplzcntq %ymm22, %ymm21 {%k7}

// CHECK: vplzcntq %ymm22, %ymm21 {%k7} {z}
// CHECK:  encoding: [0x62,0xa2,0xfd,0xaf,0x44,0xee]
          vplzcntq %ymm22, %ymm21 {%k7} {z}

// CHECK: vplzcntq (%rcx), %ymm21
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0x44,0x29]
          vplzcntq (%rcx), %ymm21

// CHECK: vplzcntq 291(%rax,%r14,8), %ymm21
// CHECK:  encoding: [0x62,0xa2,0xfd,0x28,0x44,0xac,0xf0,0x23,0x01,0x00,0x00]
          vplzcntq 291(%rax,%r14,8), %ymm21

// CHECK: vplzcntq (%rcx){1to4}, %ymm21
// CHECK:  encoding: [0x62,0xe2,0xfd,0x38,0x44,0x29]
          vplzcntq (%rcx){1to4}, %ymm21

// CHECK: vplzcntq 4064(%rdx), %ymm21
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0x44,0x6a,0x7f]
          vplzcntq 4064(%rdx), %ymm21

// CHECK: vplzcntq 4096(%rdx), %ymm21
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0x44,0xaa,0x00,0x10,0x00,0x00]
          vplzcntq 4096(%rdx), %ymm21

// CHECK: vplzcntq -4096(%rdx), %ymm21
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0x44,0x6a,0x80]
          vplzcntq -4096(%rdx), %ymm21

// CHECK: vplzcntq -4128(%rdx), %ymm21
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0x44,0xaa,0xe0,0xef,0xff,0xff]
          vplzcntq -4128(%rdx), %ymm21

// CHECK: vplzcntq 1016(%rdx){1to4}, %ymm21
// CHECK:  encoding: [0x62,0xe2,0xfd,0x38,0x44,0x6a,0x7f]
          vplzcntq 1016(%rdx){1to4}, %ymm21

// CHECK: vplzcntq 1024(%rdx){1to4}, %ymm21
// CHECK:  encoding: [0x62,0xe2,0xfd,0x38,0x44,0xaa,0x00,0x04,0x00,0x00]
          vplzcntq 1024(%rdx){1to4}, %ymm21

// CHECK: vplzcntq -1024(%rdx){1to4}, %ymm21
// CHECK:  encoding: [0x62,0xe2,0xfd,0x38,0x44,0x6a,0x80]
          vplzcntq -1024(%rdx){1to4}, %ymm21

// CHECK: vplzcntq -1032(%rdx){1to4}, %ymm21
// CHECK:  encoding: [0x62,0xe2,0xfd,0x38,0x44,0xaa,0xf8,0xfb,0xff,0xff]
          vplzcntq -1032(%rdx){1to4}, %ymm21

// CHECK: vplzcntq %xmm20, %xmm24
// CHECK:  encoding: [0x62,0x22,0xfd,0x08,0x44,0xc4]
          vplzcntq %xmm20, %xmm24

// CHECK: vplzcntq %xmm20, %xmm24 {%k3}
// CHECK:  encoding: [0x62,0x22,0xfd,0x0b,0x44,0xc4]
          vplzcntq %xmm20, %xmm24 {%k3}

// CHECK: vplzcntq %xmm20, %xmm24 {%k3} {z}
// CHECK:  encoding: [0x62,0x22,0xfd,0x8b,0x44,0xc4]
          vplzcntq %xmm20, %xmm24 {%k3} {z}

// CHECK: vplzcntq (%rcx), %xmm24
// CHECK:  encoding: [0x62,0x62,0xfd,0x08,0x44,0x01]
          vplzcntq (%rcx), %xmm24

// CHECK: vplzcntq 4660(%rax,%r14,8), %xmm24
// CHECK:  encoding: [0x62,0x22,0xfd,0x08,0x44,0x84,0xf0,0x34,0x12,0x00,0x00]
          vplzcntq 4660(%rax,%r14,8), %xmm24

// CHECK: vplzcntq (%rcx){1to2}, %xmm24
// CHECK:  encoding: [0x62,0x62,0xfd,0x18,0x44,0x01]
          vplzcntq (%rcx){1to2}, %xmm24

// CHECK: vplzcntq 2032(%rdx), %xmm24
// CHECK:  encoding: [0x62,0x62,0xfd,0x08,0x44,0x42,0x7f]
          vplzcntq 2032(%rdx), %xmm24

// CHECK: vplzcntq 2048(%rdx), %xmm24
// CHECK:  encoding: [0x62,0x62,0xfd,0x08,0x44,0x82,0x00,0x08,0x00,0x00]
          vplzcntq 2048(%rdx), %xmm24

// CHECK: vplzcntq -2048(%rdx), %xmm24
// CHECK:  encoding: [0x62,0x62,0xfd,0x08,0x44,0x42,0x80]
          vplzcntq -2048(%rdx), %xmm24

// CHECK: vplzcntq -2064(%rdx), %xmm24
// CHECK:  encoding: [0x62,0x62,0xfd,0x08,0x44,0x82,0xf0,0xf7,0xff,0xff]
          vplzcntq -2064(%rdx), %xmm24

// CHECK: vplzcntq 1016(%rdx){1to2}, %xmm24
// CHECK:  encoding: [0x62,0x62,0xfd,0x18,0x44,0x42,0x7f]
          vplzcntq 1016(%rdx){1to2}, %xmm24

// CHECK: vplzcntq 1024(%rdx){1to2}, %xmm24
// CHECK:  encoding: [0x62,0x62,0xfd,0x18,0x44,0x82,0x00,0x04,0x00,0x00]
          vplzcntq 1024(%rdx){1to2}, %xmm24

// CHECK: vplzcntq -1024(%rdx){1to2}, %xmm24
// CHECK:  encoding: [0x62,0x62,0xfd,0x18,0x44,0x42,0x80]
          vplzcntq -1024(%rdx){1to2}, %xmm24

// CHECK: vplzcntq -1032(%rdx){1to2}, %xmm24
// CHECK:  encoding: [0x62,0x62,0xfd,0x18,0x44,0x82,0xf8,0xfb,0xff,0xff]
          vplzcntq -1032(%rdx){1to2}, %xmm24

// CHECK: vplzcntq %ymm27, %ymm23
// CHECK:  encoding: [0x62,0x82,0xfd,0x28,0x44,0xfb]
          vplzcntq %ymm27, %ymm23

// CHECK: vplzcntq %ymm27, %ymm23 {%k5}
// CHECK:  encoding: [0x62,0x82,0xfd,0x2d,0x44,0xfb]
          vplzcntq %ymm27, %ymm23 {%k5}

// CHECK: vplzcntq %ymm27, %ymm23 {%k5} {z}
// CHECK:  encoding: [0x62,0x82,0xfd,0xad,0x44,0xfb]
          vplzcntq %ymm27, %ymm23 {%k5} {z}

// CHECK: vplzcntq (%rcx), %ymm23
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0x44,0x39]
          vplzcntq (%rcx), %ymm23

// CHECK: vplzcntq 4660(%rax,%r14,8), %ymm23
// CHECK:  encoding: [0x62,0xa2,0xfd,0x28,0x44,0xbc,0xf0,0x34,0x12,0x00,0x00]
          vplzcntq 4660(%rax,%r14,8), %ymm23

// CHECK: vplzcntq (%rcx){1to4}, %ymm23
// CHECK:  encoding: [0x62,0xe2,0xfd,0x38,0x44,0x39]
          vplzcntq (%rcx){1to4}, %ymm23

// CHECK: vplzcntq 4064(%rdx), %ymm23
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0x44,0x7a,0x7f]
          vplzcntq 4064(%rdx), %ymm23

// CHECK: vplzcntq 4096(%rdx), %ymm23
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0x44,0xba,0x00,0x10,0x00,0x00]
          vplzcntq 4096(%rdx), %ymm23

// CHECK: vplzcntq -4096(%rdx), %ymm23
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0x44,0x7a,0x80]
          vplzcntq -4096(%rdx), %ymm23

// CHECK: vplzcntq -4128(%rdx), %ymm23
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0x44,0xba,0xe0,0xef,0xff,0xff]
          vplzcntq -4128(%rdx), %ymm23

// CHECK: vplzcntq 1016(%rdx){1to4}, %ymm23
// CHECK:  encoding: [0x62,0xe2,0xfd,0x38,0x44,0x7a,0x7f]
          vplzcntq 1016(%rdx){1to4}, %ymm23

// CHECK: vplzcntq 1024(%rdx){1to4}, %ymm23
// CHECK:  encoding: [0x62,0xe2,0xfd,0x38,0x44,0xba,0x00,0x04,0x00,0x00]
          vplzcntq 1024(%rdx){1to4}, %ymm23

// CHECK: vplzcntq -1024(%rdx){1to4}, %ymm23
// CHECK:  encoding: [0x62,0xe2,0xfd,0x38,0x44,0x7a,0x80]
          vplzcntq -1024(%rdx){1to4}, %ymm23

// CHECK: vplzcntq -1032(%rdx){1to4}, %ymm23
// CHECK:  encoding: [0x62,0xe2,0xfd,0x38,0x44,0xba,0xf8,0xfb,0xff,0xff]
          vplzcntq -1032(%rdx){1to4}, %ymm23

// CHECK: vplzcntd %xmm26, %xmm26
// CHECK:  encoding: [0x62,0x02,0x7d,0x08,0x44,0xd2]
          vplzcntd %xmm26, %xmm26

// CHECK: vplzcntd %xmm26, %xmm26 {%k4}
// CHECK:  encoding: [0x62,0x02,0x7d,0x0c,0x44,0xd2]
          vplzcntd %xmm26, %xmm26 {%k4}

// CHECK: vplzcntd %xmm26, %xmm26 {%k4} {z}
// CHECK:  encoding: [0x62,0x02,0x7d,0x8c,0x44,0xd2]
          vplzcntd %xmm26, %xmm26 {%k4} {z}

// CHECK: vplzcntd (%rcx), %xmm26
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x44,0x11]
          vplzcntd (%rcx), %xmm26

// CHECK: vplzcntd 291(%rax,%r14,8), %xmm26
// CHECK:  encoding: [0x62,0x22,0x7d,0x08,0x44,0x94,0xf0,0x23,0x01,0x00,0x00]
          vplzcntd 291(%rax,%r14,8), %xmm26

// CHECK: vplzcntd (%rcx){1to4}, %xmm26
// CHECK:  encoding: [0x62,0x62,0x7d,0x18,0x44,0x11]
          vplzcntd (%rcx){1to4}, %xmm26

// CHECK: vplzcntd 2032(%rdx), %xmm26
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x44,0x52,0x7f]
          vplzcntd 2032(%rdx), %xmm26

// CHECK: vplzcntd 2048(%rdx), %xmm26
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x44,0x92,0x00,0x08,0x00,0x00]
          vplzcntd 2048(%rdx), %xmm26

// CHECK: vplzcntd -2048(%rdx), %xmm26
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x44,0x52,0x80]
          vplzcntd -2048(%rdx), %xmm26

// CHECK: vplzcntd -2064(%rdx), %xmm26
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x44,0x92,0xf0,0xf7,0xff,0xff]
          vplzcntd -2064(%rdx), %xmm26

// CHECK: vplzcntd 508(%rdx){1to4}, %xmm26
// CHECK:  encoding: [0x62,0x62,0x7d,0x18,0x44,0x52,0x7f]
          vplzcntd 508(%rdx){1to4}, %xmm26

// CHECK: vplzcntd 512(%rdx){1to4}, %xmm26
// CHECK:  encoding: [0x62,0x62,0x7d,0x18,0x44,0x92,0x00,0x02,0x00,0x00]
          vplzcntd 512(%rdx){1to4}, %xmm26

// CHECK: vplzcntd -512(%rdx){1to4}, %xmm26
// CHECK:  encoding: [0x62,0x62,0x7d,0x18,0x44,0x52,0x80]
          vplzcntd -512(%rdx){1to4}, %xmm26

// CHECK: vplzcntd -516(%rdx){1to4}, %xmm26
// CHECK:  encoding: [0x62,0x62,0x7d,0x18,0x44,0x92,0xfc,0xfd,0xff,0xff]
          vplzcntd -516(%rdx){1to4}, %xmm26

// CHECK: vplzcntd %ymm22, %ymm25
// CHECK:  encoding: [0x62,0x22,0x7d,0x28,0x44,0xce]
          vplzcntd %ymm22, %ymm25

// CHECK: vplzcntd %ymm22, %ymm25 {%k2}
// CHECK:  encoding: [0x62,0x22,0x7d,0x2a,0x44,0xce]
          vplzcntd %ymm22, %ymm25 {%k2}

// CHECK: vplzcntd %ymm22, %ymm25 {%k2} {z}
// CHECK:  encoding: [0x62,0x22,0x7d,0xaa,0x44,0xce]
          vplzcntd %ymm22, %ymm25 {%k2} {z}

// CHECK: vplzcntd (%rcx), %ymm25
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x44,0x09]
          vplzcntd (%rcx), %ymm25

// CHECK: vplzcntd 291(%rax,%r14,8), %ymm25
// CHECK:  encoding: [0x62,0x22,0x7d,0x28,0x44,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vplzcntd 291(%rax,%r14,8), %ymm25

// CHECK: vplzcntd (%rcx){1to8}, %ymm25
// CHECK:  encoding: [0x62,0x62,0x7d,0x38,0x44,0x09]
          vplzcntd (%rcx){1to8}, %ymm25

// CHECK: vplzcntd 4064(%rdx), %ymm25
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x44,0x4a,0x7f]
          vplzcntd 4064(%rdx), %ymm25

// CHECK: vplzcntd 4096(%rdx), %ymm25
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x44,0x8a,0x00,0x10,0x00,0x00]
          vplzcntd 4096(%rdx), %ymm25

// CHECK: vplzcntd -4096(%rdx), %ymm25
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x44,0x4a,0x80]
          vplzcntd -4096(%rdx), %ymm25

// CHECK: vplzcntd -4128(%rdx), %ymm25
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x44,0x8a,0xe0,0xef,0xff,0xff]
          vplzcntd -4128(%rdx), %ymm25

// CHECK: vplzcntd 508(%rdx){1to8}, %ymm25
// CHECK:  encoding: [0x62,0x62,0x7d,0x38,0x44,0x4a,0x7f]
          vplzcntd 508(%rdx){1to8}, %ymm25

// CHECK: vplzcntd 512(%rdx){1to8}, %ymm25
// CHECK:  encoding: [0x62,0x62,0x7d,0x38,0x44,0x8a,0x00,0x02,0x00,0x00]
          vplzcntd 512(%rdx){1to8}, %ymm25

// CHECK: vplzcntd -512(%rdx){1to8}, %ymm25
// CHECK:  encoding: [0x62,0x62,0x7d,0x38,0x44,0x4a,0x80]
          vplzcntd -512(%rdx){1to8}, %ymm25

// CHECK: vplzcntd -516(%rdx){1to8}, %ymm25
// CHECK:  encoding: [0x62,0x62,0x7d,0x38,0x44,0x8a,0xfc,0xfd,0xff,0xff]
          vplzcntd -516(%rdx){1to8}, %ymm25

// CHECK: vplzcntd %xmm22, %xmm30
// CHECK:  encoding: [0x62,0x22,0x7d,0x08,0x44,0xf6]
          vplzcntd %xmm22, %xmm30

// CHECK: vplzcntd %xmm22, %xmm30 {%k7}
// CHECK:  encoding: [0x62,0x22,0x7d,0x0f,0x44,0xf6]
          vplzcntd %xmm22, %xmm30 {%k7}

// CHECK: vplzcntd %xmm22, %xmm30 {%k7} {z}
// CHECK:  encoding: [0x62,0x22,0x7d,0x8f,0x44,0xf6]
          vplzcntd %xmm22, %xmm30 {%k7} {z}

// CHECK: vplzcntd (%rcx), %xmm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x44,0x31]
          vplzcntd (%rcx), %xmm30

// CHECK: vplzcntd 4660(%rax,%r14,8), %xmm30
// CHECK:  encoding: [0x62,0x22,0x7d,0x08,0x44,0xb4,0xf0,0x34,0x12,0x00,0x00]
          vplzcntd 4660(%rax,%r14,8), %xmm30

// CHECK: vplzcntd (%rcx){1to4}, %xmm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x18,0x44,0x31]
          vplzcntd (%rcx){1to4}, %xmm30

// CHECK: vplzcntd 2032(%rdx), %xmm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x44,0x72,0x7f]
          vplzcntd 2032(%rdx), %xmm30

// CHECK: vplzcntd 2048(%rdx), %xmm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x44,0xb2,0x00,0x08,0x00,0x00]
          vplzcntd 2048(%rdx), %xmm30

// CHECK: vplzcntd -2048(%rdx), %xmm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x44,0x72,0x80]
          vplzcntd -2048(%rdx), %xmm30

// CHECK: vplzcntd -2064(%rdx), %xmm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x44,0xb2,0xf0,0xf7,0xff,0xff]
          vplzcntd -2064(%rdx), %xmm30

// CHECK: vplzcntd 508(%rdx){1to4}, %xmm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x18,0x44,0x72,0x7f]
          vplzcntd 508(%rdx){1to4}, %xmm30

// CHECK: vplzcntd 512(%rdx){1to4}, %xmm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x18,0x44,0xb2,0x00,0x02,0x00,0x00]
          vplzcntd 512(%rdx){1to4}, %xmm30

// CHECK: vplzcntd -512(%rdx){1to4}, %xmm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x18,0x44,0x72,0x80]
          vplzcntd -512(%rdx){1to4}, %xmm30

// CHECK: vplzcntd -516(%rdx){1to4}, %xmm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x18,0x44,0xb2,0xfc,0xfd,0xff,0xff]
          vplzcntd -516(%rdx){1to4}, %xmm30

// CHECK: vplzcntd %ymm22, %ymm21
// CHECK:  encoding: [0x62,0xa2,0x7d,0x28,0x44,0xee]
          vplzcntd %ymm22, %ymm21

// CHECK: vplzcntd %ymm22, %ymm21 {%k3}
// CHECK:  encoding: [0x62,0xa2,0x7d,0x2b,0x44,0xee]
          vplzcntd %ymm22, %ymm21 {%k3}

// CHECK: vplzcntd %ymm22, %ymm21 {%k3} {z}
// CHECK:  encoding: [0x62,0xa2,0x7d,0xab,0x44,0xee]
          vplzcntd %ymm22, %ymm21 {%k3} {z}

// CHECK: vplzcntd (%rcx), %ymm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x44,0x29]
          vplzcntd (%rcx), %ymm21

// CHECK: vplzcntd 4660(%rax,%r14,8), %ymm21
// CHECK:  encoding: [0x62,0xa2,0x7d,0x28,0x44,0xac,0xf0,0x34,0x12,0x00,0x00]
          vplzcntd 4660(%rax,%r14,8), %ymm21

// CHECK: vplzcntd (%rcx){1to8}, %ymm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x38,0x44,0x29]
          vplzcntd (%rcx){1to8}, %ymm21

// CHECK: vplzcntd 4064(%rdx), %ymm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x44,0x6a,0x7f]
          vplzcntd 4064(%rdx), %ymm21

// CHECK: vplzcntd 4096(%rdx), %ymm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x44,0xaa,0x00,0x10,0x00,0x00]
          vplzcntd 4096(%rdx), %ymm21

// CHECK: vplzcntd -4096(%rdx), %ymm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x44,0x6a,0x80]
          vplzcntd -4096(%rdx), %ymm21

// CHECK: vplzcntd -4128(%rdx), %ymm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x44,0xaa,0xe0,0xef,0xff,0xff]
          vplzcntd -4128(%rdx), %ymm21

// CHECK: vplzcntd 508(%rdx){1to8}, %ymm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x38,0x44,0x6a,0x7f]
          vplzcntd 508(%rdx){1to8}, %ymm21

// CHECK: vplzcntd 512(%rdx){1to8}, %ymm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x38,0x44,0xaa,0x00,0x02,0x00,0x00]
          vplzcntd 512(%rdx){1to8}, %ymm21

// CHECK: vplzcntd -512(%rdx){1to8}, %ymm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x38,0x44,0x6a,0x80]
          vplzcntd -512(%rdx){1to8}, %ymm21

// CHECK: vplzcntd -516(%rdx){1to8}, %ymm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x38,0x44,0xaa,0xfc,0xfd,0xff,0xff]
          vplzcntd -516(%rdx){1to8}, %ymm21

// CHECK: vpconflictq %xmm24, %xmm19
// CHECK:  encoding: [0x62,0x82,0xfd,0x08,0xc4,0xd8]
          vpconflictq %xmm24, %xmm19

// CHECK: vpconflictq %xmm24, %xmm19 {%k7}
// CHECK:  encoding: [0x62,0x82,0xfd,0x0f,0xc4,0xd8]
          vpconflictq %xmm24, %xmm19 {%k7}

// CHECK: vpconflictq %xmm24, %xmm19 {%k7} {z}
// CHECK:  encoding: [0x62,0x82,0xfd,0x8f,0xc4,0xd8]
          vpconflictq %xmm24, %xmm19 {%k7} {z}

// CHECK: vpconflictq (%rcx), %xmm19
// CHECK:  encoding: [0x62,0xe2,0xfd,0x08,0xc4,0x19]
          vpconflictq (%rcx), %xmm19

// CHECK: vpconflictq 291(%rax,%r14,8), %xmm19
// CHECK:  encoding: [0x62,0xa2,0xfd,0x08,0xc4,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpconflictq 291(%rax,%r14,8), %xmm19

// CHECK: vpconflictq (%rcx){1to2}, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xfd,0x18,0xc4,0x19]
          vpconflictq (%rcx){1to2}, %xmm19

// CHECK: vpconflictq 2032(%rdx), %xmm19
// CHECK:  encoding: [0x62,0xe2,0xfd,0x08,0xc4,0x5a,0x7f]
          vpconflictq 2032(%rdx), %xmm19

// CHECK: vpconflictq 2048(%rdx), %xmm19
// CHECK:  encoding: [0x62,0xe2,0xfd,0x08,0xc4,0x9a,0x00,0x08,0x00,0x00]
          vpconflictq 2048(%rdx), %xmm19

// CHECK: vpconflictq -2048(%rdx), %xmm19
// CHECK:  encoding: [0x62,0xe2,0xfd,0x08,0xc4,0x5a,0x80]
          vpconflictq -2048(%rdx), %xmm19

// CHECK: vpconflictq -2064(%rdx), %xmm19
// CHECK:  encoding: [0x62,0xe2,0xfd,0x08,0xc4,0x9a,0xf0,0xf7,0xff,0xff]
          vpconflictq -2064(%rdx), %xmm19

// CHECK: vpconflictq 1016(%rdx){1to2}, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xfd,0x18,0xc4,0x5a,0x7f]
          vpconflictq 1016(%rdx){1to2}, %xmm19

// CHECK: vpconflictq 1024(%rdx){1to2}, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xfd,0x18,0xc4,0x9a,0x00,0x04,0x00,0x00]
          vpconflictq 1024(%rdx){1to2}, %xmm19

// CHECK: vpconflictq -1024(%rdx){1to2}, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xfd,0x18,0xc4,0x5a,0x80]
          vpconflictq -1024(%rdx){1to2}, %xmm19

// CHECK: vpconflictq -1032(%rdx){1to2}, %xmm19
// CHECK:  encoding: [0x62,0xe2,0xfd,0x18,0xc4,0x9a,0xf8,0xfb,0xff,0xff]
          vpconflictq -1032(%rdx){1to2}, %xmm19

// CHECK: vpconflictq %ymm25, %ymm20
// CHECK:  encoding: [0x62,0x82,0xfd,0x28,0xc4,0xe1]
          vpconflictq %ymm25, %ymm20

// CHECK: vpconflictq %ymm25, %ymm20 {%k6}
// CHECK:  encoding: [0x62,0x82,0xfd,0x2e,0xc4,0xe1]
          vpconflictq %ymm25, %ymm20 {%k6}

// CHECK: vpconflictq %ymm25, %ymm20 {%k6} {z}
// CHECK:  encoding: [0x62,0x82,0xfd,0xae,0xc4,0xe1]
          vpconflictq %ymm25, %ymm20 {%k6} {z}

// CHECK: vpconflictq (%rcx), %ymm20
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0xc4,0x21]
          vpconflictq (%rcx), %ymm20

// CHECK: vpconflictq 291(%rax,%r14,8), %ymm20
// CHECK:  encoding: [0x62,0xa2,0xfd,0x28,0xc4,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpconflictq 291(%rax,%r14,8), %ymm20

// CHECK: vpconflictq (%rcx){1to4}, %ymm20
// CHECK:  encoding: [0x62,0xe2,0xfd,0x38,0xc4,0x21]
          vpconflictq (%rcx){1to4}, %ymm20

// CHECK: vpconflictq 4064(%rdx), %ymm20
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0xc4,0x62,0x7f]
          vpconflictq 4064(%rdx), %ymm20

// CHECK: vpconflictq 4096(%rdx), %ymm20
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0xc4,0xa2,0x00,0x10,0x00,0x00]
          vpconflictq 4096(%rdx), %ymm20

// CHECK: vpconflictq -4096(%rdx), %ymm20
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0xc4,0x62,0x80]
          vpconflictq -4096(%rdx), %ymm20

// CHECK: vpconflictq -4128(%rdx), %ymm20
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0xc4,0xa2,0xe0,0xef,0xff,0xff]
          vpconflictq -4128(%rdx), %ymm20

// CHECK: vpconflictq 1016(%rdx){1to4}, %ymm20
// CHECK:  encoding: [0x62,0xe2,0xfd,0x38,0xc4,0x62,0x7f]
          vpconflictq 1016(%rdx){1to4}, %ymm20

// CHECK: vpconflictq 1024(%rdx){1to4}, %ymm20
// CHECK:  encoding: [0x62,0xe2,0xfd,0x38,0xc4,0xa2,0x00,0x04,0x00,0x00]
          vpconflictq 1024(%rdx){1to4}, %ymm20

// CHECK: vpconflictq -1024(%rdx){1to4}, %ymm20
// CHECK:  encoding: [0x62,0xe2,0xfd,0x38,0xc4,0x62,0x80]
          vpconflictq -1024(%rdx){1to4}, %ymm20

// CHECK: vpconflictq -1032(%rdx){1to4}, %ymm20
// CHECK:  encoding: [0x62,0xe2,0xfd,0x38,0xc4,0xa2,0xf8,0xfb,0xff,0xff]
          vpconflictq -1032(%rdx){1to4}, %ymm20

// CHECK: vpconflictq %xmm27, %xmm18
// CHECK:  encoding: [0x62,0x82,0xfd,0x08,0xc4,0xd3]
          vpconflictq %xmm27, %xmm18

// CHECK: vpconflictq %xmm27, %xmm18 {%k4}
// CHECK:  encoding: [0x62,0x82,0xfd,0x0c,0xc4,0xd3]
          vpconflictq %xmm27, %xmm18 {%k4}

// CHECK: vpconflictq %xmm27, %xmm18 {%k4} {z}
// CHECK:  encoding: [0x62,0x82,0xfd,0x8c,0xc4,0xd3]
          vpconflictq %xmm27, %xmm18 {%k4} {z}

// CHECK: vpconflictq (%rcx), %xmm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x08,0xc4,0x11]
          vpconflictq (%rcx), %xmm18

// CHECK: vpconflictq 4660(%rax,%r14,8), %xmm18
// CHECK:  encoding: [0x62,0xa2,0xfd,0x08,0xc4,0x94,0xf0,0x34,0x12,0x00,0x00]
          vpconflictq 4660(%rax,%r14,8), %xmm18

// CHECK: vpconflictq (%rcx){1to2}, %xmm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x18,0xc4,0x11]
          vpconflictq (%rcx){1to2}, %xmm18

// CHECK: vpconflictq 2032(%rdx), %xmm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x08,0xc4,0x52,0x7f]
          vpconflictq 2032(%rdx), %xmm18

// CHECK: vpconflictq 2048(%rdx), %xmm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x08,0xc4,0x92,0x00,0x08,0x00,0x00]
          vpconflictq 2048(%rdx), %xmm18

// CHECK: vpconflictq -2048(%rdx), %xmm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x08,0xc4,0x52,0x80]
          vpconflictq -2048(%rdx), %xmm18

// CHECK: vpconflictq -2064(%rdx), %xmm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x08,0xc4,0x92,0xf0,0xf7,0xff,0xff]
          vpconflictq -2064(%rdx), %xmm18

// CHECK: vpconflictq 1016(%rdx){1to2}, %xmm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x18,0xc4,0x52,0x7f]
          vpconflictq 1016(%rdx){1to2}, %xmm18

// CHECK: vpconflictq 1024(%rdx){1to2}, %xmm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x18,0xc4,0x92,0x00,0x04,0x00,0x00]
          vpconflictq 1024(%rdx){1to2}, %xmm18

// CHECK: vpconflictq -1024(%rdx){1to2}, %xmm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x18,0xc4,0x52,0x80]
          vpconflictq -1024(%rdx){1to2}, %xmm18

// CHECK: vpconflictq -1032(%rdx){1to2}, %xmm18
// CHECK:  encoding: [0x62,0xe2,0xfd,0x18,0xc4,0x92,0xf8,0xfb,0xff,0xff]
          vpconflictq -1032(%rdx){1to2}, %xmm18

// CHECK: vpconflictq %ymm21, %ymm17
// CHECK:  encoding: [0x62,0xa2,0xfd,0x28,0xc4,0xcd]
          vpconflictq %ymm21, %ymm17

// CHECK: vpconflictq %ymm21, %ymm17 {%k6}
// CHECK:  encoding: [0x62,0xa2,0xfd,0x2e,0xc4,0xcd]
          vpconflictq %ymm21, %ymm17 {%k6}

// CHECK: vpconflictq %ymm21, %ymm17 {%k6} {z}
// CHECK:  encoding: [0x62,0xa2,0xfd,0xae,0xc4,0xcd]
          vpconflictq %ymm21, %ymm17 {%k6} {z}

// CHECK: vpconflictq (%rcx), %ymm17
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0xc4,0x09]
          vpconflictq (%rcx), %ymm17

// CHECK: vpconflictq 4660(%rax,%r14,8), %ymm17
// CHECK:  encoding: [0x62,0xa2,0xfd,0x28,0xc4,0x8c,0xf0,0x34,0x12,0x00,0x00]
          vpconflictq 4660(%rax,%r14,8), %ymm17

// CHECK: vpconflictq (%rcx){1to4}, %ymm17
// CHECK:  encoding: [0x62,0xe2,0xfd,0x38,0xc4,0x09]
          vpconflictq (%rcx){1to4}, %ymm17

// CHECK: vpconflictq 4064(%rdx), %ymm17
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0xc4,0x4a,0x7f]
          vpconflictq 4064(%rdx), %ymm17

// CHECK: vpconflictq 4096(%rdx), %ymm17
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0xc4,0x8a,0x00,0x10,0x00,0x00]
          vpconflictq 4096(%rdx), %ymm17

// CHECK: vpconflictq -4096(%rdx), %ymm17
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0xc4,0x4a,0x80]
          vpconflictq -4096(%rdx), %ymm17

// CHECK: vpconflictq -4128(%rdx), %ymm17
// CHECK:  encoding: [0x62,0xe2,0xfd,0x28,0xc4,0x8a,0xe0,0xef,0xff,0xff]
          vpconflictq -4128(%rdx), %ymm17

// CHECK: vpconflictq 1016(%rdx){1to4}, %ymm17
// CHECK:  encoding: [0x62,0xe2,0xfd,0x38,0xc4,0x4a,0x7f]
          vpconflictq 1016(%rdx){1to4}, %ymm17

// CHECK: vpconflictq 1024(%rdx){1to4}, %ymm17
// CHECK:  encoding: [0x62,0xe2,0xfd,0x38,0xc4,0x8a,0x00,0x04,0x00,0x00]
          vpconflictq 1024(%rdx){1to4}, %ymm17

// CHECK: vpconflictq -1024(%rdx){1to4}, %ymm17
// CHECK:  encoding: [0x62,0xe2,0xfd,0x38,0xc4,0x4a,0x80]
          vpconflictq -1024(%rdx){1to4}, %ymm17

// CHECK: vpconflictq -1032(%rdx){1to4}, %ymm17
// CHECK:  encoding: [0x62,0xe2,0xfd,0x38,0xc4,0x8a,0xf8,0xfb,0xff,0xff]
          vpconflictq -1032(%rdx){1to4}, %ymm17

// CHECK: vpconflictd %xmm27, %xmm21
// CHECK:  encoding: [0x62,0x82,0x7d,0x08,0xc4,0xeb]
          vpconflictd %xmm27, %xmm21

// CHECK: vpconflictd %xmm27, %xmm21 {%k5}
// CHECK:  encoding: [0x62,0x82,0x7d,0x0d,0xc4,0xeb]
          vpconflictd %xmm27, %xmm21 {%k5}

// CHECK: vpconflictd %xmm27, %xmm21 {%k5} {z}
// CHECK:  encoding: [0x62,0x82,0x7d,0x8d,0xc4,0xeb]
          vpconflictd %xmm27, %xmm21 {%k5} {z}

// CHECK: vpconflictd (%rcx), %xmm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0xc4,0x29]
          vpconflictd (%rcx), %xmm21

// CHECK: vpconflictd 291(%rax,%r14,8), %xmm21
// CHECK:  encoding: [0x62,0xa2,0x7d,0x08,0xc4,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpconflictd 291(%rax,%r14,8), %xmm21

// CHECK: vpconflictd (%rcx){1to4}, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x18,0xc4,0x29]
          vpconflictd (%rcx){1to4}, %xmm21

// CHECK: vpconflictd 2032(%rdx), %xmm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0xc4,0x6a,0x7f]
          vpconflictd 2032(%rdx), %xmm21

// CHECK: vpconflictd 2048(%rdx), %xmm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0xc4,0xaa,0x00,0x08,0x00,0x00]
          vpconflictd 2048(%rdx), %xmm21

// CHECK: vpconflictd -2048(%rdx), %xmm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0xc4,0x6a,0x80]
          vpconflictd -2048(%rdx), %xmm21

// CHECK: vpconflictd -2064(%rdx), %xmm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0xc4,0xaa,0xf0,0xf7,0xff,0xff]
          vpconflictd -2064(%rdx), %xmm21

// CHECK: vpconflictd 508(%rdx){1to4}, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x18,0xc4,0x6a,0x7f]
          vpconflictd 508(%rdx){1to4}, %xmm21

// CHECK: vpconflictd 512(%rdx){1to4}, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x18,0xc4,0xaa,0x00,0x02,0x00,0x00]
          vpconflictd 512(%rdx){1to4}, %xmm21

// CHECK: vpconflictd -512(%rdx){1to4}, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x18,0xc4,0x6a,0x80]
          vpconflictd -512(%rdx){1to4}, %xmm21

// CHECK: vpconflictd -516(%rdx){1to4}, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x18,0xc4,0xaa,0xfc,0xfd,0xff,0xff]
          vpconflictd -516(%rdx){1to4}, %xmm21

// CHECK: vpconflictd %ymm19, %ymm25
// CHECK:  encoding: [0x62,0x22,0x7d,0x28,0xc4,0xcb]
          vpconflictd %ymm19, %ymm25

// CHECK: vpconflictd %ymm19, %ymm25 {%k4}
// CHECK:  encoding: [0x62,0x22,0x7d,0x2c,0xc4,0xcb]
          vpconflictd %ymm19, %ymm25 {%k4}

// CHECK: vpconflictd %ymm19, %ymm25 {%k4} {z}
// CHECK:  encoding: [0x62,0x22,0x7d,0xac,0xc4,0xcb]
          vpconflictd %ymm19, %ymm25 {%k4} {z}

// CHECK: vpconflictd (%rcx), %ymm25
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0xc4,0x09]
          vpconflictd (%rcx), %ymm25

// CHECK: vpconflictd 291(%rax,%r14,8), %ymm25
// CHECK:  encoding: [0x62,0x22,0x7d,0x28,0xc4,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpconflictd 291(%rax,%r14,8), %ymm25

// CHECK: vpconflictd (%rcx){1to8}, %ymm25
// CHECK:  encoding: [0x62,0x62,0x7d,0x38,0xc4,0x09]
          vpconflictd (%rcx){1to8}, %ymm25

// CHECK: vpconflictd 4064(%rdx), %ymm25
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0xc4,0x4a,0x7f]
          vpconflictd 4064(%rdx), %ymm25

// CHECK: vpconflictd 4096(%rdx), %ymm25
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0xc4,0x8a,0x00,0x10,0x00,0x00]
          vpconflictd 4096(%rdx), %ymm25

// CHECK: vpconflictd -4096(%rdx), %ymm25
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0xc4,0x4a,0x80]
          vpconflictd -4096(%rdx), %ymm25

// CHECK: vpconflictd -4128(%rdx), %ymm25
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0xc4,0x8a,0xe0,0xef,0xff,0xff]
          vpconflictd -4128(%rdx), %ymm25

// CHECK: vpconflictd 508(%rdx){1to8}, %ymm25
// CHECK:  encoding: [0x62,0x62,0x7d,0x38,0xc4,0x4a,0x7f]
          vpconflictd 508(%rdx){1to8}, %ymm25

// CHECK: vpconflictd 512(%rdx){1to8}, %ymm25
// CHECK:  encoding: [0x62,0x62,0x7d,0x38,0xc4,0x8a,0x00,0x02,0x00,0x00]
          vpconflictd 512(%rdx){1to8}, %ymm25

// CHECK: vpconflictd -512(%rdx){1to8}, %ymm25
// CHECK:  encoding: [0x62,0x62,0x7d,0x38,0xc4,0x4a,0x80]
          vpconflictd -512(%rdx){1to8}, %ymm25

// CHECK: vpconflictd -516(%rdx){1to8}, %ymm25
// CHECK:  encoding: [0x62,0x62,0x7d,0x38,0xc4,0x8a,0xfc,0xfd,0xff,0xff]
          vpconflictd -516(%rdx){1to8}, %ymm25

// CHECK: vpconflictd %xmm28, %xmm27
// CHECK:  encoding: [0x62,0x02,0x7d,0x08,0xc4,0xdc]
          vpconflictd %xmm28, %xmm27

// CHECK: vpconflictd %xmm28, %xmm27 {%k3}
// CHECK:  encoding: [0x62,0x02,0x7d,0x0b,0xc4,0xdc]
          vpconflictd %xmm28, %xmm27 {%k3}

// CHECK: vpconflictd %xmm28, %xmm27 {%k3} {z}
// CHECK:  encoding: [0x62,0x02,0x7d,0x8b,0xc4,0xdc]
          vpconflictd %xmm28, %xmm27 {%k3} {z}

// CHECK: vpconflictd (%rcx), %xmm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0xc4,0x19]
          vpconflictd (%rcx), %xmm27

// CHECK: vpconflictd 4660(%rax,%r14,8), %xmm27
// CHECK:  encoding: [0x62,0x22,0x7d,0x08,0xc4,0x9c,0xf0,0x34,0x12,0x00,0x00]
          vpconflictd 4660(%rax,%r14,8), %xmm27

// CHECK: vpconflictd (%rcx){1to4}, %xmm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x18,0xc4,0x19]
          vpconflictd (%rcx){1to4}, %xmm27

// CHECK: vpconflictd 2032(%rdx), %xmm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0xc4,0x5a,0x7f]
          vpconflictd 2032(%rdx), %xmm27

// CHECK: vpconflictd 2048(%rdx), %xmm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0xc4,0x9a,0x00,0x08,0x00,0x00]
          vpconflictd 2048(%rdx), %xmm27

// CHECK: vpconflictd -2048(%rdx), %xmm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0xc4,0x5a,0x80]
          vpconflictd -2048(%rdx), %xmm27

// CHECK: vpconflictd -2064(%rdx), %xmm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0xc4,0x9a,0xf0,0xf7,0xff,0xff]
          vpconflictd -2064(%rdx), %xmm27

// CHECK: vpconflictd 508(%rdx){1to4}, %xmm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x18,0xc4,0x5a,0x7f]
          vpconflictd 508(%rdx){1to4}, %xmm27

// CHECK: vpconflictd 512(%rdx){1to4}, %xmm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x18,0xc4,0x9a,0x00,0x02,0x00,0x00]
          vpconflictd 512(%rdx){1to4}, %xmm27

// CHECK: vpconflictd -512(%rdx){1to4}, %xmm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x18,0xc4,0x5a,0x80]
          vpconflictd -512(%rdx){1to4}, %xmm27

// CHECK: vpconflictd -516(%rdx){1to4}, %xmm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x18,0xc4,0x9a,0xfc,0xfd,0xff,0xff]
          vpconflictd -516(%rdx){1to4}, %xmm27

// CHECK: vpconflictd %ymm21, %ymm26
// CHECK:  encoding: [0x62,0x22,0x7d,0x28,0xc4,0xd5]
          vpconflictd %ymm21, %ymm26

// CHECK: vpconflictd %ymm21, %ymm26 {%k4}
// CHECK:  encoding: [0x62,0x22,0x7d,0x2c,0xc4,0xd5]
          vpconflictd %ymm21, %ymm26 {%k4}

// CHECK: vpconflictd %ymm21, %ymm26 {%k4} {z}
// CHECK:  encoding: [0x62,0x22,0x7d,0xac,0xc4,0xd5]
          vpconflictd %ymm21, %ymm26 {%k4} {z}

// CHECK: vpconflictd (%rcx), %ymm26
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0xc4,0x11]
          vpconflictd (%rcx), %ymm26

// CHECK: vpconflictd 4660(%rax,%r14,8), %ymm26
// CHECK:  encoding: [0x62,0x22,0x7d,0x28,0xc4,0x94,0xf0,0x34,0x12,0x00,0x00]
          vpconflictd 4660(%rax,%r14,8), %ymm26

// CHECK: vpconflictd (%rcx){1to8}, %ymm26
// CHECK:  encoding: [0x62,0x62,0x7d,0x38,0xc4,0x11]
          vpconflictd (%rcx){1to8}, %ymm26

// CHECK: vpconflictd 4064(%rdx), %ymm26
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0xc4,0x52,0x7f]
          vpconflictd 4064(%rdx), %ymm26

// CHECK: vpconflictd 4096(%rdx), %ymm26
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0xc4,0x92,0x00,0x10,0x00,0x00]
          vpconflictd 4096(%rdx), %ymm26

// CHECK: vpconflictd -4096(%rdx), %ymm26
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0xc4,0x52,0x80]
          vpconflictd -4096(%rdx), %ymm26

// CHECK: vpconflictd -4128(%rdx), %ymm26
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0xc4,0x92,0xe0,0xef,0xff,0xff]
          vpconflictd -4128(%rdx), %ymm26

// CHECK: vpconflictd 508(%rdx){1to8}, %ymm26
// CHECK:  encoding: [0x62,0x62,0x7d,0x38,0xc4,0x52,0x7f]
          vpconflictd 508(%rdx){1to8}, %ymm26

// CHECK: vpconflictd 512(%rdx){1to8}, %ymm26
// CHECK:  encoding: [0x62,0x62,0x7d,0x38,0xc4,0x92,0x00,0x02,0x00,0x00]
          vpconflictd 512(%rdx){1to8}, %ymm26

// CHECK: vpconflictd -512(%rdx){1to8}, %ymm26
// CHECK:  encoding: [0x62,0x62,0x7d,0x38,0xc4,0x52,0x80]
          vpconflictd -512(%rdx){1to8}, %ymm26

// CHECK: vpconflictd -516(%rdx){1to8}, %ymm26
// CHECK:  encoding: [0x62,0x62,0x7d,0x38,0xc4,0x92,0xfc,0xfd,0xff,0xff]
          vpconflictd -516(%rdx){1to8}, %ymm26

// CHECK: vpbroadcastmw2d %k4, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x3a,0xdc]
          vpbroadcastmw2d %k4, %xmm19

// CHECK: vpbroadcastmw2d %k3, %ymm24
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x3a,0xc3]
          vpbroadcastmw2d %k3, %ymm24

// CHECK: vpbroadcastmw2d %k4, %xmm21
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x3a,0xec]
          vpbroadcastmw2d %k4, %xmm21

// CHECK: vpbroadcastmw2d %k4, %ymm27
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x3a,0xdc]
          vpbroadcastmw2d %k4, %ymm27
