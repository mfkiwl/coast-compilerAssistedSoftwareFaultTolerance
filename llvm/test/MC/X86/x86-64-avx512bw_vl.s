// RUN: llvm-mc -triple x86_64-unknown-unknown -mcpu=knl -mattr=+avx512bw -mattr=+avx512vl  --show-encoding %s | FileCheck %s

// CHECK: vpaddb %xmm22, %xmm17, %xmm26
// CHECK:  encoding: [0x62,0x21,0x75,0x00,0xfc,0xd6]
          vpaddb %xmm22, %xmm17, %xmm26

// CHECK: vpaddb %xmm22, %xmm17, %xmm26 {%k5}
// CHECK:  encoding: [0x62,0x21,0x75,0x05,0xfc,0xd6]
          vpaddb %xmm22, %xmm17, %xmm26 {%k5}

// CHECK: vpaddb %xmm22, %xmm17, %xmm26 {%k5} {z}
// CHECK:  encoding: [0x62,0x21,0x75,0x85,0xfc,0xd6]
          vpaddb %xmm22, %xmm17, %xmm26 {%k5} {z}

// CHECK: vpaddb (%rcx), %xmm17, %xmm26
// CHECK:  encoding: [0x62,0x61,0x75,0x00,0xfc,0x11]
          vpaddb (%rcx), %xmm17, %xmm26

// CHECK: vpaddb 291(%rax,%r14,8), %xmm17, %xmm26
// CHECK:  encoding: [0x62,0x21,0x75,0x00,0xfc,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpaddb 291(%rax,%r14,8), %xmm17, %xmm26

// CHECK: vpaddb 2032(%rdx), %xmm17, %xmm26
// CHECK:  encoding: [0x62,0x61,0x75,0x00,0xfc,0x52,0x7f]
          vpaddb 2032(%rdx), %xmm17, %xmm26

// CHECK: vpaddb 2048(%rdx), %xmm17, %xmm26
// CHECK:  encoding: [0x62,0x61,0x75,0x00,0xfc,0x92,0x00,0x08,0x00,0x00]
          vpaddb 2048(%rdx), %xmm17, %xmm26

// CHECK: vpaddb -2048(%rdx), %xmm17, %xmm26
// CHECK:  encoding: [0x62,0x61,0x75,0x00,0xfc,0x52,0x80]
          vpaddb -2048(%rdx), %xmm17, %xmm26

// CHECK: vpaddb -2064(%rdx), %xmm17, %xmm26
// CHECK:  encoding: [0x62,0x61,0x75,0x00,0xfc,0x92,0xf0,0xf7,0xff,0xff]
          vpaddb -2064(%rdx), %xmm17, %xmm26

// CHECK: vpaddb %ymm28, %ymm27, %ymm26
// CHECK:  encoding: [0x62,0x01,0x25,0x20,0xfc,0xd4]
          vpaddb %ymm28, %ymm27, %ymm26

// CHECK: vpaddb %ymm28, %ymm27, %ymm26 {%k3}
// CHECK:  encoding: [0x62,0x01,0x25,0x23,0xfc,0xd4]
          vpaddb %ymm28, %ymm27, %ymm26 {%k3}

// CHECK: vpaddb %ymm28, %ymm27, %ymm26 {%k3} {z}
// CHECK:  encoding: [0x62,0x01,0x25,0xa3,0xfc,0xd4]
          vpaddb %ymm28, %ymm27, %ymm26 {%k3} {z}

// CHECK: vpaddb (%rcx), %ymm27, %ymm26
// CHECK:  encoding: [0x62,0x61,0x25,0x20,0xfc,0x11]
          vpaddb (%rcx), %ymm27, %ymm26

// CHECK: vpaddb 291(%rax,%r14,8), %ymm27, %ymm26
// CHECK:  encoding: [0x62,0x21,0x25,0x20,0xfc,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpaddb 291(%rax,%r14,8), %ymm27, %ymm26

// CHECK: vpaddb 4064(%rdx), %ymm27, %ymm26
// CHECK:  encoding: [0x62,0x61,0x25,0x20,0xfc,0x52,0x7f]
          vpaddb 4064(%rdx), %ymm27, %ymm26

// CHECK: vpaddb 4096(%rdx), %ymm27, %ymm26
// CHECK:  encoding: [0x62,0x61,0x25,0x20,0xfc,0x92,0x00,0x10,0x00,0x00]
          vpaddb 4096(%rdx), %ymm27, %ymm26

// CHECK: vpaddb -4096(%rdx), %ymm27, %ymm26
// CHECK:  encoding: [0x62,0x61,0x25,0x20,0xfc,0x52,0x80]
          vpaddb -4096(%rdx), %ymm27, %ymm26

// CHECK: vpaddb -4128(%rdx), %ymm27, %ymm26
// CHECK:  encoding: [0x62,0x61,0x25,0x20,0xfc,0x92,0xe0,0xef,0xff,0xff]
          vpaddb -4128(%rdx), %ymm27, %ymm26

// CHECK: vpaddw %xmm18, %xmm17, %xmm18
// CHECK:  encoding: [0x62,0xa1,0x75,0x00,0xfd,0xd2]
          vpaddw %xmm18, %xmm17, %xmm18

// CHECK: vpaddw %xmm18, %xmm17, %xmm18 {%k1}
// CHECK:  encoding: [0x62,0xa1,0x75,0x01,0xfd,0xd2]
          vpaddw %xmm18, %xmm17, %xmm18 {%k1}

// CHECK: vpaddw %xmm18, %xmm17, %xmm18 {%k1} {z}
// CHECK:  encoding: [0x62,0xa1,0x75,0x81,0xfd,0xd2]
          vpaddw %xmm18, %xmm17, %xmm18 {%k1} {z}

// CHECK: vpaddw (%rcx), %xmm17, %xmm18
// CHECK:  encoding: [0x62,0xe1,0x75,0x00,0xfd,0x11]
          vpaddw (%rcx), %xmm17, %xmm18

// CHECK: vpaddw 291(%rax,%r14,8), %xmm17, %xmm18
// CHECK:  encoding: [0x62,0xa1,0x75,0x00,0xfd,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpaddw 291(%rax,%r14,8), %xmm17, %xmm18

// CHECK: vpaddw 2032(%rdx), %xmm17, %xmm18
// CHECK:  encoding: [0x62,0xe1,0x75,0x00,0xfd,0x52,0x7f]
          vpaddw 2032(%rdx), %xmm17, %xmm18

// CHECK: vpaddw 2048(%rdx), %xmm17, %xmm18
// CHECK:  encoding: [0x62,0xe1,0x75,0x00,0xfd,0x92,0x00,0x08,0x00,0x00]
          vpaddw 2048(%rdx), %xmm17, %xmm18

// CHECK: vpaddw -2048(%rdx), %xmm17, %xmm18
// CHECK:  encoding: [0x62,0xe1,0x75,0x00,0xfd,0x52,0x80]
          vpaddw -2048(%rdx), %xmm17, %xmm18

// CHECK: vpaddw -2064(%rdx), %xmm17, %xmm18
// CHECK:  encoding: [0x62,0xe1,0x75,0x00,0xfd,0x92,0xf0,0xf7,0xff,0xff]
          vpaddw -2064(%rdx), %xmm17, %xmm18

// CHECK: vpaddw %ymm26, %ymm21, %ymm23
// CHECK:  encoding: [0x62,0x81,0x55,0x20,0xfd,0xfa]
          vpaddw %ymm26, %ymm21, %ymm23

// CHECK: vpaddw %ymm26, %ymm21, %ymm23 {%k7}
// CHECK:  encoding: [0x62,0x81,0x55,0x27,0xfd,0xfa]
          vpaddw %ymm26, %ymm21, %ymm23 {%k7}

// CHECK: vpaddw %ymm26, %ymm21, %ymm23 {%k7} {z}
// CHECK:  encoding: [0x62,0x81,0x55,0xa7,0xfd,0xfa]
          vpaddw %ymm26, %ymm21, %ymm23 {%k7} {z}

// CHECK: vpaddw (%rcx), %ymm21, %ymm23
// CHECK:  encoding: [0x62,0xe1,0x55,0x20,0xfd,0x39]
          vpaddw (%rcx), %ymm21, %ymm23

// CHECK: vpaddw 291(%rax,%r14,8), %ymm21, %ymm23
// CHECK:  encoding: [0x62,0xa1,0x55,0x20,0xfd,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vpaddw 291(%rax,%r14,8), %ymm21, %ymm23

// CHECK: vpaddw 4064(%rdx), %ymm21, %ymm23
// CHECK:  encoding: [0x62,0xe1,0x55,0x20,0xfd,0x7a,0x7f]
          vpaddw 4064(%rdx), %ymm21, %ymm23

// CHECK: vpaddw 4096(%rdx), %ymm21, %ymm23
// CHECK:  encoding: [0x62,0xe1,0x55,0x20,0xfd,0xba,0x00,0x10,0x00,0x00]
          vpaddw 4096(%rdx), %ymm21, %ymm23

// CHECK: vpaddw -4096(%rdx), %ymm21, %ymm23
// CHECK:  encoding: [0x62,0xe1,0x55,0x20,0xfd,0x7a,0x80]
          vpaddw -4096(%rdx), %ymm21, %ymm23

// CHECK: vpaddw -4128(%rdx), %ymm21, %ymm23
// CHECK:  encoding: [0x62,0xe1,0x55,0x20,0xfd,0xba,0xe0,0xef,0xff,0xff]
          vpaddw -4128(%rdx), %ymm21, %ymm23

// CHECK: vpbroadcastb %eax, %xmm22
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x7a,0xf0]
          vpbroadcastb %eax, %xmm22

// CHECK: vpbroadcastb %eax, %xmm22 {%k3}
// CHECK:  encoding: [0x62,0xe2,0x7d,0x0b,0x7a,0xf0]
          vpbroadcastb %eax, %xmm22 {%k3}

// CHECK: vpbroadcastb %eax, %xmm22 {%k3} {z}
// CHECK:  encoding: [0x62,0xe2,0x7d,0x8b,0x7a,0xf0]
          vpbroadcastb %eax, %xmm22 {%k3} {z}

// CHECK: vpbroadcastb %eax, %ymm17
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x7a,0xc8]
          vpbroadcastb %eax, %ymm17

// CHECK: vpbroadcastb %eax, %ymm17 {%k1}
// CHECK:  encoding: [0x62,0xe2,0x7d,0x29,0x7a,0xc8]
          vpbroadcastb %eax, %ymm17 {%k1}

// CHECK: vpbroadcastb %eax, %ymm17 {%k1} {z}
// CHECK:  encoding: [0x62,0xe2,0x7d,0xa9,0x7a,0xc8]
          vpbroadcastb %eax, %ymm17 {%k1} {z}

// CHECK: vpbroadcastw %eax, %xmm29
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x7b,0xe8]
          vpbroadcastw %eax, %xmm29

// CHECK: vpbroadcastw %eax, %xmm29 {%k1}
// CHECK:  encoding: [0x62,0x62,0x7d,0x09,0x7b,0xe8]
          vpbroadcastw %eax, %xmm29 {%k1}

// CHECK: vpbroadcastw %eax, %xmm29 {%k1} {z}
// CHECK:  encoding: [0x62,0x62,0x7d,0x89,0x7b,0xe8]
          vpbroadcastw %eax, %xmm29 {%k1} {z}

// CHECK: vpbroadcastw %eax, %ymm28
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x7b,0xe0]
          vpbroadcastw %eax, %ymm28

// CHECK: vpbroadcastw %eax, %ymm28 {%k4}
// CHECK:  encoding: [0x62,0x62,0x7d,0x2c,0x7b,0xe0]
          vpbroadcastw %eax, %ymm28 {%k4}

// CHECK: vpbroadcastw %eax, %ymm28 {%k4} {z}
// CHECK:  encoding: [0x62,0x62,0x7d,0xac,0x7b,0xe0]
          vpbroadcastw %eax, %ymm28 {%k4} {z}

// CHECK: vpcmpeqb %xmm21, %xmm21, %k4
// CHECK:  encoding: [0x62,0xb1,0x55,0x00,0x74,0xe5]
          vpcmpeqb %xmm21, %xmm21, %k4

// CHECK: vpcmpeqb %xmm21, %xmm21, %k4 {%k3}
// CHECK:  encoding: [0x62,0xb1,0x55,0x03,0x74,0xe5]
          vpcmpeqb %xmm21, %xmm21, %k4 {%k3}

// CHECK: vpcmpeqb (%rcx), %xmm21, %k4
// CHECK:  encoding: [0x62,0xf1,0x55,0x00,0x74,0x21]
          vpcmpeqb (%rcx), %xmm21, %k4

// CHECK: vpcmpeqb 291(%rax,%r14,8), %xmm21, %k4
// CHECK:  encoding: [0x62,0xb1,0x55,0x00,0x74,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpcmpeqb 291(%rax,%r14,8), %xmm21, %k4

// CHECK: vpcmpeqb 2032(%rdx), %xmm21, %k4
// CHECK:  encoding: [0x62,0xf1,0x55,0x00,0x74,0x62,0x7f]
          vpcmpeqb 2032(%rdx), %xmm21, %k4

// CHECK: vpcmpeqb 2048(%rdx), %xmm21, %k4
// CHECK:  encoding: [0x62,0xf1,0x55,0x00,0x74,0xa2,0x00,0x08,0x00,0x00]
          vpcmpeqb 2048(%rdx), %xmm21, %k4

// CHECK: vpcmpeqb -2048(%rdx), %xmm21, %k4
// CHECK:  encoding: [0x62,0xf1,0x55,0x00,0x74,0x62,0x80]
          vpcmpeqb -2048(%rdx), %xmm21, %k4

// CHECK: vpcmpeqb -2064(%rdx), %xmm21, %k4
// CHECK:  encoding: [0x62,0xf1,0x55,0x00,0x74,0xa2,0xf0,0xf7,0xff,0xff]
          vpcmpeqb -2064(%rdx), %xmm21, %k4

// CHECK: vpcmpeqb %ymm18, %ymm21, %k4
// CHECK:  encoding: [0x62,0xb1,0x55,0x20,0x74,0xe2]
          vpcmpeqb %ymm18, %ymm21, %k4

// CHECK: vpcmpeqb %ymm18, %ymm21, %k4 {%k1}
// CHECK:  encoding: [0x62,0xb1,0x55,0x21,0x74,0xe2]
          vpcmpeqb %ymm18, %ymm21, %k4 {%k1}

// CHECK: vpcmpeqb (%rcx), %ymm21, %k4
// CHECK:  encoding: [0x62,0xf1,0x55,0x20,0x74,0x21]
          vpcmpeqb (%rcx), %ymm21, %k4

// CHECK: vpcmpeqb 291(%rax,%r14,8), %ymm21, %k4
// CHECK:  encoding: [0x62,0xb1,0x55,0x20,0x74,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpcmpeqb 291(%rax,%r14,8), %ymm21, %k4

// CHECK: vpcmpeqb 4064(%rdx), %ymm21, %k4
// CHECK:  encoding: [0x62,0xf1,0x55,0x20,0x74,0x62,0x7f]
          vpcmpeqb 4064(%rdx), %ymm21, %k4

// CHECK: vpcmpeqb 4096(%rdx), %ymm21, %k4
// CHECK:  encoding: [0x62,0xf1,0x55,0x20,0x74,0xa2,0x00,0x10,0x00,0x00]
          vpcmpeqb 4096(%rdx), %ymm21, %k4

// CHECK: vpcmpeqb -4096(%rdx), %ymm21, %k4
// CHECK:  encoding: [0x62,0xf1,0x55,0x20,0x74,0x62,0x80]
          vpcmpeqb -4096(%rdx), %ymm21, %k4

// CHECK: vpcmpeqb -4128(%rdx), %ymm21, %k4
// CHECK:  encoding: [0x62,0xf1,0x55,0x20,0x74,0xa2,0xe0,0xef,0xff,0xff]
          vpcmpeqb -4128(%rdx), %ymm21, %k4

// CHECK: vpcmpeqw %xmm27, %xmm30, %k3
// CHECK:  encoding: [0x62,0x91,0x0d,0x00,0x75,0xdb]
          vpcmpeqw %xmm27, %xmm30, %k3

// CHECK: vpcmpeqw %xmm27, %xmm30, %k3 {%k1}
// CHECK:  encoding: [0x62,0x91,0x0d,0x01,0x75,0xdb]
          vpcmpeqw %xmm27, %xmm30, %k3 {%k1}

// CHECK: vpcmpeqw (%rcx), %xmm30, %k3
// CHECK:  encoding: [0x62,0xf1,0x0d,0x00,0x75,0x19]
          vpcmpeqw (%rcx), %xmm30, %k3

// CHECK: vpcmpeqw 291(%rax,%r14,8), %xmm30, %k3
// CHECK:  encoding: [0x62,0xb1,0x0d,0x00,0x75,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpcmpeqw 291(%rax,%r14,8), %xmm30, %k3

// CHECK: vpcmpeqw 2032(%rdx), %xmm30, %k3
// CHECK:  encoding: [0x62,0xf1,0x0d,0x00,0x75,0x5a,0x7f]
          vpcmpeqw 2032(%rdx), %xmm30, %k3

// CHECK: vpcmpeqw 2048(%rdx), %xmm30, %k3
// CHECK:  encoding: [0x62,0xf1,0x0d,0x00,0x75,0x9a,0x00,0x08,0x00,0x00]
          vpcmpeqw 2048(%rdx), %xmm30, %k3

// CHECK: vpcmpeqw -2048(%rdx), %xmm30, %k3
// CHECK:  encoding: [0x62,0xf1,0x0d,0x00,0x75,0x5a,0x80]
          vpcmpeqw -2048(%rdx), %xmm30, %k3

// CHECK: vpcmpeqw -2064(%rdx), %xmm30, %k3
// CHECK:  encoding: [0x62,0xf1,0x0d,0x00,0x75,0x9a,0xf0,0xf7,0xff,0xff]
          vpcmpeqw -2064(%rdx), %xmm30, %k3

// CHECK: vpcmpeqw %ymm29, %ymm20, %k2
// CHECK:  encoding: [0x62,0x91,0x5d,0x20,0x75,0xd5]
          vpcmpeqw %ymm29, %ymm20, %k2

// CHECK: vpcmpeqw %ymm29, %ymm20, %k2 {%k5}
// CHECK:  encoding: [0x62,0x91,0x5d,0x25,0x75,0xd5]
          vpcmpeqw %ymm29, %ymm20, %k2 {%k5}

// CHECK: vpcmpeqw (%rcx), %ymm20, %k2
// CHECK:  encoding: [0x62,0xf1,0x5d,0x20,0x75,0x11]
          vpcmpeqw (%rcx), %ymm20, %k2

// CHECK: vpcmpeqw 291(%rax,%r14,8), %ymm20, %k2
// CHECK:  encoding: [0x62,0xb1,0x5d,0x20,0x75,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpcmpeqw 291(%rax,%r14,8), %ymm20, %k2

// CHECK: vpcmpeqw 4064(%rdx), %ymm20, %k2
// CHECK:  encoding: [0x62,0xf1,0x5d,0x20,0x75,0x52,0x7f]
          vpcmpeqw 4064(%rdx), %ymm20, %k2

// CHECK: vpcmpeqw 4096(%rdx), %ymm20, %k2
// CHECK:  encoding: [0x62,0xf1,0x5d,0x20,0x75,0x92,0x00,0x10,0x00,0x00]
          vpcmpeqw 4096(%rdx), %ymm20, %k2

// CHECK: vpcmpeqw -4096(%rdx), %ymm20, %k2
// CHECK:  encoding: [0x62,0xf1,0x5d,0x20,0x75,0x52,0x80]
          vpcmpeqw -4096(%rdx), %ymm20, %k2

// CHECK: vpcmpeqw -4128(%rdx), %ymm20, %k2
// CHECK:  encoding: [0x62,0xf1,0x5d,0x20,0x75,0x92,0xe0,0xef,0xff,0xff]
          vpcmpeqw -4128(%rdx), %ymm20, %k2

// CHECK: vpcmpgtb %xmm17, %xmm30, %k3
// CHECK:  encoding: [0x62,0xb1,0x0d,0x00,0x64,0xd9]
          vpcmpgtb %xmm17, %xmm30, %k3

// CHECK: vpcmpgtb %xmm17, %xmm30, %k3 {%k7}
// CHECK:  encoding: [0x62,0xb1,0x0d,0x07,0x64,0xd9]
          vpcmpgtb %xmm17, %xmm30, %k3 {%k7}

// CHECK: vpcmpgtb (%rcx), %xmm30, %k3
// CHECK:  encoding: [0x62,0xf1,0x0d,0x00,0x64,0x19]
          vpcmpgtb (%rcx), %xmm30, %k3

// CHECK: vpcmpgtb 291(%rax,%r14,8), %xmm30, %k3
// CHECK:  encoding: [0x62,0xb1,0x0d,0x00,0x64,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpcmpgtb 291(%rax,%r14,8), %xmm30, %k3

// CHECK: vpcmpgtb 2032(%rdx), %xmm30, %k3
// CHECK:  encoding: [0x62,0xf1,0x0d,0x00,0x64,0x5a,0x7f]
          vpcmpgtb 2032(%rdx), %xmm30, %k3

// CHECK: vpcmpgtb 2048(%rdx), %xmm30, %k3
// CHECK:  encoding: [0x62,0xf1,0x0d,0x00,0x64,0x9a,0x00,0x08,0x00,0x00]
          vpcmpgtb 2048(%rdx), %xmm30, %k3

// CHECK: vpcmpgtb -2048(%rdx), %xmm30, %k3
// CHECK:  encoding: [0x62,0xf1,0x0d,0x00,0x64,0x5a,0x80]
          vpcmpgtb -2048(%rdx), %xmm30, %k3

// CHECK: vpcmpgtb -2064(%rdx), %xmm30, %k3
// CHECK:  encoding: [0x62,0xf1,0x0d,0x00,0x64,0x9a,0xf0,0xf7,0xff,0xff]
          vpcmpgtb -2064(%rdx), %xmm30, %k3

// CHECK: vpcmpgtb %ymm17, %ymm17, %k2
// CHECK:  encoding: [0x62,0xb1,0x75,0x20,0x64,0xd1]
          vpcmpgtb %ymm17, %ymm17, %k2

// CHECK: vpcmpgtb %ymm17, %ymm17, %k2 {%k4}
// CHECK:  encoding: [0x62,0xb1,0x75,0x24,0x64,0xd1]
          vpcmpgtb %ymm17, %ymm17, %k2 {%k4}

// CHECK: vpcmpgtb (%rcx), %ymm17, %k2
// CHECK:  encoding: [0x62,0xf1,0x75,0x20,0x64,0x11]
          vpcmpgtb (%rcx), %ymm17, %k2

// CHECK: vpcmpgtb 291(%rax,%r14,8), %ymm17, %k2
// CHECK:  encoding: [0x62,0xb1,0x75,0x20,0x64,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpcmpgtb 291(%rax,%r14,8), %ymm17, %k2

// CHECK: vpcmpgtb 4064(%rdx), %ymm17, %k2
// CHECK:  encoding: [0x62,0xf1,0x75,0x20,0x64,0x52,0x7f]
          vpcmpgtb 4064(%rdx), %ymm17, %k2

// CHECK: vpcmpgtb 4096(%rdx), %ymm17, %k2
// CHECK:  encoding: [0x62,0xf1,0x75,0x20,0x64,0x92,0x00,0x10,0x00,0x00]
          vpcmpgtb 4096(%rdx), %ymm17, %k2

// CHECK: vpcmpgtb -4096(%rdx), %ymm17, %k2
// CHECK:  encoding: [0x62,0xf1,0x75,0x20,0x64,0x52,0x80]
          vpcmpgtb -4096(%rdx), %ymm17, %k2

// CHECK: vpcmpgtb -4128(%rdx), %ymm17, %k2
// CHECK:  encoding: [0x62,0xf1,0x75,0x20,0x64,0x92,0xe0,0xef,0xff,0xff]
          vpcmpgtb -4128(%rdx), %ymm17, %k2

// CHECK: vpcmpgtw %xmm22, %xmm28, %k2
// CHECK:  encoding: [0x62,0xb1,0x1d,0x00,0x65,0xd6]
          vpcmpgtw %xmm22, %xmm28, %k2

// CHECK: vpcmpgtw %xmm22, %xmm28, %k2 {%k7}
// CHECK:  encoding: [0x62,0xb1,0x1d,0x07,0x65,0xd6]
          vpcmpgtw %xmm22, %xmm28, %k2 {%k7}

// CHECK: vpcmpgtw (%rcx), %xmm28, %k2
// CHECK:  encoding: [0x62,0xf1,0x1d,0x00,0x65,0x11]
          vpcmpgtw (%rcx), %xmm28, %k2

// CHECK: vpcmpgtw 291(%rax,%r14,8), %xmm28, %k2
// CHECK:  encoding: [0x62,0xb1,0x1d,0x00,0x65,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpcmpgtw 291(%rax,%r14,8), %xmm28, %k2

// CHECK: vpcmpgtw 2032(%rdx), %xmm28, %k2
// CHECK:  encoding: [0x62,0xf1,0x1d,0x00,0x65,0x52,0x7f]
          vpcmpgtw 2032(%rdx), %xmm28, %k2

// CHECK: vpcmpgtw 2048(%rdx), %xmm28, %k2
// CHECK:  encoding: [0x62,0xf1,0x1d,0x00,0x65,0x92,0x00,0x08,0x00,0x00]
          vpcmpgtw 2048(%rdx), %xmm28, %k2

// CHECK: vpcmpgtw -2048(%rdx), %xmm28, %k2
// CHECK:  encoding: [0x62,0xf1,0x1d,0x00,0x65,0x52,0x80]
          vpcmpgtw -2048(%rdx), %xmm28, %k2

// CHECK: vpcmpgtw -2064(%rdx), %xmm28, %k2
// CHECK:  encoding: [0x62,0xf1,0x1d,0x00,0x65,0x92,0xf0,0xf7,0xff,0xff]
          vpcmpgtw -2064(%rdx), %xmm28, %k2

// CHECK: vpcmpgtw %ymm26, %ymm20, %k5
// CHECK:  encoding: [0x62,0x91,0x5d,0x20,0x65,0xea]
          vpcmpgtw %ymm26, %ymm20, %k5

// CHECK: vpcmpgtw %ymm26, %ymm20, %k5 {%k2}
// CHECK:  encoding: [0x62,0x91,0x5d,0x22,0x65,0xea]
          vpcmpgtw %ymm26, %ymm20, %k5 {%k2}

// CHECK: vpcmpgtw (%rcx), %ymm20, %k5
// CHECK:  encoding: [0x62,0xf1,0x5d,0x20,0x65,0x29]
          vpcmpgtw (%rcx), %ymm20, %k5

// CHECK: vpcmpgtw 291(%rax,%r14,8), %ymm20, %k5
// CHECK:  encoding: [0x62,0xb1,0x5d,0x20,0x65,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpcmpgtw 291(%rax,%r14,8), %ymm20, %k5

// CHECK: vpcmpgtw 4064(%rdx), %ymm20, %k5
// CHECK:  encoding: [0x62,0xf1,0x5d,0x20,0x65,0x6a,0x7f]
          vpcmpgtw 4064(%rdx), %ymm20, %k5

// CHECK: vpcmpgtw 4096(%rdx), %ymm20, %k5
// CHECK:  encoding: [0x62,0xf1,0x5d,0x20,0x65,0xaa,0x00,0x10,0x00,0x00]
          vpcmpgtw 4096(%rdx), %ymm20, %k5

// CHECK: vpcmpgtw -4096(%rdx), %ymm20, %k5
// CHECK:  encoding: [0x62,0xf1,0x5d,0x20,0x65,0x6a,0x80]
          vpcmpgtw -4096(%rdx), %ymm20, %k5

// CHECK: vpcmpgtw -4128(%rdx), %ymm20, %k5
// CHECK:  encoding: [0x62,0xf1,0x5d,0x20,0x65,0xaa,0xe0,0xef,0xff,0xff]
          vpcmpgtw -4128(%rdx), %ymm20, %k5

// CHECK: vpcmpb $171, %xmm17, %xmm30, %k3
// CHECK:  encoding: [0x62,0xb3,0x0d,0x00,0x3f,0xd9,0xab]
          vpcmpb $171, %xmm17, %xmm30, %k3

// CHECK: vpcmpb $171, %xmm17, %xmm30, %k3 {%k1}
// CHECK:  encoding: [0x62,0xb3,0x0d,0x01,0x3f,0xd9,0xab]
          vpcmpb $171, %xmm17, %xmm30, %k3 {%k1}

// CHECK: vpcmpb $123, %xmm17, %xmm30, %k3
// CHECK:  encoding: [0x62,0xb3,0x0d,0x00,0x3f,0xd9,0x7b]
          vpcmpb $123, %xmm17, %xmm30, %k3

// CHECK: vpcmpb $123, (%rcx), %xmm30, %k3
// CHECK:  encoding: [0x62,0xf3,0x0d,0x00,0x3f,0x19,0x7b]
          vpcmpb $123, (%rcx), %xmm30, %k3

// CHECK: vpcmpb $123, 291(%rax,%r14,8), %xmm30, %k3
// CHECK:  encoding: [0x62,0xb3,0x0d,0x00,0x3f,0x9c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpcmpb $123, 291(%rax,%r14,8), %xmm30, %k3

// CHECK: vpcmpb $123, 2032(%rdx), %xmm30, %k3
// CHECK:  encoding: [0x62,0xf3,0x0d,0x00,0x3f,0x5a,0x7f,0x7b]
          vpcmpb $123, 2032(%rdx), %xmm30, %k3

// CHECK: vpcmpb $123, 2048(%rdx), %xmm30, %k3
// CHECK:  encoding: [0x62,0xf3,0x0d,0x00,0x3f,0x9a,0x00,0x08,0x00,0x00,0x7b]
          vpcmpb $123, 2048(%rdx), %xmm30, %k3

// CHECK: vpcmpb $123, -2048(%rdx), %xmm30, %k3
// CHECK:  encoding: [0x62,0xf3,0x0d,0x00,0x3f,0x5a,0x80,0x7b]
          vpcmpb $123, -2048(%rdx), %xmm30, %k3

// CHECK: vpcmpb $123, -2064(%rdx), %xmm30, %k3
// CHECK:  encoding: [0x62,0xf3,0x0d,0x00,0x3f,0x9a,0xf0,0xf7,0xff,0xff,0x7b]
          vpcmpb $123, -2064(%rdx), %xmm30, %k3

// CHECK: vpcmpb $171, %ymm19, %ymm19, %k5
// CHECK:  encoding: [0x62,0xb3,0x65,0x20,0x3f,0xeb,0xab]
          vpcmpb $171, %ymm19, %ymm19, %k5

// CHECK: vpcmpb $171, %ymm19, %ymm19, %k5 {%k4}
// CHECK:  encoding: [0x62,0xb3,0x65,0x24,0x3f,0xeb,0xab]
          vpcmpb $171, %ymm19, %ymm19, %k5 {%k4}

// CHECK: vpcmpb $123, %ymm19, %ymm19, %k5
// CHECK:  encoding: [0x62,0xb3,0x65,0x20,0x3f,0xeb,0x7b]
          vpcmpb $123, %ymm19, %ymm19, %k5

// CHECK: vpcmpb $123, (%rcx), %ymm19, %k5
// CHECK:  encoding: [0x62,0xf3,0x65,0x20,0x3f,0x29,0x7b]
          vpcmpb $123, (%rcx), %ymm19, %k5

// CHECK: vpcmpb $123, 291(%rax,%r14,8), %ymm19, %k5
// CHECK:  encoding: [0x62,0xb3,0x65,0x20,0x3f,0xac,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpcmpb $123, 291(%rax,%r14,8), %ymm19, %k5

// CHECK: vpcmpb $123, 4064(%rdx), %ymm19, %k5
// CHECK:  encoding: [0x62,0xf3,0x65,0x20,0x3f,0x6a,0x7f,0x7b]
          vpcmpb $123, 4064(%rdx), %ymm19, %k5

// CHECK: vpcmpb $123, 4096(%rdx), %ymm19, %k5
// CHECK:  encoding: [0x62,0xf3,0x65,0x20,0x3f,0xaa,0x00,0x10,0x00,0x00,0x7b]
          vpcmpb $123, 4096(%rdx), %ymm19, %k5

// CHECK: vpcmpb $123, -4096(%rdx), %ymm19, %k5
// CHECK:  encoding: [0x62,0xf3,0x65,0x20,0x3f,0x6a,0x80,0x7b]
          vpcmpb $123, -4096(%rdx), %ymm19, %k5

// CHECK: vpcmpb $123, -4128(%rdx), %ymm19, %k5
// CHECK:  encoding: [0x62,0xf3,0x65,0x20,0x3f,0xaa,0xe0,0xef,0xff,0xff,0x7b]
          vpcmpb $123, -4128(%rdx), %ymm19, %k5

// CHECK: vpcmpw $171, %xmm22, %xmm30, %k3
// CHECK:  encoding: [0x62,0xb3,0x8d,0x00,0x3f,0xde,0xab]
          vpcmpw $171, %xmm22, %xmm30, %k3

// CHECK: vpcmpw $171, %xmm22, %xmm30, %k3 {%k6}
// CHECK:  encoding: [0x62,0xb3,0x8d,0x06,0x3f,0xde,0xab]
          vpcmpw $171, %xmm22, %xmm30, %k3 {%k6}

// CHECK: vpcmpw $123, %xmm22, %xmm30, %k3
// CHECK:  encoding: [0x62,0xb3,0x8d,0x00,0x3f,0xde,0x7b]
          vpcmpw $123, %xmm22, %xmm30, %k3

// CHECK: vpcmpw $123, (%rcx), %xmm30, %k3
// CHECK:  encoding: [0x62,0xf3,0x8d,0x00,0x3f,0x19,0x7b]
          vpcmpw $123, (%rcx), %xmm30, %k3

// CHECK: vpcmpw $123, 291(%rax,%r14,8), %xmm30, %k3
// CHECK:  encoding: [0x62,0xb3,0x8d,0x00,0x3f,0x9c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpcmpw $123, 291(%rax,%r14,8), %xmm30, %k3

// CHECK: vpcmpw $123, 2032(%rdx), %xmm30, %k3
// CHECK:  encoding: [0x62,0xf3,0x8d,0x00,0x3f,0x5a,0x7f,0x7b]
          vpcmpw $123, 2032(%rdx), %xmm30, %k3

// CHECK: vpcmpw $123, 2048(%rdx), %xmm30, %k3
// CHECK:  encoding: [0x62,0xf3,0x8d,0x00,0x3f,0x9a,0x00,0x08,0x00,0x00,0x7b]
          vpcmpw $123, 2048(%rdx), %xmm30, %k3

// CHECK: vpcmpw $123, -2048(%rdx), %xmm30, %k3
// CHECK:  encoding: [0x62,0xf3,0x8d,0x00,0x3f,0x5a,0x80,0x7b]
          vpcmpw $123, -2048(%rdx), %xmm30, %k3

// CHECK: vpcmpw $123, -2064(%rdx), %xmm30, %k3
// CHECK:  encoding: [0x62,0xf3,0x8d,0x00,0x3f,0x9a,0xf0,0xf7,0xff,0xff,0x7b]
          vpcmpw $123, -2064(%rdx), %xmm30, %k3

// CHECK: vpcmpw $171, %ymm18, %ymm26, %k3
// CHECK:  encoding: [0x62,0xb3,0xad,0x20,0x3f,0xda,0xab]
          vpcmpw $171, %ymm18, %ymm26, %k3

// CHECK: vpcmpw $171, %ymm18, %ymm26, %k3 {%k3}
// CHECK:  encoding: [0x62,0xb3,0xad,0x23,0x3f,0xda,0xab]
          vpcmpw $171, %ymm18, %ymm26, %k3 {%k3}

// CHECK: vpcmpw $123, %ymm18, %ymm26, %k3
// CHECK:  encoding: [0x62,0xb3,0xad,0x20,0x3f,0xda,0x7b]
          vpcmpw $123, %ymm18, %ymm26, %k3

// CHECK: vpcmpw $123, (%rcx), %ymm26, %k3
// CHECK:  encoding: [0x62,0xf3,0xad,0x20,0x3f,0x19,0x7b]
          vpcmpw $123, (%rcx), %ymm26, %k3

// CHECK: vpcmpw $123, 291(%rax,%r14,8), %ymm26, %k3
// CHECK:  encoding: [0x62,0xb3,0xad,0x20,0x3f,0x9c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpcmpw $123, 291(%rax,%r14,8), %ymm26, %k3

// CHECK: vpcmpw $123, 4064(%rdx), %ymm26, %k3
// CHECK:  encoding: [0x62,0xf3,0xad,0x20,0x3f,0x5a,0x7f,0x7b]
          vpcmpw $123, 4064(%rdx), %ymm26, %k3

// CHECK: vpcmpw $123, 4096(%rdx), %ymm26, %k3
// CHECK:  encoding: [0x62,0xf3,0xad,0x20,0x3f,0x9a,0x00,0x10,0x00,0x00,0x7b]
          vpcmpw $123, 4096(%rdx), %ymm26, %k3

// CHECK: vpcmpw $123, -4096(%rdx), %ymm26, %k3
// CHECK:  encoding: [0x62,0xf3,0xad,0x20,0x3f,0x5a,0x80,0x7b]
          vpcmpw $123, -4096(%rdx), %ymm26, %k3

// CHECK: vpcmpw $123, -4128(%rdx), %ymm26, %k3
// CHECK:  encoding: [0x62,0xf3,0xad,0x20,0x3f,0x9a,0xe0,0xef,0xff,0xff,0x7b]
          vpcmpw $123, -4128(%rdx), %ymm26, %k3

// CHECK: vpcmpub $171, %xmm21, %xmm22, %k5
// CHECK:  encoding: [0x62,0xb3,0x4d,0x00,0x3e,0xed,0xab]
          vpcmpub $171, %xmm21, %xmm22, %k5

// CHECK: vpcmpub $171, %xmm21, %xmm22, %k5 {%k3}
// CHECK:  encoding: [0x62,0xb3,0x4d,0x03,0x3e,0xed,0xab]
          vpcmpub $171, %xmm21, %xmm22, %k5 {%k3}

// CHECK: vpcmpub $123, %xmm21, %xmm22, %k5
// CHECK:  encoding: [0x62,0xb3,0x4d,0x00,0x3e,0xed,0x7b]
          vpcmpub $123, %xmm21, %xmm22, %k5

// CHECK: vpcmpub $123, (%rcx), %xmm22, %k5
// CHECK:  encoding: [0x62,0xf3,0x4d,0x00,0x3e,0x29,0x7b]
          vpcmpub $123, (%rcx), %xmm22, %k5

// CHECK: vpcmpub $123, 291(%rax,%r14,8), %xmm22, %k5
// CHECK:  encoding: [0x62,0xb3,0x4d,0x00,0x3e,0xac,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpcmpub $123, 291(%rax,%r14,8), %xmm22, %k5

// CHECK: vpcmpub $123, 2032(%rdx), %xmm22, %k5
// CHECK:  encoding: [0x62,0xf3,0x4d,0x00,0x3e,0x6a,0x7f,0x7b]
          vpcmpub $123, 2032(%rdx), %xmm22, %k5

// CHECK: vpcmpub $123, 2048(%rdx), %xmm22, %k5
// CHECK:  encoding: [0x62,0xf3,0x4d,0x00,0x3e,0xaa,0x00,0x08,0x00,0x00,0x7b]
          vpcmpub $123, 2048(%rdx), %xmm22, %k5

// CHECK: vpcmpub $123, -2048(%rdx), %xmm22, %k5
// CHECK:  encoding: [0x62,0xf3,0x4d,0x00,0x3e,0x6a,0x80,0x7b]
          vpcmpub $123, -2048(%rdx), %xmm22, %k5

// CHECK: vpcmpub $123, -2064(%rdx), %xmm22, %k5
// CHECK:  encoding: [0x62,0xf3,0x4d,0x00,0x3e,0xaa,0xf0,0xf7,0xff,0xff,0x7b]
          vpcmpub $123, -2064(%rdx), %xmm22, %k5

// CHECK: vpcmpub $171, %ymm21, %ymm23, %k2
// CHECK:  encoding: [0x62,0xb3,0x45,0x20,0x3e,0xd5,0xab]
          vpcmpub $171, %ymm21, %ymm23, %k2

// CHECK: vpcmpub $171, %ymm21, %ymm23, %k2 {%k2}
// CHECK:  encoding: [0x62,0xb3,0x45,0x22,0x3e,0xd5,0xab]
          vpcmpub $171, %ymm21, %ymm23, %k2 {%k2}

// CHECK: vpcmpub $123, %ymm21, %ymm23, %k2
// CHECK:  encoding: [0x62,0xb3,0x45,0x20,0x3e,0xd5,0x7b]
          vpcmpub $123, %ymm21, %ymm23, %k2

// CHECK: vpcmpub $123, (%rcx), %ymm23, %k2
// CHECK:  encoding: [0x62,0xf3,0x45,0x20,0x3e,0x11,0x7b]
          vpcmpub $123, (%rcx), %ymm23, %k2

// CHECK: vpcmpub $123, 291(%rax,%r14,8), %ymm23, %k2
// CHECK:  encoding: [0x62,0xb3,0x45,0x20,0x3e,0x94,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpcmpub $123, 291(%rax,%r14,8), %ymm23, %k2

// CHECK: vpcmpub $123, 4064(%rdx), %ymm23, %k2
// CHECK:  encoding: [0x62,0xf3,0x45,0x20,0x3e,0x52,0x7f,0x7b]
          vpcmpub $123, 4064(%rdx), %ymm23, %k2

// CHECK: vpcmpub $123, 4096(%rdx), %ymm23, %k2
// CHECK:  encoding: [0x62,0xf3,0x45,0x20,0x3e,0x92,0x00,0x10,0x00,0x00,0x7b]
          vpcmpub $123, 4096(%rdx), %ymm23, %k2

// CHECK: vpcmpub $123, -4096(%rdx), %ymm23, %k2
// CHECK:  encoding: [0x62,0xf3,0x45,0x20,0x3e,0x52,0x80,0x7b]
          vpcmpub $123, -4096(%rdx), %ymm23, %k2

// CHECK: vpcmpub $123, -4128(%rdx), %ymm23, %k2
// CHECK:  encoding: [0x62,0xf3,0x45,0x20,0x3e,0x92,0xe0,0xef,0xff,0xff,0x7b]
          vpcmpub $123, -4128(%rdx), %ymm23, %k2

// CHECK: vpcmpuw $171, %xmm17, %xmm28, %k5
// CHECK:  encoding: [0x62,0xb3,0x9d,0x00,0x3e,0xe9,0xab]
          vpcmpuw $171, %xmm17, %xmm28, %k5

// CHECK: vpcmpuw $171, %xmm17, %xmm28, %k5 {%k4}
// CHECK:  encoding: [0x62,0xb3,0x9d,0x04,0x3e,0xe9,0xab]
          vpcmpuw $171, %xmm17, %xmm28, %k5 {%k4}

// CHECK: vpcmpuw $123, %xmm17, %xmm28, %k5
// CHECK:  encoding: [0x62,0xb3,0x9d,0x00,0x3e,0xe9,0x7b]
          vpcmpuw $123, %xmm17, %xmm28, %k5

// CHECK: vpcmpuw $123, (%rcx), %xmm28, %k5
// CHECK:  encoding: [0x62,0xf3,0x9d,0x00,0x3e,0x29,0x7b]
          vpcmpuw $123, (%rcx), %xmm28, %k5

// CHECK: vpcmpuw $123, 291(%rax,%r14,8), %xmm28, %k5
// CHECK:  encoding: [0x62,0xb3,0x9d,0x00,0x3e,0xac,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpcmpuw $123, 291(%rax,%r14,8), %xmm28, %k5

// CHECK: vpcmpuw $123, 2032(%rdx), %xmm28, %k5
// CHECK:  encoding: [0x62,0xf3,0x9d,0x00,0x3e,0x6a,0x7f,0x7b]
          vpcmpuw $123, 2032(%rdx), %xmm28, %k5

// CHECK: vpcmpuw $123, 2048(%rdx), %xmm28, %k5
// CHECK:  encoding: [0x62,0xf3,0x9d,0x00,0x3e,0xaa,0x00,0x08,0x00,0x00,0x7b]
          vpcmpuw $123, 2048(%rdx), %xmm28, %k5

// CHECK: vpcmpuw $123, -2048(%rdx), %xmm28, %k5
// CHECK:  encoding: [0x62,0xf3,0x9d,0x00,0x3e,0x6a,0x80,0x7b]
          vpcmpuw $123, -2048(%rdx), %xmm28, %k5

// CHECK: vpcmpuw $123, -2064(%rdx), %xmm28, %k5
// CHECK:  encoding: [0x62,0xf3,0x9d,0x00,0x3e,0xaa,0xf0,0xf7,0xff,0xff,0x7b]
          vpcmpuw $123, -2064(%rdx), %xmm28, %k5

// CHECK: vpcmpuw $171, %ymm28, %ymm27, %k4
// CHECK:  encoding: [0x62,0x93,0xa5,0x20,0x3e,0xe4,0xab]
          vpcmpuw $171, %ymm28, %ymm27, %k4

// CHECK: vpcmpuw $171, %ymm28, %ymm27, %k4 {%k2}
// CHECK:  encoding: [0x62,0x93,0xa5,0x22,0x3e,0xe4,0xab]
          vpcmpuw $171, %ymm28, %ymm27, %k4 {%k2}

// CHECK: vpcmpuw $123, %ymm28, %ymm27, %k4
// CHECK:  encoding: [0x62,0x93,0xa5,0x20,0x3e,0xe4,0x7b]
          vpcmpuw $123, %ymm28, %ymm27, %k4

// CHECK: vpcmpuw $123, (%rcx), %ymm27, %k4
// CHECK:  encoding: [0x62,0xf3,0xa5,0x20,0x3e,0x21,0x7b]
          vpcmpuw $123, (%rcx), %ymm27, %k4

// CHECK: vpcmpuw $123, 291(%rax,%r14,8), %ymm27, %k4
// CHECK:  encoding: [0x62,0xb3,0xa5,0x20,0x3e,0xa4,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpcmpuw $123, 291(%rax,%r14,8), %ymm27, %k4

// CHECK: vpcmpuw $123, 4064(%rdx), %ymm27, %k4
// CHECK:  encoding: [0x62,0xf3,0xa5,0x20,0x3e,0x62,0x7f,0x7b]
          vpcmpuw $123, 4064(%rdx), %ymm27, %k4

// CHECK: vpcmpuw $123, 4096(%rdx), %ymm27, %k4
// CHECK:  encoding: [0x62,0xf3,0xa5,0x20,0x3e,0xa2,0x00,0x10,0x00,0x00,0x7b]
          vpcmpuw $123, 4096(%rdx), %ymm27, %k4

// CHECK: vpcmpuw $123, -4096(%rdx), %ymm27, %k4
// CHECK:  encoding: [0x62,0xf3,0xa5,0x20,0x3e,0x62,0x80,0x7b]
          vpcmpuw $123, -4096(%rdx), %ymm27, %k4

// CHECK: vpcmpuw $123, -4128(%rdx), %ymm27, %k4
// CHECK:  encoding: [0x62,0xf3,0xa5,0x20,0x3e,0xa2,0xe0,0xef,0xff,0xff,0x7b]
          vpcmpuw $123, -4128(%rdx), %ymm27, %k4

// CHECK: vpmaxsb %xmm17, %xmm24, %xmm23
// CHECK:  encoding: [0x62,0xa2,0x3d,0x00,0x3c,0xf9]
          vpmaxsb %xmm17, %xmm24, %xmm23

// CHECK: vpmaxsb %xmm17, %xmm24, %xmm23 {%k3}
// CHECK:  encoding: [0x62,0xa2,0x3d,0x03,0x3c,0xf9]
          vpmaxsb %xmm17, %xmm24, %xmm23 {%k3}

// CHECK: vpmaxsb %xmm17, %xmm24, %xmm23 {%k3} {z}
// CHECK:  encoding: [0x62,0xa2,0x3d,0x83,0x3c,0xf9]
          vpmaxsb %xmm17, %xmm24, %xmm23 {%k3} {z}

// CHECK: vpmaxsb (%rcx), %xmm24, %xmm23
// CHECK:  encoding: [0x62,0xe2,0x3d,0x00,0x3c,0x39]
          vpmaxsb (%rcx), %xmm24, %xmm23

// CHECK: vpmaxsb 291(%rax,%r14,8), %xmm24, %xmm23
// CHECK:  encoding: [0x62,0xa2,0x3d,0x00,0x3c,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vpmaxsb 291(%rax,%r14,8), %xmm24, %xmm23

// CHECK: vpmaxsb 2032(%rdx), %xmm24, %xmm23
// CHECK:  encoding: [0x62,0xe2,0x3d,0x00,0x3c,0x7a,0x7f]
          vpmaxsb 2032(%rdx), %xmm24, %xmm23

// CHECK: vpmaxsb 2048(%rdx), %xmm24, %xmm23
// CHECK:  encoding: [0x62,0xe2,0x3d,0x00,0x3c,0xba,0x00,0x08,0x00,0x00]
          vpmaxsb 2048(%rdx), %xmm24, %xmm23

// CHECK: vpmaxsb -2048(%rdx), %xmm24, %xmm23
// CHECK:  encoding: [0x62,0xe2,0x3d,0x00,0x3c,0x7a,0x80]
          vpmaxsb -2048(%rdx), %xmm24, %xmm23

// CHECK: vpmaxsb -2064(%rdx), %xmm24, %xmm23
// CHECK:  encoding: [0x62,0xe2,0x3d,0x00,0x3c,0xba,0xf0,0xf7,0xff,0xff]
          vpmaxsb -2064(%rdx), %xmm24, %xmm23

// CHECK: vpmaxsb %ymm27, %ymm22, %ymm30
// CHECK:  encoding: [0x62,0x02,0x4d,0x20,0x3c,0xf3]
          vpmaxsb %ymm27, %ymm22, %ymm30

// CHECK: vpmaxsb %ymm27, %ymm22, %ymm30 {%k5}
// CHECK:  encoding: [0x62,0x02,0x4d,0x25,0x3c,0xf3]
          vpmaxsb %ymm27, %ymm22, %ymm30 {%k5}

// CHECK: vpmaxsb %ymm27, %ymm22, %ymm30 {%k5} {z}
// CHECK:  encoding: [0x62,0x02,0x4d,0xa5,0x3c,0xf3]
          vpmaxsb %ymm27, %ymm22, %ymm30 {%k5} {z}

// CHECK: vpmaxsb (%rcx), %ymm22, %ymm30
// CHECK:  encoding: [0x62,0x62,0x4d,0x20,0x3c,0x31]
          vpmaxsb (%rcx), %ymm22, %ymm30

// CHECK: vpmaxsb 291(%rax,%r14,8), %ymm22, %ymm30
// CHECK:  encoding: [0x62,0x22,0x4d,0x20,0x3c,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpmaxsb 291(%rax,%r14,8), %ymm22, %ymm30

// CHECK: vpmaxsb 4064(%rdx), %ymm22, %ymm30
// CHECK:  encoding: [0x62,0x62,0x4d,0x20,0x3c,0x72,0x7f]
          vpmaxsb 4064(%rdx), %ymm22, %ymm30

// CHECK: vpmaxsb 4096(%rdx), %ymm22, %ymm30
// CHECK:  encoding: [0x62,0x62,0x4d,0x20,0x3c,0xb2,0x00,0x10,0x00,0x00]
          vpmaxsb 4096(%rdx), %ymm22, %ymm30

// CHECK: vpmaxsb -4096(%rdx), %ymm22, %ymm30
// CHECK:  encoding: [0x62,0x62,0x4d,0x20,0x3c,0x72,0x80]
          vpmaxsb -4096(%rdx), %ymm22, %ymm30

// CHECK: vpmaxsb -4128(%rdx), %ymm22, %ymm30
// CHECK:  encoding: [0x62,0x62,0x4d,0x20,0x3c,0xb2,0xe0,0xef,0xff,0xff]
          vpmaxsb -4128(%rdx), %ymm22, %ymm30

// CHECK: vpmaxsw %xmm28, %xmm24, %xmm18
// CHECK:  encoding: [0x62,0x81,0x3d,0x00,0xee,0xd4]
          vpmaxsw %xmm28, %xmm24, %xmm18

// CHECK: vpmaxsw %xmm28, %xmm24, %xmm18 {%k3}
// CHECK:  encoding: [0x62,0x81,0x3d,0x03,0xee,0xd4]
          vpmaxsw %xmm28, %xmm24, %xmm18 {%k3}

// CHECK: vpmaxsw %xmm28, %xmm24, %xmm18 {%k3} {z}
// CHECK:  encoding: [0x62,0x81,0x3d,0x83,0xee,0xd4]
          vpmaxsw %xmm28, %xmm24, %xmm18 {%k3} {z}

// CHECK: vpmaxsw (%rcx), %xmm24, %xmm18
// CHECK:  encoding: [0x62,0xe1,0x3d,0x00,0xee,0x11]
          vpmaxsw (%rcx), %xmm24, %xmm18

// CHECK: vpmaxsw 291(%rax,%r14,8), %xmm24, %xmm18
// CHECK:  encoding: [0x62,0xa1,0x3d,0x00,0xee,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpmaxsw 291(%rax,%r14,8), %xmm24, %xmm18

// CHECK: vpmaxsw 2032(%rdx), %xmm24, %xmm18
// CHECK:  encoding: [0x62,0xe1,0x3d,0x00,0xee,0x52,0x7f]
          vpmaxsw 2032(%rdx), %xmm24, %xmm18

// CHECK: vpmaxsw 2048(%rdx), %xmm24, %xmm18
// CHECK:  encoding: [0x62,0xe1,0x3d,0x00,0xee,0x92,0x00,0x08,0x00,0x00]
          vpmaxsw 2048(%rdx), %xmm24, %xmm18

// CHECK: vpmaxsw -2048(%rdx), %xmm24, %xmm18
// CHECK:  encoding: [0x62,0xe1,0x3d,0x00,0xee,0x52,0x80]
          vpmaxsw -2048(%rdx), %xmm24, %xmm18

// CHECK: vpmaxsw -2064(%rdx), %xmm24, %xmm18
// CHECK:  encoding: [0x62,0xe1,0x3d,0x00,0xee,0x92,0xf0,0xf7,0xff,0xff]
          vpmaxsw -2064(%rdx), %xmm24, %xmm18

// CHECK: vpmaxsw %ymm17, %ymm28, %ymm27
// CHECK:  encoding: [0x62,0x21,0x1d,0x20,0xee,0xd9]
          vpmaxsw %ymm17, %ymm28, %ymm27

// CHECK: vpmaxsw %ymm17, %ymm28, %ymm27 {%k6}
// CHECK:  encoding: [0x62,0x21,0x1d,0x26,0xee,0xd9]
          vpmaxsw %ymm17, %ymm28, %ymm27 {%k6}

// CHECK: vpmaxsw %ymm17, %ymm28, %ymm27 {%k6} {z}
// CHECK:  encoding: [0x62,0x21,0x1d,0xa6,0xee,0xd9]
          vpmaxsw %ymm17, %ymm28, %ymm27 {%k6} {z}

// CHECK: vpmaxsw (%rcx), %ymm28, %ymm27
// CHECK:  encoding: [0x62,0x61,0x1d,0x20,0xee,0x19]
          vpmaxsw (%rcx), %ymm28, %ymm27

// CHECK: vpmaxsw 291(%rax,%r14,8), %ymm28, %ymm27
// CHECK:  encoding: [0x62,0x21,0x1d,0x20,0xee,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpmaxsw 291(%rax,%r14,8), %ymm28, %ymm27

// CHECK: vpmaxsw 4064(%rdx), %ymm28, %ymm27
// CHECK:  encoding: [0x62,0x61,0x1d,0x20,0xee,0x5a,0x7f]
          vpmaxsw 4064(%rdx), %ymm28, %ymm27

// CHECK: vpmaxsw 4096(%rdx), %ymm28, %ymm27
// CHECK:  encoding: [0x62,0x61,0x1d,0x20,0xee,0x9a,0x00,0x10,0x00,0x00]
          vpmaxsw 4096(%rdx), %ymm28, %ymm27

// CHECK: vpmaxsw -4096(%rdx), %ymm28, %ymm27
// CHECK:  encoding: [0x62,0x61,0x1d,0x20,0xee,0x5a,0x80]
          vpmaxsw -4096(%rdx), %ymm28, %ymm27

// CHECK: vpmaxsw -4128(%rdx), %ymm28, %ymm27
// CHECK:  encoding: [0x62,0x61,0x1d,0x20,0xee,0x9a,0xe0,0xef,0xff,0xff]
          vpmaxsw -4128(%rdx), %ymm28, %ymm27

// CHECK: vpmaxub %xmm23, %xmm17, %xmm17
// CHECK:  encoding: [0x62,0xa1,0x75,0x00,0xde,0xcf]
          vpmaxub %xmm23, %xmm17, %xmm17

// CHECK: vpmaxub %xmm23, %xmm17, %xmm17 {%k5}
// CHECK:  encoding: [0x62,0xa1,0x75,0x05,0xde,0xcf]
          vpmaxub %xmm23, %xmm17, %xmm17 {%k5}

// CHECK: vpmaxub %xmm23, %xmm17, %xmm17 {%k5} {z}
// CHECK:  encoding: [0x62,0xa1,0x75,0x85,0xde,0xcf]
          vpmaxub %xmm23, %xmm17, %xmm17 {%k5} {z}

// CHECK: vpmaxub (%rcx), %xmm17, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x75,0x00,0xde,0x09]
          vpmaxub (%rcx), %xmm17, %xmm17

// CHECK: vpmaxub 291(%rax,%r14,8), %xmm17, %xmm17
// CHECK:  encoding: [0x62,0xa1,0x75,0x00,0xde,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpmaxub 291(%rax,%r14,8), %xmm17, %xmm17

// CHECK: vpmaxub 2032(%rdx), %xmm17, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x75,0x00,0xde,0x4a,0x7f]
          vpmaxub 2032(%rdx), %xmm17, %xmm17

// CHECK: vpmaxub 2048(%rdx), %xmm17, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x75,0x00,0xde,0x8a,0x00,0x08,0x00,0x00]
          vpmaxub 2048(%rdx), %xmm17, %xmm17

// CHECK: vpmaxub -2048(%rdx), %xmm17, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x75,0x00,0xde,0x4a,0x80]
          vpmaxub -2048(%rdx), %xmm17, %xmm17

// CHECK: vpmaxub -2064(%rdx), %xmm17, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x75,0x00,0xde,0x8a,0xf0,0xf7,0xff,0xff]
          vpmaxub -2064(%rdx), %xmm17, %xmm17

// CHECK: vpmaxub %ymm24, %ymm26, %ymm28
// CHECK:  encoding: [0x62,0x01,0x2d,0x20,0xde,0xe0]
          vpmaxub %ymm24, %ymm26, %ymm28

// CHECK: vpmaxub %ymm24, %ymm26, %ymm28 {%k6}
// CHECK:  encoding: [0x62,0x01,0x2d,0x26,0xde,0xe0]
          vpmaxub %ymm24, %ymm26, %ymm28 {%k6}

// CHECK: vpmaxub %ymm24, %ymm26, %ymm28 {%k6} {z}
// CHECK:  encoding: [0x62,0x01,0x2d,0xa6,0xde,0xe0]
          vpmaxub %ymm24, %ymm26, %ymm28 {%k6} {z}

// CHECK: vpmaxub (%rcx), %ymm26, %ymm28
// CHECK:  encoding: [0x62,0x61,0x2d,0x20,0xde,0x21]
          vpmaxub (%rcx), %ymm26, %ymm28

// CHECK: vpmaxub 291(%rax,%r14,8), %ymm26, %ymm28
// CHECK:  encoding: [0x62,0x21,0x2d,0x20,0xde,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpmaxub 291(%rax,%r14,8), %ymm26, %ymm28

// CHECK: vpmaxub 4064(%rdx), %ymm26, %ymm28
// CHECK:  encoding: [0x62,0x61,0x2d,0x20,0xde,0x62,0x7f]
          vpmaxub 4064(%rdx), %ymm26, %ymm28

// CHECK: vpmaxub 4096(%rdx), %ymm26, %ymm28
// CHECK:  encoding: [0x62,0x61,0x2d,0x20,0xde,0xa2,0x00,0x10,0x00,0x00]
          vpmaxub 4096(%rdx), %ymm26, %ymm28

// CHECK: vpmaxub -4096(%rdx), %ymm26, %ymm28
// CHECK:  encoding: [0x62,0x61,0x2d,0x20,0xde,0x62,0x80]
          vpmaxub -4096(%rdx), %ymm26, %ymm28

// CHECK: vpmaxub -4128(%rdx), %ymm26, %ymm28
// CHECK:  encoding: [0x62,0x61,0x2d,0x20,0xde,0xa2,0xe0,0xef,0xff,0xff]
          vpmaxub -4128(%rdx), %ymm26, %ymm28

// CHECK: vpmaxuw %xmm20, %xmm18, %xmm24
// CHECK:  encoding: [0x62,0x22,0x6d,0x00,0x3e,0xc4]
          vpmaxuw %xmm20, %xmm18, %xmm24

// CHECK: vpmaxuw %xmm20, %xmm18, %xmm24 {%k7}
// CHECK:  encoding: [0x62,0x22,0x6d,0x07,0x3e,0xc4]
          vpmaxuw %xmm20, %xmm18, %xmm24 {%k7}

// CHECK: vpmaxuw %xmm20, %xmm18, %xmm24 {%k7} {z}
// CHECK:  encoding: [0x62,0x22,0x6d,0x87,0x3e,0xc4]
          vpmaxuw %xmm20, %xmm18, %xmm24 {%k7} {z}

// CHECK: vpmaxuw (%rcx), %xmm18, %xmm24
// CHECK:  encoding: [0x62,0x62,0x6d,0x00,0x3e,0x01]
          vpmaxuw (%rcx), %xmm18, %xmm24

// CHECK: vpmaxuw 291(%rax,%r14,8), %xmm18, %xmm24
// CHECK:  encoding: [0x62,0x22,0x6d,0x00,0x3e,0x84,0xf0,0x23,0x01,0x00,0x00]
          vpmaxuw 291(%rax,%r14,8), %xmm18, %xmm24

// CHECK: vpmaxuw 2032(%rdx), %xmm18, %xmm24
// CHECK:  encoding: [0x62,0x62,0x6d,0x00,0x3e,0x42,0x7f]
          vpmaxuw 2032(%rdx), %xmm18, %xmm24

// CHECK: vpmaxuw 2048(%rdx), %xmm18, %xmm24
// CHECK:  encoding: [0x62,0x62,0x6d,0x00,0x3e,0x82,0x00,0x08,0x00,0x00]
          vpmaxuw 2048(%rdx), %xmm18, %xmm24

// CHECK: vpmaxuw -2048(%rdx), %xmm18, %xmm24
// CHECK:  encoding: [0x62,0x62,0x6d,0x00,0x3e,0x42,0x80]
          vpmaxuw -2048(%rdx), %xmm18, %xmm24

// CHECK: vpmaxuw -2064(%rdx), %xmm18, %xmm24
// CHECK:  encoding: [0x62,0x62,0x6d,0x00,0x3e,0x82,0xf0,0xf7,0xff,0xff]
          vpmaxuw -2064(%rdx), %xmm18, %xmm24

// CHECK: vpmaxuw %ymm19, %ymm22, %ymm19
// CHECK:  encoding: [0x62,0xa2,0x4d,0x20,0x3e,0xdb]
          vpmaxuw %ymm19, %ymm22, %ymm19

// CHECK: vpmaxuw %ymm19, %ymm22, %ymm19 {%k7}
// CHECK:  encoding: [0x62,0xa2,0x4d,0x27,0x3e,0xdb]
          vpmaxuw %ymm19, %ymm22, %ymm19 {%k7}

// CHECK: vpmaxuw %ymm19, %ymm22, %ymm19 {%k7} {z}
// CHECK:  encoding: [0x62,0xa2,0x4d,0xa7,0x3e,0xdb]
          vpmaxuw %ymm19, %ymm22, %ymm19 {%k7} {z}

// CHECK: vpmaxuw (%rcx), %ymm22, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x4d,0x20,0x3e,0x19]
          vpmaxuw (%rcx), %ymm22, %ymm19

// CHECK: vpmaxuw 291(%rax,%r14,8), %ymm22, %ymm19
// CHECK:  encoding: [0x62,0xa2,0x4d,0x20,0x3e,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpmaxuw 291(%rax,%r14,8), %ymm22, %ymm19

// CHECK: vpmaxuw 4064(%rdx), %ymm22, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x4d,0x20,0x3e,0x5a,0x7f]
          vpmaxuw 4064(%rdx), %ymm22, %ymm19

// CHECK: vpmaxuw 4096(%rdx), %ymm22, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x4d,0x20,0x3e,0x9a,0x00,0x10,0x00,0x00]
          vpmaxuw 4096(%rdx), %ymm22, %ymm19

// CHECK: vpmaxuw -4096(%rdx), %ymm22, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x4d,0x20,0x3e,0x5a,0x80]
          vpmaxuw -4096(%rdx), %ymm22, %ymm19

// CHECK: vpmaxuw -4128(%rdx), %ymm22, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x4d,0x20,0x3e,0x9a,0xe0,0xef,0xff,0xff]
          vpmaxuw -4128(%rdx), %ymm22, %ymm19

// CHECK: vpminsb %xmm27, %xmm28, %xmm25
// CHECK:  encoding: [0x62,0x02,0x1d,0x00,0x38,0xcb]
          vpminsb %xmm27, %xmm28, %xmm25

// CHECK: vpminsb %xmm27, %xmm28, %xmm25 {%k1}
// CHECK:  encoding: [0x62,0x02,0x1d,0x01,0x38,0xcb]
          vpminsb %xmm27, %xmm28, %xmm25 {%k1}

// CHECK: vpminsb %xmm27, %xmm28, %xmm25 {%k1} {z}
// CHECK:  encoding: [0x62,0x02,0x1d,0x81,0x38,0xcb]
          vpminsb %xmm27, %xmm28, %xmm25 {%k1} {z}

// CHECK: vpminsb (%rcx), %xmm28, %xmm25
// CHECK:  encoding: [0x62,0x62,0x1d,0x00,0x38,0x09]
          vpminsb (%rcx), %xmm28, %xmm25

// CHECK: vpminsb 291(%rax,%r14,8), %xmm28, %xmm25
// CHECK:  encoding: [0x62,0x22,0x1d,0x00,0x38,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpminsb 291(%rax,%r14,8), %xmm28, %xmm25

// CHECK: vpminsb 2032(%rdx), %xmm28, %xmm25
// CHECK:  encoding: [0x62,0x62,0x1d,0x00,0x38,0x4a,0x7f]
          vpminsb 2032(%rdx), %xmm28, %xmm25

// CHECK: vpminsb 2048(%rdx), %xmm28, %xmm25
// CHECK:  encoding: [0x62,0x62,0x1d,0x00,0x38,0x8a,0x00,0x08,0x00,0x00]
          vpminsb 2048(%rdx), %xmm28, %xmm25

// CHECK: vpminsb -2048(%rdx), %xmm28, %xmm25
// CHECK:  encoding: [0x62,0x62,0x1d,0x00,0x38,0x4a,0x80]
          vpminsb -2048(%rdx), %xmm28, %xmm25

// CHECK: vpminsb -2064(%rdx), %xmm28, %xmm25
// CHECK:  encoding: [0x62,0x62,0x1d,0x00,0x38,0x8a,0xf0,0xf7,0xff,0xff]
          vpminsb -2064(%rdx), %xmm28, %xmm25

// CHECK: vpminsb %ymm27, %ymm20, %ymm27
// CHECK:  encoding: [0x62,0x02,0x5d,0x20,0x38,0xdb]
          vpminsb %ymm27, %ymm20, %ymm27

// CHECK: vpminsb %ymm27, %ymm20, %ymm27 {%k6}
// CHECK:  encoding: [0x62,0x02,0x5d,0x26,0x38,0xdb]
          vpminsb %ymm27, %ymm20, %ymm27 {%k6}

// CHECK: vpminsb %ymm27, %ymm20, %ymm27 {%k6} {z}
// CHECK:  encoding: [0x62,0x02,0x5d,0xa6,0x38,0xdb]
          vpminsb %ymm27, %ymm20, %ymm27 {%k6} {z}

// CHECK: vpminsb (%rcx), %ymm20, %ymm27
// CHECK:  encoding: [0x62,0x62,0x5d,0x20,0x38,0x19]
          vpminsb (%rcx), %ymm20, %ymm27

// CHECK: vpminsb 291(%rax,%r14,8), %ymm20, %ymm27
// CHECK:  encoding: [0x62,0x22,0x5d,0x20,0x38,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpminsb 291(%rax,%r14,8), %ymm20, %ymm27

// CHECK: vpminsb 4064(%rdx), %ymm20, %ymm27
// CHECK:  encoding: [0x62,0x62,0x5d,0x20,0x38,0x5a,0x7f]
          vpminsb 4064(%rdx), %ymm20, %ymm27

// CHECK: vpminsb 4096(%rdx), %ymm20, %ymm27
// CHECK:  encoding: [0x62,0x62,0x5d,0x20,0x38,0x9a,0x00,0x10,0x00,0x00]
          vpminsb 4096(%rdx), %ymm20, %ymm27

// CHECK: vpminsb -4096(%rdx), %ymm20, %ymm27
// CHECK:  encoding: [0x62,0x62,0x5d,0x20,0x38,0x5a,0x80]
          vpminsb -4096(%rdx), %ymm20, %ymm27

// CHECK: vpminsb -4128(%rdx), %ymm20, %ymm27
// CHECK:  encoding: [0x62,0x62,0x5d,0x20,0x38,0x9a,0xe0,0xef,0xff,0xff]
          vpminsb -4128(%rdx), %ymm20, %ymm27

// CHECK: vpminsw %xmm19, %xmm26, %xmm27
// CHECK:  encoding: [0x62,0x21,0x2d,0x00,0xea,0xdb]
          vpminsw %xmm19, %xmm26, %xmm27

// CHECK: vpminsw %xmm19, %xmm26, %xmm27 {%k2}
// CHECK:  encoding: [0x62,0x21,0x2d,0x02,0xea,0xdb]
          vpminsw %xmm19, %xmm26, %xmm27 {%k2}

// CHECK: vpminsw %xmm19, %xmm26, %xmm27 {%k2} {z}
// CHECK:  encoding: [0x62,0x21,0x2d,0x82,0xea,0xdb]
          vpminsw %xmm19, %xmm26, %xmm27 {%k2} {z}

// CHECK: vpminsw (%rcx), %xmm26, %xmm27
// CHECK:  encoding: [0x62,0x61,0x2d,0x00,0xea,0x19]
          vpminsw (%rcx), %xmm26, %xmm27

// CHECK: vpminsw 291(%rax,%r14,8), %xmm26, %xmm27
// CHECK:  encoding: [0x62,0x21,0x2d,0x00,0xea,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpminsw 291(%rax,%r14,8), %xmm26, %xmm27

// CHECK: vpminsw 2032(%rdx), %xmm26, %xmm27
// CHECK:  encoding: [0x62,0x61,0x2d,0x00,0xea,0x5a,0x7f]
          vpminsw 2032(%rdx), %xmm26, %xmm27

// CHECK: vpminsw 2048(%rdx), %xmm26, %xmm27
// CHECK:  encoding: [0x62,0x61,0x2d,0x00,0xea,0x9a,0x00,0x08,0x00,0x00]
          vpminsw 2048(%rdx), %xmm26, %xmm27

// CHECK: vpminsw -2048(%rdx), %xmm26, %xmm27
// CHECK:  encoding: [0x62,0x61,0x2d,0x00,0xea,0x5a,0x80]
          vpminsw -2048(%rdx), %xmm26, %xmm27

// CHECK: vpminsw -2064(%rdx), %xmm26, %xmm27
// CHECK:  encoding: [0x62,0x61,0x2d,0x00,0xea,0x9a,0xf0,0xf7,0xff,0xff]
          vpminsw -2064(%rdx), %xmm26, %xmm27

// CHECK: vpminsw %ymm27, %ymm23, %ymm21
// CHECK:  encoding: [0x62,0x81,0x45,0x20,0xea,0xeb]
          vpminsw %ymm27, %ymm23, %ymm21

// CHECK: vpminsw %ymm27, %ymm23, %ymm21 {%k2}
// CHECK:  encoding: [0x62,0x81,0x45,0x22,0xea,0xeb]
          vpminsw %ymm27, %ymm23, %ymm21 {%k2}

// CHECK: vpminsw %ymm27, %ymm23, %ymm21 {%k2} {z}
// CHECK:  encoding: [0x62,0x81,0x45,0xa2,0xea,0xeb]
          vpminsw %ymm27, %ymm23, %ymm21 {%k2} {z}

// CHECK: vpminsw (%rcx), %ymm23, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x45,0x20,0xea,0x29]
          vpminsw (%rcx), %ymm23, %ymm21

// CHECK: vpminsw 291(%rax,%r14,8), %ymm23, %ymm21
// CHECK:  encoding: [0x62,0xa1,0x45,0x20,0xea,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpminsw 291(%rax,%r14,8), %ymm23, %ymm21

// CHECK: vpminsw 4064(%rdx), %ymm23, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x45,0x20,0xea,0x6a,0x7f]
          vpminsw 4064(%rdx), %ymm23, %ymm21

// CHECK: vpminsw 4096(%rdx), %ymm23, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x45,0x20,0xea,0xaa,0x00,0x10,0x00,0x00]
          vpminsw 4096(%rdx), %ymm23, %ymm21

// CHECK: vpminsw -4096(%rdx), %ymm23, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x45,0x20,0xea,0x6a,0x80]
          vpminsw -4096(%rdx), %ymm23, %ymm21

// CHECK: vpminsw -4128(%rdx), %ymm23, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x45,0x20,0xea,0xaa,0xe0,0xef,0xff,0xff]
          vpminsw -4128(%rdx), %ymm23, %ymm21

// CHECK: vpminub %xmm27, %xmm27, %xmm22
// CHECK:  encoding: [0x62,0x81,0x25,0x00,0xda,0xf3]
          vpminub %xmm27, %xmm27, %xmm22

// CHECK: vpminub %xmm27, %xmm27, %xmm22 {%k5}
// CHECK:  encoding: [0x62,0x81,0x25,0x05,0xda,0xf3]
          vpminub %xmm27, %xmm27, %xmm22 {%k5}

// CHECK: vpminub %xmm27, %xmm27, %xmm22 {%k5} {z}
// CHECK:  encoding: [0x62,0x81,0x25,0x85,0xda,0xf3]
          vpminub %xmm27, %xmm27, %xmm22 {%k5} {z}

// CHECK: vpminub (%rcx), %xmm27, %xmm22
// CHECK:  encoding: [0x62,0xe1,0x25,0x00,0xda,0x31]
          vpminub (%rcx), %xmm27, %xmm22

// CHECK: vpminub 291(%rax,%r14,8), %xmm27, %xmm22
// CHECK:  encoding: [0x62,0xa1,0x25,0x00,0xda,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpminub 291(%rax,%r14,8), %xmm27, %xmm22

// CHECK: vpminub 2032(%rdx), %xmm27, %xmm22
// CHECK:  encoding: [0x62,0xe1,0x25,0x00,0xda,0x72,0x7f]
          vpminub 2032(%rdx), %xmm27, %xmm22

// CHECK: vpminub 2048(%rdx), %xmm27, %xmm22
// CHECK:  encoding: [0x62,0xe1,0x25,0x00,0xda,0xb2,0x00,0x08,0x00,0x00]
          vpminub 2048(%rdx), %xmm27, %xmm22

// CHECK: vpminub -2048(%rdx), %xmm27, %xmm22
// CHECK:  encoding: [0x62,0xe1,0x25,0x00,0xda,0x72,0x80]
          vpminub -2048(%rdx), %xmm27, %xmm22

// CHECK: vpminub -2064(%rdx), %xmm27, %xmm22
// CHECK:  encoding: [0x62,0xe1,0x25,0x00,0xda,0xb2,0xf0,0xf7,0xff,0xff]
          vpminub -2064(%rdx), %xmm27, %xmm22

// CHECK: vpminub %ymm27, %ymm25, %ymm27
// CHECK:  encoding: [0x62,0x01,0x35,0x20,0xda,0xdb]
          vpminub %ymm27, %ymm25, %ymm27

// CHECK: vpminub %ymm27, %ymm25, %ymm27 {%k3}
// CHECK:  encoding: [0x62,0x01,0x35,0x23,0xda,0xdb]
          vpminub %ymm27, %ymm25, %ymm27 {%k3}

// CHECK: vpminub %ymm27, %ymm25, %ymm27 {%k3} {z}
// CHECK:  encoding: [0x62,0x01,0x35,0xa3,0xda,0xdb]
          vpminub %ymm27, %ymm25, %ymm27 {%k3} {z}

// CHECK: vpminub (%rcx), %ymm25, %ymm27
// CHECK:  encoding: [0x62,0x61,0x35,0x20,0xda,0x19]
          vpminub (%rcx), %ymm25, %ymm27

// CHECK: vpminub 291(%rax,%r14,8), %ymm25, %ymm27
// CHECK:  encoding: [0x62,0x21,0x35,0x20,0xda,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpminub 291(%rax,%r14,8), %ymm25, %ymm27

// CHECK: vpminub 4064(%rdx), %ymm25, %ymm27
// CHECK:  encoding: [0x62,0x61,0x35,0x20,0xda,0x5a,0x7f]
          vpminub 4064(%rdx), %ymm25, %ymm27

// CHECK: vpminub 4096(%rdx), %ymm25, %ymm27
// CHECK:  encoding: [0x62,0x61,0x35,0x20,0xda,0x9a,0x00,0x10,0x00,0x00]
          vpminub 4096(%rdx), %ymm25, %ymm27

// CHECK: vpminub -4096(%rdx), %ymm25, %ymm27
// CHECK:  encoding: [0x62,0x61,0x35,0x20,0xda,0x5a,0x80]
          vpminub -4096(%rdx), %ymm25, %ymm27

// CHECK: vpminub -4128(%rdx), %ymm25, %ymm27
// CHECK:  encoding: [0x62,0x61,0x35,0x20,0xda,0x9a,0xe0,0xef,0xff,0xff]
          vpminub -4128(%rdx), %ymm25, %ymm27

// CHECK: vpminuw %xmm23, %xmm17, %xmm28
// CHECK:  encoding: [0x62,0x22,0x75,0x00,0x3a,0xe7]
          vpminuw %xmm23, %xmm17, %xmm28

// CHECK: vpminuw %xmm23, %xmm17, %xmm28 {%k2}
// CHECK:  encoding: [0x62,0x22,0x75,0x02,0x3a,0xe7]
          vpminuw %xmm23, %xmm17, %xmm28 {%k2}

// CHECK: vpminuw %xmm23, %xmm17, %xmm28 {%k2} {z}
// CHECK:  encoding: [0x62,0x22,0x75,0x82,0x3a,0xe7]
          vpminuw %xmm23, %xmm17, %xmm28 {%k2} {z}

// CHECK: vpminuw (%rcx), %xmm17, %xmm28
// CHECK:  encoding: [0x62,0x62,0x75,0x00,0x3a,0x21]
          vpminuw (%rcx), %xmm17, %xmm28

// CHECK: vpminuw 291(%rax,%r14,8), %xmm17, %xmm28
// CHECK:  encoding: [0x62,0x22,0x75,0x00,0x3a,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpminuw 291(%rax,%r14,8), %xmm17, %xmm28

// CHECK: vpminuw 2032(%rdx), %xmm17, %xmm28
// CHECK:  encoding: [0x62,0x62,0x75,0x00,0x3a,0x62,0x7f]
          vpminuw 2032(%rdx), %xmm17, %xmm28

// CHECK: vpminuw 2048(%rdx), %xmm17, %xmm28
// CHECK:  encoding: [0x62,0x62,0x75,0x00,0x3a,0xa2,0x00,0x08,0x00,0x00]
          vpminuw 2048(%rdx), %xmm17, %xmm28

// CHECK: vpminuw -2048(%rdx), %xmm17, %xmm28
// CHECK:  encoding: [0x62,0x62,0x75,0x00,0x3a,0x62,0x80]
          vpminuw -2048(%rdx), %xmm17, %xmm28

// CHECK: vpminuw -2064(%rdx), %xmm17, %xmm28
// CHECK:  encoding: [0x62,0x62,0x75,0x00,0x3a,0xa2,0xf0,0xf7,0xff,0xff]
          vpminuw -2064(%rdx), %xmm17, %xmm28

// CHECK: vpminuw %ymm18, %ymm27, %ymm20
// CHECK:  encoding: [0x62,0xa2,0x25,0x20,0x3a,0xe2]
          vpminuw %ymm18, %ymm27, %ymm20

// CHECK: vpminuw %ymm18, %ymm27, %ymm20 {%k7}
// CHECK:  encoding: [0x62,0xa2,0x25,0x27,0x3a,0xe2]
          vpminuw %ymm18, %ymm27, %ymm20 {%k7}

// CHECK: vpminuw %ymm18, %ymm27, %ymm20 {%k7} {z}
// CHECK:  encoding: [0x62,0xa2,0x25,0xa7,0x3a,0xe2]
          vpminuw %ymm18, %ymm27, %ymm20 {%k7} {z}

// CHECK: vpminuw (%rcx), %ymm27, %ymm20
// CHECK:  encoding: [0x62,0xe2,0x25,0x20,0x3a,0x21]
          vpminuw (%rcx), %ymm27, %ymm20

// CHECK: vpminuw 291(%rax,%r14,8), %ymm27, %ymm20
// CHECK:  encoding: [0x62,0xa2,0x25,0x20,0x3a,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpminuw 291(%rax,%r14,8), %ymm27, %ymm20

// CHECK: vpminuw 4064(%rdx), %ymm27, %ymm20
// CHECK:  encoding: [0x62,0xe2,0x25,0x20,0x3a,0x62,0x7f]
          vpminuw 4064(%rdx), %ymm27, %ymm20

// CHECK: vpminuw 4096(%rdx), %ymm27, %ymm20
// CHECK:  encoding: [0x62,0xe2,0x25,0x20,0x3a,0xa2,0x00,0x10,0x00,0x00]
          vpminuw 4096(%rdx), %ymm27, %ymm20

// CHECK: vpminuw -4096(%rdx), %ymm27, %ymm20
// CHECK:  encoding: [0x62,0xe2,0x25,0x20,0x3a,0x62,0x80]
          vpminuw -4096(%rdx), %ymm27, %ymm20

// CHECK: vpminuw -4128(%rdx), %ymm27, %ymm20
// CHECK:  encoding: [0x62,0xe2,0x25,0x20,0x3a,0xa2,0xe0,0xef,0xff,0xff]
          vpminuw -4128(%rdx), %ymm27, %ymm20

// CHECK: vpmovsxbw %xmm23, %xmm27
// CHECK:  encoding: [0x62,0x22,0x7d,0x08,0x20,0xdf]
          vpmovsxbw %xmm23, %xmm27

// CHECK: vpmovsxbw %xmm23, %xmm27 {%k7}
// CHECK:  encoding: [0x62,0x22,0x7d,0x0f,0x20,0xdf]
          vpmovsxbw %xmm23, %xmm27 {%k7}

// CHECK: vpmovsxbw %xmm23, %xmm27 {%k7} {z}
// CHECK:  encoding: [0x62,0x22,0x7d,0x8f,0x20,0xdf]
          vpmovsxbw %xmm23, %xmm27 {%k7} {z}

// CHECK: vpmovsxbw (%rcx), %xmm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x20,0x19]
          vpmovsxbw (%rcx), %xmm27

// CHECK: vpmovsxbw 291(%rax,%r14,8), %xmm27
// CHECK:  encoding: [0x62,0x22,0x7d,0x08,0x20,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpmovsxbw 291(%rax,%r14,8), %xmm27

// CHECK: vpmovsxbw 1016(%rdx), %xmm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x20,0x5a,0x7f]
          vpmovsxbw 1016(%rdx), %xmm27

// CHECK: vpmovsxbw 1024(%rdx), %xmm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x20,0x9a,0x00,0x04,0x00,0x00]
          vpmovsxbw 1024(%rdx), %xmm27

// CHECK: vpmovsxbw -1024(%rdx), %xmm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x20,0x5a,0x80]
          vpmovsxbw -1024(%rdx), %xmm27

// CHECK: vpmovsxbw -1032(%rdx), %xmm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x20,0x9a,0xf8,0xfb,0xff,0xff]
          vpmovsxbw -1032(%rdx), %xmm27

// CHECK: vpmovsxbw %xmm23, %ymm21
// CHECK:  encoding: [0x62,0xa2,0x7d,0x28,0x20,0xef]
          vpmovsxbw %xmm23, %ymm21

// CHECK: vpmovsxbw %xmm23, %ymm21 {%k7}
// CHECK:  encoding: [0x62,0xa2,0x7d,0x2f,0x20,0xef]
          vpmovsxbw %xmm23, %ymm21 {%k7}

// CHECK: vpmovsxbw %xmm23, %ymm21 {%k7} {z}
// CHECK:  encoding: [0x62,0xa2,0x7d,0xaf,0x20,0xef]
          vpmovsxbw %xmm23, %ymm21 {%k7} {z}

// CHECK: vpmovsxbw (%rcx), %ymm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x20,0x29]
          vpmovsxbw (%rcx), %ymm21

// CHECK: vpmovsxbw 291(%rax,%r14,8), %ymm21
// CHECK:  encoding: [0x62,0xa2,0x7d,0x28,0x20,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpmovsxbw 291(%rax,%r14,8), %ymm21

// CHECK: vpmovsxbw 2032(%rdx), %ymm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x20,0x6a,0x7f]
          vpmovsxbw 2032(%rdx), %ymm21

// CHECK: vpmovsxbw 2048(%rdx), %ymm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x20,0xaa,0x00,0x08,0x00,0x00]
          vpmovsxbw 2048(%rdx), %ymm21

// CHECK: vpmovsxbw -2048(%rdx), %ymm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x20,0x6a,0x80]
          vpmovsxbw -2048(%rdx), %ymm21

// CHECK: vpmovsxbw -2064(%rdx), %ymm21
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x20,0xaa,0xf0,0xf7,0xff,0xff]
          vpmovsxbw -2064(%rdx), %ymm21

// CHECK: vpmovzxbw %xmm29, %xmm30
// CHECK:  encoding: [0x62,0x02,0x7d,0x08,0x30,0xf5]
          vpmovzxbw %xmm29, %xmm30

// CHECK: vpmovzxbw %xmm29, %xmm30 {%k7}
// CHECK:  encoding: [0x62,0x02,0x7d,0x0f,0x30,0xf5]
          vpmovzxbw %xmm29, %xmm30 {%k7}

// CHECK: vpmovzxbw %xmm29, %xmm30 {%k7} {z}
// CHECK:  encoding: [0x62,0x02,0x7d,0x8f,0x30,0xf5]
          vpmovzxbw %xmm29, %xmm30 {%k7} {z}

// CHECK: vpmovzxbw (%rcx), %xmm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x30,0x31]
          vpmovzxbw (%rcx), %xmm30

// CHECK: vpmovzxbw 291(%rax,%r14,8), %xmm30
// CHECK:  encoding: [0x62,0x22,0x7d,0x08,0x30,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpmovzxbw 291(%rax,%r14,8), %xmm30

// CHECK: vpmovzxbw 1016(%rdx), %xmm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x30,0x72,0x7f]
          vpmovzxbw 1016(%rdx), %xmm30

// CHECK: vpmovzxbw 1024(%rdx), %xmm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x30,0xb2,0x00,0x04,0x00,0x00]
          vpmovzxbw 1024(%rdx), %xmm30

// CHECK: vpmovzxbw -1024(%rdx), %xmm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x30,0x72,0x80]
          vpmovzxbw -1024(%rdx), %xmm30

// CHECK: vpmovzxbw -1032(%rdx), %xmm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x30,0xb2,0xf8,0xfb,0xff,0xff]
          vpmovzxbw -1032(%rdx), %xmm30

// CHECK: vpmovzxbw %xmm29, %ymm22
// CHECK:  encoding: [0x62,0x82,0x7d,0x28,0x30,0xf5]
          vpmovzxbw %xmm29, %ymm22

// CHECK: vpmovzxbw %xmm29, %ymm22 {%k2}
// CHECK:  encoding: [0x62,0x82,0x7d,0x2a,0x30,0xf5]
          vpmovzxbw %xmm29, %ymm22 {%k2}

// CHECK: vpmovzxbw %xmm29, %ymm22 {%k2} {z}
// CHECK:  encoding: [0x62,0x82,0x7d,0xaa,0x30,0xf5]
          vpmovzxbw %xmm29, %ymm22 {%k2} {z}

// CHECK: vpmovzxbw (%rcx), %ymm22
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x30,0x31]
          vpmovzxbw (%rcx), %ymm22

// CHECK: vpmovzxbw 291(%rax,%r14,8), %ymm22
// CHECK:  encoding: [0x62,0xa2,0x7d,0x28,0x30,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpmovzxbw 291(%rax,%r14,8), %ymm22

// CHECK: vpmovzxbw 2032(%rdx), %ymm22
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x30,0x72,0x7f]
          vpmovzxbw 2032(%rdx), %ymm22

// CHECK: vpmovzxbw 2048(%rdx), %ymm22
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x30,0xb2,0x00,0x08,0x00,0x00]
          vpmovzxbw 2048(%rdx), %ymm22

// CHECK: vpmovzxbw -2048(%rdx), %ymm22
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x30,0x72,0x80]
          vpmovzxbw -2048(%rdx), %ymm22

// CHECK: vpmovzxbw -2064(%rdx), %ymm22
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x30,0xb2,0xf0,0xf7,0xff,0xff]
          vpmovzxbw -2064(%rdx), %ymm22

// CHECK: vpmullw %xmm26, %xmm19, %xmm29
// CHECK:  encoding: [0x62,0x01,0x65,0x00,0xd5,0xea]
          vpmullw %xmm26, %xmm19, %xmm29

// CHECK: vpmullw %xmm26, %xmm19, %xmm29 {%k7}
// CHECK:  encoding: [0x62,0x01,0x65,0x07,0xd5,0xea]
          vpmullw %xmm26, %xmm19, %xmm29 {%k7}

// CHECK: vpmullw %xmm26, %xmm19, %xmm29 {%k7} {z}
// CHECK:  encoding: [0x62,0x01,0x65,0x87,0xd5,0xea]
          vpmullw %xmm26, %xmm19, %xmm29 {%k7} {z}

// CHECK: vpmullw (%rcx), %xmm19, %xmm29
// CHECK:  encoding: [0x62,0x61,0x65,0x00,0xd5,0x29]
          vpmullw (%rcx), %xmm19, %xmm29

// CHECK: vpmullw 291(%rax,%r14,8), %xmm19, %xmm29
// CHECK:  encoding: [0x62,0x21,0x65,0x00,0xd5,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpmullw 291(%rax,%r14,8), %xmm19, %xmm29

// CHECK: vpmullw 2032(%rdx), %xmm19, %xmm29
// CHECK:  encoding: [0x62,0x61,0x65,0x00,0xd5,0x6a,0x7f]
          vpmullw 2032(%rdx), %xmm19, %xmm29

// CHECK: vpmullw 2048(%rdx), %xmm19, %xmm29
// CHECK:  encoding: [0x62,0x61,0x65,0x00,0xd5,0xaa,0x00,0x08,0x00,0x00]
          vpmullw 2048(%rdx), %xmm19, %xmm29

// CHECK: vpmullw -2048(%rdx), %xmm19, %xmm29
// CHECK:  encoding: [0x62,0x61,0x65,0x00,0xd5,0x6a,0x80]
          vpmullw -2048(%rdx), %xmm19, %xmm29

// CHECK: vpmullw -2064(%rdx), %xmm19, %xmm29
// CHECK:  encoding: [0x62,0x61,0x65,0x00,0xd5,0xaa,0xf0,0xf7,0xff,0xff]
          vpmullw -2064(%rdx), %xmm19, %xmm29

// CHECK: vpmullw %ymm20, %ymm24, %ymm17
// CHECK:  encoding: [0x62,0xa1,0x3d,0x20,0xd5,0xcc]
          vpmullw %ymm20, %ymm24, %ymm17

// CHECK: vpmullw %ymm20, %ymm24, %ymm17 {%k5}
// CHECK:  encoding: [0x62,0xa1,0x3d,0x25,0xd5,0xcc]
          vpmullw %ymm20, %ymm24, %ymm17 {%k5}

// CHECK: vpmullw %ymm20, %ymm24, %ymm17 {%k5} {z}
// CHECK:  encoding: [0x62,0xa1,0x3d,0xa5,0xd5,0xcc]
          vpmullw %ymm20, %ymm24, %ymm17 {%k5} {z}

// CHECK: vpmullw (%rcx), %ymm24, %ymm17
// CHECK:  encoding: [0x62,0xe1,0x3d,0x20,0xd5,0x09]
          vpmullw (%rcx), %ymm24, %ymm17

// CHECK: vpmullw 291(%rax,%r14,8), %ymm24, %ymm17
// CHECK:  encoding: [0x62,0xa1,0x3d,0x20,0xd5,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpmullw 291(%rax,%r14,8), %ymm24, %ymm17

// CHECK: vpmullw 4064(%rdx), %ymm24, %ymm17
// CHECK:  encoding: [0x62,0xe1,0x3d,0x20,0xd5,0x4a,0x7f]
          vpmullw 4064(%rdx), %ymm24, %ymm17

// CHECK: vpmullw 4096(%rdx), %ymm24, %ymm17
// CHECK:  encoding: [0x62,0xe1,0x3d,0x20,0xd5,0x8a,0x00,0x10,0x00,0x00]
          vpmullw 4096(%rdx), %ymm24, %ymm17

// CHECK: vpmullw -4096(%rdx), %ymm24, %ymm17
// CHECK:  encoding: [0x62,0xe1,0x3d,0x20,0xd5,0x4a,0x80]
          vpmullw -4096(%rdx), %ymm24, %ymm17

// CHECK: vpmullw -4128(%rdx), %ymm24, %ymm17
// CHECK:  encoding: [0x62,0xe1,0x3d,0x20,0xd5,0x8a,0xe0,0xef,0xff,0xff]
          vpmullw -4128(%rdx), %ymm24, %ymm17

// CHECK: vpsubb %xmm28, %xmm29, %xmm27
// CHECK:  encoding: [0x62,0x01,0x15,0x00,0xf8,0xdc]
          vpsubb %xmm28, %xmm29, %xmm27

// CHECK: vpsubb %xmm28, %xmm29, %xmm27 {%k3}
// CHECK:  encoding: [0x62,0x01,0x15,0x03,0xf8,0xdc]
          vpsubb %xmm28, %xmm29, %xmm27 {%k3}

// CHECK: vpsubb %xmm28, %xmm29, %xmm27 {%k3} {z}
// CHECK:  encoding: [0x62,0x01,0x15,0x83,0xf8,0xdc]
          vpsubb %xmm28, %xmm29, %xmm27 {%k3} {z}

// CHECK: vpsubb (%rcx), %xmm29, %xmm27
// CHECK:  encoding: [0x62,0x61,0x15,0x00,0xf8,0x19]
          vpsubb (%rcx), %xmm29, %xmm27

// CHECK: vpsubb 291(%rax,%r14,8), %xmm29, %xmm27
// CHECK:  encoding: [0x62,0x21,0x15,0x00,0xf8,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpsubb 291(%rax,%r14,8), %xmm29, %xmm27

// CHECK: vpsubb 2032(%rdx), %xmm29, %xmm27
// CHECK:  encoding: [0x62,0x61,0x15,0x00,0xf8,0x5a,0x7f]
          vpsubb 2032(%rdx), %xmm29, %xmm27

// CHECK: vpsubb 2048(%rdx), %xmm29, %xmm27
// CHECK:  encoding: [0x62,0x61,0x15,0x00,0xf8,0x9a,0x00,0x08,0x00,0x00]
          vpsubb 2048(%rdx), %xmm29, %xmm27

// CHECK: vpsubb -2048(%rdx), %xmm29, %xmm27
// CHECK:  encoding: [0x62,0x61,0x15,0x00,0xf8,0x5a,0x80]
          vpsubb -2048(%rdx), %xmm29, %xmm27

// CHECK: vpsubb -2064(%rdx), %xmm29, %xmm27
// CHECK:  encoding: [0x62,0x61,0x15,0x00,0xf8,0x9a,0xf0,0xf7,0xff,0xff]
          vpsubb -2064(%rdx), %xmm29, %xmm27

// CHECK: vpsubb %ymm28, %ymm20, %ymm20
// CHECK:  encoding: [0x62,0x81,0x5d,0x20,0xf8,0xe4]
          vpsubb %ymm28, %ymm20, %ymm20

// CHECK: vpsubb %ymm28, %ymm20, %ymm20 {%k2}
// CHECK:  encoding: [0x62,0x81,0x5d,0x22,0xf8,0xe4]
          vpsubb %ymm28, %ymm20, %ymm20 {%k2}

// CHECK: vpsubb %ymm28, %ymm20, %ymm20 {%k2} {z}
// CHECK:  encoding: [0x62,0x81,0x5d,0xa2,0xf8,0xe4]
          vpsubb %ymm28, %ymm20, %ymm20 {%k2} {z}

// CHECK: vpsubb (%rcx), %ymm20, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x5d,0x20,0xf8,0x21]
          vpsubb (%rcx), %ymm20, %ymm20

// CHECK: vpsubb 291(%rax,%r14,8), %ymm20, %ymm20
// CHECK:  encoding: [0x62,0xa1,0x5d,0x20,0xf8,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpsubb 291(%rax,%r14,8), %ymm20, %ymm20

// CHECK: vpsubb 4064(%rdx), %ymm20, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x5d,0x20,0xf8,0x62,0x7f]
          vpsubb 4064(%rdx), %ymm20, %ymm20

// CHECK: vpsubb 4096(%rdx), %ymm20, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x5d,0x20,0xf8,0xa2,0x00,0x10,0x00,0x00]
          vpsubb 4096(%rdx), %ymm20, %ymm20

// CHECK: vpsubb -4096(%rdx), %ymm20, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x5d,0x20,0xf8,0x62,0x80]
          vpsubb -4096(%rdx), %ymm20, %ymm20

// CHECK: vpsubb -4128(%rdx), %ymm20, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x5d,0x20,0xf8,0xa2,0xe0,0xef,0xff,0xff]
          vpsubb -4128(%rdx), %ymm20, %ymm20

// CHECK: vpsubw %xmm18, %xmm22, %xmm17
// CHECK:  encoding: [0x62,0xa1,0x4d,0x00,0xf9,0xca]
          vpsubw %xmm18, %xmm22, %xmm17

// CHECK: vpsubw %xmm18, %xmm22, %xmm17 {%k6}
// CHECK:  encoding: [0x62,0xa1,0x4d,0x06,0xf9,0xca]
          vpsubw %xmm18, %xmm22, %xmm17 {%k6}

// CHECK: vpsubw %xmm18, %xmm22, %xmm17 {%k6} {z}
// CHECK:  encoding: [0x62,0xa1,0x4d,0x86,0xf9,0xca]
          vpsubw %xmm18, %xmm22, %xmm17 {%k6} {z}

// CHECK: vpsubw (%rcx), %xmm22, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x4d,0x00,0xf9,0x09]
          vpsubw (%rcx), %xmm22, %xmm17

// CHECK: vpsubw 291(%rax,%r14,8), %xmm22, %xmm17
// CHECK:  encoding: [0x62,0xa1,0x4d,0x00,0xf9,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpsubw 291(%rax,%r14,8), %xmm22, %xmm17

// CHECK: vpsubw 2032(%rdx), %xmm22, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x4d,0x00,0xf9,0x4a,0x7f]
          vpsubw 2032(%rdx), %xmm22, %xmm17

// CHECK: vpsubw 2048(%rdx), %xmm22, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x4d,0x00,0xf9,0x8a,0x00,0x08,0x00,0x00]
          vpsubw 2048(%rdx), %xmm22, %xmm17

// CHECK: vpsubw -2048(%rdx), %xmm22, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x4d,0x00,0xf9,0x4a,0x80]
          vpsubw -2048(%rdx), %xmm22, %xmm17

// CHECK: vpsubw -2064(%rdx), %xmm22, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x4d,0x00,0xf9,0x8a,0xf0,0xf7,0xff,0xff]
          vpsubw -2064(%rdx), %xmm22, %xmm17

// CHECK: vpsubw %ymm24, %ymm29, %ymm17
// CHECK:  encoding: [0x62,0x81,0x15,0x20,0xf9,0xc8]
          vpsubw %ymm24, %ymm29, %ymm17

// CHECK: vpsubw %ymm24, %ymm29, %ymm17 {%k2}
// CHECK:  encoding: [0x62,0x81,0x15,0x22,0xf9,0xc8]
          vpsubw %ymm24, %ymm29, %ymm17 {%k2}

// CHECK: vpsubw %ymm24, %ymm29, %ymm17 {%k2} {z}
// CHECK:  encoding: [0x62,0x81,0x15,0xa2,0xf9,0xc8]
          vpsubw %ymm24, %ymm29, %ymm17 {%k2} {z}

// CHECK: vpsubw (%rcx), %ymm29, %ymm17
// CHECK:  encoding: [0x62,0xe1,0x15,0x20,0xf9,0x09]
          vpsubw (%rcx), %ymm29, %ymm17

// CHECK: vpsubw 291(%rax,%r14,8), %ymm29, %ymm17
// CHECK:  encoding: [0x62,0xa1,0x15,0x20,0xf9,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpsubw 291(%rax,%r14,8), %ymm29, %ymm17

// CHECK: vpsubw 4064(%rdx), %ymm29, %ymm17
// CHECK:  encoding: [0x62,0xe1,0x15,0x20,0xf9,0x4a,0x7f]
          vpsubw 4064(%rdx), %ymm29, %ymm17

// CHECK: vpsubw 4096(%rdx), %ymm29, %ymm17
// CHECK:  encoding: [0x62,0xe1,0x15,0x20,0xf9,0x8a,0x00,0x10,0x00,0x00]
          vpsubw 4096(%rdx), %ymm29, %ymm17

// CHECK: vpsubw -4096(%rdx), %ymm29, %ymm17
// CHECK:  encoding: [0x62,0xe1,0x15,0x20,0xf9,0x4a,0x80]
          vpsubw -4096(%rdx), %ymm29, %ymm17

// CHECK: vpsubw -4128(%rdx), %ymm29, %ymm17
// CHECK:  encoding: [0x62,0xe1,0x15,0x20,0xf9,0x8a,0xe0,0xef,0xff,0xff]
          vpsubw -4128(%rdx), %ymm29, %ymm17

// CHECK: vmovdqu8 %xmm23, %xmm26
// CHECK:  encoding: [0x62,0x21,0x7f,0x08,0x6f,0xd7]
          vmovdqu8 %xmm23, %xmm26

// CHECK: vmovdqu8 %xmm23, %xmm26 {%k2}
// CHECK:  encoding: [0x62,0x21,0x7f,0x0a,0x6f,0xd7]
          vmovdqu8 %xmm23, %xmm26 {%k2}

// CHECK: vmovdqu8 %xmm23, %xmm26 {%k2} {z}
// CHECK:  encoding: [0x62,0x21,0x7f,0x8a,0x6f,0xd7]
          vmovdqu8 %xmm23, %xmm26 {%k2} {z}

// CHECK: vmovdqu8 (%rcx), %xmm26
// CHECK:  encoding: [0x62,0x61,0x7f,0x08,0x6f,0x11]
          vmovdqu8 (%rcx), %xmm26

// CHECK: vmovdqu8 291(%rax,%r14,8), %xmm26
// CHECK:  encoding: [0x62,0x21,0x7f,0x08,0x6f,0x94,0xf0,0x23,0x01,0x00,0x00]
          vmovdqu8 291(%rax,%r14,8), %xmm26

// CHECK: vmovdqu8 2032(%rdx), %xmm26
// CHECK:  encoding: [0x62,0x61,0x7f,0x08,0x6f,0x52,0x7f]
          vmovdqu8 2032(%rdx), %xmm26

// CHECK: vmovdqu8 2048(%rdx), %xmm26
// CHECK:  encoding: [0x62,0x61,0x7f,0x08,0x6f,0x92,0x00,0x08,0x00,0x00]
          vmovdqu8 2048(%rdx), %xmm26

// CHECK: vmovdqu8 -2048(%rdx), %xmm26
// CHECK:  encoding: [0x62,0x61,0x7f,0x08,0x6f,0x52,0x80]
          vmovdqu8 -2048(%rdx), %xmm26

// CHECK: vmovdqu8 -2064(%rdx), %xmm26
// CHECK:  encoding: [0x62,0x61,0x7f,0x08,0x6f,0x92,0xf0,0xf7,0xff,0xff]
          vmovdqu8 -2064(%rdx), %xmm26

// CHECK: vmovdqu8 %ymm29, %ymm18
// CHECK:  encoding: [0x62,0x81,0x7f,0x28,0x6f,0xd5]
          vmovdqu8 %ymm29, %ymm18

// CHECK: vmovdqu8 %ymm29, %ymm18 {%k7}
// CHECK:  encoding: [0x62,0x81,0x7f,0x2f,0x6f,0xd5]
          vmovdqu8 %ymm29, %ymm18 {%k7}

// CHECK: vmovdqu8 %ymm29, %ymm18 {%k7} {z}
// CHECK:  encoding: [0x62,0x81,0x7f,0xaf,0x6f,0xd5]
          vmovdqu8 %ymm29, %ymm18 {%k7} {z}

// CHECK: vmovdqu8 (%rcx), %ymm18
// CHECK:  encoding: [0x62,0xe1,0x7f,0x28,0x6f,0x11]
          vmovdqu8 (%rcx), %ymm18

// CHECK: vmovdqu8 291(%rax,%r14,8), %ymm18
// CHECK:  encoding: [0x62,0xa1,0x7f,0x28,0x6f,0x94,0xf0,0x23,0x01,0x00,0x00]
          vmovdqu8 291(%rax,%r14,8), %ymm18

// CHECK: vmovdqu8 4064(%rdx), %ymm18
// CHECK:  encoding: [0x62,0xe1,0x7f,0x28,0x6f,0x52,0x7f]
          vmovdqu8 4064(%rdx), %ymm18

// CHECK: vmovdqu8 4096(%rdx), %ymm18
// CHECK:  encoding: [0x62,0xe1,0x7f,0x28,0x6f,0x92,0x00,0x10,0x00,0x00]
          vmovdqu8 4096(%rdx), %ymm18

// CHECK: vmovdqu8 -4096(%rdx), %ymm18
// CHECK:  encoding: [0x62,0xe1,0x7f,0x28,0x6f,0x52,0x80]
          vmovdqu8 -4096(%rdx), %ymm18

// CHECK: vmovdqu8 -4128(%rdx), %ymm18
// CHECK:  encoding: [0x62,0xe1,0x7f,0x28,0x6f,0x92,0xe0,0xef,0xff,0xff]
          vmovdqu8 -4128(%rdx), %ymm18

// CHECK: vmovdqu16 %xmm24, %xmm29
// CHECK:  encoding: [0x62,0x01,0xff,0x08,0x6f,0xe8]
          vmovdqu16 %xmm24, %xmm29

// CHECK: vmovdqu16 %xmm24, %xmm29 {%k6}
// CHECK:  encoding: [0x62,0x01,0xff,0x0e,0x6f,0xe8]
          vmovdqu16 %xmm24, %xmm29 {%k6}

// CHECK: vmovdqu16 %xmm24, %xmm29 {%k6} {z}
// CHECK:  encoding: [0x62,0x01,0xff,0x8e,0x6f,0xe8]
          vmovdqu16 %xmm24, %xmm29 {%k6} {z}

// CHECK: vmovdqu16 (%rcx), %xmm29
// CHECK:  encoding: [0x62,0x61,0xff,0x08,0x6f,0x29]
          vmovdqu16 (%rcx), %xmm29

// CHECK: vmovdqu16 291(%rax,%r14,8), %xmm29
// CHECK:  encoding: [0x62,0x21,0xff,0x08,0x6f,0xac,0xf0,0x23,0x01,0x00,0x00]
          vmovdqu16 291(%rax,%r14,8), %xmm29

// CHECK: vmovdqu16 2032(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x61,0xff,0x08,0x6f,0x6a,0x7f]
          vmovdqu16 2032(%rdx), %xmm29

// CHECK: vmovdqu16 2048(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x61,0xff,0x08,0x6f,0xaa,0x00,0x08,0x00,0x00]
          vmovdqu16 2048(%rdx), %xmm29

// CHECK: vmovdqu16 -2048(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x61,0xff,0x08,0x6f,0x6a,0x80]
          vmovdqu16 -2048(%rdx), %xmm29

// CHECK: vmovdqu16 -2064(%rdx), %xmm29
// CHECK:  encoding: [0x62,0x61,0xff,0x08,0x6f,0xaa,0xf0,0xf7,0xff,0xff]
          vmovdqu16 -2064(%rdx), %xmm29

// CHECK: vmovdqu16 %ymm24, %ymm23
// CHECK:  encoding: [0x62,0x81,0xff,0x28,0x6f,0xf8]
          vmovdqu16 %ymm24, %ymm23

// CHECK: vmovdqu16 %ymm24, %ymm23 {%k3}
// CHECK:  encoding: [0x62,0x81,0xff,0x2b,0x6f,0xf8]
          vmovdqu16 %ymm24, %ymm23 {%k3}

// CHECK: vmovdqu16 %ymm24, %ymm23 {%k3} {z}
// CHECK:  encoding: [0x62,0x81,0xff,0xab,0x6f,0xf8]
          vmovdqu16 %ymm24, %ymm23 {%k3} {z}

// CHECK: vmovdqu16 (%rcx), %ymm23
// CHECK:  encoding: [0x62,0xe1,0xff,0x28,0x6f,0x39]
          vmovdqu16 (%rcx), %ymm23

// CHECK: vmovdqu16 291(%rax,%r14,8), %ymm23
// CHECK:  encoding: [0x62,0xa1,0xff,0x28,0x6f,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vmovdqu16 291(%rax,%r14,8), %ymm23

// CHECK: vmovdqu16 4064(%rdx), %ymm23
// CHECK:  encoding: [0x62,0xe1,0xff,0x28,0x6f,0x7a,0x7f]
          vmovdqu16 4064(%rdx), %ymm23

// CHECK: vmovdqu16 4096(%rdx), %ymm23
// CHECK:  encoding: [0x62,0xe1,0xff,0x28,0x6f,0xba,0x00,0x10,0x00,0x00]
          vmovdqu16 4096(%rdx), %ymm23

// CHECK: vmovdqu16 -4096(%rdx), %ymm23
// CHECK:  encoding: [0x62,0xe1,0xff,0x28,0x6f,0x7a,0x80]
          vmovdqu16 -4096(%rdx), %ymm23

// CHECK: vmovdqu16 -4128(%rdx), %ymm23
// CHECK:  encoding: [0x62,0xe1,0xff,0x28,0x6f,0xba,0xe0,0xef,0xff,0xff]
          vmovdqu16 -4128(%rdx), %ymm23

// CHECK: vmovdqu8 %xmm17, (%rcx)
// CHECK:  encoding: [0x62,0xe1,0x7f,0x08,0x7f,0x09]
          vmovdqu8 %xmm17, (%rcx)

// CHECK: vmovdqu8 %xmm17, (%rcx) {%k4}
// CHECK:  encoding: [0x62,0xe1,0x7f,0x0c,0x7f,0x09]
          vmovdqu8 %xmm17, (%rcx) {%k4}

// CHECK: vmovdqu8 %xmm17, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa1,0x7f,0x08,0x7f,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vmovdqu8 %xmm17, 291(%rax,%r14,8)

// CHECK: vmovdqu8 %xmm17, 2032(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7f,0x08,0x7f,0x4a,0x7f]
          vmovdqu8 %xmm17, 2032(%rdx)

// CHECK: vmovdqu8 %xmm17, 2048(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7f,0x08,0x7f,0x8a,0x00,0x08,0x00,0x00]
          vmovdqu8 %xmm17, 2048(%rdx)

// CHECK: vmovdqu8 %xmm17, -2048(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7f,0x08,0x7f,0x4a,0x80]
          vmovdqu8 %xmm17, -2048(%rdx)

// CHECK: vmovdqu8 %xmm17, -2064(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7f,0x08,0x7f,0x8a,0xf0,0xf7,0xff,0xff]
          vmovdqu8 %xmm17, -2064(%rdx)

// CHECK: vmovdqu8 %ymm21, (%rcx)
// CHECK:  encoding: [0x62,0xe1,0x7f,0x28,0x7f,0x29]
          vmovdqu8 %ymm21, (%rcx)

// CHECK: vmovdqu8 %ymm21, (%rcx) {%k1}
// CHECK:  encoding: [0x62,0xe1,0x7f,0x29,0x7f,0x29]
          vmovdqu8 %ymm21, (%rcx) {%k1}

// CHECK: vmovdqu8 %ymm21, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa1,0x7f,0x28,0x7f,0xac,0xf0,0x23,0x01,0x00,0x00]
          vmovdqu8 %ymm21, 291(%rax,%r14,8)

// CHECK: vmovdqu8 %ymm21, 4064(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7f,0x28,0x7f,0x6a,0x7f]
          vmovdqu8 %ymm21, 4064(%rdx)

// CHECK: vmovdqu8 %ymm21, 4096(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7f,0x28,0x7f,0xaa,0x00,0x10,0x00,0x00]
          vmovdqu8 %ymm21, 4096(%rdx)

// CHECK: vmovdqu8 %ymm21, -4096(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7f,0x28,0x7f,0x6a,0x80]
          vmovdqu8 %ymm21, -4096(%rdx)

// CHECK: vmovdqu8 %ymm21, -4128(%rdx)
// CHECK:  encoding: [0x62,0xe1,0x7f,0x28,0x7f,0xaa,0xe0,0xef,0xff,0xff]
          vmovdqu8 %ymm21, -4128(%rdx)

// CHECK: vmovdqu16 %xmm23, (%rcx)
// CHECK:  encoding: [0x62,0xe1,0xff,0x08,0x7f,0x39]
          vmovdqu16 %xmm23, (%rcx)

// CHECK: vmovdqu16 %xmm23, (%rcx) {%k7}
// CHECK:  encoding: [0x62,0xe1,0xff,0x0f,0x7f,0x39]
          vmovdqu16 %xmm23, (%rcx) {%k7}

// CHECK: vmovdqu16 %xmm23, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa1,0xff,0x08,0x7f,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vmovdqu16 %xmm23, 291(%rax,%r14,8)

// CHECK: vmovdqu16 %xmm23, 2032(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xff,0x08,0x7f,0x7a,0x7f]
          vmovdqu16 %xmm23, 2032(%rdx)

// CHECK: vmovdqu16 %xmm23, 2048(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xff,0x08,0x7f,0xba,0x00,0x08,0x00,0x00]
          vmovdqu16 %xmm23, 2048(%rdx)

// CHECK: vmovdqu16 %xmm23, -2048(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xff,0x08,0x7f,0x7a,0x80]
          vmovdqu16 %xmm23, -2048(%rdx)

// CHECK: vmovdqu16 %xmm23, -2064(%rdx)
// CHECK:  encoding: [0x62,0xe1,0xff,0x08,0x7f,0xba,0xf0,0xf7,0xff,0xff]
          vmovdqu16 %xmm23, -2064(%rdx)

// CHECK: vmovdqu16 %ymm29, (%rcx)
// CHECK:  encoding: [0x62,0x61,0xff,0x28,0x7f,0x29]
          vmovdqu16 %ymm29, (%rcx)

// CHECK: vmovdqu16 %ymm29, (%rcx) {%k6}
// CHECK:  encoding: [0x62,0x61,0xff,0x2e,0x7f,0x29]
          vmovdqu16 %ymm29, (%rcx) {%k6}

// CHECK: vmovdqu16 %ymm29, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x21,0xff,0x28,0x7f,0xac,0xf0,0x23,0x01,0x00,0x00]
          vmovdqu16 %ymm29, 291(%rax,%r14,8)

// CHECK: vmovdqu16 %ymm29, 4064(%rdx)
// CHECK:  encoding: [0x62,0x61,0xff,0x28,0x7f,0x6a,0x7f]
          vmovdqu16 %ymm29, 4064(%rdx)

// CHECK: vmovdqu16 %ymm29, 4096(%rdx)
// CHECK:  encoding: [0x62,0x61,0xff,0x28,0x7f,0xaa,0x00,0x10,0x00,0x00]
          vmovdqu16 %ymm29, 4096(%rdx)

// CHECK: vmovdqu16 %ymm29, -4096(%rdx)
// CHECK:  encoding: [0x62,0x61,0xff,0x28,0x7f,0x6a,0x80]
          vmovdqu16 %ymm29, -4096(%rdx)

// CHECK: vmovdqu16 %ymm29, -4128(%rdx)
// CHECK:  encoding: [0x62,0x61,0xff,0x28,0x7f,0xaa,0xe0,0xef,0xff,0xff]
          vmovdqu16 %ymm29, -4128(%rdx)

// CHECK: vpsllw %xmm26, %xmm23, %xmm19
// CHECK:  encoding: [0x62,0x81,0x45,0x00,0xf1,0xda]
          vpsllw %xmm26, %xmm23, %xmm19

// CHECK: vpsllw %xmm26, %xmm23, %xmm19 {%k7}
// CHECK:  encoding: [0x62,0x81,0x45,0x07,0xf1,0xda]
          vpsllw %xmm26, %xmm23, %xmm19 {%k7}

// CHECK: vpsllw %xmm26, %xmm23, %xmm19 {%k7} {z}
// CHECK:  encoding: [0x62,0x81,0x45,0x87,0xf1,0xda]
          vpsllw %xmm26, %xmm23, %xmm19 {%k7} {z}

// CHECK: vpsllw (%rcx), %xmm23, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x45,0x00,0xf1,0x19]
          vpsllw (%rcx), %xmm23, %xmm19

// CHECK: vpsllw 291(%rax,%r14,8), %xmm23, %xmm19
// CHECK:  encoding: [0x62,0xa1,0x45,0x00,0xf1,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpsllw 291(%rax,%r14,8), %xmm23, %xmm19

// CHECK: vpsllw 2032(%rdx), %xmm23, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x45,0x00,0xf1,0x5a,0x7f]
          vpsllw 2032(%rdx), %xmm23, %xmm19

// CHECK: vpsllw 2048(%rdx), %xmm23, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x45,0x00,0xf1,0x9a,0x00,0x08,0x00,0x00]
          vpsllw 2048(%rdx), %xmm23, %xmm19

// CHECK: vpsllw -2048(%rdx), %xmm23, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x45,0x00,0xf1,0x5a,0x80]
          vpsllw -2048(%rdx), %xmm23, %xmm19

// CHECK: vpsllw -2064(%rdx), %xmm23, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x45,0x00,0xf1,0x9a,0xf0,0xf7,0xff,0xff]
          vpsllw -2064(%rdx), %xmm23, %xmm19

// CHECK: vpsllw %xmm26, %ymm21, %ymm20
// CHECK:  encoding: [0x62,0x81,0x55,0x20,0xf1,0xe2]
          vpsllw %xmm26, %ymm21, %ymm20

// CHECK: vpsllw %xmm26, %ymm21, %ymm20 {%k7}
// CHECK:  encoding: [0x62,0x81,0x55,0x27,0xf1,0xe2]
          vpsllw %xmm26, %ymm21, %ymm20 {%k7}

// CHECK: vpsllw %xmm26, %ymm21, %ymm20 {%k7} {z}
// CHECK:  encoding: [0x62,0x81,0x55,0xa7,0xf1,0xe2]
          vpsllw %xmm26, %ymm21, %ymm20 {%k7} {z}

// CHECK: vpsllw (%rcx), %ymm21, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x55,0x20,0xf1,0x21]
          vpsllw (%rcx), %ymm21, %ymm20

// CHECK: vpsllw 291(%rax,%r14,8), %ymm21, %ymm20
// CHECK:  encoding: [0x62,0xa1,0x55,0x20,0xf1,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpsllw 291(%rax,%r14,8), %ymm21, %ymm20

// CHECK: vpsllw 2032(%rdx), %ymm21, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x55,0x20,0xf1,0x62,0x7f]
          vpsllw 2032(%rdx), %ymm21, %ymm20

// CHECK: vpsllw 2048(%rdx), %ymm21, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x55,0x20,0xf1,0xa2,0x00,0x08,0x00,0x00]
          vpsllw 2048(%rdx), %ymm21, %ymm20

// CHECK: vpsllw -2048(%rdx), %ymm21, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x55,0x20,0xf1,0x62,0x80]
          vpsllw -2048(%rdx), %ymm21, %ymm20

// CHECK: vpsllw -2064(%rdx), %ymm21, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x55,0x20,0xf1,0xa2,0xf0,0xf7,0xff,0xff]
          vpsllw -2064(%rdx), %ymm21, %ymm20

// CHECK: vpsraw %xmm28, %xmm28, %xmm17
// CHECK:  encoding: [0x62,0x81,0x1d,0x00,0xe1,0xcc]
          vpsraw %xmm28, %xmm28, %xmm17

// CHECK: vpsraw %xmm28, %xmm28, %xmm17 {%k1}
// CHECK:  encoding: [0x62,0x81,0x1d,0x01,0xe1,0xcc]
          vpsraw %xmm28, %xmm28, %xmm17 {%k1}

// CHECK: vpsraw %xmm28, %xmm28, %xmm17 {%k1} {z}
// CHECK:  encoding: [0x62,0x81,0x1d,0x81,0xe1,0xcc]
          vpsraw %xmm28, %xmm28, %xmm17 {%k1} {z}

// CHECK: vpsraw (%rcx), %xmm28, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x1d,0x00,0xe1,0x09]
          vpsraw (%rcx), %xmm28, %xmm17

// CHECK: vpsraw 291(%rax,%r14,8), %xmm28, %xmm17
// CHECK:  encoding: [0x62,0xa1,0x1d,0x00,0xe1,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpsraw 291(%rax,%r14,8), %xmm28, %xmm17

// CHECK: vpsraw 2032(%rdx), %xmm28, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x1d,0x00,0xe1,0x4a,0x7f]
          vpsraw 2032(%rdx), %xmm28, %xmm17

// CHECK: vpsraw 2048(%rdx), %xmm28, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x1d,0x00,0xe1,0x8a,0x00,0x08,0x00,0x00]
          vpsraw 2048(%rdx), %xmm28, %xmm17

// CHECK: vpsraw -2048(%rdx), %xmm28, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x1d,0x00,0xe1,0x4a,0x80]
          vpsraw -2048(%rdx), %xmm28, %xmm17

// CHECK: vpsraw -2064(%rdx), %xmm28, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x1d,0x00,0xe1,0x8a,0xf0,0xf7,0xff,0xff]
          vpsraw -2064(%rdx), %xmm28, %xmm17

// CHECK: vpsraw %xmm19, %ymm26, %ymm18
// CHECK:  encoding: [0x62,0xa1,0x2d,0x20,0xe1,0xd3]
          vpsraw %xmm19, %ymm26, %ymm18

// CHECK: vpsraw %xmm19, %ymm26, %ymm18 {%k7}
// CHECK:  encoding: [0x62,0xa1,0x2d,0x27,0xe1,0xd3]
          vpsraw %xmm19, %ymm26, %ymm18 {%k7}

// CHECK: vpsraw %xmm19, %ymm26, %ymm18 {%k7} {z}
// CHECK:  encoding: [0x62,0xa1,0x2d,0xa7,0xe1,0xd3]
          vpsraw %xmm19, %ymm26, %ymm18 {%k7} {z}

// CHECK: vpsraw (%rcx), %ymm26, %ymm18
// CHECK:  encoding: [0x62,0xe1,0x2d,0x20,0xe1,0x11]
          vpsraw (%rcx), %ymm26, %ymm18

// CHECK: vpsraw 291(%rax,%r14,8), %ymm26, %ymm18
// CHECK:  encoding: [0x62,0xa1,0x2d,0x20,0xe1,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpsraw 291(%rax,%r14,8), %ymm26, %ymm18

// CHECK: vpsraw 2032(%rdx), %ymm26, %ymm18
// CHECK:  encoding: [0x62,0xe1,0x2d,0x20,0xe1,0x52,0x7f]
          vpsraw 2032(%rdx), %ymm26, %ymm18

// CHECK: vpsraw 2048(%rdx), %ymm26, %ymm18
// CHECK:  encoding: [0x62,0xe1,0x2d,0x20,0xe1,0x92,0x00,0x08,0x00,0x00]
          vpsraw 2048(%rdx), %ymm26, %ymm18

// CHECK: vpsraw -2048(%rdx), %ymm26, %ymm18
// CHECK:  encoding: [0x62,0xe1,0x2d,0x20,0xe1,0x52,0x80]
          vpsraw -2048(%rdx), %ymm26, %ymm18

// CHECK: vpsraw -2064(%rdx), %ymm26, %ymm18
// CHECK:  encoding: [0x62,0xe1,0x2d,0x20,0xe1,0x92,0xf0,0xf7,0xff,0xff]
          vpsraw -2064(%rdx), %ymm26, %ymm18

// CHECK: vpsrlw %xmm27, %xmm29, %xmm30
// CHECK:  encoding: [0x62,0x01,0x15,0x00,0xd1,0xf3]
          vpsrlw %xmm27, %xmm29, %xmm30

// CHECK: vpsrlw %xmm27, %xmm29, %xmm30 {%k1}
// CHECK:  encoding: [0x62,0x01,0x15,0x01,0xd1,0xf3]
          vpsrlw %xmm27, %xmm29, %xmm30 {%k1}

// CHECK: vpsrlw %xmm27, %xmm29, %xmm30 {%k1} {z}
// CHECK:  encoding: [0x62,0x01,0x15,0x81,0xd1,0xf3]
          vpsrlw %xmm27, %xmm29, %xmm30 {%k1} {z}

// CHECK: vpsrlw (%rcx), %xmm29, %xmm30
// CHECK:  encoding: [0x62,0x61,0x15,0x00,0xd1,0x31]
          vpsrlw (%rcx), %xmm29, %xmm30

// CHECK: vpsrlw 291(%rax,%r14,8), %xmm29, %xmm30
// CHECK:  encoding: [0x62,0x21,0x15,0x00,0xd1,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpsrlw 291(%rax,%r14,8), %xmm29, %xmm30

// CHECK: vpsrlw 2032(%rdx), %xmm29, %xmm30
// CHECK:  encoding: [0x62,0x61,0x15,0x00,0xd1,0x72,0x7f]
          vpsrlw 2032(%rdx), %xmm29, %xmm30

// CHECK: vpsrlw 2048(%rdx), %xmm29, %xmm30
// CHECK:  encoding: [0x62,0x61,0x15,0x00,0xd1,0xb2,0x00,0x08,0x00,0x00]
          vpsrlw 2048(%rdx), %xmm29, %xmm30

// CHECK: vpsrlw -2048(%rdx), %xmm29, %xmm30
// CHECK:  encoding: [0x62,0x61,0x15,0x00,0xd1,0x72,0x80]
          vpsrlw -2048(%rdx), %xmm29, %xmm30

// CHECK: vpsrlw -2064(%rdx), %xmm29, %xmm30
// CHECK:  encoding: [0x62,0x61,0x15,0x00,0xd1,0xb2,0xf0,0xf7,0xff,0xff]
          vpsrlw -2064(%rdx), %xmm29, %xmm30

// CHECK: vpsrlw %xmm27, %ymm18, %ymm28
// CHECK:  encoding: [0x62,0x01,0x6d,0x20,0xd1,0xe3]
          vpsrlw %xmm27, %ymm18, %ymm28

// CHECK: vpsrlw %xmm27, %ymm18, %ymm28 {%k2}
// CHECK:  encoding: [0x62,0x01,0x6d,0x22,0xd1,0xe3]
          vpsrlw %xmm27, %ymm18, %ymm28 {%k2}

// CHECK: vpsrlw %xmm27, %ymm18, %ymm28 {%k2} {z}
// CHECK:  encoding: [0x62,0x01,0x6d,0xa2,0xd1,0xe3]
          vpsrlw %xmm27, %ymm18, %ymm28 {%k2} {z}

// CHECK: vpsrlw (%rcx), %ymm18, %ymm28
// CHECK:  encoding: [0x62,0x61,0x6d,0x20,0xd1,0x21]
          vpsrlw (%rcx), %ymm18, %ymm28

// CHECK: vpsrlw 291(%rax,%r14,8), %ymm18, %ymm28
// CHECK:  encoding: [0x62,0x21,0x6d,0x20,0xd1,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpsrlw 291(%rax,%r14,8), %ymm18, %ymm28

// CHECK: vpsrlw 2032(%rdx), %ymm18, %ymm28
// CHECK:  encoding: [0x62,0x61,0x6d,0x20,0xd1,0x62,0x7f]
          vpsrlw 2032(%rdx), %ymm18, %ymm28

// CHECK: vpsrlw 2048(%rdx), %ymm18, %ymm28
// CHECK:  encoding: [0x62,0x61,0x6d,0x20,0xd1,0xa2,0x00,0x08,0x00,0x00]
          vpsrlw 2048(%rdx), %ymm18, %ymm28

// CHECK: vpsrlw -2048(%rdx), %ymm18, %ymm28
// CHECK:  encoding: [0x62,0x61,0x6d,0x20,0xd1,0x62,0x80]
          vpsrlw -2048(%rdx), %ymm18, %ymm28

// CHECK: vpsrlw -2064(%rdx), %ymm18, %ymm28
// CHECK:  encoding: [0x62,0x61,0x6d,0x20,0xd1,0xa2,0xf0,0xf7,0xff,0xff]
          vpsrlw -2064(%rdx), %ymm18, %ymm28

// CHECK: vpsrlw $171, %xmm21, %xmm22
// CHECK:  encoding: [0x62,0xb1,0x4d,0x00,0x71,0xd5,0xab]
          vpsrlw $171, %xmm21, %xmm22

// CHECK: vpsrlw $171, %xmm21, %xmm22 {%k7}
// CHECK:  encoding: [0x62,0xb1,0x4d,0x07,0x71,0xd5,0xab]
          vpsrlw $171, %xmm21, %xmm22 {%k7}

// CHECK: vpsrlw $171, %xmm21, %xmm22 {%k7} {z}
// CHECK:  encoding: [0x62,0xb1,0x4d,0x87,0x71,0xd5,0xab]
          vpsrlw $171, %xmm21, %xmm22 {%k7} {z}

// CHECK: vpsrlw $123, %xmm21, %xmm22
// CHECK:  encoding: [0x62,0xb1,0x4d,0x00,0x71,0xd5,0x7b]
          vpsrlw $123, %xmm21, %xmm22

// CHECK: vpsrlw $123, (%rcx), %xmm22
// CHECK:  encoding: [0x62,0xf1,0x4d,0x00,0x71,0x11,0x7b]
          vpsrlw $123, (%rcx), %xmm22

// CHECK: vpsrlw $123, 291(%rax,%r14,8), %xmm22
// CHECK:  encoding: [0x62,0xb1,0x4d,0x00,0x71,0x94,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpsrlw $123, 291(%rax,%r14,8), %xmm22

// CHECK: vpsrlw $123, 2032(%rdx), %xmm22
// CHECK:  encoding: [0x62,0xf1,0x4d,0x00,0x71,0x52,0x7f,0x7b]
          vpsrlw $123, 2032(%rdx), %xmm22

// CHECK: vpsrlw $123, 2048(%rdx), %xmm22
// CHECK:  encoding: [0x62,0xf1,0x4d,0x00,0x71,0x92,0x00,0x08,0x00,0x00,0x7b]
          vpsrlw $123, 2048(%rdx), %xmm22

// CHECK: vpsrlw $123, -2048(%rdx), %xmm22
// CHECK:  encoding: [0x62,0xf1,0x4d,0x00,0x71,0x52,0x80,0x7b]
          vpsrlw $123, -2048(%rdx), %xmm22

// CHECK: vpsrlw $123, -2064(%rdx), %xmm22
// CHECK:  encoding: [0x62,0xf1,0x4d,0x00,0x71,0x92,0xf0,0xf7,0xff,0xff,0x7b]
          vpsrlw $123, -2064(%rdx), %xmm22

// CHECK: vpsrlw $171, %ymm19, %ymm27
// CHECK:  encoding: [0x62,0xb1,0x25,0x20,0x71,0xd3,0xab]
          vpsrlw $171, %ymm19, %ymm27

// CHECK: vpsrlw $171, %ymm19, %ymm27 {%k3}
// CHECK:  encoding: [0x62,0xb1,0x25,0x23,0x71,0xd3,0xab]
          vpsrlw $171, %ymm19, %ymm27 {%k3}

// CHECK: vpsrlw $171, %ymm19, %ymm27 {%k3} {z}
// CHECK:  encoding: [0x62,0xb1,0x25,0xa3,0x71,0xd3,0xab]
          vpsrlw $171, %ymm19, %ymm27 {%k3} {z}

// CHECK: vpsrlw $123, %ymm19, %ymm27
// CHECK:  encoding: [0x62,0xb1,0x25,0x20,0x71,0xd3,0x7b]
          vpsrlw $123, %ymm19, %ymm27

// CHECK: vpsrlw $123, (%rcx), %ymm27
// CHECK:  encoding: [0x62,0xf1,0x25,0x20,0x71,0x11,0x7b]
          vpsrlw $123, (%rcx), %ymm27

// CHECK: vpsrlw $123, 291(%rax,%r14,8), %ymm27
// CHECK:  encoding: [0x62,0xb1,0x25,0x20,0x71,0x94,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpsrlw $123, 291(%rax,%r14,8), %ymm27

// CHECK: vpsrlw $123, 4064(%rdx), %ymm27
// CHECK:  encoding: [0x62,0xf1,0x25,0x20,0x71,0x52,0x7f,0x7b]
          vpsrlw $123, 4064(%rdx), %ymm27

// CHECK: vpsrlw $123, 4096(%rdx), %ymm27
// CHECK:  encoding: [0x62,0xf1,0x25,0x20,0x71,0x92,0x00,0x10,0x00,0x00,0x7b]
          vpsrlw $123, 4096(%rdx), %ymm27

// CHECK: vpsrlw $123, -4096(%rdx), %ymm27
// CHECK:  encoding: [0x62,0xf1,0x25,0x20,0x71,0x52,0x80,0x7b]
          vpsrlw $123, -4096(%rdx), %ymm27

// CHECK: vpsrlw $123, -4128(%rdx), %ymm27
// CHECK:  encoding: [0x62,0xf1,0x25,0x20,0x71,0x92,0xe0,0xef,0xff,0xff,0x7b]
          vpsrlw $123, -4128(%rdx), %ymm27

// CHECK: vpsraw $171, %xmm22, %xmm22
// CHECK:  encoding: [0x62,0xb1,0x4d,0x00,0x71,0xe6,0xab]
          vpsraw $171, %xmm22, %xmm22

// CHECK: vpsraw $171, %xmm22, %xmm22 {%k4}
// CHECK:  encoding: [0x62,0xb1,0x4d,0x04,0x71,0xe6,0xab]
          vpsraw $171, %xmm22, %xmm22 {%k4}

// CHECK: vpsraw $171, %xmm22, %xmm22 {%k4} {z}
// CHECK:  encoding: [0x62,0xb1,0x4d,0x84,0x71,0xe6,0xab]
          vpsraw $171, %xmm22, %xmm22 {%k4} {z}

// CHECK: vpsraw $123, %xmm22, %xmm22
// CHECK:  encoding: [0x62,0xb1,0x4d,0x00,0x71,0xe6,0x7b]
          vpsraw $123, %xmm22, %xmm22

// CHECK: vpsraw $123, (%rcx), %xmm22
// CHECK:  encoding: [0x62,0xf1,0x4d,0x00,0x71,0x21,0x7b]
          vpsraw $123, (%rcx), %xmm22

// CHECK: vpsraw $123, 291(%rax,%r14,8), %xmm22
// CHECK:  encoding: [0x62,0xb1,0x4d,0x00,0x71,0xa4,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpsraw $123, 291(%rax,%r14,8), %xmm22

// CHECK: vpsraw $123, 2032(%rdx), %xmm22
// CHECK:  encoding: [0x62,0xf1,0x4d,0x00,0x71,0x62,0x7f,0x7b]
          vpsraw $123, 2032(%rdx), %xmm22

// CHECK: vpsraw $123, 2048(%rdx), %xmm22
// CHECK:  encoding: [0x62,0xf1,0x4d,0x00,0x71,0xa2,0x00,0x08,0x00,0x00,0x7b]
          vpsraw $123, 2048(%rdx), %xmm22

// CHECK: vpsraw $123, -2048(%rdx), %xmm22
// CHECK:  encoding: [0x62,0xf1,0x4d,0x00,0x71,0x62,0x80,0x7b]
          vpsraw $123, -2048(%rdx), %xmm22

// CHECK: vpsraw $123, -2064(%rdx), %xmm22
// CHECK:  encoding: [0x62,0xf1,0x4d,0x00,0x71,0xa2,0xf0,0xf7,0xff,0xff,0x7b]
          vpsraw $123, -2064(%rdx), %xmm22

// CHECK: vpsraw $171, %ymm22, %ymm19
// CHECK:  encoding: [0x62,0xb1,0x65,0x20,0x71,0xe6,0xab]
          vpsraw $171, %ymm22, %ymm19

// CHECK: vpsraw $171, %ymm22, %ymm19 {%k7}
// CHECK:  encoding: [0x62,0xb1,0x65,0x27,0x71,0xe6,0xab]
          vpsraw $171, %ymm22, %ymm19 {%k7}

// CHECK: vpsraw $171, %ymm22, %ymm19 {%k7} {z}
// CHECK:  encoding: [0x62,0xb1,0x65,0xa7,0x71,0xe6,0xab]
          vpsraw $171, %ymm22, %ymm19 {%k7} {z}

// CHECK: vpsraw $123, %ymm22, %ymm19
// CHECK:  encoding: [0x62,0xb1,0x65,0x20,0x71,0xe6,0x7b]
          vpsraw $123, %ymm22, %ymm19

// CHECK: vpsraw $123, (%rcx), %ymm19
// CHECK:  encoding: [0x62,0xf1,0x65,0x20,0x71,0x21,0x7b]
          vpsraw $123, (%rcx), %ymm19

// CHECK: vpsraw $123, 291(%rax,%r14,8), %ymm19
// CHECK:  encoding: [0x62,0xb1,0x65,0x20,0x71,0xa4,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpsraw $123, 291(%rax,%r14,8), %ymm19

// CHECK: vpsraw $123, 4064(%rdx), %ymm19
// CHECK:  encoding: [0x62,0xf1,0x65,0x20,0x71,0x62,0x7f,0x7b]
          vpsraw $123, 4064(%rdx), %ymm19

// CHECK: vpsraw $123, 4096(%rdx), %ymm19
// CHECK:  encoding: [0x62,0xf1,0x65,0x20,0x71,0xa2,0x00,0x10,0x00,0x00,0x7b]
          vpsraw $123, 4096(%rdx), %ymm19

// CHECK: vpsraw $123, -4096(%rdx), %ymm19
// CHECK:  encoding: [0x62,0xf1,0x65,0x20,0x71,0x62,0x80,0x7b]
          vpsraw $123, -4096(%rdx), %ymm19

// CHECK: vpsraw $123, -4128(%rdx), %ymm19
// CHECK:  encoding: [0x62,0xf1,0x65,0x20,0x71,0xa2,0xe0,0xef,0xff,0xff,0x7b]
          vpsraw $123, -4128(%rdx), %ymm19

// CHECK: vpsrlvw %xmm19, %xmm22, %xmm30
// CHECK:  encoding: [0x62,0x22,0xcd,0x00,0x10,0xf3]
          vpsrlvw %xmm19, %xmm22, %xmm30

// CHECK: vpsrlvw %xmm19, %xmm22, %xmm30 {%k7}
// CHECK:  encoding: [0x62,0x22,0xcd,0x07,0x10,0xf3]
          vpsrlvw %xmm19, %xmm22, %xmm30 {%k7}

// CHECK: vpsrlvw %xmm19, %xmm22, %xmm30 {%k7} {z}
// CHECK:  encoding: [0x62,0x22,0xcd,0x87,0x10,0xf3]
          vpsrlvw %xmm19, %xmm22, %xmm30 {%k7} {z}

// CHECK: vpsrlvw (%rcx), %xmm22, %xmm30
// CHECK:  encoding: [0x62,0x62,0xcd,0x00,0x10,0x31]
          vpsrlvw (%rcx), %xmm22, %xmm30

// CHECK: vpsrlvw 291(%rax,%r14,8), %xmm22, %xmm30
// CHECK:  encoding: [0x62,0x22,0xcd,0x00,0x10,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpsrlvw 291(%rax,%r14,8), %xmm22, %xmm30

// CHECK: vpsrlvw 2032(%rdx), %xmm22, %xmm30
// CHECK:  encoding: [0x62,0x62,0xcd,0x00,0x10,0x72,0x7f]
          vpsrlvw 2032(%rdx), %xmm22, %xmm30

// CHECK: vpsrlvw 2048(%rdx), %xmm22, %xmm30
// CHECK:  encoding: [0x62,0x62,0xcd,0x00,0x10,0xb2,0x00,0x08,0x00,0x00]
          vpsrlvw 2048(%rdx), %xmm22, %xmm30

// CHECK: vpsrlvw -2048(%rdx), %xmm22, %xmm30
// CHECK:  encoding: [0x62,0x62,0xcd,0x00,0x10,0x72,0x80]
          vpsrlvw -2048(%rdx), %xmm22, %xmm30

// CHECK: vpsrlvw -2064(%rdx), %xmm22, %xmm30
// CHECK:  encoding: [0x62,0x62,0xcd,0x00,0x10,0xb2,0xf0,0xf7,0xff,0xff]
          vpsrlvw -2064(%rdx), %xmm22, %xmm30

// CHECK: vpsrlvw %ymm27, %ymm25, %ymm30
// CHECK:  encoding: [0x62,0x02,0xb5,0x20,0x10,0xf3]
          vpsrlvw %ymm27, %ymm25, %ymm30

// CHECK: vpsrlvw %ymm27, %ymm25, %ymm30 {%k1}
// CHECK:  encoding: [0x62,0x02,0xb5,0x21,0x10,0xf3]
          vpsrlvw %ymm27, %ymm25, %ymm30 {%k1}

// CHECK: vpsrlvw %ymm27, %ymm25, %ymm30 {%k1} {z}
// CHECK:  encoding: [0x62,0x02,0xb5,0xa1,0x10,0xf3]
          vpsrlvw %ymm27, %ymm25, %ymm30 {%k1} {z}

// CHECK: vpsrlvw (%rcx), %ymm25, %ymm30
// CHECK:  encoding: [0x62,0x62,0xb5,0x20,0x10,0x31]
          vpsrlvw (%rcx), %ymm25, %ymm30

// CHECK: vpsrlvw 291(%rax,%r14,8), %ymm25, %ymm30
// CHECK:  encoding: [0x62,0x22,0xb5,0x20,0x10,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpsrlvw 291(%rax,%r14,8), %ymm25, %ymm30

// CHECK: vpsrlvw 4064(%rdx), %ymm25, %ymm30
// CHECK:  encoding: [0x62,0x62,0xb5,0x20,0x10,0x72,0x7f]
          vpsrlvw 4064(%rdx), %ymm25, %ymm30

// CHECK: vpsrlvw 4096(%rdx), %ymm25, %ymm30
// CHECK:  encoding: [0x62,0x62,0xb5,0x20,0x10,0xb2,0x00,0x10,0x00,0x00]
          vpsrlvw 4096(%rdx), %ymm25, %ymm30

// CHECK: vpsrlvw -4096(%rdx), %ymm25, %ymm30
// CHECK:  encoding: [0x62,0x62,0xb5,0x20,0x10,0x72,0x80]
          vpsrlvw -4096(%rdx), %ymm25, %ymm30

// CHECK: vpsrlvw -4128(%rdx), %ymm25, %ymm30
// CHECK:  encoding: [0x62,0x62,0xb5,0x20,0x10,0xb2,0xe0,0xef,0xff,0xff]
          vpsrlvw -4128(%rdx), %ymm25, %ymm30

// CHECK: vpsravw %xmm27, %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x02,0x9d,0x00,0x11,0xe3]
          vpsravw %xmm27, %xmm28, %xmm28

// CHECK: vpsravw %xmm27, %xmm28, %xmm28 {%k3}
// CHECK:  encoding: [0x62,0x02,0x9d,0x03,0x11,0xe3]
          vpsravw %xmm27, %xmm28, %xmm28 {%k3}

// CHECK: vpsravw %xmm27, %xmm28, %xmm28 {%k3} {z}
// CHECK:  encoding: [0x62,0x02,0x9d,0x83,0x11,0xe3]
          vpsravw %xmm27, %xmm28, %xmm28 {%k3} {z}

// CHECK: vpsravw (%rcx), %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x62,0x9d,0x00,0x11,0x21]
          vpsravw (%rcx), %xmm28, %xmm28

// CHECK: vpsravw 291(%rax,%r14,8), %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x22,0x9d,0x00,0x11,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpsravw 291(%rax,%r14,8), %xmm28, %xmm28

// CHECK: vpsravw 2032(%rdx), %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x62,0x9d,0x00,0x11,0x62,0x7f]
          vpsravw 2032(%rdx), %xmm28, %xmm28

// CHECK: vpsravw 2048(%rdx), %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x62,0x9d,0x00,0x11,0xa2,0x00,0x08,0x00,0x00]
          vpsravw 2048(%rdx), %xmm28, %xmm28

// CHECK: vpsravw -2048(%rdx), %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x62,0x9d,0x00,0x11,0x62,0x80]
          vpsravw -2048(%rdx), %xmm28, %xmm28

// CHECK: vpsravw -2064(%rdx), %xmm28, %xmm28
// CHECK:  encoding: [0x62,0x62,0x9d,0x00,0x11,0xa2,0xf0,0xf7,0xff,0xff]
          vpsravw -2064(%rdx), %xmm28, %xmm28

// CHECK: vpsravw %ymm17, %ymm28, %ymm20
// CHECK:  encoding: [0x62,0xa2,0x9d,0x20,0x11,0xe1]
          vpsravw %ymm17, %ymm28, %ymm20

// CHECK: vpsravw %ymm17, %ymm28, %ymm20 {%k5}
// CHECK:  encoding: [0x62,0xa2,0x9d,0x25,0x11,0xe1]
          vpsravw %ymm17, %ymm28, %ymm20 {%k5}

// CHECK: vpsravw %ymm17, %ymm28, %ymm20 {%k5} {z}
// CHECK:  encoding: [0x62,0xa2,0x9d,0xa5,0x11,0xe1]
          vpsravw %ymm17, %ymm28, %ymm20 {%k5} {z}

// CHECK: vpsravw (%rcx), %ymm28, %ymm20
// CHECK:  encoding: [0x62,0xe2,0x9d,0x20,0x11,0x21]
          vpsravw (%rcx), %ymm28, %ymm20

// CHECK: vpsravw 291(%rax,%r14,8), %ymm28, %ymm20
// CHECK:  encoding: [0x62,0xa2,0x9d,0x20,0x11,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpsravw 291(%rax,%r14,8), %ymm28, %ymm20

// CHECK: vpsravw 4064(%rdx), %ymm28, %ymm20
// CHECK:  encoding: [0x62,0xe2,0x9d,0x20,0x11,0x62,0x7f]
          vpsravw 4064(%rdx), %ymm28, %ymm20

// CHECK: vpsravw 4096(%rdx), %ymm28, %ymm20
// CHECK:  encoding: [0x62,0xe2,0x9d,0x20,0x11,0xa2,0x00,0x10,0x00,0x00]
          vpsravw 4096(%rdx), %ymm28, %ymm20

// CHECK: vpsravw -4096(%rdx), %ymm28, %ymm20
// CHECK:  encoding: [0x62,0xe2,0x9d,0x20,0x11,0x62,0x80]
          vpsravw -4096(%rdx), %ymm28, %ymm20

// CHECK: vpsravw -4128(%rdx), %ymm28, %ymm20
// CHECK:  encoding: [0x62,0xe2,0x9d,0x20,0x11,0xa2,0xe0,0xef,0xff,0xff]
          vpsravw -4128(%rdx), %ymm28, %ymm20

// CHECK: vpacksswb %xmm20, %xmm29, %xmm17
// CHECK:  encoding: [0x62,0xa1,0x15,0x00,0x63,0xcc]
          vpacksswb %xmm20, %xmm29, %xmm17

// CHECK: vpacksswb %xmm20, %xmm29, %xmm17 {%k3}
// CHECK:  encoding: [0x62,0xa1,0x15,0x03,0x63,0xcc]
          vpacksswb %xmm20, %xmm29, %xmm17 {%k3}

// CHECK: vpacksswb %xmm20, %xmm29, %xmm17 {%k3} {z}
// CHECK:  encoding: [0x62,0xa1,0x15,0x83,0x63,0xcc]
          vpacksswb %xmm20, %xmm29, %xmm17 {%k3} {z}

// CHECK: vpacksswb (%rcx), %xmm29, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x15,0x00,0x63,0x09]
          vpacksswb (%rcx), %xmm29, %xmm17

// CHECK: vpacksswb 291(%rax,%r14,8), %xmm29, %xmm17
// CHECK:  encoding: [0x62,0xa1,0x15,0x00,0x63,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpacksswb 291(%rax,%r14,8), %xmm29, %xmm17

// CHECK: vpacksswb 2032(%rdx), %xmm29, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x15,0x00,0x63,0x4a,0x7f]
          vpacksswb 2032(%rdx), %xmm29, %xmm17

// CHECK: vpacksswb 2048(%rdx), %xmm29, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x15,0x00,0x63,0x8a,0x00,0x08,0x00,0x00]
          vpacksswb 2048(%rdx), %xmm29, %xmm17

// CHECK: vpacksswb -2048(%rdx), %xmm29, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x15,0x00,0x63,0x4a,0x80]
          vpacksswb -2048(%rdx), %xmm29, %xmm17

// CHECK: vpacksswb -2064(%rdx), %xmm29, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x15,0x00,0x63,0x8a,0xf0,0xf7,0xff,0xff]
          vpacksswb -2064(%rdx), %xmm29, %xmm17

// CHECK: vpacksswb %ymm21, %ymm26, %ymm29
// CHECK:  encoding: [0x62,0x21,0x2d,0x20,0x63,0xed]
          vpacksswb %ymm21, %ymm26, %ymm29

// CHECK: vpacksswb %ymm21, %ymm26, %ymm29 {%k2}
// CHECK:  encoding: [0x62,0x21,0x2d,0x22,0x63,0xed]
          vpacksswb %ymm21, %ymm26, %ymm29 {%k2}

// CHECK: vpacksswb %ymm21, %ymm26, %ymm29 {%k2} {z}
// CHECK:  encoding: [0x62,0x21,0x2d,0xa2,0x63,0xed]
          vpacksswb %ymm21, %ymm26, %ymm29 {%k2} {z}

// CHECK: vpacksswb (%rcx), %ymm26, %ymm29
// CHECK:  encoding: [0x62,0x61,0x2d,0x20,0x63,0x29]
          vpacksswb (%rcx), %ymm26, %ymm29

// CHECK: vpacksswb 291(%rax,%r14,8), %ymm26, %ymm29
// CHECK:  encoding: [0x62,0x21,0x2d,0x20,0x63,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpacksswb 291(%rax,%r14,8), %ymm26, %ymm29

// CHECK: vpacksswb 4064(%rdx), %ymm26, %ymm29
// CHECK:  encoding: [0x62,0x61,0x2d,0x20,0x63,0x6a,0x7f]
          vpacksswb 4064(%rdx), %ymm26, %ymm29

// CHECK: vpacksswb 4096(%rdx), %ymm26, %ymm29
// CHECK:  encoding: [0x62,0x61,0x2d,0x20,0x63,0xaa,0x00,0x10,0x00,0x00]
          vpacksswb 4096(%rdx), %ymm26, %ymm29

// CHECK: vpacksswb -4096(%rdx), %ymm26, %ymm29
// CHECK:  encoding: [0x62,0x61,0x2d,0x20,0x63,0x6a,0x80]
          vpacksswb -4096(%rdx), %ymm26, %ymm29

// CHECK: vpacksswb -4128(%rdx), %ymm26, %ymm29
// CHECK:  encoding: [0x62,0x61,0x2d,0x20,0x63,0xaa,0xe0,0xef,0xff,0xff]
          vpacksswb -4128(%rdx), %ymm26, %ymm29

// CHECK: vpackuswb %xmm24, %xmm26, %xmm20
// CHECK:  encoding: [0x62,0x81,0x2d,0x00,0x67,0xe0]
          vpackuswb %xmm24, %xmm26, %xmm20

// CHECK: vpackuswb %xmm24, %xmm26, %xmm20 {%k4}
// CHECK:  encoding: [0x62,0x81,0x2d,0x04,0x67,0xe0]
          vpackuswb %xmm24, %xmm26, %xmm20 {%k4}

// CHECK: vpackuswb %xmm24, %xmm26, %xmm20 {%k4} {z}
// CHECK:  encoding: [0x62,0x81,0x2d,0x84,0x67,0xe0]
          vpackuswb %xmm24, %xmm26, %xmm20 {%k4} {z}

// CHECK: vpackuswb (%rcx), %xmm26, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x2d,0x00,0x67,0x21]
          vpackuswb (%rcx), %xmm26, %xmm20

// CHECK: vpackuswb 291(%rax,%r14,8), %xmm26, %xmm20
// CHECK:  encoding: [0x62,0xa1,0x2d,0x00,0x67,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpackuswb 291(%rax,%r14,8), %xmm26, %xmm20

// CHECK: vpackuswb 2032(%rdx), %xmm26, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x2d,0x00,0x67,0x62,0x7f]
          vpackuswb 2032(%rdx), %xmm26, %xmm20

// CHECK: vpackuswb 2048(%rdx), %xmm26, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x2d,0x00,0x67,0xa2,0x00,0x08,0x00,0x00]
          vpackuswb 2048(%rdx), %xmm26, %xmm20

// CHECK: vpackuswb -2048(%rdx), %xmm26, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x2d,0x00,0x67,0x62,0x80]
          vpackuswb -2048(%rdx), %xmm26, %xmm20

// CHECK: vpackuswb -2064(%rdx), %xmm26, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x2d,0x00,0x67,0xa2,0xf0,0xf7,0xff,0xff]
          vpackuswb -2064(%rdx), %xmm26, %xmm20

// CHECK: vpackuswb %ymm20, %ymm28, %ymm19
// CHECK:  encoding: [0x62,0xa1,0x1d,0x20,0x67,0xdc]
          vpackuswb %ymm20, %ymm28, %ymm19

// CHECK: vpackuswb %ymm20, %ymm28, %ymm19 {%k2}
// CHECK:  encoding: [0x62,0xa1,0x1d,0x22,0x67,0xdc]
          vpackuswb %ymm20, %ymm28, %ymm19 {%k2}

// CHECK: vpackuswb %ymm20, %ymm28, %ymm19 {%k2} {z}
// CHECK:  encoding: [0x62,0xa1,0x1d,0xa2,0x67,0xdc]
          vpackuswb %ymm20, %ymm28, %ymm19 {%k2} {z}

// CHECK: vpackuswb (%rcx), %ymm28, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x1d,0x20,0x67,0x19]
          vpackuswb (%rcx), %ymm28, %ymm19

// CHECK: vpackuswb 291(%rax,%r14,8), %ymm28, %ymm19
// CHECK:  encoding: [0x62,0xa1,0x1d,0x20,0x67,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpackuswb 291(%rax,%r14,8), %ymm28, %ymm19

// CHECK: vpackuswb 4064(%rdx), %ymm28, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x1d,0x20,0x67,0x5a,0x7f]
          vpackuswb 4064(%rdx), %ymm28, %ymm19

// CHECK: vpackuswb 4096(%rdx), %ymm28, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x1d,0x20,0x67,0x9a,0x00,0x10,0x00,0x00]
          vpackuswb 4096(%rdx), %ymm28, %ymm19

// CHECK: vpackuswb -4096(%rdx), %ymm28, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x1d,0x20,0x67,0x5a,0x80]
          vpackuswb -4096(%rdx), %ymm28, %ymm19

// CHECK: vpackuswb -4128(%rdx), %ymm28, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x1d,0x20,0x67,0x9a,0xe0,0xef,0xff,0xff]
          vpackuswb -4128(%rdx), %ymm28, %ymm19

// CHECK: vpacksswb %xmm25, %xmm18, %xmm19
// CHECK:  encoding: [0x62,0x81,0x6d,0x00,0x63,0xd9]
          vpacksswb %xmm25, %xmm18, %xmm19

// CHECK: vpacksswb %xmm25, %xmm18, %xmm19 {%k4}
// CHECK:  encoding: [0x62,0x81,0x6d,0x04,0x63,0xd9]
          vpacksswb %xmm25, %xmm18, %xmm19 {%k4}

// CHECK: vpacksswb %xmm25, %xmm18, %xmm19 {%k4} {z}
// CHECK:  encoding: [0x62,0x81,0x6d,0x84,0x63,0xd9]
          vpacksswb %xmm25, %xmm18, %xmm19 {%k4} {z}

// CHECK: vpacksswb (%rcx), %xmm18, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x6d,0x00,0x63,0x19]
          vpacksswb (%rcx), %xmm18, %xmm19

// CHECK: vpacksswb 4660(%rax,%r14,8), %xmm18, %xmm19
// CHECK:  encoding: [0x62,0xa1,0x6d,0x00,0x63,0x9c,0xf0,0x34,0x12,0x00,0x00]
          vpacksswb 4660(%rax,%r14,8), %xmm18, %xmm19

// CHECK: vpacksswb 2032(%rdx), %xmm18, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x6d,0x00,0x63,0x5a,0x7f]
          vpacksswb 2032(%rdx), %xmm18, %xmm19

// CHECK: vpacksswb 2048(%rdx), %xmm18, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x6d,0x00,0x63,0x9a,0x00,0x08,0x00,0x00]
          vpacksswb 2048(%rdx), %xmm18, %xmm19

// CHECK: vpacksswb -2048(%rdx), %xmm18, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x6d,0x00,0x63,0x5a,0x80]
          vpacksswb -2048(%rdx), %xmm18, %xmm19

// CHECK: vpacksswb -2064(%rdx), %xmm18, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x6d,0x00,0x63,0x9a,0xf0,0xf7,0xff,0xff]
          vpacksswb -2064(%rdx), %xmm18, %xmm19

// CHECK: vpacksswb %ymm19, %ymm22, %ymm22
// CHECK:  encoding: [0x62,0xa1,0x4d,0x20,0x63,0xf3]
          vpacksswb %ymm19, %ymm22, %ymm22

// CHECK: vpacksswb %ymm19, %ymm22, %ymm22 {%k7}
// CHECK:  encoding: [0x62,0xa1,0x4d,0x27,0x63,0xf3]
          vpacksswb %ymm19, %ymm22, %ymm22 {%k7}

// CHECK: vpacksswb %ymm19, %ymm22, %ymm22 {%k7} {z}
// CHECK:  encoding: [0x62,0xa1,0x4d,0xa7,0x63,0xf3]
          vpacksswb %ymm19, %ymm22, %ymm22 {%k7} {z}

// CHECK: vpacksswb (%rcx), %ymm22, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x4d,0x20,0x63,0x31]
          vpacksswb (%rcx), %ymm22, %ymm22

// CHECK: vpacksswb 4660(%rax,%r14,8), %ymm22, %ymm22
// CHECK:  encoding: [0x62,0xa1,0x4d,0x20,0x63,0xb4,0xf0,0x34,0x12,0x00,0x00]
          vpacksswb 4660(%rax,%r14,8), %ymm22, %ymm22

// CHECK: vpacksswb 4064(%rdx), %ymm22, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x4d,0x20,0x63,0x72,0x7f]
          vpacksswb 4064(%rdx), %ymm22, %ymm22

// CHECK: vpacksswb 4096(%rdx), %ymm22, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x4d,0x20,0x63,0xb2,0x00,0x10,0x00,0x00]
          vpacksswb 4096(%rdx), %ymm22, %ymm22

// CHECK: vpacksswb -4096(%rdx), %ymm22, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x4d,0x20,0x63,0x72,0x80]
          vpacksswb -4096(%rdx), %ymm22, %ymm22

// CHECK: vpacksswb -4128(%rdx), %ymm22, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x4d,0x20,0x63,0xb2,0xe0,0xef,0xff,0xff]
          vpacksswb -4128(%rdx), %ymm22, %ymm22

// CHECK: vpackuswb %xmm23, %xmm28, %xmm23
// CHECK:  encoding: [0x62,0xa1,0x1d,0x00,0x67,0xff]
          vpackuswb %xmm23, %xmm28, %xmm23

// CHECK: vpackuswb %xmm23, %xmm28, %xmm23 {%k3}
// CHECK:  encoding: [0x62,0xa1,0x1d,0x03,0x67,0xff]
          vpackuswb %xmm23, %xmm28, %xmm23 {%k3}

// CHECK: vpackuswb %xmm23, %xmm28, %xmm23 {%k3} {z}
// CHECK:  encoding: [0x62,0xa1,0x1d,0x83,0x67,0xff]
          vpackuswb %xmm23, %xmm28, %xmm23 {%k3} {z}

// CHECK: vpackuswb (%rcx), %xmm28, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x1d,0x00,0x67,0x39]
          vpackuswb (%rcx), %xmm28, %xmm23

// CHECK: vpackuswb 4660(%rax,%r14,8), %xmm28, %xmm23
// CHECK:  encoding: [0x62,0xa1,0x1d,0x00,0x67,0xbc,0xf0,0x34,0x12,0x00,0x00]
          vpackuswb 4660(%rax,%r14,8), %xmm28, %xmm23

// CHECK: vpackuswb 2032(%rdx), %xmm28, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x1d,0x00,0x67,0x7a,0x7f]
          vpackuswb 2032(%rdx), %xmm28, %xmm23

// CHECK: vpackuswb 2048(%rdx), %xmm28, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x1d,0x00,0x67,0xba,0x00,0x08,0x00,0x00]
          vpackuswb 2048(%rdx), %xmm28, %xmm23

// CHECK: vpackuswb -2048(%rdx), %xmm28, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x1d,0x00,0x67,0x7a,0x80]
          vpackuswb -2048(%rdx), %xmm28, %xmm23

// CHECK: vpackuswb -2064(%rdx), %xmm28, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x1d,0x00,0x67,0xba,0xf0,0xf7,0xff,0xff]
          vpackuswb -2064(%rdx), %xmm28, %xmm23

// CHECK: vpackuswb %ymm27, %ymm26, %ymm20
// CHECK:  encoding: [0x62,0x81,0x2d,0x20,0x67,0xe3]
          vpackuswb %ymm27, %ymm26, %ymm20

// CHECK: vpackuswb %ymm27, %ymm26, %ymm20 {%k6}
// CHECK:  encoding: [0x62,0x81,0x2d,0x26,0x67,0xe3]
          vpackuswb %ymm27, %ymm26, %ymm20 {%k6}

// CHECK: vpackuswb %ymm27, %ymm26, %ymm20 {%k6} {z}
// CHECK:  encoding: [0x62,0x81,0x2d,0xa6,0x67,0xe3]
          vpackuswb %ymm27, %ymm26, %ymm20 {%k6} {z}

// CHECK: vpackuswb (%rcx), %ymm26, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x2d,0x20,0x67,0x21]
          vpackuswb (%rcx), %ymm26, %ymm20

// CHECK: vpackuswb 4660(%rax,%r14,8), %ymm26, %ymm20
// CHECK:  encoding: [0x62,0xa1,0x2d,0x20,0x67,0xa4,0xf0,0x34,0x12,0x00,0x00]
          vpackuswb 4660(%rax,%r14,8), %ymm26, %ymm20

// CHECK: vpackuswb 4064(%rdx), %ymm26, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x2d,0x20,0x67,0x62,0x7f]
          vpackuswb 4064(%rdx), %ymm26, %ymm20

// CHECK: vpackuswb 4096(%rdx), %ymm26, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x2d,0x20,0x67,0xa2,0x00,0x10,0x00,0x00]
          vpackuswb 4096(%rdx), %ymm26, %ymm20

// CHECK: vpackuswb -4096(%rdx), %ymm26, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x2d,0x20,0x67,0x62,0x80]
          vpackuswb -4096(%rdx), %ymm26, %ymm20

// CHECK: vpackuswb -4128(%rdx), %ymm26, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x2d,0x20,0x67,0xa2,0xe0,0xef,0xff,0xff]
          vpackuswb -4128(%rdx), %ymm26, %ymm20

// CHECK: vpackssdw %xmm26, %xmm26, %xmm30
// CHECK:  encoding: [0x62,0x01,0x2d,0x00,0x6b,0xf2]
          vpackssdw %xmm26, %xmm26, %xmm30

// CHECK: vpackssdw %xmm26, %xmm26, %xmm30 {%k2}
// CHECK:  encoding: [0x62,0x01,0x2d,0x02,0x6b,0xf2]
          vpackssdw %xmm26, %xmm26, %xmm30 {%k2}

// CHECK: vpackssdw %xmm26, %xmm26, %xmm30 {%k2} {z}
// CHECK:  encoding: [0x62,0x01,0x2d,0x82,0x6b,0xf2]
          vpackssdw %xmm26, %xmm26, %xmm30 {%k2} {z}

// CHECK: vpackssdw (%rcx), %xmm26, %xmm30
// CHECK:  encoding: [0x62,0x61,0x2d,0x00,0x6b,0x31]
          vpackssdw (%rcx), %xmm26, %xmm30

// CHECK: vpackssdw 291(%rax,%r14,8), %xmm26, %xmm30
// CHECK:  encoding: [0x62,0x21,0x2d,0x00,0x6b,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpackssdw 291(%rax,%r14,8), %xmm26, %xmm30

// CHECK: vpackssdw (%rcx){1to4}, %xmm26, %xmm30
// CHECK:  encoding: [0x62,0x61,0x2d,0x10,0x6b,0x31]
          vpackssdw (%rcx){1to4}, %xmm26, %xmm30

// CHECK: vpackssdw 2032(%rdx), %xmm26, %xmm30
// CHECK:  encoding: [0x62,0x61,0x2d,0x00,0x6b,0x72,0x7f]
          vpackssdw 2032(%rdx), %xmm26, %xmm30

// CHECK: vpackssdw 2048(%rdx), %xmm26, %xmm30
// CHECK:  encoding: [0x62,0x61,0x2d,0x00,0x6b,0xb2,0x00,0x08,0x00,0x00]
          vpackssdw 2048(%rdx), %xmm26, %xmm30

// CHECK: vpackssdw -2048(%rdx), %xmm26, %xmm30
// CHECK:  encoding: [0x62,0x61,0x2d,0x00,0x6b,0x72,0x80]
          vpackssdw -2048(%rdx), %xmm26, %xmm30

// CHECK: vpackssdw -2064(%rdx), %xmm26, %xmm30
// CHECK:  encoding: [0x62,0x61,0x2d,0x00,0x6b,0xb2,0xf0,0xf7,0xff,0xff]
          vpackssdw -2064(%rdx), %xmm26, %xmm30

// CHECK: vpackssdw 508(%rdx){1to4}, %xmm26, %xmm30
// CHECK:  encoding: [0x62,0x61,0x2d,0x10,0x6b,0x72,0x7f]
          vpackssdw 508(%rdx){1to4}, %xmm26, %xmm30

// CHECK: vpackssdw 512(%rdx){1to4}, %xmm26, %xmm30
// CHECK:  encoding: [0x62,0x61,0x2d,0x10,0x6b,0xb2,0x00,0x02,0x00,0x00]
          vpackssdw 512(%rdx){1to4}, %xmm26, %xmm30

// CHECK: vpackssdw -512(%rdx){1to4}, %xmm26, %xmm30
// CHECK:  encoding: [0x62,0x61,0x2d,0x10,0x6b,0x72,0x80]
          vpackssdw -512(%rdx){1to4}, %xmm26, %xmm30

// CHECK: vpackssdw -516(%rdx){1to4}, %xmm26, %xmm30
// CHECK:  encoding: [0x62,0x61,0x2d,0x10,0x6b,0xb2,0xfc,0xfd,0xff,0xff]
          vpackssdw -516(%rdx){1to4}, %xmm26, %xmm30

// CHECK: vpackssdw %ymm26, %ymm22, %ymm28
// CHECK:  encoding: [0x62,0x01,0x4d,0x20,0x6b,0xe2]
          vpackssdw %ymm26, %ymm22, %ymm28

// CHECK: vpackssdw %ymm26, %ymm22, %ymm28 {%k7}
// CHECK:  encoding: [0x62,0x01,0x4d,0x27,0x6b,0xe2]
          vpackssdw %ymm26, %ymm22, %ymm28 {%k7}

// CHECK: vpackssdw %ymm26, %ymm22, %ymm28 {%k7} {z}
// CHECK:  encoding: [0x62,0x01,0x4d,0xa7,0x6b,0xe2]
          vpackssdw %ymm26, %ymm22, %ymm28 {%k7} {z}

// CHECK: vpackssdw (%rcx), %ymm22, %ymm28
// CHECK:  encoding: [0x62,0x61,0x4d,0x20,0x6b,0x21]
          vpackssdw (%rcx), %ymm22, %ymm28

// CHECK: vpackssdw 291(%rax,%r14,8), %ymm22, %ymm28
// CHECK:  encoding: [0x62,0x21,0x4d,0x20,0x6b,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpackssdw 291(%rax,%r14,8), %ymm22, %ymm28

// CHECK: vpackssdw (%rcx){1to8}, %ymm22, %ymm28
// CHECK:  encoding: [0x62,0x61,0x4d,0x30,0x6b,0x21]
          vpackssdw (%rcx){1to8}, %ymm22, %ymm28

// CHECK: vpackssdw 4064(%rdx), %ymm22, %ymm28
// CHECK:  encoding: [0x62,0x61,0x4d,0x20,0x6b,0x62,0x7f]
          vpackssdw 4064(%rdx), %ymm22, %ymm28

// CHECK: vpackssdw 4096(%rdx), %ymm22, %ymm28
// CHECK:  encoding: [0x62,0x61,0x4d,0x20,0x6b,0xa2,0x00,0x10,0x00,0x00]
          vpackssdw 4096(%rdx), %ymm22, %ymm28

// CHECK: vpackssdw -4096(%rdx), %ymm22, %ymm28
// CHECK:  encoding: [0x62,0x61,0x4d,0x20,0x6b,0x62,0x80]
          vpackssdw -4096(%rdx), %ymm22, %ymm28

// CHECK: vpackssdw -4128(%rdx), %ymm22, %ymm28
// CHECK:  encoding: [0x62,0x61,0x4d,0x20,0x6b,0xa2,0xe0,0xef,0xff,0xff]
          vpackssdw -4128(%rdx), %ymm22, %ymm28

// CHECK: vpackssdw 508(%rdx){1to8}, %ymm22, %ymm28
// CHECK:  encoding: [0x62,0x61,0x4d,0x30,0x6b,0x62,0x7f]
          vpackssdw 508(%rdx){1to8}, %ymm22, %ymm28

// CHECK: vpackssdw 512(%rdx){1to8}, %ymm22, %ymm28
// CHECK:  encoding: [0x62,0x61,0x4d,0x30,0x6b,0xa2,0x00,0x02,0x00,0x00]
          vpackssdw 512(%rdx){1to8}, %ymm22, %ymm28

// CHECK: vpackssdw -512(%rdx){1to8}, %ymm22, %ymm28
// CHECK:  encoding: [0x62,0x61,0x4d,0x30,0x6b,0x62,0x80]
          vpackssdw -512(%rdx){1to8}, %ymm22, %ymm28

// CHECK: vpackssdw -516(%rdx){1to8}, %ymm22, %ymm28
// CHECK:  encoding: [0x62,0x61,0x4d,0x30,0x6b,0xa2,0xfc,0xfd,0xff,0xff]
          vpackssdw -516(%rdx){1to8}, %ymm22, %ymm28

// CHECK: vpacksswb %xmm21, %xmm28, %xmm25
// CHECK:  encoding: [0x62,0x21,0x1d,0x00,0x63,0xcd]
          vpacksswb %xmm21, %xmm28, %xmm25

// CHECK: vpacksswb %xmm21, %xmm28, %xmm25 {%k5}
// CHECK:  encoding: [0x62,0x21,0x1d,0x05,0x63,0xcd]
          vpacksswb %xmm21, %xmm28, %xmm25 {%k5}

// CHECK: vpacksswb %xmm21, %xmm28, %xmm25 {%k5} {z}
// CHECK:  encoding: [0x62,0x21,0x1d,0x85,0x63,0xcd]
          vpacksswb %xmm21, %xmm28, %xmm25 {%k5} {z}

// CHECK: vpacksswb (%rcx), %xmm28, %xmm25
// CHECK:  encoding: [0x62,0x61,0x1d,0x00,0x63,0x09]
          vpacksswb (%rcx), %xmm28, %xmm25

// CHECK: vpacksswb 291(%rax,%r14,8), %xmm28, %xmm25
// CHECK:  encoding: [0x62,0x21,0x1d,0x00,0x63,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpacksswb 291(%rax,%r14,8), %xmm28, %xmm25

// CHECK: vpacksswb 2032(%rdx), %xmm28, %xmm25
// CHECK:  encoding: [0x62,0x61,0x1d,0x00,0x63,0x4a,0x7f]
          vpacksswb 2032(%rdx), %xmm28, %xmm25

// CHECK: vpacksswb 2048(%rdx), %xmm28, %xmm25
// CHECK:  encoding: [0x62,0x61,0x1d,0x00,0x63,0x8a,0x00,0x08,0x00,0x00]
          vpacksswb 2048(%rdx), %xmm28, %xmm25

// CHECK: vpacksswb -2048(%rdx), %xmm28, %xmm25
// CHECK:  encoding: [0x62,0x61,0x1d,0x00,0x63,0x4a,0x80]
          vpacksswb -2048(%rdx), %xmm28, %xmm25

// CHECK: vpacksswb -2064(%rdx), %xmm28, %xmm25
// CHECK:  encoding: [0x62,0x61,0x1d,0x00,0x63,0x8a,0xf0,0xf7,0xff,0xff]
          vpacksswb -2064(%rdx), %xmm28, %xmm25

// CHECK: vpacksswb %ymm22, %ymm28, %ymm21
// CHECK:  encoding: [0x62,0xa1,0x1d,0x20,0x63,0xee]
          vpacksswb %ymm22, %ymm28, %ymm21

// CHECK: vpacksswb %ymm22, %ymm28, %ymm21 {%k5}
// CHECK:  encoding: [0x62,0xa1,0x1d,0x25,0x63,0xee]
          vpacksswb %ymm22, %ymm28, %ymm21 {%k5}

// CHECK: vpacksswb %ymm22, %ymm28, %ymm21 {%k5} {z}
// CHECK:  encoding: [0x62,0xa1,0x1d,0xa5,0x63,0xee]
          vpacksswb %ymm22, %ymm28, %ymm21 {%k5} {z}

// CHECK: vpacksswb (%rcx), %ymm28, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x1d,0x20,0x63,0x29]
          vpacksswb (%rcx), %ymm28, %ymm21

// CHECK: vpacksswb 291(%rax,%r14,8), %ymm28, %ymm21
// CHECK:  encoding: [0x62,0xa1,0x1d,0x20,0x63,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpacksswb 291(%rax,%r14,8), %ymm28, %ymm21

// CHECK: vpacksswb 4064(%rdx), %ymm28, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x1d,0x20,0x63,0x6a,0x7f]
          vpacksswb 4064(%rdx), %ymm28, %ymm21

// CHECK: vpacksswb 4096(%rdx), %ymm28, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x1d,0x20,0x63,0xaa,0x00,0x10,0x00,0x00]
          vpacksswb 4096(%rdx), %ymm28, %ymm21

// CHECK: vpacksswb -4096(%rdx), %ymm28, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x1d,0x20,0x63,0x6a,0x80]
          vpacksswb -4096(%rdx), %ymm28, %ymm21

// CHECK: vpacksswb -4128(%rdx), %ymm28, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x1d,0x20,0x63,0xaa,0xe0,0xef,0xff,0xff]
          vpacksswb -4128(%rdx), %ymm28, %ymm21

// CHECK: vpackusdw %xmm20, %xmm24, %xmm24
// CHECK:  encoding: [0x62,0x22,0x3d,0x00,0x2b,0xc4]
          vpackusdw %xmm20, %xmm24, %xmm24

// CHECK: vpackusdw %xmm20, %xmm24, %xmm24 {%k5}
// CHECK:  encoding: [0x62,0x22,0x3d,0x05,0x2b,0xc4]
          vpackusdw %xmm20, %xmm24, %xmm24 {%k5}

// CHECK: vpackusdw %xmm20, %xmm24, %xmm24 {%k5} {z}
// CHECK:  encoding: [0x62,0x22,0x3d,0x85,0x2b,0xc4]
          vpackusdw %xmm20, %xmm24, %xmm24 {%k5} {z}

// CHECK: vpackusdw (%rcx), %xmm24, %xmm24
// CHECK:  encoding: [0x62,0x62,0x3d,0x00,0x2b,0x01]
          vpackusdw (%rcx), %xmm24, %xmm24

// CHECK: vpackusdw 291(%rax,%r14,8), %xmm24, %xmm24
// CHECK:  encoding: [0x62,0x22,0x3d,0x00,0x2b,0x84,0xf0,0x23,0x01,0x00,0x00]
          vpackusdw 291(%rax,%r14,8), %xmm24, %xmm24

// CHECK: vpackusdw (%rcx){1to4}, %xmm24, %xmm24
// CHECK:  encoding: [0x62,0x62,0x3d,0x10,0x2b,0x01]
          vpackusdw (%rcx){1to4}, %xmm24, %xmm24

// CHECK: vpackusdw 2032(%rdx), %xmm24, %xmm24
// CHECK:  encoding: [0x62,0x62,0x3d,0x00,0x2b,0x42,0x7f]
          vpackusdw 2032(%rdx), %xmm24, %xmm24

// CHECK: vpackusdw 2048(%rdx), %xmm24, %xmm24
// CHECK:  encoding: [0x62,0x62,0x3d,0x00,0x2b,0x82,0x00,0x08,0x00,0x00]
          vpackusdw 2048(%rdx), %xmm24, %xmm24

// CHECK: vpackusdw -2048(%rdx), %xmm24, %xmm24
// CHECK:  encoding: [0x62,0x62,0x3d,0x00,0x2b,0x42,0x80]
          vpackusdw -2048(%rdx), %xmm24, %xmm24

// CHECK: vpackusdw -2064(%rdx), %xmm24, %xmm24
// CHECK:  encoding: [0x62,0x62,0x3d,0x00,0x2b,0x82,0xf0,0xf7,0xff,0xff]
          vpackusdw -2064(%rdx), %xmm24, %xmm24

// CHECK: vpackusdw 508(%rdx){1to4}, %xmm24, %xmm24
// CHECK:  encoding: [0x62,0x62,0x3d,0x10,0x2b,0x42,0x7f]
          vpackusdw 508(%rdx){1to4}, %xmm24, %xmm24

// CHECK: vpackusdw 512(%rdx){1to4}, %xmm24, %xmm24
// CHECK:  encoding: [0x62,0x62,0x3d,0x10,0x2b,0x82,0x00,0x02,0x00,0x00]
          vpackusdw 512(%rdx){1to4}, %xmm24, %xmm24

// CHECK: vpackusdw -512(%rdx){1to4}, %xmm24, %xmm24
// CHECK:  encoding: [0x62,0x62,0x3d,0x10,0x2b,0x42,0x80]
          vpackusdw -512(%rdx){1to4}, %xmm24, %xmm24

// CHECK: vpackusdw -516(%rdx){1to4}, %xmm24, %xmm24
// CHECK:  encoding: [0x62,0x62,0x3d,0x10,0x2b,0x82,0xfc,0xfd,0xff,0xff]
          vpackusdw -516(%rdx){1to4}, %xmm24, %xmm24

// CHECK: vpackusdw %ymm21, %ymm26, %ymm19
// CHECK:  encoding: [0x62,0xa2,0x2d,0x20,0x2b,0xdd]
          vpackusdw %ymm21, %ymm26, %ymm19

// CHECK: vpackusdw %ymm21, %ymm26, %ymm19 {%k1}
// CHECK:  encoding: [0x62,0xa2,0x2d,0x21,0x2b,0xdd]
          vpackusdw %ymm21, %ymm26, %ymm19 {%k1}

// CHECK: vpackusdw %ymm21, %ymm26, %ymm19 {%k1} {z}
// CHECK:  encoding: [0x62,0xa2,0x2d,0xa1,0x2b,0xdd]
          vpackusdw %ymm21, %ymm26, %ymm19 {%k1} {z}

// CHECK: vpackusdw (%rcx), %ymm26, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x2d,0x20,0x2b,0x19]
          vpackusdw (%rcx), %ymm26, %ymm19

// CHECK: vpackusdw 291(%rax,%r14,8), %ymm26, %ymm19
// CHECK:  encoding: [0x62,0xa2,0x2d,0x20,0x2b,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpackusdw 291(%rax,%r14,8), %ymm26, %ymm19

// CHECK: vpackusdw (%rcx){1to8}, %ymm26, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x2d,0x30,0x2b,0x19]
          vpackusdw (%rcx){1to8}, %ymm26, %ymm19

// CHECK: vpackusdw 4064(%rdx), %ymm26, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x2d,0x20,0x2b,0x5a,0x7f]
          vpackusdw 4064(%rdx), %ymm26, %ymm19

// CHECK: vpackusdw 4096(%rdx), %ymm26, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x2d,0x20,0x2b,0x9a,0x00,0x10,0x00,0x00]
          vpackusdw 4096(%rdx), %ymm26, %ymm19

// CHECK: vpackusdw -4096(%rdx), %ymm26, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x2d,0x20,0x2b,0x5a,0x80]
          vpackusdw -4096(%rdx), %ymm26, %ymm19

// CHECK: vpackusdw -4128(%rdx), %ymm26, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x2d,0x20,0x2b,0x9a,0xe0,0xef,0xff,0xff]
          vpackusdw -4128(%rdx), %ymm26, %ymm19

// CHECK: vpackusdw 508(%rdx){1to8}, %ymm26, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x2d,0x30,0x2b,0x5a,0x7f]
          vpackusdw 508(%rdx){1to8}, %ymm26, %ymm19

// CHECK: vpackusdw 512(%rdx){1to8}, %ymm26, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x2d,0x30,0x2b,0x9a,0x00,0x02,0x00,0x00]
          vpackusdw 512(%rdx){1to8}, %ymm26, %ymm19

// CHECK: vpackusdw -512(%rdx){1to8}, %ymm26, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x2d,0x30,0x2b,0x5a,0x80]
          vpackusdw -512(%rdx){1to8}, %ymm26, %ymm19

// CHECK: vpackusdw -516(%rdx){1to8}, %ymm26, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x2d,0x30,0x2b,0x9a,0xfc,0xfd,0xff,0xff]
          vpackusdw -516(%rdx){1to8}, %ymm26, %ymm19

// CHECK: vpackuswb %xmm17, %xmm27, %xmm21
// CHECK:  encoding: [0x62,0xa1,0x25,0x00,0x67,0xe9]
          vpackuswb %xmm17, %xmm27, %xmm21

// CHECK: vpackuswb %xmm17, %xmm27, %xmm21 {%k4}
// CHECK:  encoding: [0x62,0xa1,0x25,0x04,0x67,0xe9]
          vpackuswb %xmm17, %xmm27, %xmm21 {%k4}

// CHECK: vpackuswb %xmm17, %xmm27, %xmm21 {%k4} {z}
// CHECK:  encoding: [0x62,0xa1,0x25,0x84,0x67,0xe9]
          vpackuswb %xmm17, %xmm27, %xmm21 {%k4} {z}

// CHECK: vpackuswb (%rcx), %xmm27, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x25,0x00,0x67,0x29]
          vpackuswb (%rcx), %xmm27, %xmm21

// CHECK: vpackuswb 291(%rax,%r14,8), %xmm27, %xmm21
// CHECK:  encoding: [0x62,0xa1,0x25,0x00,0x67,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpackuswb 291(%rax,%r14,8), %xmm27, %xmm21

// CHECK: vpackuswb 2032(%rdx), %xmm27, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x25,0x00,0x67,0x6a,0x7f]
          vpackuswb 2032(%rdx), %xmm27, %xmm21

// CHECK: vpackuswb 2048(%rdx), %xmm27, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x25,0x00,0x67,0xaa,0x00,0x08,0x00,0x00]
          vpackuswb 2048(%rdx), %xmm27, %xmm21

// CHECK: vpackuswb -2048(%rdx), %xmm27, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x25,0x00,0x67,0x6a,0x80]
          vpackuswb -2048(%rdx), %xmm27, %xmm21

// CHECK: vpackuswb -2064(%rdx), %xmm27, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x25,0x00,0x67,0xaa,0xf0,0xf7,0xff,0xff]
          vpackuswb -2064(%rdx), %xmm27, %xmm21

// CHECK: vpackuswb %ymm20, %ymm28, %ymm19
// CHECK:  encoding: [0x62,0xa1,0x1d,0x20,0x67,0xdc]
          vpackuswb %ymm20, %ymm28, %ymm19

// CHECK: vpackuswb %ymm20, %ymm28, %ymm19 {%k1}
// CHECK:  encoding: [0x62,0xa1,0x1d,0x21,0x67,0xdc]
          vpackuswb %ymm20, %ymm28, %ymm19 {%k1}

// CHECK: vpackuswb %ymm20, %ymm28, %ymm19 {%k1} {z}
// CHECK:  encoding: [0x62,0xa1,0x1d,0xa1,0x67,0xdc]
          vpackuswb %ymm20, %ymm28, %ymm19 {%k1} {z}

// CHECK: vpackuswb (%rcx), %ymm28, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x1d,0x20,0x67,0x19]
          vpackuswb (%rcx), %ymm28, %ymm19

// CHECK: vpackuswb 291(%rax,%r14,8), %ymm28, %ymm19
// CHECK:  encoding: [0x62,0xa1,0x1d,0x20,0x67,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpackuswb 291(%rax,%r14,8), %ymm28, %ymm19

// CHECK: vpackuswb 4064(%rdx), %ymm28, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x1d,0x20,0x67,0x5a,0x7f]
          vpackuswb 4064(%rdx), %ymm28, %ymm19

// CHECK: vpackuswb 4096(%rdx), %ymm28, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x1d,0x20,0x67,0x9a,0x00,0x10,0x00,0x00]
          vpackuswb 4096(%rdx), %ymm28, %ymm19

// CHECK: vpackuswb -4096(%rdx), %ymm28, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x1d,0x20,0x67,0x5a,0x80]
          vpackuswb -4096(%rdx), %ymm28, %ymm19

// CHECK: vpackuswb -4128(%rdx), %ymm28, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x1d,0x20,0x67,0x9a,0xe0,0xef,0xff,0xff]
          vpackuswb -4128(%rdx), %ymm28, %ymm19

// CHECK: vpackssdw %xmm19, %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x21,0x75,0x00,0x6b,0xc3]
          vpackssdw %xmm19, %xmm17, %xmm24

// CHECK: vpackssdw %xmm19, %xmm17, %xmm24 {%k7}
// CHECK:  encoding: [0x62,0x21,0x75,0x07,0x6b,0xc3]
          vpackssdw %xmm19, %xmm17, %xmm24 {%k7}

// CHECK: vpackssdw %xmm19, %xmm17, %xmm24 {%k7} {z}
// CHECK:  encoding: [0x62,0x21,0x75,0x87,0x6b,0xc3]
          vpackssdw %xmm19, %xmm17, %xmm24 {%k7} {z}

// CHECK: vpackssdw (%rcx), %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x61,0x75,0x00,0x6b,0x01]
          vpackssdw (%rcx), %xmm17, %xmm24

// CHECK: vpackssdw 4660(%rax,%r14,8), %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x21,0x75,0x00,0x6b,0x84,0xf0,0x34,0x12,0x00,0x00]
          vpackssdw 4660(%rax,%r14,8), %xmm17, %xmm24

// CHECK: vpackssdw (%rcx){1to4}, %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x61,0x75,0x10,0x6b,0x01]
          vpackssdw (%rcx){1to4}, %xmm17, %xmm24

// CHECK: vpackssdw 2032(%rdx), %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x61,0x75,0x00,0x6b,0x42,0x7f]
          vpackssdw 2032(%rdx), %xmm17, %xmm24

// CHECK: vpackssdw 2048(%rdx), %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x61,0x75,0x00,0x6b,0x82,0x00,0x08,0x00,0x00]
          vpackssdw 2048(%rdx), %xmm17, %xmm24

// CHECK: vpackssdw -2048(%rdx), %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x61,0x75,0x00,0x6b,0x42,0x80]
          vpackssdw -2048(%rdx), %xmm17, %xmm24

// CHECK: vpackssdw -2064(%rdx), %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x61,0x75,0x00,0x6b,0x82,0xf0,0xf7,0xff,0xff]
          vpackssdw -2064(%rdx), %xmm17, %xmm24

// CHECK: vpackssdw 508(%rdx){1to4}, %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x61,0x75,0x10,0x6b,0x42,0x7f]
          vpackssdw 508(%rdx){1to4}, %xmm17, %xmm24

// CHECK: vpackssdw 512(%rdx){1to4}, %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x61,0x75,0x10,0x6b,0x82,0x00,0x02,0x00,0x00]
          vpackssdw 512(%rdx){1to4}, %xmm17, %xmm24

// CHECK: vpackssdw -512(%rdx){1to4}, %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x61,0x75,0x10,0x6b,0x42,0x80]
          vpackssdw -512(%rdx){1to4}, %xmm17, %xmm24

// CHECK: vpackssdw -516(%rdx){1to4}, %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x61,0x75,0x10,0x6b,0x82,0xfc,0xfd,0xff,0xff]
          vpackssdw -516(%rdx){1to4}, %xmm17, %xmm24

// CHECK: vpackssdw %ymm19, %ymm19, %ymm25
// CHECK:  encoding: [0x62,0x21,0x65,0x20,0x6b,0xcb]
          vpackssdw %ymm19, %ymm19, %ymm25

// CHECK: vpackssdw %ymm19, %ymm19, %ymm25 {%k2}
// CHECK:  encoding: [0x62,0x21,0x65,0x22,0x6b,0xcb]
          vpackssdw %ymm19, %ymm19, %ymm25 {%k2}

// CHECK: vpackssdw %ymm19, %ymm19, %ymm25 {%k2} {z}
// CHECK:  encoding: [0x62,0x21,0x65,0xa2,0x6b,0xcb]
          vpackssdw %ymm19, %ymm19, %ymm25 {%k2} {z}

// CHECK: vpackssdw (%rcx), %ymm19, %ymm25
// CHECK:  encoding: [0x62,0x61,0x65,0x20,0x6b,0x09]
          vpackssdw (%rcx), %ymm19, %ymm25

// CHECK: vpackssdw 4660(%rax,%r14,8), %ymm19, %ymm25
// CHECK:  encoding: [0x62,0x21,0x65,0x20,0x6b,0x8c,0xf0,0x34,0x12,0x00,0x00]
          vpackssdw 4660(%rax,%r14,8), %ymm19, %ymm25

// CHECK: vpackssdw (%rcx){1to8}, %ymm19, %ymm25
// CHECK:  encoding: [0x62,0x61,0x65,0x30,0x6b,0x09]
          vpackssdw (%rcx){1to8}, %ymm19, %ymm25

// CHECK: vpackssdw 4064(%rdx), %ymm19, %ymm25
// CHECK:  encoding: [0x62,0x61,0x65,0x20,0x6b,0x4a,0x7f]
          vpackssdw 4064(%rdx), %ymm19, %ymm25

// CHECK: vpackssdw 4096(%rdx), %ymm19, %ymm25
// CHECK:  encoding: [0x62,0x61,0x65,0x20,0x6b,0x8a,0x00,0x10,0x00,0x00]
          vpackssdw 4096(%rdx), %ymm19, %ymm25

// CHECK: vpackssdw -4096(%rdx), %ymm19, %ymm25
// CHECK:  encoding: [0x62,0x61,0x65,0x20,0x6b,0x4a,0x80]
          vpackssdw -4096(%rdx), %ymm19, %ymm25

// CHECK: vpackssdw -4128(%rdx), %ymm19, %ymm25
// CHECK:  encoding: [0x62,0x61,0x65,0x20,0x6b,0x8a,0xe0,0xef,0xff,0xff]
          vpackssdw -4128(%rdx), %ymm19, %ymm25

// CHECK: vpackssdw 508(%rdx){1to8}, %ymm19, %ymm25
// CHECK:  encoding: [0x62,0x61,0x65,0x30,0x6b,0x4a,0x7f]
          vpackssdw 508(%rdx){1to8}, %ymm19, %ymm25

// CHECK: vpackssdw 512(%rdx){1to8}, %ymm19, %ymm25
// CHECK:  encoding: [0x62,0x61,0x65,0x30,0x6b,0x8a,0x00,0x02,0x00,0x00]
          vpackssdw 512(%rdx){1to8}, %ymm19, %ymm25

// CHECK: vpackssdw -512(%rdx){1to8}, %ymm19, %ymm25
// CHECK:  encoding: [0x62,0x61,0x65,0x30,0x6b,0x4a,0x80]
          vpackssdw -512(%rdx){1to8}, %ymm19, %ymm25

// CHECK: vpackssdw -516(%rdx){1to8}, %ymm19, %ymm25
// CHECK:  encoding: [0x62,0x61,0x65,0x30,0x6b,0x8a,0xfc,0xfd,0xff,0xff]
          vpackssdw -516(%rdx){1to8}, %ymm19, %ymm25

// CHECK: vpacksswb %xmm22, %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x21,0x35,0x00,0x63,0xee]
          vpacksswb %xmm22, %xmm25, %xmm29

// CHECK: vpacksswb %xmm22, %xmm25, %xmm29 {%k5}
// CHECK:  encoding: [0x62,0x21,0x35,0x05,0x63,0xee]
          vpacksswb %xmm22, %xmm25, %xmm29 {%k5}

// CHECK: vpacksswb %xmm22, %xmm25, %xmm29 {%k5} {z}
// CHECK:  encoding: [0x62,0x21,0x35,0x85,0x63,0xee]
          vpacksswb %xmm22, %xmm25, %xmm29 {%k5} {z}

// CHECK: vpacksswb (%rcx), %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x61,0x35,0x00,0x63,0x29]
          vpacksswb (%rcx), %xmm25, %xmm29

// CHECK: vpacksswb 4660(%rax,%r14,8), %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x21,0x35,0x00,0x63,0xac,0xf0,0x34,0x12,0x00,0x00]
          vpacksswb 4660(%rax,%r14,8), %xmm25, %xmm29

// CHECK: vpacksswb 2032(%rdx), %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x61,0x35,0x00,0x63,0x6a,0x7f]
          vpacksswb 2032(%rdx), %xmm25, %xmm29

// CHECK: vpacksswb 2048(%rdx), %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x61,0x35,0x00,0x63,0xaa,0x00,0x08,0x00,0x00]
          vpacksswb 2048(%rdx), %xmm25, %xmm29

// CHECK: vpacksswb -2048(%rdx), %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x61,0x35,0x00,0x63,0x6a,0x80]
          vpacksswb -2048(%rdx), %xmm25, %xmm29

// CHECK: vpacksswb -2064(%rdx), %xmm25, %xmm29
// CHECK:  encoding: [0x62,0x61,0x35,0x00,0x63,0xaa,0xf0,0xf7,0xff,0xff]
          vpacksswb -2064(%rdx), %xmm25, %xmm29

// CHECK: vpacksswb %ymm27, %ymm20, %ymm26
// CHECK:  encoding: [0x62,0x01,0x5d,0x20,0x63,0xd3]
          vpacksswb %ymm27, %ymm20, %ymm26

// CHECK: vpacksswb %ymm27, %ymm20, %ymm26 {%k6}
// CHECK:  encoding: [0x62,0x01,0x5d,0x26,0x63,0xd3]
          vpacksswb %ymm27, %ymm20, %ymm26 {%k6}

// CHECK: vpacksswb %ymm27, %ymm20, %ymm26 {%k6} {z}
// CHECK:  encoding: [0x62,0x01,0x5d,0xa6,0x63,0xd3]
          vpacksswb %ymm27, %ymm20, %ymm26 {%k6} {z}

// CHECK: vpacksswb (%rcx), %ymm20, %ymm26
// CHECK:  encoding: [0x62,0x61,0x5d,0x20,0x63,0x11]
          vpacksswb (%rcx), %ymm20, %ymm26

// CHECK: vpacksswb 4660(%rax,%r14,8), %ymm20, %ymm26
// CHECK:  encoding: [0x62,0x21,0x5d,0x20,0x63,0x94,0xf0,0x34,0x12,0x00,0x00]
          vpacksswb 4660(%rax,%r14,8), %ymm20, %ymm26

// CHECK: vpacksswb 4064(%rdx), %ymm20, %ymm26
// CHECK:  encoding: [0x62,0x61,0x5d,0x20,0x63,0x52,0x7f]
          vpacksswb 4064(%rdx), %ymm20, %ymm26

// CHECK: vpacksswb 4096(%rdx), %ymm20, %ymm26
// CHECK:  encoding: [0x62,0x61,0x5d,0x20,0x63,0x92,0x00,0x10,0x00,0x00]
          vpacksswb 4096(%rdx), %ymm20, %ymm26

// CHECK: vpacksswb -4096(%rdx), %ymm20, %ymm26
// CHECK:  encoding: [0x62,0x61,0x5d,0x20,0x63,0x52,0x80]
          vpacksswb -4096(%rdx), %ymm20, %ymm26

// CHECK: vpacksswb -4128(%rdx), %ymm20, %ymm26
// CHECK:  encoding: [0x62,0x61,0x5d,0x20,0x63,0x92,0xe0,0xef,0xff,0xff]
          vpacksswb -4128(%rdx), %ymm20, %ymm26

// CHECK: vpackusdw %xmm18, %xmm27, %xmm28
// CHECK:  encoding: [0x62,0x22,0x25,0x00,0x2b,0xe2]
          vpackusdw %xmm18, %xmm27, %xmm28

// CHECK: vpackusdw %xmm18, %xmm27, %xmm28 {%k4}
// CHECK:  encoding: [0x62,0x22,0x25,0x04,0x2b,0xe2]
          vpackusdw %xmm18, %xmm27, %xmm28 {%k4}

// CHECK: vpackusdw %xmm18, %xmm27, %xmm28 {%k4} {z}
// CHECK:  encoding: [0x62,0x22,0x25,0x84,0x2b,0xe2]
          vpackusdw %xmm18, %xmm27, %xmm28 {%k4} {z}

// CHECK: vpackusdw (%rcx), %xmm27, %xmm28
// CHECK:  encoding: [0x62,0x62,0x25,0x00,0x2b,0x21]
          vpackusdw (%rcx), %xmm27, %xmm28

// CHECK: vpackusdw 4660(%rax,%r14,8), %xmm27, %xmm28
// CHECK:  encoding: [0x62,0x22,0x25,0x00,0x2b,0xa4,0xf0,0x34,0x12,0x00,0x00]
          vpackusdw 4660(%rax,%r14,8), %xmm27, %xmm28

// CHECK: vpackusdw (%rcx){1to4}, %xmm27, %xmm28
// CHECK:  encoding: [0x62,0x62,0x25,0x10,0x2b,0x21]
          vpackusdw (%rcx){1to4}, %xmm27, %xmm28

// CHECK: vpackusdw 2032(%rdx), %xmm27, %xmm28
// CHECK:  encoding: [0x62,0x62,0x25,0x00,0x2b,0x62,0x7f]
          vpackusdw 2032(%rdx), %xmm27, %xmm28

// CHECK: vpackusdw 2048(%rdx), %xmm27, %xmm28
// CHECK:  encoding: [0x62,0x62,0x25,0x00,0x2b,0xa2,0x00,0x08,0x00,0x00]
          vpackusdw 2048(%rdx), %xmm27, %xmm28

// CHECK: vpackusdw -2048(%rdx), %xmm27, %xmm28
// CHECK:  encoding: [0x62,0x62,0x25,0x00,0x2b,0x62,0x80]
          vpackusdw -2048(%rdx), %xmm27, %xmm28

// CHECK: vpackusdw -2064(%rdx), %xmm27, %xmm28
// CHECK:  encoding: [0x62,0x62,0x25,0x00,0x2b,0xa2,0xf0,0xf7,0xff,0xff]
          vpackusdw -2064(%rdx), %xmm27, %xmm28

// CHECK: vpackusdw 508(%rdx){1to4}, %xmm27, %xmm28
// CHECK:  encoding: [0x62,0x62,0x25,0x10,0x2b,0x62,0x7f]
          vpackusdw 508(%rdx){1to4}, %xmm27, %xmm28

// CHECK: vpackusdw 512(%rdx){1to4}, %xmm27, %xmm28
// CHECK:  encoding: [0x62,0x62,0x25,0x10,0x2b,0xa2,0x00,0x02,0x00,0x00]
          vpackusdw 512(%rdx){1to4}, %xmm27, %xmm28

// CHECK: vpackusdw -512(%rdx){1to4}, %xmm27, %xmm28
// CHECK:  encoding: [0x62,0x62,0x25,0x10,0x2b,0x62,0x80]
          vpackusdw -512(%rdx){1to4}, %xmm27, %xmm28

// CHECK: vpackusdw -516(%rdx){1to4}, %xmm27, %xmm28
// CHECK:  encoding: [0x62,0x62,0x25,0x10,0x2b,0xa2,0xfc,0xfd,0xff,0xff]
          vpackusdw -516(%rdx){1to4}, %xmm27, %xmm28

// CHECK: vpackusdw %ymm17, %ymm26, %ymm23
// CHECK:  encoding: [0x62,0xa2,0x2d,0x20,0x2b,0xf9]
          vpackusdw %ymm17, %ymm26, %ymm23

// CHECK: vpackusdw %ymm17, %ymm26, %ymm23 {%k4}
// CHECK:  encoding: [0x62,0xa2,0x2d,0x24,0x2b,0xf9]
          vpackusdw %ymm17, %ymm26, %ymm23 {%k4}

// CHECK: vpackusdw %ymm17, %ymm26, %ymm23 {%k4} {z}
// CHECK:  encoding: [0x62,0xa2,0x2d,0xa4,0x2b,0xf9]
          vpackusdw %ymm17, %ymm26, %ymm23 {%k4} {z}

// CHECK: vpackusdw (%rcx), %ymm26, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x2d,0x20,0x2b,0x39]
          vpackusdw (%rcx), %ymm26, %ymm23

// CHECK: vpackusdw 4660(%rax,%r14,8), %ymm26, %ymm23
// CHECK:  encoding: [0x62,0xa2,0x2d,0x20,0x2b,0xbc,0xf0,0x34,0x12,0x00,0x00]
          vpackusdw 4660(%rax,%r14,8), %ymm26, %ymm23

// CHECK: vpackusdw (%rcx){1to8}, %ymm26, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x2d,0x30,0x2b,0x39]
          vpackusdw (%rcx){1to8}, %ymm26, %ymm23

// CHECK: vpackusdw 4064(%rdx), %ymm26, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x2d,0x20,0x2b,0x7a,0x7f]
          vpackusdw 4064(%rdx), %ymm26, %ymm23

// CHECK: vpackusdw 4096(%rdx), %ymm26, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x2d,0x20,0x2b,0xba,0x00,0x10,0x00,0x00]
          vpackusdw 4096(%rdx), %ymm26, %ymm23

// CHECK: vpackusdw -4096(%rdx), %ymm26, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x2d,0x20,0x2b,0x7a,0x80]
          vpackusdw -4096(%rdx), %ymm26, %ymm23

// CHECK: vpackusdw -4128(%rdx), %ymm26, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x2d,0x20,0x2b,0xba,0xe0,0xef,0xff,0xff]
          vpackusdw -4128(%rdx), %ymm26, %ymm23

// CHECK: vpackusdw 508(%rdx){1to8}, %ymm26, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x2d,0x30,0x2b,0x7a,0x7f]
          vpackusdw 508(%rdx){1to8}, %ymm26, %ymm23

// CHECK: vpackusdw 512(%rdx){1to8}, %ymm26, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x2d,0x30,0x2b,0xba,0x00,0x02,0x00,0x00]
          vpackusdw 512(%rdx){1to8}, %ymm26, %ymm23

// CHECK: vpackusdw -512(%rdx){1to8}, %ymm26, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x2d,0x30,0x2b,0x7a,0x80]
          vpackusdw -512(%rdx){1to8}, %ymm26, %ymm23

// CHECK: vpackusdw -516(%rdx){1to8}, %ymm26, %ymm23
// CHECK:  encoding: [0x62,0xe2,0x2d,0x30,0x2b,0xba,0xfc,0xfd,0xff,0xff]
          vpackusdw -516(%rdx){1to8}, %ymm26, %ymm23

// CHECK: vpackuswb %xmm23, %xmm20, %xmm20
// CHECK:  encoding: [0x62,0xa1,0x5d,0x00,0x67,0xe7]
          vpackuswb %xmm23, %xmm20, %xmm20

// CHECK: vpackuswb %xmm23, %xmm20, %xmm20 {%k2}
// CHECK:  encoding: [0x62,0xa1,0x5d,0x02,0x67,0xe7]
          vpackuswb %xmm23, %xmm20, %xmm20 {%k2}

// CHECK: vpackuswb %xmm23, %xmm20, %xmm20 {%k2} {z}
// CHECK:  encoding: [0x62,0xa1,0x5d,0x82,0x67,0xe7]
          vpackuswb %xmm23, %xmm20, %xmm20 {%k2} {z}

// CHECK: vpackuswb (%rcx), %xmm20, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x5d,0x00,0x67,0x21]
          vpackuswb (%rcx), %xmm20, %xmm20

// CHECK: vpackuswb 4660(%rax,%r14,8), %xmm20, %xmm20
// CHECK:  encoding: [0x62,0xa1,0x5d,0x00,0x67,0xa4,0xf0,0x34,0x12,0x00,0x00]
          vpackuswb 4660(%rax,%r14,8), %xmm20, %xmm20

// CHECK: vpackuswb 2032(%rdx), %xmm20, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x5d,0x00,0x67,0x62,0x7f]
          vpackuswb 2032(%rdx), %xmm20, %xmm20

// CHECK: vpackuswb 2048(%rdx), %xmm20, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x5d,0x00,0x67,0xa2,0x00,0x08,0x00,0x00]
          vpackuswb 2048(%rdx), %xmm20, %xmm20

// CHECK: vpackuswb -2048(%rdx), %xmm20, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x5d,0x00,0x67,0x62,0x80]
          vpackuswb -2048(%rdx), %xmm20, %xmm20

// CHECK: vpackuswb -2064(%rdx), %xmm20, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x5d,0x00,0x67,0xa2,0xf0,0xf7,0xff,0xff]
          vpackuswb -2064(%rdx), %xmm20, %xmm20

// CHECK: vpackuswb %ymm27, %ymm19, %ymm20
// CHECK:  encoding: [0x62,0x81,0x65,0x20,0x67,0xe3]
          vpackuswb %ymm27, %ymm19, %ymm20

// CHECK: vpackuswb %ymm27, %ymm19, %ymm20 {%k5}
// CHECK:  encoding: [0x62,0x81,0x65,0x25,0x67,0xe3]
          vpackuswb %ymm27, %ymm19, %ymm20 {%k5}

// CHECK: vpackuswb %ymm27, %ymm19, %ymm20 {%k5} {z}
// CHECK:  encoding: [0x62,0x81,0x65,0xa5,0x67,0xe3]
          vpackuswb %ymm27, %ymm19, %ymm20 {%k5} {z}

// CHECK: vpackuswb (%rcx), %ymm19, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x65,0x20,0x67,0x21]
          vpackuswb (%rcx), %ymm19, %ymm20

// CHECK: vpackuswb 4660(%rax,%r14,8), %ymm19, %ymm20
// CHECK:  encoding: [0x62,0xa1,0x65,0x20,0x67,0xa4,0xf0,0x34,0x12,0x00,0x00]
          vpackuswb 4660(%rax,%r14,8), %ymm19, %ymm20

// CHECK: vpackuswb 4064(%rdx), %ymm19, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x65,0x20,0x67,0x62,0x7f]
          vpackuswb 4064(%rdx), %ymm19, %ymm20

// CHECK: vpackuswb 4096(%rdx), %ymm19, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x65,0x20,0x67,0xa2,0x00,0x10,0x00,0x00]
          vpackuswb 4096(%rdx), %ymm19, %ymm20

// CHECK: vpackuswb -4096(%rdx), %ymm19, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x65,0x20,0x67,0x62,0x80]
          vpackuswb -4096(%rdx), %ymm19, %ymm20

// CHECK: vpackuswb -4128(%rdx), %ymm19, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x65,0x20,0x67,0xa2,0xe0,0xef,0xff,0xff]
          vpackuswb -4128(%rdx), %ymm19, %ymm20

// CHECK: vpaddsb %xmm27, %xmm19, %xmm19
// CHECK:  encoding: [0x62,0x81,0x65,0x00,0xec,0xdb]
          vpaddsb %xmm27, %xmm19, %xmm19

// CHECK: vpaddsb %xmm27, %xmm19, %xmm19 {%k2}
// CHECK:  encoding: [0x62,0x81,0x65,0x02,0xec,0xdb]
          vpaddsb %xmm27, %xmm19, %xmm19 {%k2}

// CHECK: vpaddsb %xmm27, %xmm19, %xmm19 {%k2} {z}
// CHECK:  encoding: [0x62,0x81,0x65,0x82,0xec,0xdb]
          vpaddsb %xmm27, %xmm19, %xmm19 {%k2} {z}

// CHECK: vpaddsb (%rcx), %xmm19, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x65,0x00,0xec,0x19]
          vpaddsb (%rcx), %xmm19, %xmm19

// CHECK: vpaddsb 291(%rax,%r14,8), %xmm19, %xmm19
// CHECK:  encoding: [0x62,0xa1,0x65,0x00,0xec,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpaddsb 291(%rax,%r14,8), %xmm19, %xmm19

// CHECK: vpaddsb 2032(%rdx), %xmm19, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x65,0x00,0xec,0x5a,0x7f]
          vpaddsb 2032(%rdx), %xmm19, %xmm19

// CHECK: vpaddsb 2048(%rdx), %xmm19, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x65,0x00,0xec,0x9a,0x00,0x08,0x00,0x00]
          vpaddsb 2048(%rdx), %xmm19, %xmm19

// CHECK: vpaddsb -2048(%rdx), %xmm19, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x65,0x00,0xec,0x5a,0x80]
          vpaddsb -2048(%rdx), %xmm19, %xmm19

// CHECK: vpaddsb -2064(%rdx), %xmm19, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x65,0x00,0xec,0x9a,0xf0,0xf7,0xff,0xff]
          vpaddsb -2064(%rdx), %xmm19, %xmm19

// CHECK: vpaddsb %ymm27, %ymm21, %ymm19
// CHECK:  encoding: [0x62,0x81,0x55,0x20,0xec,0xdb]
          vpaddsb %ymm27, %ymm21, %ymm19

// CHECK: vpaddsb %ymm27, %ymm21, %ymm19 {%k4}
// CHECK:  encoding: [0x62,0x81,0x55,0x24,0xec,0xdb]
          vpaddsb %ymm27, %ymm21, %ymm19 {%k4}

// CHECK: vpaddsb %ymm27, %ymm21, %ymm19 {%k4} {z}
// CHECK:  encoding: [0x62,0x81,0x55,0xa4,0xec,0xdb]
          vpaddsb %ymm27, %ymm21, %ymm19 {%k4} {z}

// CHECK: vpaddsb (%rcx), %ymm21, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x55,0x20,0xec,0x19]
          vpaddsb (%rcx), %ymm21, %ymm19

// CHECK: vpaddsb 291(%rax,%r14,8), %ymm21, %ymm19
// CHECK:  encoding: [0x62,0xa1,0x55,0x20,0xec,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpaddsb 291(%rax,%r14,8), %ymm21, %ymm19

// CHECK: vpaddsb 4064(%rdx), %ymm21, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x55,0x20,0xec,0x5a,0x7f]
          vpaddsb 4064(%rdx), %ymm21, %ymm19

// CHECK: vpaddsb 4096(%rdx), %ymm21, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x55,0x20,0xec,0x9a,0x00,0x10,0x00,0x00]
          vpaddsb 4096(%rdx), %ymm21, %ymm19

// CHECK: vpaddsb -4096(%rdx), %ymm21, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x55,0x20,0xec,0x5a,0x80]
          vpaddsb -4096(%rdx), %ymm21, %ymm19

// CHECK: vpaddsb -4128(%rdx), %ymm21, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x55,0x20,0xec,0x9a,0xe0,0xef,0xff,0xff]
          vpaddsb -4128(%rdx), %ymm21, %ymm19

// CHECK: vpaddsw %xmm21, %xmm27, %xmm29
// CHECK:  encoding: [0x62,0x21,0x25,0x00,0xed,0xed]
          vpaddsw %xmm21, %xmm27, %xmm29

// CHECK: vpaddsw %xmm21, %xmm27, %xmm29 {%k1}
// CHECK:  encoding: [0x62,0x21,0x25,0x01,0xed,0xed]
          vpaddsw %xmm21, %xmm27, %xmm29 {%k1}

// CHECK: vpaddsw %xmm21, %xmm27, %xmm29 {%k1} {z}
// CHECK:  encoding: [0x62,0x21,0x25,0x81,0xed,0xed]
          vpaddsw %xmm21, %xmm27, %xmm29 {%k1} {z}

// CHECK: vpaddsw (%rcx), %xmm27, %xmm29
// CHECK:  encoding: [0x62,0x61,0x25,0x00,0xed,0x29]
          vpaddsw (%rcx), %xmm27, %xmm29

// CHECK: vpaddsw 291(%rax,%r14,8), %xmm27, %xmm29
// CHECK:  encoding: [0x62,0x21,0x25,0x00,0xed,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpaddsw 291(%rax,%r14,8), %xmm27, %xmm29

// CHECK: vpaddsw 2032(%rdx), %xmm27, %xmm29
// CHECK:  encoding: [0x62,0x61,0x25,0x00,0xed,0x6a,0x7f]
          vpaddsw 2032(%rdx), %xmm27, %xmm29

// CHECK: vpaddsw 2048(%rdx), %xmm27, %xmm29
// CHECK:  encoding: [0x62,0x61,0x25,0x00,0xed,0xaa,0x00,0x08,0x00,0x00]
          vpaddsw 2048(%rdx), %xmm27, %xmm29

// CHECK: vpaddsw -2048(%rdx), %xmm27, %xmm29
// CHECK:  encoding: [0x62,0x61,0x25,0x00,0xed,0x6a,0x80]
          vpaddsw -2048(%rdx), %xmm27, %xmm29

// CHECK: vpaddsw -2064(%rdx), %xmm27, %xmm29
// CHECK:  encoding: [0x62,0x61,0x25,0x00,0xed,0xaa,0xf0,0xf7,0xff,0xff]
          vpaddsw -2064(%rdx), %xmm27, %xmm29

// CHECK: vpaddsw %ymm26, %ymm17, %ymm22
// CHECK:  encoding: [0x62,0x81,0x75,0x20,0xed,0xf2]
          vpaddsw %ymm26, %ymm17, %ymm22

// CHECK: vpaddsw %ymm26, %ymm17, %ymm22 {%k3}
// CHECK:  encoding: [0x62,0x81,0x75,0x23,0xed,0xf2]
          vpaddsw %ymm26, %ymm17, %ymm22 {%k3}

// CHECK: vpaddsw %ymm26, %ymm17, %ymm22 {%k3} {z}
// CHECK:  encoding: [0x62,0x81,0x75,0xa3,0xed,0xf2]
          vpaddsw %ymm26, %ymm17, %ymm22 {%k3} {z}

// CHECK: vpaddsw (%rcx), %ymm17, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x75,0x20,0xed,0x31]
          vpaddsw (%rcx), %ymm17, %ymm22

// CHECK: vpaddsw 291(%rax,%r14,8), %ymm17, %ymm22
// CHECK:  encoding: [0x62,0xa1,0x75,0x20,0xed,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpaddsw 291(%rax,%r14,8), %ymm17, %ymm22

// CHECK: vpaddsw 4064(%rdx), %ymm17, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x75,0x20,0xed,0x72,0x7f]
          vpaddsw 4064(%rdx), %ymm17, %ymm22

// CHECK: vpaddsw 4096(%rdx), %ymm17, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x75,0x20,0xed,0xb2,0x00,0x10,0x00,0x00]
          vpaddsw 4096(%rdx), %ymm17, %ymm22

// CHECK: vpaddsw -4096(%rdx), %ymm17, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x75,0x20,0xed,0x72,0x80]
          vpaddsw -4096(%rdx), %ymm17, %ymm22

// CHECK: vpaddsw -4128(%rdx), %ymm17, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x75,0x20,0xed,0xb2,0xe0,0xef,0xff,0xff]
          vpaddsw -4128(%rdx), %ymm17, %ymm22

// CHECK: vpaddusb %xmm26, %xmm28, %xmm21
// CHECK:  encoding: [0x62,0x81,0x1d,0x00,0xdc,0xea]
          vpaddusb %xmm26, %xmm28, %xmm21

// CHECK: vpaddusb %xmm26, %xmm28, %xmm21 {%k5}
// CHECK:  encoding: [0x62,0x81,0x1d,0x05,0xdc,0xea]
          vpaddusb %xmm26, %xmm28, %xmm21 {%k5}

// CHECK: vpaddusb %xmm26, %xmm28, %xmm21 {%k5} {z}
// CHECK:  encoding: [0x62,0x81,0x1d,0x85,0xdc,0xea]
          vpaddusb %xmm26, %xmm28, %xmm21 {%k5} {z}

// CHECK: vpaddusb (%rcx), %xmm28, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x1d,0x00,0xdc,0x29]
          vpaddusb (%rcx), %xmm28, %xmm21

// CHECK: vpaddusb 291(%rax,%r14,8), %xmm28, %xmm21
// CHECK:  encoding: [0x62,0xa1,0x1d,0x00,0xdc,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpaddusb 291(%rax,%r14,8), %xmm28, %xmm21

// CHECK: vpaddusb 2032(%rdx), %xmm28, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x1d,0x00,0xdc,0x6a,0x7f]
          vpaddusb 2032(%rdx), %xmm28, %xmm21

// CHECK: vpaddusb 2048(%rdx), %xmm28, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x1d,0x00,0xdc,0xaa,0x00,0x08,0x00,0x00]
          vpaddusb 2048(%rdx), %xmm28, %xmm21

// CHECK: vpaddusb -2048(%rdx), %xmm28, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x1d,0x00,0xdc,0x6a,0x80]
          vpaddusb -2048(%rdx), %xmm28, %xmm21

// CHECK: vpaddusb -2064(%rdx), %xmm28, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x1d,0x00,0xdc,0xaa,0xf0,0xf7,0xff,0xff]
          vpaddusb -2064(%rdx), %xmm28, %xmm21

// CHECK: vpaddusb %ymm17, %ymm23, %ymm20
// CHECK:  encoding: [0x62,0xa1,0x45,0x20,0xdc,0xe1]
          vpaddusb %ymm17, %ymm23, %ymm20

// CHECK: vpaddusb %ymm17, %ymm23, %ymm20 {%k1}
// CHECK:  encoding: [0x62,0xa1,0x45,0x21,0xdc,0xe1]
          vpaddusb %ymm17, %ymm23, %ymm20 {%k1}

// CHECK: vpaddusb %ymm17, %ymm23, %ymm20 {%k1} {z}
// CHECK:  encoding: [0x62,0xa1,0x45,0xa1,0xdc,0xe1]
          vpaddusb %ymm17, %ymm23, %ymm20 {%k1} {z}

// CHECK: vpaddusb (%rcx), %ymm23, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x45,0x20,0xdc,0x21]
          vpaddusb (%rcx), %ymm23, %ymm20

// CHECK: vpaddusb 291(%rax,%r14,8), %ymm23, %ymm20
// CHECK:  encoding: [0x62,0xa1,0x45,0x20,0xdc,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpaddusb 291(%rax,%r14,8), %ymm23, %ymm20

// CHECK: vpaddusb 4064(%rdx), %ymm23, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x45,0x20,0xdc,0x62,0x7f]
          vpaddusb 4064(%rdx), %ymm23, %ymm20

// CHECK: vpaddusb 4096(%rdx), %ymm23, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x45,0x20,0xdc,0xa2,0x00,0x10,0x00,0x00]
          vpaddusb 4096(%rdx), %ymm23, %ymm20

// CHECK: vpaddusb -4096(%rdx), %ymm23, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x45,0x20,0xdc,0x62,0x80]
          vpaddusb -4096(%rdx), %ymm23, %ymm20

// CHECK: vpaddusb -4128(%rdx), %ymm23, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x45,0x20,0xdc,0xa2,0xe0,0xef,0xff,0xff]
          vpaddusb -4128(%rdx), %ymm23, %ymm20

// CHECK: vpaddusw %xmm24, %xmm27, %xmm23
// CHECK:  encoding: [0x62,0x81,0x25,0x00,0xdd,0xf8]
          vpaddusw %xmm24, %xmm27, %xmm23

// CHECK: vpaddusw %xmm24, %xmm27, %xmm23 {%k2}
// CHECK:  encoding: [0x62,0x81,0x25,0x02,0xdd,0xf8]
          vpaddusw %xmm24, %xmm27, %xmm23 {%k2}

// CHECK: vpaddusw %xmm24, %xmm27, %xmm23 {%k2} {z}
// CHECK:  encoding: [0x62,0x81,0x25,0x82,0xdd,0xf8]
          vpaddusw %xmm24, %xmm27, %xmm23 {%k2} {z}

// CHECK: vpaddusw (%rcx), %xmm27, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x25,0x00,0xdd,0x39]
          vpaddusw (%rcx), %xmm27, %xmm23

// CHECK: vpaddusw 291(%rax,%r14,8), %xmm27, %xmm23
// CHECK:  encoding: [0x62,0xa1,0x25,0x00,0xdd,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vpaddusw 291(%rax,%r14,8), %xmm27, %xmm23

// CHECK: vpaddusw 2032(%rdx), %xmm27, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x25,0x00,0xdd,0x7a,0x7f]
          vpaddusw 2032(%rdx), %xmm27, %xmm23

// CHECK: vpaddusw 2048(%rdx), %xmm27, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x25,0x00,0xdd,0xba,0x00,0x08,0x00,0x00]
          vpaddusw 2048(%rdx), %xmm27, %xmm23

// CHECK: vpaddusw -2048(%rdx), %xmm27, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x25,0x00,0xdd,0x7a,0x80]
          vpaddusw -2048(%rdx), %xmm27, %xmm23

// CHECK: vpaddusw -2064(%rdx), %xmm27, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x25,0x00,0xdd,0xba,0xf0,0xf7,0xff,0xff]
          vpaddusw -2064(%rdx), %xmm27, %xmm23

// CHECK: vpaddusw %ymm17, %ymm22, %ymm23
// CHECK:  encoding: [0x62,0xa1,0x4d,0x20,0xdd,0xf9]
          vpaddusw %ymm17, %ymm22, %ymm23

// CHECK: vpaddusw %ymm17, %ymm22, %ymm23 {%k1}
// CHECK:  encoding: [0x62,0xa1,0x4d,0x21,0xdd,0xf9]
          vpaddusw %ymm17, %ymm22, %ymm23 {%k1}

// CHECK: vpaddusw %ymm17, %ymm22, %ymm23 {%k1} {z}
// CHECK:  encoding: [0x62,0xa1,0x4d,0xa1,0xdd,0xf9]
          vpaddusw %ymm17, %ymm22, %ymm23 {%k1} {z}

// CHECK: vpaddusw (%rcx), %ymm22, %ymm23
// CHECK:  encoding: [0x62,0xe1,0x4d,0x20,0xdd,0x39]
          vpaddusw (%rcx), %ymm22, %ymm23

// CHECK: vpaddusw 291(%rax,%r14,8), %ymm22, %ymm23
// CHECK:  encoding: [0x62,0xa1,0x4d,0x20,0xdd,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vpaddusw 291(%rax,%r14,8), %ymm22, %ymm23

// CHECK: vpaddusw 4064(%rdx), %ymm22, %ymm23
// CHECK:  encoding: [0x62,0xe1,0x4d,0x20,0xdd,0x7a,0x7f]
          vpaddusw 4064(%rdx), %ymm22, %ymm23

// CHECK: vpaddusw 4096(%rdx), %ymm22, %ymm23
// CHECK:  encoding: [0x62,0xe1,0x4d,0x20,0xdd,0xba,0x00,0x10,0x00,0x00]
          vpaddusw 4096(%rdx), %ymm22, %ymm23

// CHECK: vpaddusw -4096(%rdx), %ymm22, %ymm23
// CHECK:  encoding: [0x62,0xe1,0x4d,0x20,0xdd,0x7a,0x80]
          vpaddusw -4096(%rdx), %ymm22, %ymm23

// CHECK: vpaddusw -4128(%rdx), %ymm22, %ymm23
// CHECK:  encoding: [0x62,0xe1,0x4d,0x20,0xdd,0xba,0xe0,0xef,0xff,0xff]
          vpaddusw -4128(%rdx), %ymm22, %ymm23

// CHECK: vpsubsb %xmm27, %xmm17, %xmm17
// CHECK:  encoding: [0x62,0x81,0x75,0x00,0xe8,0xcb]
          vpsubsb %xmm27, %xmm17, %xmm17

// CHECK: vpsubsb %xmm27, %xmm17, %xmm17 {%k7}
// CHECK:  encoding: [0x62,0x81,0x75,0x07,0xe8,0xcb]
          vpsubsb %xmm27, %xmm17, %xmm17 {%k7}

// CHECK: vpsubsb %xmm27, %xmm17, %xmm17 {%k7} {z}
// CHECK:  encoding: [0x62,0x81,0x75,0x87,0xe8,0xcb]
          vpsubsb %xmm27, %xmm17, %xmm17 {%k7} {z}

// CHECK: vpsubsb (%rcx), %xmm17, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x75,0x00,0xe8,0x09]
          vpsubsb (%rcx), %xmm17, %xmm17

// CHECK: vpsubsb 291(%rax,%r14,8), %xmm17, %xmm17
// CHECK:  encoding: [0x62,0xa1,0x75,0x00,0xe8,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpsubsb 291(%rax,%r14,8), %xmm17, %xmm17

// CHECK: vpsubsb 2032(%rdx), %xmm17, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x75,0x00,0xe8,0x4a,0x7f]
          vpsubsb 2032(%rdx), %xmm17, %xmm17

// CHECK: vpsubsb 2048(%rdx), %xmm17, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x75,0x00,0xe8,0x8a,0x00,0x08,0x00,0x00]
          vpsubsb 2048(%rdx), %xmm17, %xmm17

// CHECK: vpsubsb -2048(%rdx), %xmm17, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x75,0x00,0xe8,0x4a,0x80]
          vpsubsb -2048(%rdx), %xmm17, %xmm17

// CHECK: vpsubsb -2064(%rdx), %xmm17, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x75,0x00,0xe8,0x8a,0xf0,0xf7,0xff,0xff]
          vpsubsb -2064(%rdx), %xmm17, %xmm17

// CHECK: vpsubsb %ymm27, %ymm25, %ymm17
// CHECK:  encoding: [0x62,0x81,0x35,0x20,0xe8,0xcb]
          vpsubsb %ymm27, %ymm25, %ymm17

// CHECK: vpsubsb %ymm27, %ymm25, %ymm17 {%k2}
// CHECK:  encoding: [0x62,0x81,0x35,0x22,0xe8,0xcb]
          vpsubsb %ymm27, %ymm25, %ymm17 {%k2}

// CHECK: vpsubsb %ymm27, %ymm25, %ymm17 {%k2} {z}
// CHECK:  encoding: [0x62,0x81,0x35,0xa2,0xe8,0xcb]
          vpsubsb %ymm27, %ymm25, %ymm17 {%k2} {z}

// CHECK: vpsubsb (%rcx), %ymm25, %ymm17
// CHECK:  encoding: [0x62,0xe1,0x35,0x20,0xe8,0x09]
          vpsubsb (%rcx), %ymm25, %ymm17

// CHECK: vpsubsb 291(%rax,%r14,8), %ymm25, %ymm17
// CHECK:  encoding: [0x62,0xa1,0x35,0x20,0xe8,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpsubsb 291(%rax,%r14,8), %ymm25, %ymm17

// CHECK: vpsubsb 4064(%rdx), %ymm25, %ymm17
// CHECK:  encoding: [0x62,0xe1,0x35,0x20,0xe8,0x4a,0x7f]
          vpsubsb 4064(%rdx), %ymm25, %ymm17

// CHECK: vpsubsb 4096(%rdx), %ymm25, %ymm17
// CHECK:  encoding: [0x62,0xe1,0x35,0x20,0xe8,0x8a,0x00,0x10,0x00,0x00]
          vpsubsb 4096(%rdx), %ymm25, %ymm17

// CHECK: vpsubsb -4096(%rdx), %ymm25, %ymm17
// CHECK:  encoding: [0x62,0xe1,0x35,0x20,0xe8,0x4a,0x80]
          vpsubsb -4096(%rdx), %ymm25, %ymm17

// CHECK: vpsubsb -4128(%rdx), %ymm25, %ymm17
// CHECK:  encoding: [0x62,0xe1,0x35,0x20,0xe8,0x8a,0xe0,0xef,0xff,0xff]
          vpsubsb -4128(%rdx), %ymm25, %ymm17

// CHECK: vpsubsw %xmm23, %xmm26, %xmm30
// CHECK:  encoding: [0x62,0x21,0x2d,0x00,0xe9,0xf7]
          vpsubsw %xmm23, %xmm26, %xmm30

// CHECK: vpsubsw %xmm23, %xmm26, %xmm30 {%k7}
// CHECK:  encoding: [0x62,0x21,0x2d,0x07,0xe9,0xf7]
          vpsubsw %xmm23, %xmm26, %xmm30 {%k7}

// CHECK: vpsubsw %xmm23, %xmm26, %xmm30 {%k7} {z}
// CHECK:  encoding: [0x62,0x21,0x2d,0x87,0xe9,0xf7]
          vpsubsw %xmm23, %xmm26, %xmm30 {%k7} {z}

// CHECK: vpsubsw (%rcx), %xmm26, %xmm30
// CHECK:  encoding: [0x62,0x61,0x2d,0x00,0xe9,0x31]
          vpsubsw (%rcx), %xmm26, %xmm30

// CHECK: vpsubsw 291(%rax,%r14,8), %xmm26, %xmm30
// CHECK:  encoding: [0x62,0x21,0x2d,0x00,0xe9,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpsubsw 291(%rax,%r14,8), %xmm26, %xmm30

// CHECK: vpsubsw 2032(%rdx), %xmm26, %xmm30
// CHECK:  encoding: [0x62,0x61,0x2d,0x00,0xe9,0x72,0x7f]
          vpsubsw 2032(%rdx), %xmm26, %xmm30

// CHECK: vpsubsw 2048(%rdx), %xmm26, %xmm30
// CHECK:  encoding: [0x62,0x61,0x2d,0x00,0xe9,0xb2,0x00,0x08,0x00,0x00]
          vpsubsw 2048(%rdx), %xmm26, %xmm30

// CHECK: vpsubsw -2048(%rdx), %xmm26, %xmm30
// CHECK:  encoding: [0x62,0x61,0x2d,0x00,0xe9,0x72,0x80]
          vpsubsw -2048(%rdx), %xmm26, %xmm30

// CHECK: vpsubsw -2064(%rdx), %xmm26, %xmm30
// CHECK:  encoding: [0x62,0x61,0x2d,0x00,0xe9,0xb2,0xf0,0xf7,0xff,0xff]
          vpsubsw -2064(%rdx), %xmm26, %xmm30

// CHECK: vpsubsw %ymm17, %ymm29, %ymm19
// CHECK:  encoding: [0x62,0xa1,0x15,0x20,0xe9,0xd9]
          vpsubsw %ymm17, %ymm29, %ymm19

// CHECK: vpsubsw %ymm17, %ymm29, %ymm19 {%k2}
// CHECK:  encoding: [0x62,0xa1,0x15,0x22,0xe9,0xd9]
          vpsubsw %ymm17, %ymm29, %ymm19 {%k2}

// CHECK: vpsubsw %ymm17, %ymm29, %ymm19 {%k2} {z}
// CHECK:  encoding: [0x62,0xa1,0x15,0xa2,0xe9,0xd9]
          vpsubsw %ymm17, %ymm29, %ymm19 {%k2} {z}

// CHECK: vpsubsw (%rcx), %ymm29, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x15,0x20,0xe9,0x19]
          vpsubsw (%rcx), %ymm29, %ymm19

// CHECK: vpsubsw 291(%rax,%r14,8), %ymm29, %ymm19
// CHECK:  encoding: [0x62,0xa1,0x15,0x20,0xe9,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpsubsw 291(%rax,%r14,8), %ymm29, %ymm19

// CHECK: vpsubsw 4064(%rdx), %ymm29, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x15,0x20,0xe9,0x5a,0x7f]
          vpsubsw 4064(%rdx), %ymm29, %ymm19

// CHECK: vpsubsw 4096(%rdx), %ymm29, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x15,0x20,0xe9,0x9a,0x00,0x10,0x00,0x00]
          vpsubsw 4096(%rdx), %ymm29, %ymm19

// CHECK: vpsubsw -4096(%rdx), %ymm29, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x15,0x20,0xe9,0x5a,0x80]
          vpsubsw -4096(%rdx), %ymm29, %ymm19

// CHECK: vpsubsw -4128(%rdx), %ymm29, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x15,0x20,0xe9,0x9a,0xe0,0xef,0xff,0xff]
          vpsubsw -4128(%rdx), %ymm29, %ymm19

// CHECK: vpsubusb %xmm23, %xmm27, %xmm17
// CHECK:  encoding: [0x62,0xa1,0x25,0x00,0xd8,0xcf]
          vpsubusb %xmm23, %xmm27, %xmm17

// CHECK: vpsubusb %xmm23, %xmm27, %xmm17 {%k6}
// CHECK:  encoding: [0x62,0xa1,0x25,0x06,0xd8,0xcf]
          vpsubusb %xmm23, %xmm27, %xmm17 {%k6}

// CHECK: vpsubusb %xmm23, %xmm27, %xmm17 {%k6} {z}
// CHECK:  encoding: [0x62,0xa1,0x25,0x86,0xd8,0xcf]
          vpsubusb %xmm23, %xmm27, %xmm17 {%k6} {z}

// CHECK: vpsubusb (%rcx), %xmm27, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x25,0x00,0xd8,0x09]
          vpsubusb (%rcx), %xmm27, %xmm17

// CHECK: vpsubusb 291(%rax,%r14,8), %xmm27, %xmm17
// CHECK:  encoding: [0x62,0xa1,0x25,0x00,0xd8,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpsubusb 291(%rax,%r14,8), %xmm27, %xmm17

// CHECK: vpsubusb 2032(%rdx), %xmm27, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x25,0x00,0xd8,0x4a,0x7f]
          vpsubusb 2032(%rdx), %xmm27, %xmm17

// CHECK: vpsubusb 2048(%rdx), %xmm27, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x25,0x00,0xd8,0x8a,0x00,0x08,0x00,0x00]
          vpsubusb 2048(%rdx), %xmm27, %xmm17

// CHECK: vpsubusb -2048(%rdx), %xmm27, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x25,0x00,0xd8,0x4a,0x80]
          vpsubusb -2048(%rdx), %xmm27, %xmm17

// CHECK: vpsubusb -2064(%rdx), %xmm27, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x25,0x00,0xd8,0x8a,0xf0,0xf7,0xff,0xff]
          vpsubusb -2064(%rdx), %xmm27, %xmm17

// CHECK: vpsubusb %ymm18, %ymm21, %ymm17
// CHECK:  encoding: [0x62,0xa1,0x55,0x20,0xd8,0xca]
          vpsubusb %ymm18, %ymm21, %ymm17

// CHECK: vpsubusb %ymm18, %ymm21, %ymm17 {%k5}
// CHECK:  encoding: [0x62,0xa1,0x55,0x25,0xd8,0xca]
          vpsubusb %ymm18, %ymm21, %ymm17 {%k5}

// CHECK: vpsubusb %ymm18, %ymm21, %ymm17 {%k5} {z}
// CHECK:  encoding: [0x62,0xa1,0x55,0xa5,0xd8,0xca]
          vpsubusb %ymm18, %ymm21, %ymm17 {%k5} {z}

// CHECK: vpsubusb (%rcx), %ymm21, %ymm17
// CHECK:  encoding: [0x62,0xe1,0x55,0x20,0xd8,0x09]
          vpsubusb (%rcx), %ymm21, %ymm17

// CHECK: vpsubusb 291(%rax,%r14,8), %ymm21, %ymm17
// CHECK:  encoding: [0x62,0xa1,0x55,0x20,0xd8,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpsubusb 291(%rax,%r14,8), %ymm21, %ymm17

// CHECK: vpsubusb 4064(%rdx), %ymm21, %ymm17
// CHECK:  encoding: [0x62,0xe1,0x55,0x20,0xd8,0x4a,0x7f]
          vpsubusb 4064(%rdx), %ymm21, %ymm17

// CHECK: vpsubusb 4096(%rdx), %ymm21, %ymm17
// CHECK:  encoding: [0x62,0xe1,0x55,0x20,0xd8,0x8a,0x00,0x10,0x00,0x00]
          vpsubusb 4096(%rdx), %ymm21, %ymm17

// CHECK: vpsubusb -4096(%rdx), %ymm21, %ymm17
// CHECK:  encoding: [0x62,0xe1,0x55,0x20,0xd8,0x4a,0x80]
          vpsubusb -4096(%rdx), %ymm21, %ymm17

// CHECK: vpsubusb -4128(%rdx), %ymm21, %ymm17
// CHECK:  encoding: [0x62,0xe1,0x55,0x20,0xd8,0x8a,0xe0,0xef,0xff,0xff]
          vpsubusb -4128(%rdx), %ymm21, %ymm17

// CHECK: vpsubusw %xmm19, %xmm21, %xmm25
// CHECK:  encoding: [0x62,0x21,0x55,0x00,0xd9,0xcb]
          vpsubusw %xmm19, %xmm21, %xmm25

// CHECK: vpsubusw %xmm19, %xmm21, %xmm25 {%k6}
// CHECK:  encoding: [0x62,0x21,0x55,0x06,0xd9,0xcb]
          vpsubusw %xmm19, %xmm21, %xmm25 {%k6}

// CHECK: vpsubusw %xmm19, %xmm21, %xmm25 {%k6} {z}
// CHECK:  encoding: [0x62,0x21,0x55,0x86,0xd9,0xcb]
          vpsubusw %xmm19, %xmm21, %xmm25 {%k6} {z}

// CHECK: vpsubusw (%rcx), %xmm21, %xmm25
// CHECK:  encoding: [0x62,0x61,0x55,0x00,0xd9,0x09]
          vpsubusw (%rcx), %xmm21, %xmm25

// CHECK: vpsubusw 291(%rax,%r14,8), %xmm21, %xmm25
// CHECK:  encoding: [0x62,0x21,0x55,0x00,0xd9,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpsubusw 291(%rax,%r14,8), %xmm21, %xmm25

// CHECK: vpsubusw 2032(%rdx), %xmm21, %xmm25
// CHECK:  encoding: [0x62,0x61,0x55,0x00,0xd9,0x4a,0x7f]
          vpsubusw 2032(%rdx), %xmm21, %xmm25

// CHECK: vpsubusw 2048(%rdx), %xmm21, %xmm25
// CHECK:  encoding: [0x62,0x61,0x55,0x00,0xd9,0x8a,0x00,0x08,0x00,0x00]
          vpsubusw 2048(%rdx), %xmm21, %xmm25

// CHECK: vpsubusw -2048(%rdx), %xmm21, %xmm25
// CHECK:  encoding: [0x62,0x61,0x55,0x00,0xd9,0x4a,0x80]
          vpsubusw -2048(%rdx), %xmm21, %xmm25

// CHECK: vpsubusw -2064(%rdx), %xmm21, %xmm25
// CHECK:  encoding: [0x62,0x61,0x55,0x00,0xd9,0x8a,0xf0,0xf7,0xff,0xff]
          vpsubusw -2064(%rdx), %xmm21, %xmm25

// CHECK: vpsubusw %ymm17, %ymm17, %ymm26
// CHECK:  encoding: [0x62,0x21,0x75,0x20,0xd9,0xd1]
          vpsubusw %ymm17, %ymm17, %ymm26

// CHECK: vpsubusw %ymm17, %ymm17, %ymm26 {%k4}
// CHECK:  encoding: [0x62,0x21,0x75,0x24,0xd9,0xd1]
          vpsubusw %ymm17, %ymm17, %ymm26 {%k4}

// CHECK: vpsubusw %ymm17, %ymm17, %ymm26 {%k4} {z}
// CHECK:  encoding: [0x62,0x21,0x75,0xa4,0xd9,0xd1]
          vpsubusw %ymm17, %ymm17, %ymm26 {%k4} {z}

// CHECK: vpsubusw (%rcx), %ymm17, %ymm26
// CHECK:  encoding: [0x62,0x61,0x75,0x20,0xd9,0x11]
          vpsubusw (%rcx), %ymm17, %ymm26

// CHECK: vpsubusw 291(%rax,%r14,8), %ymm17, %ymm26
// CHECK:  encoding: [0x62,0x21,0x75,0x20,0xd9,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpsubusw 291(%rax,%r14,8), %ymm17, %ymm26

// CHECK: vpsubusw 4064(%rdx), %ymm17, %ymm26
// CHECK:  encoding: [0x62,0x61,0x75,0x20,0xd9,0x52,0x7f]
          vpsubusw 4064(%rdx), %ymm17, %ymm26

// CHECK: vpsubusw 4096(%rdx), %ymm17, %ymm26
// CHECK:  encoding: [0x62,0x61,0x75,0x20,0xd9,0x92,0x00,0x10,0x00,0x00]
          vpsubusw 4096(%rdx), %ymm17, %ymm26

// CHECK: vpsubusw -4096(%rdx), %ymm17, %ymm26
// CHECK:  encoding: [0x62,0x61,0x75,0x20,0xd9,0x52,0x80]
          vpsubusw -4096(%rdx), %ymm17, %ymm26

// CHECK: vpsubusw -4128(%rdx), %ymm17, %ymm26
// CHECK:  encoding: [0x62,0x61,0x75,0x20,0xd9,0x92,0xe0,0xef,0xff,0xff]
          vpsubusw -4128(%rdx), %ymm17, %ymm26

// CHECK: vpaddsb %xmm23, %xmm24, %xmm20
// CHECK:  encoding: [0x62,0xa1,0x3d,0x00,0xec,0xe7]
          vpaddsb %xmm23, %xmm24, %xmm20

// CHECK: vpaddsb %xmm23, %xmm24, %xmm20 {%k1}
// CHECK:  encoding: [0x62,0xa1,0x3d,0x01,0xec,0xe7]
          vpaddsb %xmm23, %xmm24, %xmm20 {%k1}

// CHECK: vpaddsb %xmm23, %xmm24, %xmm20 {%k1} {z}
// CHECK:  encoding: [0x62,0xa1,0x3d,0x81,0xec,0xe7]
          vpaddsb %xmm23, %xmm24, %xmm20 {%k1} {z}

// CHECK: vpaddsb (%rcx), %xmm24, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x3d,0x00,0xec,0x21]
          vpaddsb (%rcx), %xmm24, %xmm20

// CHECK: vpaddsb 4660(%rax,%r14,8), %xmm24, %xmm20
// CHECK:  encoding: [0x62,0xa1,0x3d,0x00,0xec,0xa4,0xf0,0x34,0x12,0x00,0x00]
          vpaddsb 4660(%rax,%r14,8), %xmm24, %xmm20

// CHECK: vpaddsb 2032(%rdx), %xmm24, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x3d,0x00,0xec,0x62,0x7f]
          vpaddsb 2032(%rdx), %xmm24, %xmm20

// CHECK: vpaddsb 2048(%rdx), %xmm24, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x3d,0x00,0xec,0xa2,0x00,0x08,0x00,0x00]
          vpaddsb 2048(%rdx), %xmm24, %xmm20

// CHECK: vpaddsb -2048(%rdx), %xmm24, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x3d,0x00,0xec,0x62,0x80]
          vpaddsb -2048(%rdx), %xmm24, %xmm20

// CHECK: vpaddsb -2064(%rdx), %xmm24, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x3d,0x00,0xec,0xa2,0xf0,0xf7,0xff,0xff]
          vpaddsb -2064(%rdx), %xmm24, %xmm20

// CHECK: vpaddsb %ymm19, %ymm20, %ymm18
// CHECK:  encoding: [0x62,0xa1,0x5d,0x20,0xec,0xd3]
          vpaddsb %ymm19, %ymm20, %ymm18

// CHECK: vpaddsb %ymm19, %ymm20, %ymm18 {%k7}
// CHECK:  encoding: [0x62,0xa1,0x5d,0x27,0xec,0xd3]
          vpaddsb %ymm19, %ymm20, %ymm18 {%k7}

// CHECK: vpaddsb %ymm19, %ymm20, %ymm18 {%k7} {z}
// CHECK:  encoding: [0x62,0xa1,0x5d,0xa7,0xec,0xd3]
          vpaddsb %ymm19, %ymm20, %ymm18 {%k7} {z}

// CHECK: vpaddsb (%rcx), %ymm20, %ymm18
// CHECK:  encoding: [0x62,0xe1,0x5d,0x20,0xec,0x11]
          vpaddsb (%rcx), %ymm20, %ymm18

// CHECK: vpaddsb 4660(%rax,%r14,8), %ymm20, %ymm18
// CHECK:  encoding: [0x62,0xa1,0x5d,0x20,0xec,0x94,0xf0,0x34,0x12,0x00,0x00]
          vpaddsb 4660(%rax,%r14,8), %ymm20, %ymm18

// CHECK: vpaddsb 4064(%rdx), %ymm20, %ymm18
// CHECK:  encoding: [0x62,0xe1,0x5d,0x20,0xec,0x52,0x7f]
          vpaddsb 4064(%rdx), %ymm20, %ymm18

// CHECK: vpaddsb 4096(%rdx), %ymm20, %ymm18
// CHECK:  encoding: [0x62,0xe1,0x5d,0x20,0xec,0x92,0x00,0x10,0x00,0x00]
          vpaddsb 4096(%rdx), %ymm20, %ymm18

// CHECK: vpaddsb -4096(%rdx), %ymm20, %ymm18
// CHECK:  encoding: [0x62,0xe1,0x5d,0x20,0xec,0x52,0x80]
          vpaddsb -4096(%rdx), %ymm20, %ymm18

// CHECK: vpaddsb -4128(%rdx), %ymm20, %ymm18
// CHECK:  encoding: [0x62,0xe1,0x5d,0x20,0xec,0x92,0xe0,0xef,0xff,0xff]
          vpaddsb -4128(%rdx), %ymm20, %ymm18

// CHECK: vpaddsw %xmm24, %xmm23, %xmm23
// CHECK:  encoding: [0x62,0x81,0x45,0x00,0xed,0xf8]
          vpaddsw %xmm24, %xmm23, %xmm23

// CHECK: vpaddsw %xmm24, %xmm23, %xmm23 {%k5}
// CHECK:  encoding: [0x62,0x81,0x45,0x05,0xed,0xf8]
          vpaddsw %xmm24, %xmm23, %xmm23 {%k5}

// CHECK: vpaddsw %xmm24, %xmm23, %xmm23 {%k5} {z}
// CHECK:  encoding: [0x62,0x81,0x45,0x85,0xed,0xf8]
          vpaddsw %xmm24, %xmm23, %xmm23 {%k5} {z}

// CHECK: vpaddsw (%rcx), %xmm23, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x45,0x00,0xed,0x39]
          vpaddsw (%rcx), %xmm23, %xmm23

// CHECK: vpaddsw 4660(%rax,%r14,8), %xmm23, %xmm23
// CHECK:  encoding: [0x62,0xa1,0x45,0x00,0xed,0xbc,0xf0,0x34,0x12,0x00,0x00]
          vpaddsw 4660(%rax,%r14,8), %xmm23, %xmm23

// CHECK: vpaddsw 2032(%rdx), %xmm23, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x45,0x00,0xed,0x7a,0x7f]
          vpaddsw 2032(%rdx), %xmm23, %xmm23

// CHECK: vpaddsw 2048(%rdx), %xmm23, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x45,0x00,0xed,0xba,0x00,0x08,0x00,0x00]
          vpaddsw 2048(%rdx), %xmm23, %xmm23

// CHECK: vpaddsw -2048(%rdx), %xmm23, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x45,0x00,0xed,0x7a,0x80]
          vpaddsw -2048(%rdx), %xmm23, %xmm23

// CHECK: vpaddsw -2064(%rdx), %xmm23, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x45,0x00,0xed,0xba,0xf0,0xf7,0xff,0xff]
          vpaddsw -2064(%rdx), %xmm23, %xmm23

// CHECK: vpaddsw %ymm19, %ymm22, %ymm29
// CHECK:  encoding: [0x62,0x21,0x4d,0x20,0xed,0xeb]
          vpaddsw %ymm19, %ymm22, %ymm29

// CHECK: vpaddsw %ymm19, %ymm22, %ymm29 {%k6}
// CHECK:  encoding: [0x62,0x21,0x4d,0x26,0xed,0xeb]
          vpaddsw %ymm19, %ymm22, %ymm29 {%k6}

// CHECK: vpaddsw %ymm19, %ymm22, %ymm29 {%k6} {z}
// CHECK:  encoding: [0x62,0x21,0x4d,0xa6,0xed,0xeb]
          vpaddsw %ymm19, %ymm22, %ymm29 {%k6} {z}

// CHECK: vpaddsw (%rcx), %ymm22, %ymm29
// CHECK:  encoding: [0x62,0x61,0x4d,0x20,0xed,0x29]
          vpaddsw (%rcx), %ymm22, %ymm29

// CHECK: vpaddsw 4660(%rax,%r14,8), %ymm22, %ymm29
// CHECK:  encoding: [0x62,0x21,0x4d,0x20,0xed,0xac,0xf0,0x34,0x12,0x00,0x00]
          vpaddsw 4660(%rax,%r14,8), %ymm22, %ymm29

// CHECK: vpaddsw 4064(%rdx), %ymm22, %ymm29
// CHECK:  encoding: [0x62,0x61,0x4d,0x20,0xed,0x6a,0x7f]
          vpaddsw 4064(%rdx), %ymm22, %ymm29

// CHECK: vpaddsw 4096(%rdx), %ymm22, %ymm29
// CHECK:  encoding: [0x62,0x61,0x4d,0x20,0xed,0xaa,0x00,0x10,0x00,0x00]
          vpaddsw 4096(%rdx), %ymm22, %ymm29

// CHECK: vpaddsw -4096(%rdx), %ymm22, %ymm29
// CHECK:  encoding: [0x62,0x61,0x4d,0x20,0xed,0x6a,0x80]
          vpaddsw -4096(%rdx), %ymm22, %ymm29

// CHECK: vpaddsw -4128(%rdx), %ymm22, %ymm29
// CHECK:  encoding: [0x62,0x61,0x4d,0x20,0xed,0xaa,0xe0,0xef,0xff,0xff]
          vpaddsw -4128(%rdx), %ymm22, %ymm29

// CHECK: vpaddusb %xmm26, %xmm18, %xmm20
// CHECK:  encoding: [0x62,0x81,0x6d,0x00,0xdc,0xe2]
          vpaddusb %xmm26, %xmm18, %xmm20

// CHECK: vpaddusb %xmm26, %xmm18, %xmm20 {%k6}
// CHECK:  encoding: [0x62,0x81,0x6d,0x06,0xdc,0xe2]
          vpaddusb %xmm26, %xmm18, %xmm20 {%k6}

// CHECK: vpaddusb %xmm26, %xmm18, %xmm20 {%k6} {z}
// CHECK:  encoding: [0x62,0x81,0x6d,0x86,0xdc,0xe2]
          vpaddusb %xmm26, %xmm18, %xmm20 {%k6} {z}

// CHECK: vpaddusb (%rcx), %xmm18, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x6d,0x00,0xdc,0x21]
          vpaddusb (%rcx), %xmm18, %xmm20

// CHECK: vpaddusb 4660(%rax,%r14,8), %xmm18, %xmm20
// CHECK:  encoding: [0x62,0xa1,0x6d,0x00,0xdc,0xa4,0xf0,0x34,0x12,0x00,0x00]
          vpaddusb 4660(%rax,%r14,8), %xmm18, %xmm20

// CHECK: vpaddusb 2032(%rdx), %xmm18, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x6d,0x00,0xdc,0x62,0x7f]
          vpaddusb 2032(%rdx), %xmm18, %xmm20

// CHECK: vpaddusb 2048(%rdx), %xmm18, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x6d,0x00,0xdc,0xa2,0x00,0x08,0x00,0x00]
          vpaddusb 2048(%rdx), %xmm18, %xmm20

// CHECK: vpaddusb -2048(%rdx), %xmm18, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x6d,0x00,0xdc,0x62,0x80]
          vpaddusb -2048(%rdx), %xmm18, %xmm20

// CHECK: vpaddusb -2064(%rdx), %xmm18, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x6d,0x00,0xdc,0xa2,0xf0,0xf7,0xff,0xff]
          vpaddusb -2064(%rdx), %xmm18, %xmm20

// CHECK: vpaddusb %ymm24, %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x01,0x2d,0x20,0xdc,0xc8]
          vpaddusb %ymm24, %ymm26, %ymm25

// CHECK: vpaddusb %ymm24, %ymm26, %ymm25 {%k3}
// CHECK:  encoding: [0x62,0x01,0x2d,0x23,0xdc,0xc8]
          vpaddusb %ymm24, %ymm26, %ymm25 {%k3}

// CHECK: vpaddusb %ymm24, %ymm26, %ymm25 {%k3} {z}
// CHECK:  encoding: [0x62,0x01,0x2d,0xa3,0xdc,0xc8]
          vpaddusb %ymm24, %ymm26, %ymm25 {%k3} {z}

// CHECK: vpaddusb (%rcx), %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x61,0x2d,0x20,0xdc,0x09]
          vpaddusb (%rcx), %ymm26, %ymm25

// CHECK: vpaddusb 4660(%rax,%r14,8), %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x21,0x2d,0x20,0xdc,0x8c,0xf0,0x34,0x12,0x00,0x00]
          vpaddusb 4660(%rax,%r14,8), %ymm26, %ymm25

// CHECK: vpaddusb 4064(%rdx), %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x61,0x2d,0x20,0xdc,0x4a,0x7f]
          vpaddusb 4064(%rdx), %ymm26, %ymm25

// CHECK: vpaddusb 4096(%rdx), %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x61,0x2d,0x20,0xdc,0x8a,0x00,0x10,0x00,0x00]
          vpaddusb 4096(%rdx), %ymm26, %ymm25

// CHECK: vpaddusb -4096(%rdx), %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x61,0x2d,0x20,0xdc,0x4a,0x80]
          vpaddusb -4096(%rdx), %ymm26, %ymm25

// CHECK: vpaddusb -4128(%rdx), %ymm26, %ymm25
// CHECK:  encoding: [0x62,0x61,0x2d,0x20,0xdc,0x8a,0xe0,0xef,0xff,0xff]
          vpaddusb -4128(%rdx), %ymm26, %ymm25

// CHECK: vpaddusw %xmm24, %xmm29, %xmm28
// CHECK:  encoding: [0x62,0x01,0x15,0x00,0xdd,0xe0]
          vpaddusw %xmm24, %xmm29, %xmm28

// CHECK: vpaddusw %xmm24, %xmm29, %xmm28 {%k4}
// CHECK:  encoding: [0x62,0x01,0x15,0x04,0xdd,0xe0]
          vpaddusw %xmm24, %xmm29, %xmm28 {%k4}

// CHECK: vpaddusw %xmm24, %xmm29, %xmm28 {%k4} {z}
// CHECK:  encoding: [0x62,0x01,0x15,0x84,0xdd,0xe0]
          vpaddusw %xmm24, %xmm29, %xmm28 {%k4} {z}

// CHECK: vpaddusw (%rcx), %xmm29, %xmm28
// CHECK:  encoding: [0x62,0x61,0x15,0x00,0xdd,0x21]
          vpaddusw (%rcx), %xmm29, %xmm28

// CHECK: vpaddusw 4660(%rax,%r14,8), %xmm29, %xmm28
// CHECK:  encoding: [0x62,0x21,0x15,0x00,0xdd,0xa4,0xf0,0x34,0x12,0x00,0x00]
          vpaddusw 4660(%rax,%r14,8), %xmm29, %xmm28

// CHECK: vpaddusw 2032(%rdx), %xmm29, %xmm28
// CHECK:  encoding: [0x62,0x61,0x15,0x00,0xdd,0x62,0x7f]
          vpaddusw 2032(%rdx), %xmm29, %xmm28

// CHECK: vpaddusw 2048(%rdx), %xmm29, %xmm28
// CHECK:  encoding: [0x62,0x61,0x15,0x00,0xdd,0xa2,0x00,0x08,0x00,0x00]
          vpaddusw 2048(%rdx), %xmm29, %xmm28

// CHECK: vpaddusw -2048(%rdx), %xmm29, %xmm28
// CHECK:  encoding: [0x62,0x61,0x15,0x00,0xdd,0x62,0x80]
          vpaddusw -2048(%rdx), %xmm29, %xmm28

// CHECK: vpaddusw -2064(%rdx), %xmm29, %xmm28
// CHECK:  encoding: [0x62,0x61,0x15,0x00,0xdd,0xa2,0xf0,0xf7,0xff,0xff]
          vpaddusw -2064(%rdx), %xmm29, %xmm28

// CHECK: vpaddusw %ymm22, %ymm26, %ymm27
// CHECK:  encoding: [0x62,0x21,0x2d,0x20,0xdd,0xde]
          vpaddusw %ymm22, %ymm26, %ymm27

// CHECK: vpaddusw %ymm22, %ymm26, %ymm27 {%k3}
// CHECK:  encoding: [0x62,0x21,0x2d,0x23,0xdd,0xde]
          vpaddusw %ymm22, %ymm26, %ymm27 {%k3}

// CHECK: vpaddusw %ymm22, %ymm26, %ymm27 {%k3} {z}
// CHECK:  encoding: [0x62,0x21,0x2d,0xa3,0xdd,0xde]
          vpaddusw %ymm22, %ymm26, %ymm27 {%k3} {z}

// CHECK: vpaddusw (%rcx), %ymm26, %ymm27
// CHECK:  encoding: [0x62,0x61,0x2d,0x20,0xdd,0x19]
          vpaddusw (%rcx), %ymm26, %ymm27

// CHECK: vpaddusw 4660(%rax,%r14,8), %ymm26, %ymm27
// CHECK:  encoding: [0x62,0x21,0x2d,0x20,0xdd,0x9c,0xf0,0x34,0x12,0x00,0x00]
          vpaddusw 4660(%rax,%r14,8), %ymm26, %ymm27

// CHECK: vpaddusw 4064(%rdx), %ymm26, %ymm27
// CHECK:  encoding: [0x62,0x61,0x2d,0x20,0xdd,0x5a,0x7f]
          vpaddusw 4064(%rdx), %ymm26, %ymm27

// CHECK: vpaddusw 4096(%rdx), %ymm26, %ymm27
// CHECK:  encoding: [0x62,0x61,0x2d,0x20,0xdd,0x9a,0x00,0x10,0x00,0x00]
          vpaddusw 4096(%rdx), %ymm26, %ymm27

// CHECK: vpaddusw -4096(%rdx), %ymm26, %ymm27
// CHECK:  encoding: [0x62,0x61,0x2d,0x20,0xdd,0x5a,0x80]
          vpaddusw -4096(%rdx), %ymm26, %ymm27

// CHECK: vpaddusw -4128(%rdx), %ymm26, %ymm27
// CHECK:  encoding: [0x62,0x61,0x2d,0x20,0xdd,0x9a,0xe0,0xef,0xff,0xff]
          vpaddusw -4128(%rdx), %ymm26, %ymm27

// CHECK: vpsubsb %xmm18, %xmm22, %xmm23
// CHECK:  encoding: [0x62,0xa1,0x4d,0x00,0xe8,0xfa]
          vpsubsb %xmm18, %xmm22, %xmm23

// CHECK: vpsubsb %xmm18, %xmm22, %xmm23 {%k5}
// CHECK:  encoding: [0x62,0xa1,0x4d,0x05,0xe8,0xfa]
          vpsubsb %xmm18, %xmm22, %xmm23 {%k5}

// CHECK: vpsubsb %xmm18, %xmm22, %xmm23 {%k5} {z}
// CHECK:  encoding: [0x62,0xa1,0x4d,0x85,0xe8,0xfa]
          vpsubsb %xmm18, %xmm22, %xmm23 {%k5} {z}

// CHECK: vpsubsb (%rcx), %xmm22, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x4d,0x00,0xe8,0x39]
          vpsubsb (%rcx), %xmm22, %xmm23

// CHECK: vpsubsb 4660(%rax,%r14,8), %xmm22, %xmm23
// CHECK:  encoding: [0x62,0xa1,0x4d,0x00,0xe8,0xbc,0xf0,0x34,0x12,0x00,0x00]
          vpsubsb 4660(%rax,%r14,8), %xmm22, %xmm23

// CHECK: vpsubsb 2032(%rdx), %xmm22, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x4d,0x00,0xe8,0x7a,0x7f]
          vpsubsb 2032(%rdx), %xmm22, %xmm23

// CHECK: vpsubsb 2048(%rdx), %xmm22, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x4d,0x00,0xe8,0xba,0x00,0x08,0x00,0x00]
          vpsubsb 2048(%rdx), %xmm22, %xmm23

// CHECK: vpsubsb -2048(%rdx), %xmm22, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x4d,0x00,0xe8,0x7a,0x80]
          vpsubsb -2048(%rdx), %xmm22, %xmm23

// CHECK: vpsubsb -2064(%rdx), %xmm22, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x4d,0x00,0xe8,0xba,0xf0,0xf7,0xff,0xff]
          vpsubsb -2064(%rdx), %xmm22, %xmm23

// CHECK: vpsubsb %ymm24, %ymm21, %ymm28
// CHECK:  encoding: [0x62,0x01,0x55,0x20,0xe8,0xe0]
          vpsubsb %ymm24, %ymm21, %ymm28

// CHECK: vpsubsb %ymm24, %ymm21, %ymm28 {%k5}
// CHECK:  encoding: [0x62,0x01,0x55,0x25,0xe8,0xe0]
          vpsubsb %ymm24, %ymm21, %ymm28 {%k5}

// CHECK: vpsubsb %ymm24, %ymm21, %ymm28 {%k5} {z}
// CHECK:  encoding: [0x62,0x01,0x55,0xa5,0xe8,0xe0]
          vpsubsb %ymm24, %ymm21, %ymm28 {%k5} {z}

// CHECK: vpsubsb (%rcx), %ymm21, %ymm28
// CHECK:  encoding: [0x62,0x61,0x55,0x20,0xe8,0x21]
          vpsubsb (%rcx), %ymm21, %ymm28

// CHECK: vpsubsb 4660(%rax,%r14,8), %ymm21, %ymm28
// CHECK:  encoding: [0x62,0x21,0x55,0x20,0xe8,0xa4,0xf0,0x34,0x12,0x00,0x00]
          vpsubsb 4660(%rax,%r14,8), %ymm21, %ymm28

// CHECK: vpsubsb 4064(%rdx), %ymm21, %ymm28
// CHECK:  encoding: [0x62,0x61,0x55,0x20,0xe8,0x62,0x7f]
          vpsubsb 4064(%rdx), %ymm21, %ymm28

// CHECK: vpsubsb 4096(%rdx), %ymm21, %ymm28
// CHECK:  encoding: [0x62,0x61,0x55,0x20,0xe8,0xa2,0x00,0x10,0x00,0x00]
          vpsubsb 4096(%rdx), %ymm21, %ymm28

// CHECK: vpsubsb -4096(%rdx), %ymm21, %ymm28
// CHECK:  encoding: [0x62,0x61,0x55,0x20,0xe8,0x62,0x80]
          vpsubsb -4096(%rdx), %ymm21, %ymm28

// CHECK: vpsubsb -4128(%rdx), %ymm21, %ymm28
// CHECK:  encoding: [0x62,0x61,0x55,0x20,0xe8,0xa2,0xe0,0xef,0xff,0xff]
          vpsubsb -4128(%rdx), %ymm21, %ymm28

// CHECK: vpsubsw %xmm18, %xmm27, %xmm19
// CHECK:  encoding: [0x62,0xa1,0x25,0x00,0xe9,0xda]
          vpsubsw %xmm18, %xmm27, %xmm19

// CHECK: vpsubsw %xmm18, %xmm27, %xmm19 {%k4}
// CHECK:  encoding: [0x62,0xa1,0x25,0x04,0xe9,0xda]
          vpsubsw %xmm18, %xmm27, %xmm19 {%k4}

// CHECK: vpsubsw %xmm18, %xmm27, %xmm19 {%k4} {z}
// CHECK:  encoding: [0x62,0xa1,0x25,0x84,0xe9,0xda]
          vpsubsw %xmm18, %xmm27, %xmm19 {%k4} {z}

// CHECK: vpsubsw (%rcx), %xmm27, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x25,0x00,0xe9,0x19]
          vpsubsw (%rcx), %xmm27, %xmm19

// CHECK: vpsubsw 4660(%rax,%r14,8), %xmm27, %xmm19
// CHECK:  encoding: [0x62,0xa1,0x25,0x00,0xe9,0x9c,0xf0,0x34,0x12,0x00,0x00]
          vpsubsw 4660(%rax,%r14,8), %xmm27, %xmm19

// CHECK: vpsubsw 2032(%rdx), %xmm27, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x25,0x00,0xe9,0x5a,0x7f]
          vpsubsw 2032(%rdx), %xmm27, %xmm19

// CHECK: vpsubsw 2048(%rdx), %xmm27, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x25,0x00,0xe9,0x9a,0x00,0x08,0x00,0x00]
          vpsubsw 2048(%rdx), %xmm27, %xmm19

// CHECK: vpsubsw -2048(%rdx), %xmm27, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x25,0x00,0xe9,0x5a,0x80]
          vpsubsw -2048(%rdx), %xmm27, %xmm19

// CHECK: vpsubsw -2064(%rdx), %xmm27, %xmm19
// CHECK:  encoding: [0x62,0xe1,0x25,0x00,0xe9,0x9a,0xf0,0xf7,0xff,0xff]
          vpsubsw -2064(%rdx), %xmm27, %xmm19

// CHECK: vpsubsw %ymm25, %ymm29, %ymm18
// CHECK:  encoding: [0x62,0x81,0x15,0x20,0xe9,0xd1]
          vpsubsw %ymm25, %ymm29, %ymm18

// CHECK: vpsubsw %ymm25, %ymm29, %ymm18 {%k5}
// CHECK:  encoding: [0x62,0x81,0x15,0x25,0xe9,0xd1]
          vpsubsw %ymm25, %ymm29, %ymm18 {%k5}

// CHECK: vpsubsw %ymm25, %ymm29, %ymm18 {%k5} {z}
// CHECK:  encoding: [0x62,0x81,0x15,0xa5,0xe9,0xd1]
          vpsubsw %ymm25, %ymm29, %ymm18 {%k5} {z}

// CHECK: vpsubsw (%rcx), %ymm29, %ymm18
// CHECK:  encoding: [0x62,0xe1,0x15,0x20,0xe9,0x11]
          vpsubsw (%rcx), %ymm29, %ymm18

// CHECK: vpsubsw 4660(%rax,%r14,8), %ymm29, %ymm18
// CHECK:  encoding: [0x62,0xa1,0x15,0x20,0xe9,0x94,0xf0,0x34,0x12,0x00,0x00]
          vpsubsw 4660(%rax,%r14,8), %ymm29, %ymm18

// CHECK: vpsubsw 4064(%rdx), %ymm29, %ymm18
// CHECK:  encoding: [0x62,0xe1,0x15,0x20,0xe9,0x52,0x7f]
          vpsubsw 4064(%rdx), %ymm29, %ymm18

// CHECK: vpsubsw 4096(%rdx), %ymm29, %ymm18
// CHECK:  encoding: [0x62,0xe1,0x15,0x20,0xe9,0x92,0x00,0x10,0x00,0x00]
          vpsubsw 4096(%rdx), %ymm29, %ymm18

// CHECK: vpsubsw -4096(%rdx), %ymm29, %ymm18
// CHECK:  encoding: [0x62,0xe1,0x15,0x20,0xe9,0x52,0x80]
          vpsubsw -4096(%rdx), %ymm29, %ymm18

// CHECK: vpsubsw -4128(%rdx), %ymm29, %ymm18
// CHECK:  encoding: [0x62,0xe1,0x15,0x20,0xe9,0x92,0xe0,0xef,0xff,0xff]
          vpsubsw -4128(%rdx), %ymm29, %ymm18

// CHECK: vpsubusb %xmm23, %xmm26, %xmm20
// CHECK:  encoding: [0x62,0xa1,0x2d,0x00,0xd8,0xe7]
          vpsubusb %xmm23, %xmm26, %xmm20

// CHECK: vpsubusb %xmm23, %xmm26, %xmm20 {%k5}
// CHECK:  encoding: [0x62,0xa1,0x2d,0x05,0xd8,0xe7]
          vpsubusb %xmm23, %xmm26, %xmm20 {%k5}

// CHECK: vpsubusb %xmm23, %xmm26, %xmm20 {%k5} {z}
// CHECK:  encoding: [0x62,0xa1,0x2d,0x85,0xd8,0xe7]
          vpsubusb %xmm23, %xmm26, %xmm20 {%k5} {z}

// CHECK: vpsubusb (%rcx), %xmm26, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x2d,0x00,0xd8,0x21]
          vpsubusb (%rcx), %xmm26, %xmm20

// CHECK: vpsubusb 4660(%rax,%r14,8), %xmm26, %xmm20
// CHECK:  encoding: [0x62,0xa1,0x2d,0x00,0xd8,0xa4,0xf0,0x34,0x12,0x00,0x00]
          vpsubusb 4660(%rax,%r14,8), %xmm26, %xmm20

// CHECK: vpsubusb 2032(%rdx), %xmm26, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x2d,0x00,0xd8,0x62,0x7f]
          vpsubusb 2032(%rdx), %xmm26, %xmm20

// CHECK: vpsubusb 2048(%rdx), %xmm26, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x2d,0x00,0xd8,0xa2,0x00,0x08,0x00,0x00]
          vpsubusb 2048(%rdx), %xmm26, %xmm20

// CHECK: vpsubusb -2048(%rdx), %xmm26, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x2d,0x00,0xd8,0x62,0x80]
          vpsubusb -2048(%rdx), %xmm26, %xmm20

// CHECK: vpsubusb -2064(%rdx), %xmm26, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x2d,0x00,0xd8,0xa2,0xf0,0xf7,0xff,0xff]
          vpsubusb -2064(%rdx), %xmm26, %xmm20

// CHECK: vpsubusb %ymm19, %ymm28, %ymm30
// CHECK:  encoding: [0x62,0x21,0x1d,0x20,0xd8,0xf3]
          vpsubusb %ymm19, %ymm28, %ymm30

// CHECK: vpsubusb %ymm19, %ymm28, %ymm30 {%k3}
// CHECK:  encoding: [0x62,0x21,0x1d,0x23,0xd8,0xf3]
          vpsubusb %ymm19, %ymm28, %ymm30 {%k3}

// CHECK: vpsubusb %ymm19, %ymm28, %ymm30 {%k3} {z}
// CHECK:  encoding: [0x62,0x21,0x1d,0xa3,0xd8,0xf3]
          vpsubusb %ymm19, %ymm28, %ymm30 {%k3} {z}

// CHECK: vpsubusb (%rcx), %ymm28, %ymm30
// CHECK:  encoding: [0x62,0x61,0x1d,0x20,0xd8,0x31]
          vpsubusb (%rcx), %ymm28, %ymm30

// CHECK: vpsubusb 4660(%rax,%r14,8), %ymm28, %ymm30
// CHECK:  encoding: [0x62,0x21,0x1d,0x20,0xd8,0xb4,0xf0,0x34,0x12,0x00,0x00]
          vpsubusb 4660(%rax,%r14,8), %ymm28, %ymm30

// CHECK: vpsubusb 4064(%rdx), %ymm28, %ymm30
// CHECK:  encoding: [0x62,0x61,0x1d,0x20,0xd8,0x72,0x7f]
          vpsubusb 4064(%rdx), %ymm28, %ymm30

// CHECK: vpsubusb 4096(%rdx), %ymm28, %ymm30
// CHECK:  encoding: [0x62,0x61,0x1d,0x20,0xd8,0xb2,0x00,0x10,0x00,0x00]
          vpsubusb 4096(%rdx), %ymm28, %ymm30

// CHECK: vpsubusb -4096(%rdx), %ymm28, %ymm30
// CHECK:  encoding: [0x62,0x61,0x1d,0x20,0xd8,0x72,0x80]
          vpsubusb -4096(%rdx), %ymm28, %ymm30

// CHECK: vpsubusb -4128(%rdx), %ymm28, %ymm30
// CHECK:  encoding: [0x62,0x61,0x1d,0x20,0xd8,0xb2,0xe0,0xef,0xff,0xff]
          vpsubusb -4128(%rdx), %ymm28, %ymm30

// CHECK: vpsubusw %xmm21, %xmm23, %xmm26
// CHECK:  encoding: [0x62,0x21,0x45,0x00,0xd9,0xd5]
          vpsubusw %xmm21, %xmm23, %xmm26

// CHECK: vpsubusw %xmm21, %xmm23, %xmm26 {%k6}
// CHECK:  encoding: [0x62,0x21,0x45,0x06,0xd9,0xd5]
          vpsubusw %xmm21, %xmm23, %xmm26 {%k6}

// CHECK: vpsubusw %xmm21, %xmm23, %xmm26 {%k6} {z}
// CHECK:  encoding: [0x62,0x21,0x45,0x86,0xd9,0xd5]
          vpsubusw %xmm21, %xmm23, %xmm26 {%k6} {z}

// CHECK: vpsubusw (%rcx), %xmm23, %xmm26
// CHECK:  encoding: [0x62,0x61,0x45,0x00,0xd9,0x11]
          vpsubusw (%rcx), %xmm23, %xmm26

// CHECK: vpsubusw 4660(%rax,%r14,8), %xmm23, %xmm26
// CHECK:  encoding: [0x62,0x21,0x45,0x00,0xd9,0x94,0xf0,0x34,0x12,0x00,0x00]
          vpsubusw 4660(%rax,%r14,8), %xmm23, %xmm26

// CHECK: vpsubusw 2032(%rdx), %xmm23, %xmm26
// CHECK:  encoding: [0x62,0x61,0x45,0x00,0xd9,0x52,0x7f]
          vpsubusw 2032(%rdx), %xmm23, %xmm26

// CHECK: vpsubusw 2048(%rdx), %xmm23, %xmm26
// CHECK:  encoding: [0x62,0x61,0x45,0x00,0xd9,0x92,0x00,0x08,0x00,0x00]
          vpsubusw 2048(%rdx), %xmm23, %xmm26

// CHECK: vpsubusw -2048(%rdx), %xmm23, %xmm26
// CHECK:  encoding: [0x62,0x61,0x45,0x00,0xd9,0x52,0x80]
          vpsubusw -2048(%rdx), %xmm23, %xmm26

// CHECK: vpsubusw -2064(%rdx), %xmm23, %xmm26
// CHECK:  encoding: [0x62,0x61,0x45,0x00,0xd9,0x92,0xf0,0xf7,0xff,0xff]
          vpsubusw -2064(%rdx), %xmm23, %xmm26

// CHECK: vpsubusw %ymm24, %ymm20, %ymm25
// CHECK:  encoding: [0x62,0x01,0x5d,0x20,0xd9,0xc8]
          vpsubusw %ymm24, %ymm20, %ymm25

// CHECK: vpsubusw %ymm24, %ymm20, %ymm25 {%k1}
// CHECK:  encoding: [0x62,0x01,0x5d,0x21,0xd9,0xc8]
          vpsubusw %ymm24, %ymm20, %ymm25 {%k1}

// CHECK: vpsubusw %ymm24, %ymm20, %ymm25 {%k1} {z}
// CHECK:  encoding: [0x62,0x01,0x5d,0xa1,0xd9,0xc8]
          vpsubusw %ymm24, %ymm20, %ymm25 {%k1} {z}

// CHECK: vpsubusw (%rcx), %ymm20, %ymm25
// CHECK:  encoding: [0x62,0x61,0x5d,0x20,0xd9,0x09]
          vpsubusw (%rcx), %ymm20, %ymm25

// CHECK: vpsubusw 4660(%rax,%r14,8), %ymm20, %ymm25
// CHECK:  encoding: [0x62,0x21,0x5d,0x20,0xd9,0x8c,0xf0,0x34,0x12,0x00,0x00]
          vpsubusw 4660(%rax,%r14,8), %ymm20, %ymm25

// CHECK: vpsubusw 4064(%rdx), %ymm20, %ymm25
// CHECK:  encoding: [0x62,0x61,0x5d,0x20,0xd9,0x4a,0x7f]
          vpsubusw 4064(%rdx), %ymm20, %ymm25

// CHECK: vpsubusw 4096(%rdx), %ymm20, %ymm25
// CHECK:  encoding: [0x62,0x61,0x5d,0x20,0xd9,0x8a,0x00,0x10,0x00,0x00]
          vpsubusw 4096(%rdx), %ymm20, %ymm25

// CHECK: vpsubusw -4096(%rdx), %ymm20, %ymm25
// CHECK:  encoding: [0x62,0x61,0x5d,0x20,0xd9,0x4a,0x80]
          vpsubusw -4096(%rdx), %ymm20, %ymm25

// CHECK: vpsubusw -4128(%rdx), %ymm20, %ymm25
// CHECK:  encoding: [0x62,0x61,0x5d,0x20,0xd9,0x8a,0xe0,0xef,0xff,0xff]
          vpsubusw -4128(%rdx), %ymm20, %ymm25

// CHECK: vpaddsb %xmm25, %xmm19, %xmm30
// CHECK:  encoding: [0x62,0x01,0x65,0x00,0xec,0xf1]
          vpaddsb %xmm25, %xmm19, %xmm30

// CHECK: vpaddsb %xmm25, %xmm19, %xmm30 {%k6}
// CHECK:  encoding: [0x62,0x01,0x65,0x06,0xec,0xf1]
          vpaddsb %xmm25, %xmm19, %xmm30 {%k6}

// CHECK: vpaddsb %xmm25, %xmm19, %xmm30 {%k6} {z}
// CHECK:  encoding: [0x62,0x01,0x65,0x86,0xec,0xf1]
          vpaddsb %xmm25, %xmm19, %xmm30 {%k6} {z}

// CHECK: vpaddsb (%rcx), %xmm19, %xmm30
// CHECK:  encoding: [0x62,0x61,0x65,0x00,0xec,0x31]
          vpaddsb (%rcx), %xmm19, %xmm30

// CHECK: vpaddsb 291(%rax,%r14,8), %xmm19, %xmm30
// CHECK:  encoding: [0x62,0x21,0x65,0x00,0xec,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpaddsb 291(%rax,%r14,8), %xmm19, %xmm30

// CHECK: vpaddsb 2032(%rdx), %xmm19, %xmm30
// CHECK:  encoding: [0x62,0x61,0x65,0x00,0xec,0x72,0x7f]
          vpaddsb 2032(%rdx), %xmm19, %xmm30

// CHECK: vpaddsb 2048(%rdx), %xmm19, %xmm30
// CHECK:  encoding: [0x62,0x61,0x65,0x00,0xec,0xb2,0x00,0x08,0x00,0x00]
          vpaddsb 2048(%rdx), %xmm19, %xmm30

// CHECK: vpaddsb -2048(%rdx), %xmm19, %xmm30
// CHECK:  encoding: [0x62,0x61,0x65,0x00,0xec,0x72,0x80]
          vpaddsb -2048(%rdx), %xmm19, %xmm30

// CHECK: vpaddsb -2064(%rdx), %xmm19, %xmm30
// CHECK:  encoding: [0x62,0x61,0x65,0x00,0xec,0xb2,0xf0,0xf7,0xff,0xff]
          vpaddsb -2064(%rdx), %xmm19, %xmm30

// CHECK: vpaddsb %ymm28, %ymm29, %ymm22
// CHECK:  encoding: [0x62,0x81,0x15,0x20,0xec,0xf4]
          vpaddsb %ymm28, %ymm29, %ymm22

// CHECK: vpaddsb %ymm28, %ymm29, %ymm22 {%k4}
// CHECK:  encoding: [0x62,0x81,0x15,0x24,0xec,0xf4]
          vpaddsb %ymm28, %ymm29, %ymm22 {%k4}

// CHECK: vpaddsb %ymm28, %ymm29, %ymm22 {%k4} {z}
// CHECK:  encoding: [0x62,0x81,0x15,0xa4,0xec,0xf4]
          vpaddsb %ymm28, %ymm29, %ymm22 {%k4} {z}

// CHECK: vpaddsb (%rcx), %ymm29, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x15,0x20,0xec,0x31]
          vpaddsb (%rcx), %ymm29, %ymm22

// CHECK: vpaddsb 291(%rax,%r14,8), %ymm29, %ymm22
// CHECK:  encoding: [0x62,0xa1,0x15,0x20,0xec,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpaddsb 291(%rax,%r14,8), %ymm29, %ymm22

// CHECK: vpaddsb 4064(%rdx), %ymm29, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x15,0x20,0xec,0x72,0x7f]
          vpaddsb 4064(%rdx), %ymm29, %ymm22

// CHECK: vpaddsb 4096(%rdx), %ymm29, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x15,0x20,0xec,0xb2,0x00,0x10,0x00,0x00]
          vpaddsb 4096(%rdx), %ymm29, %ymm22

// CHECK: vpaddsb -4096(%rdx), %ymm29, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x15,0x20,0xec,0x72,0x80]
          vpaddsb -4096(%rdx), %ymm29, %ymm22

// CHECK: vpaddsb -4128(%rdx), %ymm29, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x15,0x20,0xec,0xb2,0xe0,0xef,0xff,0xff]
          vpaddsb -4128(%rdx), %ymm29, %ymm22

// CHECK: vpaddsw %xmm19, %xmm19, %xmm20
// CHECK:  encoding: [0x62,0xa1,0x65,0x00,0xed,0xe3]
          vpaddsw %xmm19, %xmm19, %xmm20

// CHECK: vpaddsw %xmm19, %xmm19, %xmm20 {%k7}
// CHECK:  encoding: [0x62,0xa1,0x65,0x07,0xed,0xe3]
          vpaddsw %xmm19, %xmm19, %xmm20 {%k7}

// CHECK: vpaddsw %xmm19, %xmm19, %xmm20 {%k7} {z}
// CHECK:  encoding: [0x62,0xa1,0x65,0x87,0xed,0xe3]
          vpaddsw %xmm19, %xmm19, %xmm20 {%k7} {z}

// CHECK: vpaddsw (%rcx), %xmm19, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x65,0x00,0xed,0x21]
          vpaddsw (%rcx), %xmm19, %xmm20

// CHECK: vpaddsw 291(%rax,%r14,8), %xmm19, %xmm20
// CHECK:  encoding: [0x62,0xa1,0x65,0x00,0xed,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpaddsw 291(%rax,%r14,8), %xmm19, %xmm20

// CHECK: vpaddsw 2032(%rdx), %xmm19, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x65,0x00,0xed,0x62,0x7f]
          vpaddsw 2032(%rdx), %xmm19, %xmm20

// CHECK: vpaddsw 2048(%rdx), %xmm19, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x65,0x00,0xed,0xa2,0x00,0x08,0x00,0x00]
          vpaddsw 2048(%rdx), %xmm19, %xmm20

// CHECK: vpaddsw -2048(%rdx), %xmm19, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x65,0x00,0xed,0x62,0x80]
          vpaddsw -2048(%rdx), %xmm19, %xmm20

// CHECK: vpaddsw -2064(%rdx), %xmm19, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x65,0x00,0xed,0xa2,0xf0,0xf7,0xff,0xff]
          vpaddsw -2064(%rdx), %xmm19, %xmm20

// CHECK: vpaddsw %ymm19, %ymm27, %ymm20
// CHECK:  encoding: [0x62,0xa1,0x25,0x20,0xed,0xe3]
          vpaddsw %ymm19, %ymm27, %ymm20

// CHECK: vpaddsw %ymm19, %ymm27, %ymm20 {%k3}
// CHECK:  encoding: [0x62,0xa1,0x25,0x23,0xed,0xe3]
          vpaddsw %ymm19, %ymm27, %ymm20 {%k3}

// CHECK: vpaddsw %ymm19, %ymm27, %ymm20 {%k3} {z}
// CHECK:  encoding: [0x62,0xa1,0x25,0xa3,0xed,0xe3]
          vpaddsw %ymm19, %ymm27, %ymm20 {%k3} {z}

// CHECK: vpaddsw (%rcx), %ymm27, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x25,0x20,0xed,0x21]
          vpaddsw (%rcx), %ymm27, %ymm20

// CHECK: vpaddsw 291(%rax,%r14,8), %ymm27, %ymm20
// CHECK:  encoding: [0x62,0xa1,0x25,0x20,0xed,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpaddsw 291(%rax,%r14,8), %ymm27, %ymm20

// CHECK: vpaddsw 4064(%rdx), %ymm27, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x25,0x20,0xed,0x62,0x7f]
          vpaddsw 4064(%rdx), %ymm27, %ymm20

// CHECK: vpaddsw 4096(%rdx), %ymm27, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x25,0x20,0xed,0xa2,0x00,0x10,0x00,0x00]
          vpaddsw 4096(%rdx), %ymm27, %ymm20

// CHECK: vpaddsw -4096(%rdx), %ymm27, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x25,0x20,0xed,0x62,0x80]
          vpaddsw -4096(%rdx), %ymm27, %ymm20

// CHECK: vpaddsw -4128(%rdx), %ymm27, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x25,0x20,0xed,0xa2,0xe0,0xef,0xff,0xff]
          vpaddsw -4128(%rdx), %ymm27, %ymm20

// CHECK: vpaddusb %xmm19, %xmm21, %xmm25
// CHECK:  encoding: [0x62,0x21,0x55,0x00,0xdc,0xcb]
          vpaddusb %xmm19, %xmm21, %xmm25

// CHECK: vpaddusb %xmm19, %xmm21, %xmm25 {%k7}
// CHECK:  encoding: [0x62,0x21,0x55,0x07,0xdc,0xcb]
          vpaddusb %xmm19, %xmm21, %xmm25 {%k7}

// CHECK: vpaddusb %xmm19, %xmm21, %xmm25 {%k7} {z}
// CHECK:  encoding: [0x62,0x21,0x55,0x87,0xdc,0xcb]
          vpaddusb %xmm19, %xmm21, %xmm25 {%k7} {z}

// CHECK: vpaddusb (%rcx), %xmm21, %xmm25
// CHECK:  encoding: [0x62,0x61,0x55,0x00,0xdc,0x09]
          vpaddusb (%rcx), %xmm21, %xmm25

// CHECK: vpaddusb 291(%rax,%r14,8), %xmm21, %xmm25
// CHECK:  encoding: [0x62,0x21,0x55,0x00,0xdc,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpaddusb 291(%rax,%r14,8), %xmm21, %xmm25

// CHECK: vpaddusb 2032(%rdx), %xmm21, %xmm25
// CHECK:  encoding: [0x62,0x61,0x55,0x00,0xdc,0x4a,0x7f]
          vpaddusb 2032(%rdx), %xmm21, %xmm25

// CHECK: vpaddusb 2048(%rdx), %xmm21, %xmm25
// CHECK:  encoding: [0x62,0x61,0x55,0x00,0xdc,0x8a,0x00,0x08,0x00,0x00]
          vpaddusb 2048(%rdx), %xmm21, %xmm25

// CHECK: vpaddusb -2048(%rdx), %xmm21, %xmm25
// CHECK:  encoding: [0x62,0x61,0x55,0x00,0xdc,0x4a,0x80]
          vpaddusb -2048(%rdx), %xmm21, %xmm25

// CHECK: vpaddusb -2064(%rdx), %xmm21, %xmm25
// CHECK:  encoding: [0x62,0x61,0x55,0x00,0xdc,0x8a,0xf0,0xf7,0xff,0xff]
          vpaddusb -2064(%rdx), %xmm21, %xmm25

// CHECK: vpaddusb %ymm25, %ymm21, %ymm21
// CHECK:  encoding: [0x62,0x81,0x55,0x20,0xdc,0xe9]
          vpaddusb %ymm25, %ymm21, %ymm21

// CHECK: vpaddusb %ymm25, %ymm21, %ymm21 {%k1}
// CHECK:  encoding: [0x62,0x81,0x55,0x21,0xdc,0xe9]
          vpaddusb %ymm25, %ymm21, %ymm21 {%k1}

// CHECK: vpaddusb %ymm25, %ymm21, %ymm21 {%k1} {z}
// CHECK:  encoding: [0x62,0x81,0x55,0xa1,0xdc,0xe9]
          vpaddusb %ymm25, %ymm21, %ymm21 {%k1} {z}

// CHECK: vpaddusb (%rcx), %ymm21, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x55,0x20,0xdc,0x29]
          vpaddusb (%rcx), %ymm21, %ymm21

// CHECK: vpaddusb 291(%rax,%r14,8), %ymm21, %ymm21
// CHECK:  encoding: [0x62,0xa1,0x55,0x20,0xdc,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpaddusb 291(%rax,%r14,8), %ymm21, %ymm21

// CHECK: vpaddusb 4064(%rdx), %ymm21, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x55,0x20,0xdc,0x6a,0x7f]
          vpaddusb 4064(%rdx), %ymm21, %ymm21

// CHECK: vpaddusb 4096(%rdx), %ymm21, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x55,0x20,0xdc,0xaa,0x00,0x10,0x00,0x00]
          vpaddusb 4096(%rdx), %ymm21, %ymm21

// CHECK: vpaddusb -4096(%rdx), %ymm21, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x55,0x20,0xdc,0x6a,0x80]
          vpaddusb -4096(%rdx), %ymm21, %ymm21

// CHECK: vpaddusb -4128(%rdx), %ymm21, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x55,0x20,0xdc,0xaa,0xe0,0xef,0xff,0xff]
          vpaddusb -4128(%rdx), %ymm21, %ymm21

// CHECK: vpaddusw %xmm26, %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x01,0x75,0x00,0xdd,0xc2]
          vpaddusw %xmm26, %xmm17, %xmm24

// CHECK: vpaddusw %xmm26, %xmm17, %xmm24 {%k6}
// CHECK:  encoding: [0x62,0x01,0x75,0x06,0xdd,0xc2]
          vpaddusw %xmm26, %xmm17, %xmm24 {%k6}

// CHECK: vpaddusw %xmm26, %xmm17, %xmm24 {%k6} {z}
// CHECK:  encoding: [0x62,0x01,0x75,0x86,0xdd,0xc2]
          vpaddusw %xmm26, %xmm17, %xmm24 {%k6} {z}

// CHECK: vpaddusw (%rcx), %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x61,0x75,0x00,0xdd,0x01]
          vpaddusw (%rcx), %xmm17, %xmm24

// CHECK: vpaddusw 291(%rax,%r14,8), %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x21,0x75,0x00,0xdd,0x84,0xf0,0x23,0x01,0x00,0x00]
          vpaddusw 291(%rax,%r14,8), %xmm17, %xmm24

// CHECK: vpaddusw 2032(%rdx), %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x61,0x75,0x00,0xdd,0x42,0x7f]
          vpaddusw 2032(%rdx), %xmm17, %xmm24

// CHECK: vpaddusw 2048(%rdx), %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x61,0x75,0x00,0xdd,0x82,0x00,0x08,0x00,0x00]
          vpaddusw 2048(%rdx), %xmm17, %xmm24

// CHECK: vpaddusw -2048(%rdx), %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x61,0x75,0x00,0xdd,0x42,0x80]
          vpaddusw -2048(%rdx), %xmm17, %xmm24

// CHECK: vpaddusw -2064(%rdx), %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x61,0x75,0x00,0xdd,0x82,0xf0,0xf7,0xff,0xff]
          vpaddusw -2064(%rdx), %xmm17, %xmm24

// CHECK: vpaddusw %ymm22, %ymm27, %ymm22
// CHECK:  encoding: [0x62,0xa1,0x25,0x20,0xdd,0xf6]
          vpaddusw %ymm22, %ymm27, %ymm22

// CHECK: vpaddusw %ymm22, %ymm27, %ymm22 {%k5}
// CHECK:  encoding: [0x62,0xa1,0x25,0x25,0xdd,0xf6]
          vpaddusw %ymm22, %ymm27, %ymm22 {%k5}

// CHECK: vpaddusw %ymm22, %ymm27, %ymm22 {%k5} {z}
// CHECK:  encoding: [0x62,0xa1,0x25,0xa5,0xdd,0xf6]
          vpaddusw %ymm22, %ymm27, %ymm22 {%k5} {z}

// CHECK: vpaddusw (%rcx), %ymm27, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x25,0x20,0xdd,0x31]
          vpaddusw (%rcx), %ymm27, %ymm22

// CHECK: vpaddusw 291(%rax,%r14,8), %ymm27, %ymm22
// CHECK:  encoding: [0x62,0xa1,0x25,0x20,0xdd,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpaddusw 291(%rax,%r14,8), %ymm27, %ymm22

// CHECK: vpaddusw 4064(%rdx), %ymm27, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x25,0x20,0xdd,0x72,0x7f]
          vpaddusw 4064(%rdx), %ymm27, %ymm22

// CHECK: vpaddusw 4096(%rdx), %ymm27, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x25,0x20,0xdd,0xb2,0x00,0x10,0x00,0x00]
          vpaddusw 4096(%rdx), %ymm27, %ymm22

// CHECK: vpaddusw -4096(%rdx), %ymm27, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x25,0x20,0xdd,0x72,0x80]
          vpaddusw -4096(%rdx), %ymm27, %ymm22

// CHECK: vpaddusw -4128(%rdx), %ymm27, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x25,0x20,0xdd,0xb2,0xe0,0xef,0xff,0xff]
          vpaddusw -4128(%rdx), %ymm27, %ymm22

// CHECK: vpsubsb %xmm19, %xmm19, %xmm28
// CHECK:  encoding: [0x62,0x21,0x65,0x00,0xe8,0xe3]
          vpsubsb %xmm19, %xmm19, %xmm28

// CHECK: vpsubsb %xmm19, %xmm19, %xmm28 {%k4}
// CHECK:  encoding: [0x62,0x21,0x65,0x04,0xe8,0xe3]
          vpsubsb %xmm19, %xmm19, %xmm28 {%k4}

// CHECK: vpsubsb %xmm19, %xmm19, %xmm28 {%k4} {z}
// CHECK:  encoding: [0x62,0x21,0x65,0x84,0xe8,0xe3]
          vpsubsb %xmm19, %xmm19, %xmm28 {%k4} {z}

// CHECK: vpsubsb (%rcx), %xmm19, %xmm28
// CHECK:  encoding: [0x62,0x61,0x65,0x00,0xe8,0x21]
          vpsubsb (%rcx), %xmm19, %xmm28

// CHECK: vpsubsb 291(%rax,%r14,8), %xmm19, %xmm28
// CHECK:  encoding: [0x62,0x21,0x65,0x00,0xe8,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpsubsb 291(%rax,%r14,8), %xmm19, %xmm28

// CHECK: vpsubsb 2032(%rdx), %xmm19, %xmm28
// CHECK:  encoding: [0x62,0x61,0x65,0x00,0xe8,0x62,0x7f]
          vpsubsb 2032(%rdx), %xmm19, %xmm28

// CHECK: vpsubsb 2048(%rdx), %xmm19, %xmm28
// CHECK:  encoding: [0x62,0x61,0x65,0x00,0xe8,0xa2,0x00,0x08,0x00,0x00]
          vpsubsb 2048(%rdx), %xmm19, %xmm28

// CHECK: vpsubsb -2048(%rdx), %xmm19, %xmm28
// CHECK:  encoding: [0x62,0x61,0x65,0x00,0xe8,0x62,0x80]
          vpsubsb -2048(%rdx), %xmm19, %xmm28

// CHECK: vpsubsb -2064(%rdx), %xmm19, %xmm28
// CHECK:  encoding: [0x62,0x61,0x65,0x00,0xe8,0xa2,0xf0,0xf7,0xff,0xff]
          vpsubsb -2064(%rdx), %xmm19, %xmm28

// CHECK: vpsubsb %ymm18, %ymm23, %ymm18
// CHECK:  encoding: [0x62,0xa1,0x45,0x20,0xe8,0xd2]
          vpsubsb %ymm18, %ymm23, %ymm18

// CHECK: vpsubsb %ymm18, %ymm23, %ymm18 {%k6}
// CHECK:  encoding: [0x62,0xa1,0x45,0x26,0xe8,0xd2]
          vpsubsb %ymm18, %ymm23, %ymm18 {%k6}

// CHECK: vpsubsb %ymm18, %ymm23, %ymm18 {%k6} {z}
// CHECK:  encoding: [0x62,0xa1,0x45,0xa6,0xe8,0xd2]
          vpsubsb %ymm18, %ymm23, %ymm18 {%k6} {z}

// CHECK: vpsubsb (%rcx), %ymm23, %ymm18
// CHECK:  encoding: [0x62,0xe1,0x45,0x20,0xe8,0x11]
          vpsubsb (%rcx), %ymm23, %ymm18

// CHECK: vpsubsb 291(%rax,%r14,8), %ymm23, %ymm18
// CHECK:  encoding: [0x62,0xa1,0x45,0x20,0xe8,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpsubsb 291(%rax,%r14,8), %ymm23, %ymm18

// CHECK: vpsubsb 4064(%rdx), %ymm23, %ymm18
// CHECK:  encoding: [0x62,0xe1,0x45,0x20,0xe8,0x52,0x7f]
          vpsubsb 4064(%rdx), %ymm23, %ymm18

// CHECK: vpsubsb 4096(%rdx), %ymm23, %ymm18
// CHECK:  encoding: [0x62,0xe1,0x45,0x20,0xe8,0x92,0x00,0x10,0x00,0x00]
          vpsubsb 4096(%rdx), %ymm23, %ymm18

// CHECK: vpsubsb -4096(%rdx), %ymm23, %ymm18
// CHECK:  encoding: [0x62,0xe1,0x45,0x20,0xe8,0x52,0x80]
          vpsubsb -4096(%rdx), %ymm23, %ymm18

// CHECK: vpsubsb -4128(%rdx), %ymm23, %ymm18
// CHECK:  encoding: [0x62,0xe1,0x45,0x20,0xe8,0x92,0xe0,0xef,0xff,0xff]
          vpsubsb -4128(%rdx), %ymm23, %ymm18

// CHECK: vpsubsw %xmm19, %xmm24, %xmm26
// CHECK:  encoding: [0x62,0x21,0x3d,0x00,0xe9,0xd3]
          vpsubsw %xmm19, %xmm24, %xmm26

// CHECK: vpsubsw %xmm19, %xmm24, %xmm26 {%k7}
// CHECK:  encoding: [0x62,0x21,0x3d,0x07,0xe9,0xd3]
          vpsubsw %xmm19, %xmm24, %xmm26 {%k7}

// CHECK: vpsubsw %xmm19, %xmm24, %xmm26 {%k7} {z}
// CHECK:  encoding: [0x62,0x21,0x3d,0x87,0xe9,0xd3]
          vpsubsw %xmm19, %xmm24, %xmm26 {%k7} {z}

// CHECK: vpsubsw (%rcx), %xmm24, %xmm26
// CHECK:  encoding: [0x62,0x61,0x3d,0x00,0xe9,0x11]
          vpsubsw (%rcx), %xmm24, %xmm26

// CHECK: vpsubsw 291(%rax,%r14,8), %xmm24, %xmm26
// CHECK:  encoding: [0x62,0x21,0x3d,0x00,0xe9,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpsubsw 291(%rax,%r14,8), %xmm24, %xmm26

// CHECK: vpsubsw 2032(%rdx), %xmm24, %xmm26
// CHECK:  encoding: [0x62,0x61,0x3d,0x00,0xe9,0x52,0x7f]
          vpsubsw 2032(%rdx), %xmm24, %xmm26

// CHECK: vpsubsw 2048(%rdx), %xmm24, %xmm26
// CHECK:  encoding: [0x62,0x61,0x3d,0x00,0xe9,0x92,0x00,0x08,0x00,0x00]
          vpsubsw 2048(%rdx), %xmm24, %xmm26

// CHECK: vpsubsw -2048(%rdx), %xmm24, %xmm26
// CHECK:  encoding: [0x62,0x61,0x3d,0x00,0xe9,0x52,0x80]
          vpsubsw -2048(%rdx), %xmm24, %xmm26

// CHECK: vpsubsw -2064(%rdx), %xmm24, %xmm26
// CHECK:  encoding: [0x62,0x61,0x3d,0x00,0xe9,0x92,0xf0,0xf7,0xff,0xff]
          vpsubsw -2064(%rdx), %xmm24, %xmm26

// CHECK: vpsubsw %ymm19, %ymm27, %ymm20
// CHECK:  encoding: [0x62,0xa1,0x25,0x20,0xe9,0xe3]
          vpsubsw %ymm19, %ymm27, %ymm20

// CHECK: vpsubsw %ymm19, %ymm27, %ymm20 {%k3}
// CHECK:  encoding: [0x62,0xa1,0x25,0x23,0xe9,0xe3]
          vpsubsw %ymm19, %ymm27, %ymm20 {%k3}

// CHECK: vpsubsw %ymm19, %ymm27, %ymm20 {%k3} {z}
// CHECK:  encoding: [0x62,0xa1,0x25,0xa3,0xe9,0xe3]
          vpsubsw %ymm19, %ymm27, %ymm20 {%k3} {z}

// CHECK: vpsubsw (%rcx), %ymm27, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x25,0x20,0xe9,0x21]
          vpsubsw (%rcx), %ymm27, %ymm20

// CHECK: vpsubsw 291(%rax,%r14,8), %ymm27, %ymm20
// CHECK:  encoding: [0x62,0xa1,0x25,0x20,0xe9,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpsubsw 291(%rax,%r14,8), %ymm27, %ymm20

// CHECK: vpsubsw 4064(%rdx), %ymm27, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x25,0x20,0xe9,0x62,0x7f]
          vpsubsw 4064(%rdx), %ymm27, %ymm20

// CHECK: vpsubsw 4096(%rdx), %ymm27, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x25,0x20,0xe9,0xa2,0x00,0x10,0x00,0x00]
          vpsubsw 4096(%rdx), %ymm27, %ymm20

// CHECK: vpsubsw -4096(%rdx), %ymm27, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x25,0x20,0xe9,0x62,0x80]
          vpsubsw -4096(%rdx), %ymm27, %ymm20

// CHECK: vpsubsw -4128(%rdx), %ymm27, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x25,0x20,0xe9,0xa2,0xe0,0xef,0xff,0xff]
          vpsubsw -4128(%rdx), %ymm27, %ymm20

// CHECK: vpsubusb %xmm25, %xmm19, %xmm20
// CHECK:  encoding: [0x62,0x81,0x65,0x00,0xd8,0xe1]
          vpsubusb %xmm25, %xmm19, %xmm20

// CHECK: vpsubusb %xmm25, %xmm19, %xmm20 {%k6}
// CHECK:  encoding: [0x62,0x81,0x65,0x06,0xd8,0xe1]
          vpsubusb %xmm25, %xmm19, %xmm20 {%k6}

// CHECK: vpsubusb %xmm25, %xmm19, %xmm20 {%k6} {z}
// CHECK:  encoding: [0x62,0x81,0x65,0x86,0xd8,0xe1]
          vpsubusb %xmm25, %xmm19, %xmm20 {%k6} {z}

// CHECK: vpsubusb (%rcx), %xmm19, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x65,0x00,0xd8,0x21]
          vpsubusb (%rcx), %xmm19, %xmm20

// CHECK: vpsubusb 291(%rax,%r14,8), %xmm19, %xmm20
// CHECK:  encoding: [0x62,0xa1,0x65,0x00,0xd8,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpsubusb 291(%rax,%r14,8), %xmm19, %xmm20

// CHECK: vpsubusb 2032(%rdx), %xmm19, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x65,0x00,0xd8,0x62,0x7f]
          vpsubusb 2032(%rdx), %xmm19, %xmm20

// CHECK: vpsubusb 2048(%rdx), %xmm19, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x65,0x00,0xd8,0xa2,0x00,0x08,0x00,0x00]
          vpsubusb 2048(%rdx), %xmm19, %xmm20

// CHECK: vpsubusb -2048(%rdx), %xmm19, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x65,0x00,0xd8,0x62,0x80]
          vpsubusb -2048(%rdx), %xmm19, %xmm20

// CHECK: vpsubusb -2064(%rdx), %xmm19, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x65,0x00,0xd8,0xa2,0xf0,0xf7,0xff,0xff]
          vpsubusb -2064(%rdx), %xmm19, %xmm20

// CHECK: vpsubusb %ymm19, %ymm19, %ymm21
// CHECK:  encoding: [0x62,0xa1,0x65,0x20,0xd8,0xeb]
          vpsubusb %ymm19, %ymm19, %ymm21

// CHECK: vpsubusb %ymm19, %ymm19, %ymm21 {%k3}
// CHECK:  encoding: [0x62,0xa1,0x65,0x23,0xd8,0xeb]
          vpsubusb %ymm19, %ymm19, %ymm21 {%k3}

// CHECK: vpsubusb %ymm19, %ymm19, %ymm21 {%k3} {z}
// CHECK:  encoding: [0x62,0xa1,0x65,0xa3,0xd8,0xeb]
          vpsubusb %ymm19, %ymm19, %ymm21 {%k3} {z}

// CHECK: vpsubusb (%rcx), %ymm19, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x65,0x20,0xd8,0x29]
          vpsubusb (%rcx), %ymm19, %ymm21

// CHECK: vpsubusb 291(%rax,%r14,8), %ymm19, %ymm21
// CHECK:  encoding: [0x62,0xa1,0x65,0x20,0xd8,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpsubusb 291(%rax,%r14,8), %ymm19, %ymm21

// CHECK: vpsubusb 4064(%rdx), %ymm19, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x65,0x20,0xd8,0x6a,0x7f]
          vpsubusb 4064(%rdx), %ymm19, %ymm21

// CHECK: vpsubusb 4096(%rdx), %ymm19, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x65,0x20,0xd8,0xaa,0x00,0x10,0x00,0x00]
          vpsubusb 4096(%rdx), %ymm19, %ymm21

// CHECK: vpsubusb -4096(%rdx), %ymm19, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x65,0x20,0xd8,0x6a,0x80]
          vpsubusb -4096(%rdx), %ymm19, %ymm21

// CHECK: vpsubusb -4128(%rdx), %ymm19, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x65,0x20,0xd8,0xaa,0xe0,0xef,0xff,0xff]
          vpsubusb -4128(%rdx), %ymm19, %ymm21

// CHECK: vpsubusw %xmm22, %xmm20, %xmm23
// CHECK:  encoding: [0x62,0xa1,0x5d,0x00,0xd9,0xfe]
          vpsubusw %xmm22, %xmm20, %xmm23

// CHECK: vpsubusw %xmm22, %xmm20, %xmm23 {%k1}
// CHECK:  encoding: [0x62,0xa1,0x5d,0x01,0xd9,0xfe]
          vpsubusw %xmm22, %xmm20, %xmm23 {%k1}

// CHECK: vpsubusw %xmm22, %xmm20, %xmm23 {%k1} {z}
// CHECK:  encoding: [0x62,0xa1,0x5d,0x81,0xd9,0xfe]
          vpsubusw %xmm22, %xmm20, %xmm23 {%k1} {z}

// CHECK: vpsubusw (%rcx), %xmm20, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x5d,0x00,0xd9,0x39]
          vpsubusw (%rcx), %xmm20, %xmm23

// CHECK: vpsubusw 291(%rax,%r14,8), %xmm20, %xmm23
// CHECK:  encoding: [0x62,0xa1,0x5d,0x00,0xd9,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vpsubusw 291(%rax,%r14,8), %xmm20, %xmm23

// CHECK: vpsubusw 2032(%rdx), %xmm20, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x5d,0x00,0xd9,0x7a,0x7f]
          vpsubusw 2032(%rdx), %xmm20, %xmm23

// CHECK: vpsubusw 2048(%rdx), %xmm20, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x5d,0x00,0xd9,0xba,0x00,0x08,0x00,0x00]
          vpsubusw 2048(%rdx), %xmm20, %xmm23

// CHECK: vpsubusw -2048(%rdx), %xmm20, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x5d,0x00,0xd9,0x7a,0x80]
          vpsubusw -2048(%rdx), %xmm20, %xmm23

// CHECK: vpsubusw -2064(%rdx), %xmm20, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x5d,0x00,0xd9,0xba,0xf0,0xf7,0xff,0xff]
          vpsubusw -2064(%rdx), %xmm20, %xmm23

// CHECK: vpsubusw %ymm28, %ymm17, %ymm27
// CHECK:  encoding: [0x62,0x01,0x75,0x20,0xd9,0xdc]
          vpsubusw %ymm28, %ymm17, %ymm27

// CHECK: vpsubusw %ymm28, %ymm17, %ymm27 {%k3}
// CHECK:  encoding: [0x62,0x01,0x75,0x23,0xd9,0xdc]
          vpsubusw %ymm28, %ymm17, %ymm27 {%k3}

// CHECK: vpsubusw %ymm28, %ymm17, %ymm27 {%k3} {z}
// CHECK:  encoding: [0x62,0x01,0x75,0xa3,0xd9,0xdc]
          vpsubusw %ymm28, %ymm17, %ymm27 {%k3} {z}

// CHECK: vpsubusw (%rcx), %ymm17, %ymm27
// CHECK:  encoding: [0x62,0x61,0x75,0x20,0xd9,0x19]
          vpsubusw (%rcx), %ymm17, %ymm27

// CHECK: vpsubusw 291(%rax,%r14,8), %ymm17, %ymm27
// CHECK:  encoding: [0x62,0x21,0x75,0x20,0xd9,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpsubusw 291(%rax,%r14,8), %ymm17, %ymm27

// CHECK: vpsubusw 4064(%rdx), %ymm17, %ymm27
// CHECK:  encoding: [0x62,0x61,0x75,0x20,0xd9,0x5a,0x7f]
          vpsubusw 4064(%rdx), %ymm17, %ymm27

// CHECK: vpsubusw 4096(%rdx), %ymm17, %ymm27
// CHECK:  encoding: [0x62,0x61,0x75,0x20,0xd9,0x9a,0x00,0x10,0x00,0x00]
          vpsubusw 4096(%rdx), %ymm17, %ymm27

// CHECK: vpsubusw -4096(%rdx), %ymm17, %ymm27
// CHECK:  encoding: [0x62,0x61,0x75,0x20,0xd9,0x5a,0x80]
          vpsubusw -4096(%rdx), %ymm17, %ymm27

// CHECK: vpsubusw -4128(%rdx), %ymm17, %ymm27
// CHECK:  encoding: [0x62,0x61,0x75,0x20,0xd9,0x9a,0xe0,0xef,0xff,0xff]
          vpsubusw -4128(%rdx), %ymm17, %ymm27

// CHECK: vpaddsb %xmm18, %xmm23, %xmm17
// CHECK:  encoding: [0x62,0xa1,0x45,0x00,0xec,0xca]
          vpaddsb %xmm18, %xmm23, %xmm17

// CHECK: vpaddsb %xmm18, %xmm23, %xmm17 {%k2}
// CHECK:  encoding: [0x62,0xa1,0x45,0x02,0xec,0xca]
          vpaddsb %xmm18, %xmm23, %xmm17 {%k2}

// CHECK: vpaddsb %xmm18, %xmm23, %xmm17 {%k2} {z}
// CHECK:  encoding: [0x62,0xa1,0x45,0x82,0xec,0xca]
          vpaddsb %xmm18, %xmm23, %xmm17 {%k2} {z}

// CHECK: vpaddsb (%rcx), %xmm23, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x45,0x00,0xec,0x09]
          vpaddsb (%rcx), %xmm23, %xmm17

// CHECK: vpaddsb 4660(%rax,%r14,8), %xmm23, %xmm17
// CHECK:  encoding: [0x62,0xa1,0x45,0x00,0xec,0x8c,0xf0,0x34,0x12,0x00,0x00]
          vpaddsb 4660(%rax,%r14,8), %xmm23, %xmm17

// CHECK: vpaddsb 2032(%rdx), %xmm23, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x45,0x00,0xec,0x4a,0x7f]
          vpaddsb 2032(%rdx), %xmm23, %xmm17

// CHECK: vpaddsb 2048(%rdx), %xmm23, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x45,0x00,0xec,0x8a,0x00,0x08,0x00,0x00]
          vpaddsb 2048(%rdx), %xmm23, %xmm17

// CHECK: vpaddsb -2048(%rdx), %xmm23, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x45,0x00,0xec,0x4a,0x80]
          vpaddsb -2048(%rdx), %xmm23, %xmm17

// CHECK: vpaddsb -2064(%rdx), %xmm23, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x45,0x00,0xec,0x8a,0xf0,0xf7,0xff,0xff]
          vpaddsb -2064(%rdx), %xmm23, %xmm17

// CHECK: vpaddsb %ymm19, %ymm26, %ymm20
// CHECK:  encoding: [0x62,0xa1,0x2d,0x20,0xec,0xe3]
          vpaddsb %ymm19, %ymm26, %ymm20

// CHECK: vpaddsb %ymm19, %ymm26, %ymm20 {%k2}
// CHECK:  encoding: [0x62,0xa1,0x2d,0x22,0xec,0xe3]
          vpaddsb %ymm19, %ymm26, %ymm20 {%k2}

// CHECK: vpaddsb %ymm19, %ymm26, %ymm20 {%k2} {z}
// CHECK:  encoding: [0x62,0xa1,0x2d,0xa2,0xec,0xe3]
          vpaddsb %ymm19, %ymm26, %ymm20 {%k2} {z}

// CHECK: vpaddsb (%rcx), %ymm26, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x2d,0x20,0xec,0x21]
          vpaddsb (%rcx), %ymm26, %ymm20

// CHECK: vpaddsb 4660(%rax,%r14,8), %ymm26, %ymm20
// CHECK:  encoding: [0x62,0xa1,0x2d,0x20,0xec,0xa4,0xf0,0x34,0x12,0x00,0x00]
          vpaddsb 4660(%rax,%r14,8), %ymm26, %ymm20

// CHECK: vpaddsb 4064(%rdx), %ymm26, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x2d,0x20,0xec,0x62,0x7f]
          vpaddsb 4064(%rdx), %ymm26, %ymm20

// CHECK: vpaddsb 4096(%rdx), %ymm26, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x2d,0x20,0xec,0xa2,0x00,0x10,0x00,0x00]
          vpaddsb 4096(%rdx), %ymm26, %ymm20

// CHECK: vpaddsb -4096(%rdx), %ymm26, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x2d,0x20,0xec,0x62,0x80]
          vpaddsb -4096(%rdx), %ymm26, %ymm20

// CHECK: vpaddsb -4128(%rdx), %ymm26, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x2d,0x20,0xec,0xa2,0xe0,0xef,0xff,0xff]
          vpaddsb -4128(%rdx), %ymm26, %ymm20

// CHECK: vpaddsw %xmm26, %xmm17, %xmm26
// CHECK:  encoding: [0x62,0x01,0x75,0x00,0xed,0xd2]
          vpaddsw %xmm26, %xmm17, %xmm26

// CHECK: vpaddsw %xmm26, %xmm17, %xmm26 {%k6}
// CHECK:  encoding: [0x62,0x01,0x75,0x06,0xed,0xd2]
          vpaddsw %xmm26, %xmm17, %xmm26 {%k6}

// CHECK: vpaddsw %xmm26, %xmm17, %xmm26 {%k6} {z}
// CHECK:  encoding: [0x62,0x01,0x75,0x86,0xed,0xd2]
          vpaddsw %xmm26, %xmm17, %xmm26 {%k6} {z}

// CHECK: vpaddsw (%rcx), %xmm17, %xmm26
// CHECK:  encoding: [0x62,0x61,0x75,0x00,0xed,0x11]
          vpaddsw (%rcx), %xmm17, %xmm26

// CHECK: vpaddsw 4660(%rax,%r14,8), %xmm17, %xmm26
// CHECK:  encoding: [0x62,0x21,0x75,0x00,0xed,0x94,0xf0,0x34,0x12,0x00,0x00]
          vpaddsw 4660(%rax,%r14,8), %xmm17, %xmm26

// CHECK: vpaddsw 2032(%rdx), %xmm17, %xmm26
// CHECK:  encoding: [0x62,0x61,0x75,0x00,0xed,0x52,0x7f]
          vpaddsw 2032(%rdx), %xmm17, %xmm26

// CHECK: vpaddsw 2048(%rdx), %xmm17, %xmm26
// CHECK:  encoding: [0x62,0x61,0x75,0x00,0xed,0x92,0x00,0x08,0x00,0x00]
          vpaddsw 2048(%rdx), %xmm17, %xmm26

// CHECK: vpaddsw -2048(%rdx), %xmm17, %xmm26
// CHECK:  encoding: [0x62,0x61,0x75,0x00,0xed,0x52,0x80]
          vpaddsw -2048(%rdx), %xmm17, %xmm26

// CHECK: vpaddsw -2064(%rdx), %xmm17, %xmm26
// CHECK:  encoding: [0x62,0x61,0x75,0x00,0xed,0x92,0xf0,0xf7,0xff,0xff]
          vpaddsw -2064(%rdx), %xmm17, %xmm26

// CHECK: vpaddsw %ymm23, %ymm27, %ymm28
// CHECK:  encoding: [0x62,0x21,0x25,0x20,0xed,0xe7]
          vpaddsw %ymm23, %ymm27, %ymm28

// CHECK: vpaddsw %ymm23, %ymm27, %ymm28 {%k4}
// CHECK:  encoding: [0x62,0x21,0x25,0x24,0xed,0xe7]
          vpaddsw %ymm23, %ymm27, %ymm28 {%k4}

// CHECK: vpaddsw %ymm23, %ymm27, %ymm28 {%k4} {z}
// CHECK:  encoding: [0x62,0x21,0x25,0xa4,0xed,0xe7]
          vpaddsw %ymm23, %ymm27, %ymm28 {%k4} {z}

// CHECK: vpaddsw (%rcx), %ymm27, %ymm28
// CHECK:  encoding: [0x62,0x61,0x25,0x20,0xed,0x21]
          vpaddsw (%rcx), %ymm27, %ymm28

// CHECK: vpaddsw 4660(%rax,%r14,8), %ymm27, %ymm28
// CHECK:  encoding: [0x62,0x21,0x25,0x20,0xed,0xa4,0xf0,0x34,0x12,0x00,0x00]
          vpaddsw 4660(%rax,%r14,8), %ymm27, %ymm28

// CHECK: vpaddsw 4064(%rdx), %ymm27, %ymm28
// CHECK:  encoding: [0x62,0x61,0x25,0x20,0xed,0x62,0x7f]
          vpaddsw 4064(%rdx), %ymm27, %ymm28

// CHECK: vpaddsw 4096(%rdx), %ymm27, %ymm28
// CHECK:  encoding: [0x62,0x61,0x25,0x20,0xed,0xa2,0x00,0x10,0x00,0x00]
          vpaddsw 4096(%rdx), %ymm27, %ymm28

// CHECK: vpaddsw -4096(%rdx), %ymm27, %ymm28
// CHECK:  encoding: [0x62,0x61,0x25,0x20,0xed,0x62,0x80]
          vpaddsw -4096(%rdx), %ymm27, %ymm28

// CHECK: vpaddsw -4128(%rdx), %ymm27, %ymm28
// CHECK:  encoding: [0x62,0x61,0x25,0x20,0xed,0xa2,0xe0,0xef,0xff,0xff]
          vpaddsw -4128(%rdx), %ymm27, %ymm28

// CHECK: vpaddusb %xmm18, %xmm21, %xmm17
// CHECK:  encoding: [0x62,0xa1,0x55,0x00,0xdc,0xca]
          vpaddusb %xmm18, %xmm21, %xmm17

// CHECK: vpaddusb %xmm18, %xmm21, %xmm17 {%k4}
// CHECK:  encoding: [0x62,0xa1,0x55,0x04,0xdc,0xca]
          vpaddusb %xmm18, %xmm21, %xmm17 {%k4}

// CHECK: vpaddusb %xmm18, %xmm21, %xmm17 {%k4} {z}
// CHECK:  encoding: [0x62,0xa1,0x55,0x84,0xdc,0xca]
          vpaddusb %xmm18, %xmm21, %xmm17 {%k4} {z}

// CHECK: vpaddusb (%rcx), %xmm21, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x55,0x00,0xdc,0x09]
          vpaddusb (%rcx), %xmm21, %xmm17

// CHECK: vpaddusb 4660(%rax,%r14,8), %xmm21, %xmm17
// CHECK:  encoding: [0x62,0xa1,0x55,0x00,0xdc,0x8c,0xf0,0x34,0x12,0x00,0x00]
          vpaddusb 4660(%rax,%r14,8), %xmm21, %xmm17

// CHECK: vpaddusb 2032(%rdx), %xmm21, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x55,0x00,0xdc,0x4a,0x7f]
          vpaddusb 2032(%rdx), %xmm21, %xmm17

// CHECK: vpaddusb 2048(%rdx), %xmm21, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x55,0x00,0xdc,0x8a,0x00,0x08,0x00,0x00]
          vpaddusb 2048(%rdx), %xmm21, %xmm17

// CHECK: vpaddusb -2048(%rdx), %xmm21, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x55,0x00,0xdc,0x4a,0x80]
          vpaddusb -2048(%rdx), %xmm21, %xmm17

// CHECK: vpaddusb -2064(%rdx), %xmm21, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x55,0x00,0xdc,0x8a,0xf0,0xf7,0xff,0xff]
          vpaddusb -2064(%rdx), %xmm21, %xmm17

// CHECK: vpaddusb %ymm24, %ymm20, %ymm21
// CHECK:  encoding: [0x62,0x81,0x5d,0x20,0xdc,0xe8]
          vpaddusb %ymm24, %ymm20, %ymm21

// CHECK: vpaddusb %ymm24, %ymm20, %ymm21 {%k2}
// CHECK:  encoding: [0x62,0x81,0x5d,0x22,0xdc,0xe8]
          vpaddusb %ymm24, %ymm20, %ymm21 {%k2}

// CHECK: vpaddusb %ymm24, %ymm20, %ymm21 {%k2} {z}
// CHECK:  encoding: [0x62,0x81,0x5d,0xa2,0xdc,0xe8]
          vpaddusb %ymm24, %ymm20, %ymm21 {%k2} {z}

// CHECK: vpaddusb (%rcx), %ymm20, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x5d,0x20,0xdc,0x29]
          vpaddusb (%rcx), %ymm20, %ymm21

// CHECK: vpaddusb 4660(%rax,%r14,8), %ymm20, %ymm21
// CHECK:  encoding: [0x62,0xa1,0x5d,0x20,0xdc,0xac,0xf0,0x34,0x12,0x00,0x00]
          vpaddusb 4660(%rax,%r14,8), %ymm20, %ymm21

// CHECK: vpaddusb 4064(%rdx), %ymm20, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x5d,0x20,0xdc,0x6a,0x7f]
          vpaddusb 4064(%rdx), %ymm20, %ymm21

// CHECK: vpaddusb 4096(%rdx), %ymm20, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x5d,0x20,0xdc,0xaa,0x00,0x10,0x00,0x00]
          vpaddusb 4096(%rdx), %ymm20, %ymm21

// CHECK: vpaddusb -4096(%rdx), %ymm20, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x5d,0x20,0xdc,0x6a,0x80]
          vpaddusb -4096(%rdx), %ymm20, %ymm21

// CHECK: vpaddusb -4128(%rdx), %ymm20, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x5d,0x20,0xdc,0xaa,0xe0,0xef,0xff,0xff]
          vpaddusb -4128(%rdx), %ymm20, %ymm21

// CHECK: vpaddusw %xmm28, %xmm24, %xmm22
// CHECK:  encoding: [0x62,0x81,0x3d,0x00,0xdd,0xf4]
          vpaddusw %xmm28, %xmm24, %xmm22

// CHECK: vpaddusw %xmm28, %xmm24, %xmm22 {%k6}
// CHECK:  encoding: [0x62,0x81,0x3d,0x06,0xdd,0xf4]
          vpaddusw %xmm28, %xmm24, %xmm22 {%k6}

// CHECK: vpaddusw %xmm28, %xmm24, %xmm22 {%k6} {z}
// CHECK:  encoding: [0x62,0x81,0x3d,0x86,0xdd,0xf4]
          vpaddusw %xmm28, %xmm24, %xmm22 {%k6} {z}

// CHECK: vpaddusw (%rcx), %xmm24, %xmm22
// CHECK:  encoding: [0x62,0xe1,0x3d,0x00,0xdd,0x31]
          vpaddusw (%rcx), %xmm24, %xmm22

// CHECK: vpaddusw 4660(%rax,%r14,8), %xmm24, %xmm22
// CHECK:  encoding: [0x62,0xa1,0x3d,0x00,0xdd,0xb4,0xf0,0x34,0x12,0x00,0x00]
          vpaddusw 4660(%rax,%r14,8), %xmm24, %xmm22

// CHECK: vpaddusw 2032(%rdx), %xmm24, %xmm22
// CHECK:  encoding: [0x62,0xe1,0x3d,0x00,0xdd,0x72,0x7f]
          vpaddusw 2032(%rdx), %xmm24, %xmm22

// CHECK: vpaddusw 2048(%rdx), %xmm24, %xmm22
// CHECK:  encoding: [0x62,0xe1,0x3d,0x00,0xdd,0xb2,0x00,0x08,0x00,0x00]
          vpaddusw 2048(%rdx), %xmm24, %xmm22

// CHECK: vpaddusw -2048(%rdx), %xmm24, %xmm22
// CHECK:  encoding: [0x62,0xe1,0x3d,0x00,0xdd,0x72,0x80]
          vpaddusw -2048(%rdx), %xmm24, %xmm22

// CHECK: vpaddusw -2064(%rdx), %xmm24, %xmm22
// CHECK:  encoding: [0x62,0xe1,0x3d,0x00,0xdd,0xb2,0xf0,0xf7,0xff,0xff]
          vpaddusw -2064(%rdx), %xmm24, %xmm22

// CHECK: vpaddusw %ymm25, %ymm19, %ymm21
// CHECK:  encoding: [0x62,0x81,0x65,0x20,0xdd,0xe9]
          vpaddusw %ymm25, %ymm19, %ymm21

// CHECK: vpaddusw %ymm25, %ymm19, %ymm21 {%k2}
// CHECK:  encoding: [0x62,0x81,0x65,0x22,0xdd,0xe9]
          vpaddusw %ymm25, %ymm19, %ymm21 {%k2}

// CHECK: vpaddusw %ymm25, %ymm19, %ymm21 {%k2} {z}
// CHECK:  encoding: [0x62,0x81,0x65,0xa2,0xdd,0xe9]
          vpaddusw %ymm25, %ymm19, %ymm21 {%k2} {z}

// CHECK: vpaddusw (%rcx), %ymm19, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x65,0x20,0xdd,0x29]
          vpaddusw (%rcx), %ymm19, %ymm21

// CHECK: vpaddusw 4660(%rax,%r14,8), %ymm19, %ymm21
// CHECK:  encoding: [0x62,0xa1,0x65,0x20,0xdd,0xac,0xf0,0x34,0x12,0x00,0x00]
          vpaddusw 4660(%rax,%r14,8), %ymm19, %ymm21

// CHECK: vpaddusw 4064(%rdx), %ymm19, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x65,0x20,0xdd,0x6a,0x7f]
          vpaddusw 4064(%rdx), %ymm19, %ymm21

// CHECK: vpaddusw 4096(%rdx), %ymm19, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x65,0x20,0xdd,0xaa,0x00,0x10,0x00,0x00]
          vpaddusw 4096(%rdx), %ymm19, %ymm21

// CHECK: vpaddusw -4096(%rdx), %ymm19, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x65,0x20,0xdd,0x6a,0x80]
          vpaddusw -4096(%rdx), %ymm19, %ymm21

// CHECK: vpaddusw -4128(%rdx), %ymm19, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x65,0x20,0xdd,0xaa,0xe0,0xef,0xff,0xff]
          vpaddusw -4128(%rdx), %ymm19, %ymm21

// CHECK: vpsubsb %xmm22, %xmm26, %xmm20
// CHECK:  encoding: [0x62,0xa1,0x2d,0x00,0xe8,0xe6]
          vpsubsb %xmm22, %xmm26, %xmm20

// CHECK: vpsubsb %xmm22, %xmm26, %xmm20 {%k1}
// CHECK:  encoding: [0x62,0xa1,0x2d,0x01,0xe8,0xe6]
          vpsubsb %xmm22, %xmm26, %xmm20 {%k1}

// CHECK: vpsubsb %xmm22, %xmm26, %xmm20 {%k1} {z}
// CHECK:  encoding: [0x62,0xa1,0x2d,0x81,0xe8,0xe6]
          vpsubsb %xmm22, %xmm26, %xmm20 {%k1} {z}

// CHECK: vpsubsb (%rcx), %xmm26, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x2d,0x00,0xe8,0x21]
          vpsubsb (%rcx), %xmm26, %xmm20

// CHECK: vpsubsb 4660(%rax,%r14,8), %xmm26, %xmm20
// CHECK:  encoding: [0x62,0xa1,0x2d,0x00,0xe8,0xa4,0xf0,0x34,0x12,0x00,0x00]
          vpsubsb 4660(%rax,%r14,8), %xmm26, %xmm20

// CHECK: vpsubsb 2032(%rdx), %xmm26, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x2d,0x00,0xe8,0x62,0x7f]
          vpsubsb 2032(%rdx), %xmm26, %xmm20

// CHECK: vpsubsb 2048(%rdx), %xmm26, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x2d,0x00,0xe8,0xa2,0x00,0x08,0x00,0x00]
          vpsubsb 2048(%rdx), %xmm26, %xmm20

// CHECK: vpsubsb -2048(%rdx), %xmm26, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x2d,0x00,0xe8,0x62,0x80]
          vpsubsb -2048(%rdx), %xmm26, %xmm20

// CHECK: vpsubsb -2064(%rdx), %xmm26, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x2d,0x00,0xe8,0xa2,0xf0,0xf7,0xff,0xff]
          vpsubsb -2064(%rdx), %xmm26, %xmm20

// CHECK: vpsubsb %ymm26, %ymm18, %ymm25
// CHECK:  encoding: [0x62,0x01,0x6d,0x20,0xe8,0xca]
          vpsubsb %ymm26, %ymm18, %ymm25

// CHECK: vpsubsb %ymm26, %ymm18, %ymm25 {%k6}
// CHECK:  encoding: [0x62,0x01,0x6d,0x26,0xe8,0xca]
          vpsubsb %ymm26, %ymm18, %ymm25 {%k6}

// CHECK: vpsubsb %ymm26, %ymm18, %ymm25 {%k6} {z}
// CHECK:  encoding: [0x62,0x01,0x6d,0xa6,0xe8,0xca]
          vpsubsb %ymm26, %ymm18, %ymm25 {%k6} {z}

// CHECK: vpsubsb (%rcx), %ymm18, %ymm25
// CHECK:  encoding: [0x62,0x61,0x6d,0x20,0xe8,0x09]
          vpsubsb (%rcx), %ymm18, %ymm25

// CHECK: vpsubsb 4660(%rax,%r14,8), %ymm18, %ymm25
// CHECK:  encoding: [0x62,0x21,0x6d,0x20,0xe8,0x8c,0xf0,0x34,0x12,0x00,0x00]
          vpsubsb 4660(%rax,%r14,8), %ymm18, %ymm25

// CHECK: vpsubsb 4064(%rdx), %ymm18, %ymm25
// CHECK:  encoding: [0x62,0x61,0x6d,0x20,0xe8,0x4a,0x7f]
          vpsubsb 4064(%rdx), %ymm18, %ymm25

// CHECK: vpsubsb 4096(%rdx), %ymm18, %ymm25
// CHECK:  encoding: [0x62,0x61,0x6d,0x20,0xe8,0x8a,0x00,0x10,0x00,0x00]
          vpsubsb 4096(%rdx), %ymm18, %ymm25

// CHECK: vpsubsb -4096(%rdx), %ymm18, %ymm25
// CHECK:  encoding: [0x62,0x61,0x6d,0x20,0xe8,0x4a,0x80]
          vpsubsb -4096(%rdx), %ymm18, %ymm25

// CHECK: vpsubsb -4128(%rdx), %ymm18, %ymm25
// CHECK:  encoding: [0x62,0x61,0x6d,0x20,0xe8,0x8a,0xe0,0xef,0xff,0xff]
          vpsubsb -4128(%rdx), %ymm18, %ymm25

// CHECK: vpsubsw %xmm28, %xmm27, %xmm26
// CHECK:  encoding: [0x62,0x01,0x25,0x00,0xe9,0xd4]
          vpsubsw %xmm28, %xmm27, %xmm26

// CHECK: vpsubsw %xmm28, %xmm27, %xmm26 {%k5}
// CHECK:  encoding: [0x62,0x01,0x25,0x05,0xe9,0xd4]
          vpsubsw %xmm28, %xmm27, %xmm26 {%k5}

// CHECK: vpsubsw %xmm28, %xmm27, %xmm26 {%k5} {z}
// CHECK:  encoding: [0x62,0x01,0x25,0x85,0xe9,0xd4]
          vpsubsw %xmm28, %xmm27, %xmm26 {%k5} {z}

// CHECK: vpsubsw (%rcx), %xmm27, %xmm26
// CHECK:  encoding: [0x62,0x61,0x25,0x00,0xe9,0x11]
          vpsubsw (%rcx), %xmm27, %xmm26

// CHECK: vpsubsw 4660(%rax,%r14,8), %xmm27, %xmm26
// CHECK:  encoding: [0x62,0x21,0x25,0x00,0xe9,0x94,0xf0,0x34,0x12,0x00,0x00]
          vpsubsw 4660(%rax,%r14,8), %xmm27, %xmm26

// CHECK: vpsubsw 2032(%rdx), %xmm27, %xmm26
// CHECK:  encoding: [0x62,0x61,0x25,0x00,0xe9,0x52,0x7f]
          vpsubsw 2032(%rdx), %xmm27, %xmm26

// CHECK: vpsubsw 2048(%rdx), %xmm27, %xmm26
// CHECK:  encoding: [0x62,0x61,0x25,0x00,0xe9,0x92,0x00,0x08,0x00,0x00]
          vpsubsw 2048(%rdx), %xmm27, %xmm26

// CHECK: vpsubsw -2048(%rdx), %xmm27, %xmm26
// CHECK:  encoding: [0x62,0x61,0x25,0x00,0xe9,0x52,0x80]
          vpsubsw -2048(%rdx), %xmm27, %xmm26

// CHECK: vpsubsw -2064(%rdx), %xmm27, %xmm26
// CHECK:  encoding: [0x62,0x61,0x25,0x00,0xe9,0x92,0xf0,0xf7,0xff,0xff]
          vpsubsw -2064(%rdx), %xmm27, %xmm26

// CHECK: vpsubsw %ymm21, %ymm25, %ymm22
// CHECK:  encoding: [0x62,0xa1,0x35,0x20,0xe9,0xf5]
          vpsubsw %ymm21, %ymm25, %ymm22

// CHECK: vpsubsw %ymm21, %ymm25, %ymm22 {%k3}
// CHECK:  encoding: [0x62,0xa1,0x35,0x23,0xe9,0xf5]
          vpsubsw %ymm21, %ymm25, %ymm22 {%k3}

// CHECK: vpsubsw %ymm21, %ymm25, %ymm22 {%k3} {z}
// CHECK:  encoding: [0x62,0xa1,0x35,0xa3,0xe9,0xf5]
          vpsubsw %ymm21, %ymm25, %ymm22 {%k3} {z}

// CHECK: vpsubsw (%rcx), %ymm25, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x35,0x20,0xe9,0x31]
          vpsubsw (%rcx), %ymm25, %ymm22

// CHECK: vpsubsw 4660(%rax,%r14,8), %ymm25, %ymm22
// CHECK:  encoding: [0x62,0xa1,0x35,0x20,0xe9,0xb4,0xf0,0x34,0x12,0x00,0x00]
          vpsubsw 4660(%rax,%r14,8), %ymm25, %ymm22

// CHECK: vpsubsw 4064(%rdx), %ymm25, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x35,0x20,0xe9,0x72,0x7f]
          vpsubsw 4064(%rdx), %ymm25, %ymm22

// CHECK: vpsubsw 4096(%rdx), %ymm25, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x35,0x20,0xe9,0xb2,0x00,0x10,0x00,0x00]
          vpsubsw 4096(%rdx), %ymm25, %ymm22

// CHECK: vpsubsw -4096(%rdx), %ymm25, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x35,0x20,0xe9,0x72,0x80]
          vpsubsw -4096(%rdx), %ymm25, %ymm22

// CHECK: vpsubsw -4128(%rdx), %ymm25, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x35,0x20,0xe9,0xb2,0xe0,0xef,0xff,0xff]
          vpsubsw -4128(%rdx), %ymm25, %ymm22

// CHECK: vpsubusb %xmm26, %xmm27, %xmm18
// CHECK:  encoding: [0x62,0x81,0x25,0x00,0xd8,0xd2]
          vpsubusb %xmm26, %xmm27, %xmm18

// CHECK: vpsubusb %xmm26, %xmm27, %xmm18 {%k2}
// CHECK:  encoding: [0x62,0x81,0x25,0x02,0xd8,0xd2]
          vpsubusb %xmm26, %xmm27, %xmm18 {%k2}

// CHECK: vpsubusb %xmm26, %xmm27, %xmm18 {%k2} {z}
// CHECK:  encoding: [0x62,0x81,0x25,0x82,0xd8,0xd2]
          vpsubusb %xmm26, %xmm27, %xmm18 {%k2} {z}

// CHECK: vpsubusb (%rcx), %xmm27, %xmm18
// CHECK:  encoding: [0x62,0xe1,0x25,0x00,0xd8,0x11]
          vpsubusb (%rcx), %xmm27, %xmm18

// CHECK: vpsubusb 4660(%rax,%r14,8), %xmm27, %xmm18
// CHECK:  encoding: [0x62,0xa1,0x25,0x00,0xd8,0x94,0xf0,0x34,0x12,0x00,0x00]
          vpsubusb 4660(%rax,%r14,8), %xmm27, %xmm18

// CHECK: vpsubusb 2032(%rdx), %xmm27, %xmm18
// CHECK:  encoding: [0x62,0xe1,0x25,0x00,0xd8,0x52,0x7f]
          vpsubusb 2032(%rdx), %xmm27, %xmm18

// CHECK: vpsubusb 2048(%rdx), %xmm27, %xmm18
// CHECK:  encoding: [0x62,0xe1,0x25,0x00,0xd8,0x92,0x00,0x08,0x00,0x00]
          vpsubusb 2048(%rdx), %xmm27, %xmm18

// CHECK: vpsubusb -2048(%rdx), %xmm27, %xmm18
// CHECK:  encoding: [0x62,0xe1,0x25,0x00,0xd8,0x52,0x80]
          vpsubusb -2048(%rdx), %xmm27, %xmm18

// CHECK: vpsubusb -2064(%rdx), %xmm27, %xmm18
// CHECK:  encoding: [0x62,0xe1,0x25,0x00,0xd8,0x92,0xf0,0xf7,0xff,0xff]
          vpsubusb -2064(%rdx), %xmm27, %xmm18

// CHECK: vpsubusb %ymm19, %ymm19, %ymm25
// CHECK:  encoding: [0x62,0x21,0x65,0x20,0xd8,0xcb]
          vpsubusb %ymm19, %ymm19, %ymm25

// CHECK: vpsubusb %ymm19, %ymm19, %ymm25 {%k6}
// CHECK:  encoding: [0x62,0x21,0x65,0x26,0xd8,0xcb]
          vpsubusb %ymm19, %ymm19, %ymm25 {%k6}

// CHECK: vpsubusb %ymm19, %ymm19, %ymm25 {%k6} {z}
// CHECK:  encoding: [0x62,0x21,0x65,0xa6,0xd8,0xcb]
          vpsubusb %ymm19, %ymm19, %ymm25 {%k6} {z}

// CHECK: vpsubusb (%rcx), %ymm19, %ymm25
// CHECK:  encoding: [0x62,0x61,0x65,0x20,0xd8,0x09]
          vpsubusb (%rcx), %ymm19, %ymm25

// CHECK: vpsubusb 4660(%rax,%r14,8), %ymm19, %ymm25
// CHECK:  encoding: [0x62,0x21,0x65,0x20,0xd8,0x8c,0xf0,0x34,0x12,0x00,0x00]
          vpsubusb 4660(%rax,%r14,8), %ymm19, %ymm25

// CHECK: vpsubusb 4064(%rdx), %ymm19, %ymm25
// CHECK:  encoding: [0x62,0x61,0x65,0x20,0xd8,0x4a,0x7f]
          vpsubusb 4064(%rdx), %ymm19, %ymm25

// CHECK: vpsubusb 4096(%rdx), %ymm19, %ymm25
// CHECK:  encoding: [0x62,0x61,0x65,0x20,0xd8,0x8a,0x00,0x10,0x00,0x00]
          vpsubusb 4096(%rdx), %ymm19, %ymm25

// CHECK: vpsubusb -4096(%rdx), %ymm19, %ymm25
// CHECK:  encoding: [0x62,0x61,0x65,0x20,0xd8,0x4a,0x80]
          vpsubusb -4096(%rdx), %ymm19, %ymm25

// CHECK: vpsubusb -4128(%rdx), %ymm19, %ymm25
// CHECK:  encoding: [0x62,0x61,0x65,0x20,0xd8,0x8a,0xe0,0xef,0xff,0xff]
          vpsubusb -4128(%rdx), %ymm19, %ymm25

// CHECK: vpsubusw %xmm25, %xmm27, %xmm21
// CHECK:  encoding: [0x62,0x81,0x25,0x00,0xd9,0xe9]
          vpsubusw %xmm25, %xmm27, %xmm21

// CHECK: vpsubusw %xmm25, %xmm27, %xmm21 {%k5}
// CHECK:  encoding: [0x62,0x81,0x25,0x05,0xd9,0xe9]
          vpsubusw %xmm25, %xmm27, %xmm21 {%k5}

// CHECK: vpsubusw %xmm25, %xmm27, %xmm21 {%k5} {z}
// CHECK:  encoding: [0x62,0x81,0x25,0x85,0xd9,0xe9]
          vpsubusw %xmm25, %xmm27, %xmm21 {%k5} {z}

// CHECK: vpsubusw (%rcx), %xmm27, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x25,0x00,0xd9,0x29]
          vpsubusw (%rcx), %xmm27, %xmm21

// CHECK: vpsubusw 4660(%rax,%r14,8), %xmm27, %xmm21
// CHECK:  encoding: [0x62,0xa1,0x25,0x00,0xd9,0xac,0xf0,0x34,0x12,0x00,0x00]
          vpsubusw 4660(%rax,%r14,8), %xmm27, %xmm21

// CHECK: vpsubusw 2032(%rdx), %xmm27, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x25,0x00,0xd9,0x6a,0x7f]
          vpsubusw 2032(%rdx), %xmm27, %xmm21

// CHECK: vpsubusw 2048(%rdx), %xmm27, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x25,0x00,0xd9,0xaa,0x00,0x08,0x00,0x00]
          vpsubusw 2048(%rdx), %xmm27, %xmm21

// CHECK: vpsubusw -2048(%rdx), %xmm27, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x25,0x00,0xd9,0x6a,0x80]
          vpsubusw -2048(%rdx), %xmm27, %xmm21

// CHECK: vpsubusw -2064(%rdx), %xmm27, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x25,0x00,0xd9,0xaa,0xf0,0xf7,0xff,0xff]
          vpsubusw -2064(%rdx), %xmm27, %xmm21

// CHECK: vpsubusw %ymm17, %ymm25, %ymm27
// CHECK:  encoding: [0x62,0x21,0x35,0x20,0xd9,0xd9]
          vpsubusw %ymm17, %ymm25, %ymm27

// CHECK: vpsubusw %ymm17, %ymm25, %ymm27 {%k4}
// CHECK:  encoding: [0x62,0x21,0x35,0x24,0xd9,0xd9]
          vpsubusw %ymm17, %ymm25, %ymm27 {%k4}

// CHECK: vpsubusw %ymm17, %ymm25, %ymm27 {%k4} {z}
// CHECK:  encoding: [0x62,0x21,0x35,0xa4,0xd9,0xd9]
          vpsubusw %ymm17, %ymm25, %ymm27 {%k4} {z}

// CHECK: vpsubusw (%rcx), %ymm25, %ymm27
// CHECK:  encoding: [0x62,0x61,0x35,0x20,0xd9,0x19]
          vpsubusw (%rcx), %ymm25, %ymm27

// CHECK: vpsubusw 4660(%rax,%r14,8), %ymm25, %ymm27
// CHECK:  encoding: [0x62,0x21,0x35,0x20,0xd9,0x9c,0xf0,0x34,0x12,0x00,0x00]
          vpsubusw 4660(%rax,%r14,8), %ymm25, %ymm27

// CHECK: vpsubusw 4064(%rdx), %ymm25, %ymm27
// CHECK:  encoding: [0x62,0x61,0x35,0x20,0xd9,0x5a,0x7f]
          vpsubusw 4064(%rdx), %ymm25, %ymm27

// CHECK: vpsubusw 4096(%rdx), %ymm25, %ymm27
// CHECK:  encoding: [0x62,0x61,0x35,0x20,0xd9,0x9a,0x00,0x10,0x00,0x00]
          vpsubusw 4096(%rdx), %ymm25, %ymm27

// CHECK: vpsubusw -4096(%rdx), %ymm25, %ymm27
// CHECK:  encoding: [0x62,0x61,0x35,0x20,0xd9,0x5a,0x80]
          vpsubusw -4096(%rdx), %ymm25, %ymm27

// CHECK: vpsubusw -4128(%rdx), %ymm25, %ymm27
// CHECK:  encoding: [0x62,0x61,0x35,0x20,0xd9,0x9a,0xe0,0xef,0xff,0xff]
          vpsubusw -4128(%rdx), %ymm25, %ymm27

// CHECK: vpshufhw $171, %xmm27, %xmm28
// CHECK:  encoding: [0x62,0x01,0x7e,0x08,0x70,0xe3,0xab]
          vpshufhw $171, %xmm27, %xmm28

// CHECK: vpshufhw $171, %xmm27, %xmm28 {%k6}
// CHECK:  encoding: [0x62,0x01,0x7e,0x0e,0x70,0xe3,0xab]
          vpshufhw $171, %xmm27, %xmm28 {%k6}

// CHECK: vpshufhw $171, %xmm27, %xmm28 {%k6} {z}
// CHECK:  encoding: [0x62,0x01,0x7e,0x8e,0x70,0xe3,0xab]
          vpshufhw $171, %xmm27, %xmm28 {%k6} {z}

// CHECK: vpshufhw $123, %xmm27, %xmm28
// CHECK:  encoding: [0x62,0x01,0x7e,0x08,0x70,0xe3,0x7b]
          vpshufhw $123, %xmm27, %xmm28

// CHECK: vpshufhw $123, (%rcx), %xmm28
// CHECK:  encoding: [0x62,0x61,0x7e,0x08,0x70,0x21,0x7b]
          vpshufhw $123, (%rcx), %xmm28

// CHECK: vpshufhw $123, 291(%rax,%r14,8), %xmm28
// CHECK:  encoding: [0x62,0x21,0x7e,0x08,0x70,0xa4,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpshufhw $123, 291(%rax,%r14,8), %xmm28

// CHECK: vpshufhw $123, 2032(%rdx), %xmm28
// CHECK:  encoding: [0x62,0x61,0x7e,0x08,0x70,0x62,0x7f,0x7b]
          vpshufhw $123, 2032(%rdx), %xmm28

// CHECK: vpshufhw $123, 2048(%rdx), %xmm28
// CHECK:  encoding: [0x62,0x61,0x7e,0x08,0x70,0xa2,0x00,0x08,0x00,0x00,0x7b]
          vpshufhw $123, 2048(%rdx), %xmm28

// CHECK: vpshufhw $123, -2048(%rdx), %xmm28
// CHECK:  encoding: [0x62,0x61,0x7e,0x08,0x70,0x62,0x80,0x7b]
          vpshufhw $123, -2048(%rdx), %xmm28

// CHECK: vpshufhw $123, -2064(%rdx), %xmm28
// CHECK:  encoding: [0x62,0x61,0x7e,0x08,0x70,0xa2,0xf0,0xf7,0xff,0xff,0x7b]
          vpshufhw $123, -2064(%rdx), %xmm28

// CHECK: vpshufhw $171, %ymm22, %ymm19
// CHECK:  encoding: [0x62,0xa1,0x7e,0x28,0x70,0xde,0xab]
          vpshufhw $171, %ymm22, %ymm19

// CHECK: vpshufhw $171, %ymm22, %ymm19 {%k1}
// CHECK:  encoding: [0x62,0xa1,0x7e,0x29,0x70,0xde,0xab]
          vpshufhw $171, %ymm22, %ymm19 {%k1}

// CHECK: vpshufhw $171, %ymm22, %ymm19 {%k1} {z}
// CHECK:  encoding: [0x62,0xa1,0x7e,0xa9,0x70,0xde,0xab]
          vpshufhw $171, %ymm22, %ymm19 {%k1} {z}

// CHECK: vpshufhw $123, %ymm22, %ymm19
// CHECK:  encoding: [0x62,0xa1,0x7e,0x28,0x70,0xde,0x7b]
          vpshufhw $123, %ymm22, %ymm19

// CHECK: vpshufhw $123, (%rcx), %ymm19
// CHECK:  encoding: [0x62,0xe1,0x7e,0x28,0x70,0x19,0x7b]
          vpshufhw $123, (%rcx), %ymm19

// CHECK: vpshufhw $123, 291(%rax,%r14,8), %ymm19
// CHECK:  encoding: [0x62,0xa1,0x7e,0x28,0x70,0x9c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpshufhw $123, 291(%rax,%r14,8), %ymm19

// CHECK: vpshufhw $123, 4064(%rdx), %ymm19
// CHECK:  encoding: [0x62,0xe1,0x7e,0x28,0x70,0x5a,0x7f,0x7b]
          vpshufhw $123, 4064(%rdx), %ymm19

// CHECK: vpshufhw $123, 4096(%rdx), %ymm19
// CHECK:  encoding: [0x62,0xe1,0x7e,0x28,0x70,0x9a,0x00,0x10,0x00,0x00,0x7b]
          vpshufhw $123, 4096(%rdx), %ymm19

// CHECK: vpshufhw $123, -4096(%rdx), %ymm19
// CHECK:  encoding: [0x62,0xe1,0x7e,0x28,0x70,0x5a,0x80,0x7b]
          vpshufhw $123, -4096(%rdx), %ymm19

// CHECK: vpshufhw $123, -4128(%rdx), %ymm19
// CHECK:  encoding: [0x62,0xe1,0x7e,0x28,0x70,0x9a,0xe0,0xef,0xff,0xff,0x7b]
          vpshufhw $123, -4128(%rdx), %ymm19

// CHECK: vpshufhw $171, %xmm22, %xmm22
// CHECK:  encoding: [0x62,0xa1,0x7e,0x08,0x70,0xf6,0xab]
          vpshufhw $0xab, %xmm22, %xmm22

// CHECK: vpshufhw $171, %xmm22, %xmm22 {%k7}
// CHECK:  encoding: [0x62,0xa1,0x7e,0x0f,0x70,0xf6,0xab]
          vpshufhw $0xab, %xmm22, %xmm22 {%k7}

// CHECK: vpshufhw $171, %xmm22, %xmm22 {%k7} {z}
// CHECK:  encoding: [0x62,0xa1,0x7e,0x8f,0x70,0xf6,0xab]
          vpshufhw $0xab, %xmm22, %xmm22 {%k7} {z}

// CHECK: vpshufhw $123, %xmm22, %xmm22
// CHECK:  encoding: [0x62,0xa1,0x7e,0x08,0x70,0xf6,0x7b]
          vpshufhw $0x7b, %xmm22, %xmm22

// CHECK: vpshufhw $123, (%rcx), %xmm22
// CHECK:  encoding: [0x62,0xe1,0x7e,0x08,0x70,0x31,0x7b]
          vpshufhw $0x7b,(%rcx), %xmm22

// CHECK: vpshufhw $123, 4660(%rax,%r14,8), %xmm22
// CHECK:  encoding: [0x62,0xa1,0x7e,0x08,0x70,0xb4,0xf0,0x34,0x12,0x00,0x00,0x7b]
          vpshufhw $0x7b,4660(%rax,%r14,8), %xmm22

// CHECK: vpshufhw $123, 2032(%rdx), %xmm22
// CHECK:  encoding: [0x62,0xe1,0x7e,0x08,0x70,0x72,0x7f,0x7b]
          vpshufhw $0x7b,2032(%rdx), %xmm22

// CHECK: vpshufhw $123, 2048(%rdx), %xmm22
// CHECK:  encoding: [0x62,0xe1,0x7e,0x08,0x70,0xb2,0x00,0x08,0x00,0x00,0x7b]
          vpshufhw $0x7b,2048(%rdx), %xmm22

// CHECK: vpshufhw $123, -2048(%rdx), %xmm22
// CHECK:  encoding: [0x62,0xe1,0x7e,0x08,0x70,0x72,0x80,0x7b]
          vpshufhw $0x7b,-2048(%rdx), %xmm22

// CHECK: vpshufhw $123, -2064(%rdx), %xmm22
// CHECK:  encoding: [0x62,0xe1,0x7e,0x08,0x70,0xb2,0xf0,0xf7,0xff,0xff,0x7b]
          vpshufhw $0x7b,-2064(%rdx), %xmm22

// CHECK: vpshufhw $171, %ymm24, %ymm27
// CHECK:  encoding: [0x62,0x01,0x7e,0x28,0x70,0xd8,0xab]
          vpshufhw $0xab, %ymm24, %ymm27

// CHECK: vpshufhw $171, %ymm24, %ymm27 {%k1}
// CHECK:  encoding: [0x62,0x01,0x7e,0x29,0x70,0xd8,0xab]
          vpshufhw $0xab, %ymm24, %ymm27 {%k1}

// CHECK: vpshufhw $171, %ymm24, %ymm27 {%k1} {z}
// CHECK:  encoding: [0x62,0x01,0x7e,0xa9,0x70,0xd8,0xab]
          vpshufhw $0xab, %ymm24, %ymm27 {%k1} {z}

// CHECK: vpshufhw $123, %ymm24, %ymm27
// CHECK:  encoding: [0x62,0x01,0x7e,0x28,0x70,0xd8,0x7b]
          vpshufhw $0x7b, %ymm24, %ymm27

// CHECK: vpshufhw $123, (%rcx), %ymm27
// CHECK:  encoding: [0x62,0x61,0x7e,0x28,0x70,0x19,0x7b]
          vpshufhw $0x7b,(%rcx), %ymm27

// CHECK: vpshufhw $123, 4660(%rax,%r14,8), %ymm27
// CHECK:  encoding: [0x62,0x21,0x7e,0x28,0x70,0x9c,0xf0,0x34,0x12,0x00,0x00,0x7b]
          vpshufhw $0x7b,4660(%rax,%r14,8), %ymm27

// CHECK: vpshufhw $123, 4064(%rdx), %ymm27
// CHECK:  encoding: [0x62,0x61,0x7e,0x28,0x70,0x5a,0x7f,0x7b]
          vpshufhw $0x7b,4064(%rdx), %ymm27

// CHECK: vpshufhw $123, 4096(%rdx), %ymm27
// CHECK:  encoding: [0x62,0x61,0x7e,0x28,0x70,0x9a,0x00,0x10,0x00,0x00,0x7b]
          vpshufhw $0x7b,4096(%rdx), %ymm27

// CHECK: vpshufhw $123, -4096(%rdx), %ymm27
// CHECK:  encoding: [0x62,0x61,0x7e,0x28,0x70,0x5a,0x80,0x7b]
          vpshufhw $0x7b,-4096(%rdx), %ymm27

// CHECK: vpshufhw $123, -4128(%rdx), %ymm27
// CHECK:  encoding: [0x62,0x61,0x7e,0x28,0x70,0x9a,0xe0,0xef,0xff,0xff,0x7b]
          vpshufhw $0x7b,-4128(%rdx), %ymm27

// CHECK: vpshuflw $171, %xmm23, %xmm22
// CHECK:  encoding: [0x62,0xa1,0x7f,0x08,0x70,0xf7,0xab]
          vpshuflw $171, %xmm23, %xmm22

// CHECK: vpshuflw $171, %xmm23, %xmm22 {%k5}
// CHECK:  encoding: [0x62,0xa1,0x7f,0x0d,0x70,0xf7,0xab]
          vpshuflw $171, %xmm23, %xmm22 {%k5}

// CHECK: vpshuflw $171, %xmm23, %xmm22 {%k5} {z}
// CHECK:  encoding: [0x62,0xa1,0x7f,0x8d,0x70,0xf7,0xab]
          vpshuflw $171, %xmm23, %xmm22 {%k5} {z}

// CHECK: vpshuflw $123, %xmm23, %xmm22
// CHECK:  encoding: [0x62,0xa1,0x7f,0x08,0x70,0xf7,0x7b]
          vpshuflw $123, %xmm23, %xmm22

// CHECK: vpshuflw $123, (%rcx), %xmm22
// CHECK:  encoding: [0x62,0xe1,0x7f,0x08,0x70,0x31,0x7b]
          vpshuflw $123, (%rcx), %xmm22

// CHECK: vpshuflw $123, 291(%rax,%r14,8), %xmm22
// CHECK:  encoding: [0x62,0xa1,0x7f,0x08,0x70,0xb4,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpshuflw $123, 291(%rax,%r14,8), %xmm22

// CHECK: vpshuflw $123, 2032(%rdx), %xmm22
// CHECK:  encoding: [0x62,0xe1,0x7f,0x08,0x70,0x72,0x7f,0x7b]
          vpshuflw $123, 2032(%rdx), %xmm22

// CHECK: vpshuflw $123, 2048(%rdx), %xmm22
// CHECK:  encoding: [0x62,0xe1,0x7f,0x08,0x70,0xb2,0x00,0x08,0x00,0x00,0x7b]
          vpshuflw $123, 2048(%rdx), %xmm22

// CHECK: vpshuflw $123, -2048(%rdx), %xmm22
// CHECK:  encoding: [0x62,0xe1,0x7f,0x08,0x70,0x72,0x80,0x7b]
          vpshuflw $123, -2048(%rdx), %xmm22

// CHECK: vpshuflw $123, -2064(%rdx), %xmm22
// CHECK:  encoding: [0x62,0xe1,0x7f,0x08,0x70,0xb2,0xf0,0xf7,0xff,0xff,0x7b]
          vpshuflw $123, -2064(%rdx), %xmm22

// CHECK: vpshuflw $171, %ymm26, %ymm24
// CHECK:  encoding: [0x62,0x01,0x7f,0x28,0x70,0xc2,0xab]
          vpshuflw $171, %ymm26, %ymm24

// CHECK: vpshuflw $171, %ymm26, %ymm24 {%k2}
// CHECK:  encoding: [0x62,0x01,0x7f,0x2a,0x70,0xc2,0xab]
          vpshuflw $171, %ymm26, %ymm24 {%k2}

// CHECK: vpshuflw $171, %ymm26, %ymm24 {%k2} {z}
// CHECK:  encoding: [0x62,0x01,0x7f,0xaa,0x70,0xc2,0xab]
          vpshuflw $171, %ymm26, %ymm24 {%k2} {z}

// CHECK: vpshuflw $123, %ymm26, %ymm24
// CHECK:  encoding: [0x62,0x01,0x7f,0x28,0x70,0xc2,0x7b]
          vpshuflw $123, %ymm26, %ymm24

// CHECK: vpshuflw $123, (%rcx), %ymm24
// CHECK:  encoding: [0x62,0x61,0x7f,0x28,0x70,0x01,0x7b]
          vpshuflw $123, (%rcx), %ymm24

// CHECK: vpshuflw $123, 291(%rax,%r14,8), %ymm24
// CHECK:  encoding: [0x62,0x21,0x7f,0x28,0x70,0x84,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpshuflw $123, 291(%rax,%r14,8), %ymm24

// CHECK: vpshuflw $123, 4064(%rdx), %ymm24
// CHECK:  encoding: [0x62,0x61,0x7f,0x28,0x70,0x42,0x7f,0x7b]
          vpshuflw $123, 4064(%rdx), %ymm24

// CHECK: vpshuflw $123, 4096(%rdx), %ymm24
// CHECK:  encoding: [0x62,0x61,0x7f,0x28,0x70,0x82,0x00,0x10,0x00,0x00,0x7b]
          vpshuflw $123, 4096(%rdx), %ymm24

// CHECK: vpshuflw $123, -4096(%rdx), %ymm24
// CHECK:  encoding: [0x62,0x61,0x7f,0x28,0x70,0x42,0x80,0x7b]
          vpshuflw $123, -4096(%rdx), %ymm24

// CHECK: vpshuflw $123, -4128(%rdx), %ymm24
// CHECK:  encoding: [0x62,0x61,0x7f,0x28,0x70,0x82,0xe0,0xef,0xff,0xff,0x7b]
          vpshuflw $123, -4128(%rdx), %ymm24

// CHECK: vpshuflw $171, %xmm28, %xmm21
// CHECK:  encoding: [0x62,0x81,0x7f,0x08,0x70,0xec,0xab]
          vpshuflw $0xab, %xmm28, %xmm21

// CHECK: vpshuflw $171, %xmm28, %xmm21 {%k6}
// CHECK:  encoding: [0x62,0x81,0x7f,0x0e,0x70,0xec,0xab]
          vpshuflw $0xab, %xmm28, %xmm21 {%k6}

// CHECK: vpshuflw $171, %xmm28, %xmm21 {%k6} {z}
// CHECK:  encoding: [0x62,0x81,0x7f,0x8e,0x70,0xec,0xab]
          vpshuflw $0xab, %xmm28, %xmm21 {%k6} {z}

// CHECK: vpshuflw $123, %xmm28, %xmm21
// CHECK:  encoding: [0x62,0x81,0x7f,0x08,0x70,0xec,0x7b]
          vpshuflw $0x7b, %xmm28, %xmm21

// CHECK: vpshuflw $123, (%rcx), %xmm21
// CHECK:  encoding: [0x62,0xe1,0x7f,0x08,0x70,0x29,0x7b]
          vpshuflw $0x7b,(%rcx), %xmm21

// CHECK: vpshuflw $123, 4660(%rax,%r14,8), %xmm21
// CHECK:  encoding: [0x62,0xa1,0x7f,0x08,0x70,0xac,0xf0,0x34,0x12,0x00,0x00,0x7b]
          vpshuflw $0x7b,4660(%rax,%r14,8), %xmm21

// CHECK: vpshuflw $123, 2032(%rdx), %xmm21
// CHECK:  encoding: [0x62,0xe1,0x7f,0x08,0x70,0x6a,0x7f,0x7b]
          vpshuflw $0x7b,2032(%rdx), %xmm21

// CHECK: vpshuflw $123, 2048(%rdx), %xmm21
// CHECK:  encoding: [0x62,0xe1,0x7f,0x08,0x70,0xaa,0x00,0x08,0x00,0x00,0x7b]
          vpshuflw $0x7b,2048(%rdx), %xmm21

// CHECK: vpshuflw $123, -2048(%rdx), %xmm21
// CHECK:  encoding: [0x62,0xe1,0x7f,0x08,0x70,0x6a,0x80,0x7b]
          vpshuflw $0x7b,-2048(%rdx), %xmm21

// CHECK: vpshuflw $123, -2064(%rdx), %xmm21
// CHECK:  encoding: [0x62,0xe1,0x7f,0x08,0x70,0xaa,0xf0,0xf7,0xff,0xff,0x7b]
          vpshuflw $0x7b,-2064(%rdx), %xmm21

// CHECK: vpshuflw $171, %ymm29, %ymm20
// CHECK:  encoding: [0x62,0x81,0x7f,0x28,0x70,0xe5,0xab]
          vpshuflw $0xab, %ymm29, %ymm20

// CHECK: vpshuflw $171, %ymm29, %ymm20 {%k3}
// CHECK:  encoding: [0x62,0x81,0x7f,0x2b,0x70,0xe5,0xab]
          vpshuflw $0xab, %ymm29, %ymm20 {%k3}

// CHECK: vpshuflw $171, %ymm29, %ymm20 {%k3} {z}
// CHECK:  encoding: [0x62,0x81,0x7f,0xab,0x70,0xe5,0xab]
          vpshuflw $0xab, %ymm29, %ymm20 {%k3} {z}

// CHECK: vpshuflw $123, %ymm29, %ymm20
// CHECK:  encoding: [0x62,0x81,0x7f,0x28,0x70,0xe5,0x7b]
          vpshuflw $0x7b, %ymm29, %ymm20

// CHECK: vpshuflw $123, (%rcx), %ymm20
// CHECK:  encoding: [0x62,0xe1,0x7f,0x28,0x70,0x21,0x7b]
          vpshuflw $0x7b,(%rcx), %ymm20

// CHECK: vpshuflw $123, 4660(%rax,%r14,8), %ymm20
// CHECK:  encoding: [0x62,0xa1,0x7f,0x28,0x70,0xa4,0xf0,0x34,0x12,0x00,0x00,0x7b]
          vpshuflw $0x7b,4660(%rax,%r14,8), %ymm20

// CHECK: vpshuflw $123, 4064(%rdx), %ymm20
// CHECK:  encoding: [0x62,0xe1,0x7f,0x28,0x70,0x62,0x7f,0x7b]
          vpshuflw $0x7b,4064(%rdx), %ymm20

// CHECK: vpshuflw $123, 4096(%rdx), %ymm20
// CHECK:  encoding: [0x62,0xe1,0x7f,0x28,0x70,0xa2,0x00,0x10,0x00,0x00,0x7b]
          vpshuflw $0x7b,4096(%rdx), %ymm20

// CHECK: vpshuflw $123, -4096(%rdx), %ymm20
// CHECK:  encoding: [0x62,0xe1,0x7f,0x28,0x70,0x62,0x80,0x7b]
          vpshuflw $0x7b,-4096(%rdx), %ymm20

// CHECK: vpshuflw $123, -4128(%rdx), %ymm20
// CHECK:  encoding: [0x62,0xe1,0x7f,0x28,0x70,0xa2,0xe0,0xef,0xff,0xff,0x7b]
          vpshuflw $0x7b,-4128(%rdx), %ymm20

// CHECK: vpermi2w %xmm21, %xmm29, %xmm19
// CHECK:  encoding: [0x62,0xa2,0x95,0x00,0x75,0xdd]
          vpermi2w %xmm21, %xmm29, %xmm19

// CHECK: vpermi2w %xmm21, %xmm29, %xmm19 {%k2}
// CHECK:  encoding: [0x62,0xa2,0x95,0x02,0x75,0xdd]
          vpermi2w %xmm21, %xmm29, %xmm19 {%k2}

// CHECK: vpermi2w %xmm21, %xmm29, %xmm19 {%k2} {z}
// CHECK:  encoding: [0x62,0xa2,0x95,0x82,0x75,0xdd]
          vpermi2w %xmm21, %xmm29, %xmm19 {%k2} {z}

// CHECK: vpermi2w (%rcx), %xmm29, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x95,0x00,0x75,0x19]
          vpermi2w (%rcx), %xmm29, %xmm19

// CHECK: vpermi2w 291(%rax,%r14,8), %xmm29, %xmm19
// CHECK:  encoding: [0x62,0xa2,0x95,0x00,0x75,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpermi2w 291(%rax,%r14,8), %xmm29, %xmm19

// CHECK: vpermi2w 2032(%rdx), %xmm29, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x95,0x00,0x75,0x5a,0x7f]
          vpermi2w 2032(%rdx), %xmm29, %xmm19

// CHECK: vpermi2w 2048(%rdx), %xmm29, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x95,0x00,0x75,0x9a,0x00,0x08,0x00,0x00]
          vpermi2w 2048(%rdx), %xmm29, %xmm19

// CHECK: vpermi2w -2048(%rdx), %xmm29, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x95,0x00,0x75,0x5a,0x80]
          vpermi2w -2048(%rdx), %xmm29, %xmm19

// CHECK: vpermi2w -2064(%rdx), %xmm29, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x95,0x00,0x75,0x9a,0xf0,0xf7,0xff,0xff]
          vpermi2w -2064(%rdx), %xmm29, %xmm19

// CHECK: vpermi2w %ymm19, %ymm25, %ymm30
// CHECK:  encoding: [0x62,0x22,0xb5,0x20,0x75,0xf3]
          vpermi2w %ymm19, %ymm25, %ymm30

// CHECK: vpermi2w %ymm19, %ymm25, %ymm30 {%k3}
// CHECK:  encoding: [0x62,0x22,0xb5,0x23,0x75,0xf3]
          vpermi2w %ymm19, %ymm25, %ymm30 {%k3}

// CHECK: vpermi2w %ymm19, %ymm25, %ymm30 {%k3} {z}
// CHECK:  encoding: [0x62,0x22,0xb5,0xa3,0x75,0xf3]
          vpermi2w %ymm19, %ymm25, %ymm30 {%k3} {z}

// CHECK: vpermi2w (%rcx), %ymm25, %ymm30
// CHECK:  encoding: [0x62,0x62,0xb5,0x20,0x75,0x31]
          vpermi2w (%rcx), %ymm25, %ymm30

// CHECK: vpermi2w 291(%rax,%r14,8), %ymm25, %ymm30
// CHECK:  encoding: [0x62,0x22,0xb5,0x20,0x75,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpermi2w 291(%rax,%r14,8), %ymm25, %ymm30

// CHECK: vpermi2w 4064(%rdx), %ymm25, %ymm30
// CHECK:  encoding: [0x62,0x62,0xb5,0x20,0x75,0x72,0x7f]
          vpermi2w 4064(%rdx), %ymm25, %ymm30

// CHECK: vpermi2w 4096(%rdx), %ymm25, %ymm30
// CHECK:  encoding: [0x62,0x62,0xb5,0x20,0x75,0xb2,0x00,0x10,0x00,0x00]
          vpermi2w 4096(%rdx), %ymm25, %ymm30

// CHECK: vpermi2w -4096(%rdx), %ymm25, %ymm30
// CHECK:  encoding: [0x62,0x62,0xb5,0x20,0x75,0x72,0x80]
          vpermi2w -4096(%rdx), %ymm25, %ymm30

// CHECK: vpermi2w -4128(%rdx), %ymm25, %ymm30
// CHECK:  encoding: [0x62,0x62,0xb5,0x20,0x75,0xb2,0xe0,0xef,0xff,0xff]
          vpermi2w -4128(%rdx), %ymm25, %ymm30

// CHECK: vpermt2w %xmm25, %xmm22, %xmm18
// CHECK:  encoding: [0x62,0x82,0xcd,0x00,0x7d,0xd1]
          vpermt2w %xmm25, %xmm22, %xmm18

// CHECK: vpermt2w %xmm25, %xmm22, %xmm18 {%k6}
// CHECK:  encoding: [0x62,0x82,0xcd,0x06,0x7d,0xd1]
          vpermt2w %xmm25, %xmm22, %xmm18 {%k6}

// CHECK: vpermt2w %xmm25, %xmm22, %xmm18 {%k6} {z}
// CHECK:  encoding: [0x62,0x82,0xcd,0x86,0x7d,0xd1]
          vpermt2w %xmm25, %xmm22, %xmm18 {%k6} {z}

// CHECK: vpermt2w (%rcx), %xmm22, %xmm18
// CHECK:  encoding: [0x62,0xe2,0xcd,0x00,0x7d,0x11]
          vpermt2w (%rcx), %xmm22, %xmm18

// CHECK: vpermt2w 291(%rax,%r14,8), %xmm22, %xmm18
// CHECK:  encoding: [0x62,0xa2,0xcd,0x00,0x7d,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpermt2w 291(%rax,%r14,8), %xmm22, %xmm18

// CHECK: vpermt2w 2032(%rdx), %xmm22, %xmm18
// CHECK:  encoding: [0x62,0xe2,0xcd,0x00,0x7d,0x52,0x7f]
          vpermt2w 2032(%rdx), %xmm22, %xmm18

// CHECK: vpermt2w 2048(%rdx), %xmm22, %xmm18
// CHECK:  encoding: [0x62,0xe2,0xcd,0x00,0x7d,0x92,0x00,0x08,0x00,0x00]
          vpermt2w 2048(%rdx), %xmm22, %xmm18

// CHECK: vpermt2w -2048(%rdx), %xmm22, %xmm18
// CHECK:  encoding: [0x62,0xe2,0xcd,0x00,0x7d,0x52,0x80]
          vpermt2w -2048(%rdx), %xmm22, %xmm18

// CHECK: vpermt2w -2064(%rdx), %xmm22, %xmm18
// CHECK:  encoding: [0x62,0xe2,0xcd,0x00,0x7d,0x92,0xf0,0xf7,0xff,0xff]
          vpermt2w -2064(%rdx), %xmm22, %xmm18

// CHECK: vpermt2w %ymm26, %ymm23, %ymm28
// CHECK:  encoding: [0x62,0x02,0xc5,0x20,0x7d,0xe2]
          vpermt2w %ymm26, %ymm23, %ymm28

// CHECK: vpermt2w %ymm26, %ymm23, %ymm28 {%k4}
// CHECK:  encoding: [0x62,0x02,0xc5,0x24,0x7d,0xe2]
          vpermt2w %ymm26, %ymm23, %ymm28 {%k4}

// CHECK: vpermt2w %ymm26, %ymm23, %ymm28 {%k4} {z}
// CHECK:  encoding: [0x62,0x02,0xc5,0xa4,0x7d,0xe2]
          vpermt2w %ymm26, %ymm23, %ymm28 {%k4} {z}

// CHECK: vpermt2w (%rcx), %ymm23, %ymm28
// CHECK:  encoding: [0x62,0x62,0xc5,0x20,0x7d,0x21]
          vpermt2w (%rcx), %ymm23, %ymm28

// CHECK: vpermt2w 291(%rax,%r14,8), %ymm23, %ymm28
// CHECK:  encoding: [0x62,0x22,0xc5,0x20,0x7d,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpermt2w 291(%rax,%r14,8), %ymm23, %ymm28

// CHECK: vpermt2w 4064(%rdx), %ymm23, %ymm28
// CHECK:  encoding: [0x62,0x62,0xc5,0x20,0x7d,0x62,0x7f]
          vpermt2w 4064(%rdx), %ymm23, %ymm28

// CHECK: vpermt2w 4096(%rdx), %ymm23, %ymm28
// CHECK:  encoding: [0x62,0x62,0xc5,0x20,0x7d,0xa2,0x00,0x10,0x00,0x00]
          vpermt2w 4096(%rdx), %ymm23, %ymm28

// CHECK: vpermt2w -4096(%rdx), %ymm23, %ymm28
// CHECK:  encoding: [0x62,0x62,0xc5,0x20,0x7d,0x62,0x80]
          vpermt2w -4096(%rdx), %ymm23, %ymm28

// CHECK: vpermt2w -4128(%rdx), %ymm23, %ymm28
// CHECK:  encoding: [0x62,0x62,0xc5,0x20,0x7d,0xa2,0xe0,0xef,0xff,0xff]
          vpermt2w -4128(%rdx), %ymm23, %ymm28
// CHECK: vpavgb %xmm22, %xmm24, %xmm21
// CHECK:  encoding: [0x62,0xa1,0x3d,0x00,0xe0,0xee]
          vpavgb %xmm22, %xmm24, %xmm21

// CHECK: vpavgb %xmm22, %xmm24, %xmm21 {%k7}
// CHECK:  encoding: [0x62,0xa1,0x3d,0x07,0xe0,0xee]
          vpavgb %xmm22, %xmm24, %xmm21 {%k7}

// CHECK: vpavgb %xmm22, %xmm24, %xmm21 {%k7} {z}
// CHECK:  encoding: [0x62,0xa1,0x3d,0x87,0xe0,0xee]
          vpavgb %xmm22, %xmm24, %xmm21 {%k7} {z}

// CHECK: vpavgb (%rcx), %xmm24, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x3d,0x00,0xe0,0x29]
          vpavgb (%rcx), %xmm24, %xmm21

// CHECK: vpavgb 4660(%rax,%r14,8), %xmm24, %xmm21
// CHECK:  encoding: [0x62,0xa1,0x3d,0x00,0xe0,0xac,0xf0,0x34,0x12,0x00,0x00]
          vpavgb 4660(%rax,%r14,8), %xmm24, %xmm21

// CHECK: vpavgb 2032(%rdx), %xmm24, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x3d,0x00,0xe0,0x6a,0x7f]
          vpavgb 2032(%rdx), %xmm24, %xmm21

// CHECK: vpavgb 2048(%rdx), %xmm24, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x3d,0x00,0xe0,0xaa,0x00,0x08,0x00,0x00]
          vpavgb 2048(%rdx), %xmm24, %xmm21

// CHECK: vpavgb -2048(%rdx), %xmm24, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x3d,0x00,0xe0,0x6a,0x80]
          vpavgb -2048(%rdx), %xmm24, %xmm21

// CHECK: vpavgb -2064(%rdx), %xmm24, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x3d,0x00,0xe0,0xaa,0xf0,0xf7,0xff,0xff]
          vpavgb -2064(%rdx), %xmm24, %xmm21

// CHECK: vpavgb %ymm18, %ymm18, %ymm26
// CHECK:  encoding: [0x62,0x21,0x6d,0x20,0xe0,0xd2]
          vpavgb %ymm18, %ymm18, %ymm26

// CHECK: vpavgb %ymm18, %ymm18, %ymm26 {%k4}
// CHECK:  encoding: [0x62,0x21,0x6d,0x24,0xe0,0xd2]
          vpavgb %ymm18, %ymm18, %ymm26 {%k4}

// CHECK: vpavgb %ymm18, %ymm18, %ymm26 {%k4} {z}
// CHECK:  encoding: [0x62,0x21,0x6d,0xa4,0xe0,0xd2]
          vpavgb %ymm18, %ymm18, %ymm26 {%k4} {z}

// CHECK: vpavgb (%rcx), %ymm18, %ymm26
// CHECK:  encoding: [0x62,0x61,0x6d,0x20,0xe0,0x11]
          vpavgb (%rcx), %ymm18, %ymm26

// CHECK: vpavgb 4660(%rax,%r14,8), %ymm18, %ymm26
// CHECK:  encoding: [0x62,0x21,0x6d,0x20,0xe0,0x94,0xf0,0x34,0x12,0x00,0x00]
          vpavgb 4660(%rax,%r14,8), %ymm18, %ymm26

// CHECK: vpavgb 4064(%rdx), %ymm18, %ymm26
// CHECK:  encoding: [0x62,0x61,0x6d,0x20,0xe0,0x52,0x7f]
          vpavgb 4064(%rdx), %ymm18, %ymm26

// CHECK: vpavgb 4096(%rdx), %ymm18, %ymm26
// CHECK:  encoding: [0x62,0x61,0x6d,0x20,0xe0,0x92,0x00,0x10,0x00,0x00]
          vpavgb 4096(%rdx), %ymm18, %ymm26

// CHECK: vpavgb -4096(%rdx), %ymm18, %ymm26
// CHECK:  encoding: [0x62,0x61,0x6d,0x20,0xe0,0x52,0x80]
          vpavgb -4096(%rdx), %ymm18, %ymm26

// CHECK: vpavgb -4128(%rdx), %ymm18, %ymm26
// CHECK:  encoding: [0x62,0x61,0x6d,0x20,0xe0,0x92,0xe0,0xef,0xff,0xff]
          vpavgb -4128(%rdx), %ymm18, %ymm26

// CHECK: vpavgw %xmm23, %xmm28, %xmm29
// CHECK:  encoding: [0x62,0x21,0x1d,0x00,0xe3,0xef]
          vpavgw %xmm23, %xmm28, %xmm29

// CHECK: vpavgw %xmm23, %xmm28, %xmm29 {%k7}
// CHECK:  encoding: [0x62,0x21,0x1d,0x07,0xe3,0xef]
          vpavgw %xmm23, %xmm28, %xmm29 {%k7}

// CHECK: vpavgw %xmm23, %xmm28, %xmm29 {%k7} {z}
// CHECK:  encoding: [0x62,0x21,0x1d,0x87,0xe3,0xef]
          vpavgw %xmm23, %xmm28, %xmm29 {%k7} {z}

// CHECK: vpavgw (%rcx), %xmm28, %xmm29
// CHECK:  encoding: [0x62,0x61,0x1d,0x00,0xe3,0x29]
          vpavgw (%rcx), %xmm28, %xmm29

// CHECK: vpavgw 4660(%rax,%r14,8), %xmm28, %xmm29
// CHECK:  encoding: [0x62,0x21,0x1d,0x00,0xe3,0xac,0xf0,0x34,0x12,0x00,0x00]
          vpavgw 4660(%rax,%r14,8), %xmm28, %xmm29

// CHECK: vpavgw 2032(%rdx), %xmm28, %xmm29
// CHECK:  encoding: [0x62,0x61,0x1d,0x00,0xe3,0x6a,0x7f]
          vpavgw 2032(%rdx), %xmm28, %xmm29

// CHECK: vpavgw 2048(%rdx), %xmm28, %xmm29
// CHECK:  encoding: [0x62,0x61,0x1d,0x00,0xe3,0xaa,0x00,0x08,0x00,0x00]
          vpavgw 2048(%rdx), %xmm28, %xmm29

// CHECK: vpavgw -2048(%rdx), %xmm28, %xmm29
// CHECK:  encoding: [0x62,0x61,0x1d,0x00,0xe3,0x6a,0x80]
          vpavgw -2048(%rdx), %xmm28, %xmm29

// CHECK: vpavgw -2064(%rdx), %xmm28, %xmm29
// CHECK:  encoding: [0x62,0x61,0x1d,0x00,0xe3,0xaa,0xf0,0xf7,0xff,0xff]
          vpavgw -2064(%rdx), %xmm28, %xmm29

// CHECK: vpavgw %ymm17, %ymm18, %ymm27
// CHECK:  encoding: [0x62,0x21,0x6d,0x20,0xe3,0xd9]
          vpavgw %ymm17, %ymm18, %ymm27

// CHECK: vpavgw %ymm17, %ymm18, %ymm27 {%k5}
// CHECK:  encoding: [0x62,0x21,0x6d,0x25,0xe3,0xd9]
          vpavgw %ymm17, %ymm18, %ymm27 {%k5}

// CHECK: vpavgw %ymm17, %ymm18, %ymm27 {%k5} {z}
// CHECK:  encoding: [0x62,0x21,0x6d,0xa5,0xe3,0xd9]
          vpavgw %ymm17, %ymm18, %ymm27 {%k5} {z}

// CHECK: vpavgw (%rcx), %ymm18, %ymm27
// CHECK:  encoding: [0x62,0x61,0x6d,0x20,0xe3,0x19]
          vpavgw (%rcx), %ymm18, %ymm27

// CHECK: vpavgw 4660(%rax,%r14,8), %ymm18, %ymm27
// CHECK:  encoding: [0x62,0x21,0x6d,0x20,0xe3,0x9c,0xf0,0x34,0x12,0x00,0x00]
          vpavgw 4660(%rax,%r14,8), %ymm18, %ymm27

// CHECK: vpavgw 4064(%rdx), %ymm18, %ymm27
// CHECK:  encoding: [0x62,0x61,0x6d,0x20,0xe3,0x5a,0x7f]
          vpavgw 4064(%rdx), %ymm18, %ymm27

// CHECK: vpavgw 4096(%rdx), %ymm18, %ymm27
// CHECK:  encoding: [0x62,0x61,0x6d,0x20,0xe3,0x9a,0x00,0x10,0x00,0x00]
          vpavgw 4096(%rdx), %ymm18, %ymm27

// CHECK: vpavgw -4096(%rdx), %ymm18, %ymm27
// CHECK:  encoding: [0x62,0x61,0x6d,0x20,0xe3,0x5a,0x80]
          vpavgw -4096(%rdx), %ymm18, %ymm27

// CHECK: vpavgw -4128(%rdx), %ymm18, %ymm27
// CHECK:  encoding: [0x62,0x61,0x6d,0x20,0xe3,0x9a,0xe0,0xef,0xff,0xff]
          vpavgw -4128(%rdx), %ymm18, %ymm27

// CHECK: vpavgb %xmm20, %xmm22, %xmm26
// CHECK:  encoding: [0x62,0x21,0x4d,0x00,0xe0,0xd4]
          vpavgb %xmm20, %xmm22, %xmm26

// CHECK: vpavgb %xmm20, %xmm22, %xmm26 {%k6}
// CHECK:  encoding: [0x62,0x21,0x4d,0x06,0xe0,0xd4]
          vpavgb %xmm20, %xmm22, %xmm26 {%k6}

// CHECK: vpavgb %xmm20, %xmm22, %xmm26 {%k6} {z}
// CHECK:  encoding: [0x62,0x21,0x4d,0x86,0xe0,0xd4]
          vpavgb %xmm20, %xmm22, %xmm26 {%k6} {z}

// CHECK: vpavgb (%rcx), %xmm22, %xmm26
// CHECK:  encoding: [0x62,0x61,0x4d,0x00,0xe0,0x11]
          vpavgb (%rcx), %xmm22, %xmm26

// CHECK: vpavgb 291(%rax,%r14,8), %xmm22, %xmm26
// CHECK:  encoding: [0x62,0x21,0x4d,0x00,0xe0,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpavgb 291(%rax,%r14,8), %xmm22, %xmm26

// CHECK: vpavgb 2032(%rdx), %xmm22, %xmm26
// CHECK:  encoding: [0x62,0x61,0x4d,0x00,0xe0,0x52,0x7f]
          vpavgb 2032(%rdx), %xmm22, %xmm26

// CHECK: vpavgb 2048(%rdx), %xmm22, %xmm26
// CHECK:  encoding: [0x62,0x61,0x4d,0x00,0xe0,0x92,0x00,0x08,0x00,0x00]
          vpavgb 2048(%rdx), %xmm22, %xmm26

// CHECK: vpavgb -2048(%rdx), %xmm22, %xmm26
// CHECK:  encoding: [0x62,0x61,0x4d,0x00,0xe0,0x52,0x80]
          vpavgb -2048(%rdx), %xmm22, %xmm26

// CHECK: vpavgb -2064(%rdx), %xmm22, %xmm26
// CHECK:  encoding: [0x62,0x61,0x4d,0x00,0xe0,0x92,0xf0,0xf7,0xff,0xff]
          vpavgb -2064(%rdx), %xmm22, %xmm26

// CHECK: vpavgb %ymm18, %ymm22, %ymm29
// CHECK:  encoding: [0x62,0x21,0x4d,0x20,0xe0,0xea]
          vpavgb %ymm18, %ymm22, %ymm29

// CHECK: vpavgb %ymm18, %ymm22, %ymm29 {%k1}
// CHECK:  encoding: [0x62,0x21,0x4d,0x21,0xe0,0xea]
          vpavgb %ymm18, %ymm22, %ymm29 {%k1}

// CHECK: vpavgb %ymm18, %ymm22, %ymm29 {%k1} {z}
// CHECK:  encoding: [0x62,0x21,0x4d,0xa1,0xe0,0xea]
          vpavgb %ymm18, %ymm22, %ymm29 {%k1} {z}

// CHECK: vpavgb (%rcx), %ymm22, %ymm29
// CHECK:  encoding: [0x62,0x61,0x4d,0x20,0xe0,0x29]
          vpavgb (%rcx), %ymm22, %ymm29

// CHECK: vpavgb 291(%rax,%r14,8), %ymm22, %ymm29
// CHECK:  encoding: [0x62,0x21,0x4d,0x20,0xe0,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpavgb 291(%rax,%r14,8), %ymm22, %ymm29

// CHECK: vpavgb 4064(%rdx), %ymm22, %ymm29
// CHECK:  encoding: [0x62,0x61,0x4d,0x20,0xe0,0x6a,0x7f]
          vpavgb 4064(%rdx), %ymm22, %ymm29

// CHECK: vpavgb 4096(%rdx), %ymm22, %ymm29
// CHECK:  encoding: [0x62,0x61,0x4d,0x20,0xe0,0xaa,0x00,0x10,0x00,0x00]
          vpavgb 4096(%rdx), %ymm22, %ymm29

// CHECK: vpavgb -4096(%rdx), %ymm22, %ymm29
// CHECK:  encoding: [0x62,0x61,0x4d,0x20,0xe0,0x6a,0x80]
          vpavgb -4096(%rdx), %ymm22, %ymm29

// CHECK: vpavgb -4128(%rdx), %ymm22, %ymm29
// CHECK:  encoding: [0x62,0x61,0x4d,0x20,0xe0,0xaa,0xe0,0xef,0xff,0xff]
          vpavgb -4128(%rdx), %ymm22, %ymm29

// CHECK: vpavgw %xmm23, %xmm24, %xmm28
// CHECK:  encoding: [0x62,0x21,0x3d,0x00,0xe3,0xe7]
          vpavgw %xmm23, %xmm24, %xmm28

// CHECK: vpavgw %xmm23, %xmm24, %xmm28 {%k7}
// CHECK:  encoding: [0x62,0x21,0x3d,0x07,0xe3,0xe7]
          vpavgw %xmm23, %xmm24, %xmm28 {%k7}

// CHECK: vpavgw %xmm23, %xmm24, %xmm28 {%k7} {z}
// CHECK:  encoding: [0x62,0x21,0x3d,0x87,0xe3,0xe7]
          vpavgw %xmm23, %xmm24, %xmm28 {%k7} {z}

// CHECK: vpavgw (%rcx), %xmm24, %xmm28
// CHECK:  encoding: [0x62,0x61,0x3d,0x00,0xe3,0x21]
          vpavgw (%rcx), %xmm24, %xmm28

// CHECK: vpavgw 291(%rax,%r14,8), %xmm24, %xmm28
// CHECK:  encoding: [0x62,0x21,0x3d,0x00,0xe3,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpavgw 291(%rax,%r14,8), %xmm24, %xmm28

// CHECK: vpavgw 2032(%rdx), %xmm24, %xmm28
// CHECK:  encoding: [0x62,0x61,0x3d,0x00,0xe3,0x62,0x7f]
          vpavgw 2032(%rdx), %xmm24, %xmm28

// CHECK: vpavgw 2048(%rdx), %xmm24, %xmm28
// CHECK:  encoding: [0x62,0x61,0x3d,0x00,0xe3,0xa2,0x00,0x08,0x00,0x00]
          vpavgw 2048(%rdx), %xmm24, %xmm28

// CHECK: vpavgw -2048(%rdx), %xmm24, %xmm28
// CHECK:  encoding: [0x62,0x61,0x3d,0x00,0xe3,0x62,0x80]
          vpavgw -2048(%rdx), %xmm24, %xmm28

// CHECK: vpavgw -2064(%rdx), %xmm24, %xmm28
// CHECK:  encoding: [0x62,0x61,0x3d,0x00,0xe3,0xa2,0xf0,0xf7,0xff,0xff]
          vpavgw -2064(%rdx), %xmm24, %xmm28

// CHECK: vpavgw %ymm22, %ymm26, %ymm22
// CHECK:  encoding: [0x62,0xa1,0x2d,0x20,0xe3,0xf6]
          vpavgw %ymm22, %ymm26, %ymm22

// CHECK: vpavgw %ymm22, %ymm26, %ymm22 {%k7}
// CHECK:  encoding: [0x62,0xa1,0x2d,0x27,0xe3,0xf6]
          vpavgw %ymm22, %ymm26, %ymm22 {%k7}

// CHECK: vpavgw %ymm22, %ymm26, %ymm22 {%k7} {z}
// CHECK:  encoding: [0x62,0xa1,0x2d,0xa7,0xe3,0xf6]
          vpavgw %ymm22, %ymm26, %ymm22 {%k7} {z}

// CHECK: vpavgw (%rcx), %ymm26, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x2d,0x20,0xe3,0x31]
          vpavgw (%rcx), %ymm26, %ymm22

// CHECK: vpavgw 291(%rax,%r14,8), %ymm26, %ymm22
// CHECK:  encoding: [0x62,0xa1,0x2d,0x20,0xe3,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpavgw 291(%rax,%r14,8), %ymm26, %ymm22

// CHECK: vpavgw 4064(%rdx), %ymm26, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x2d,0x20,0xe3,0x72,0x7f]
          vpavgw 4064(%rdx), %ymm26, %ymm22

// CHECK: vpavgw 4096(%rdx), %ymm26, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x2d,0x20,0xe3,0xb2,0x00,0x10,0x00,0x00]
          vpavgw 4096(%rdx), %ymm26, %ymm22

// CHECK: vpavgw -4096(%rdx), %ymm26, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x2d,0x20,0xe3,0x72,0x80]
          vpavgw -4096(%rdx), %ymm26, %ymm22

// CHECK: vpavgw -4128(%rdx), %ymm26, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x2d,0x20,0xe3,0xb2,0xe0,0xef,0xff,0xff]
          vpavgw -4128(%rdx), %ymm26, %ymm22

// CHECK: vpavgb %xmm26, %xmm19, %xmm20
// CHECK:  encoding: [0x62,0x81,0x65,0x00,0xe0,0xe2]
          vpavgb %xmm26, %xmm19, %xmm20

// CHECK: vpavgb %xmm26, %xmm19, %xmm20 {%k7}
// CHECK:  encoding: [0x62,0x81,0x65,0x07,0xe0,0xe2]
          vpavgb %xmm26, %xmm19, %xmm20 {%k7}

// CHECK: vpavgb %xmm26, %xmm19, %xmm20 {%k7} {z}
// CHECK:  encoding: [0x62,0x81,0x65,0x87,0xe0,0xe2]
          vpavgb %xmm26, %xmm19, %xmm20 {%k7} {z}

// CHECK: vpavgb (%rcx), %xmm19, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x65,0x00,0xe0,0x21]
          vpavgb (%rcx), %xmm19, %xmm20

// CHECK: vpavgb 291(%rax,%r14,8), %xmm19, %xmm20
// CHECK:  encoding: [0x62,0xa1,0x65,0x00,0xe0,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpavgb 291(%rax,%r14,8), %xmm19, %xmm20

// CHECK: vpavgb 2032(%rdx), %xmm19, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x65,0x00,0xe0,0x62,0x7f]
          vpavgb 2032(%rdx), %xmm19, %xmm20

// CHECK: vpavgb 2048(%rdx), %xmm19, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x65,0x00,0xe0,0xa2,0x00,0x08,0x00,0x00]
          vpavgb 2048(%rdx), %xmm19, %xmm20

// CHECK: vpavgb -2048(%rdx), %xmm19, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x65,0x00,0xe0,0x62,0x80]
          vpavgb -2048(%rdx), %xmm19, %xmm20

// CHECK: vpavgb -2064(%rdx), %xmm19, %xmm20
// CHECK:  encoding: [0x62,0xe1,0x65,0x00,0xe0,0xa2,0xf0,0xf7,0xff,0xff]
          vpavgb -2064(%rdx), %xmm19, %xmm20

// CHECK: vpavgb %ymm17, %ymm22, %ymm26
// CHECK:  encoding: [0x62,0x21,0x4d,0x20,0xe0,0xd1]
          vpavgb %ymm17, %ymm22, %ymm26

// CHECK: vpavgb %ymm17, %ymm22, %ymm26 {%k5}
// CHECK:  encoding: [0x62,0x21,0x4d,0x25,0xe0,0xd1]
          vpavgb %ymm17, %ymm22, %ymm26 {%k5}

// CHECK: vpavgb %ymm17, %ymm22, %ymm26 {%k5} {z}
// CHECK:  encoding: [0x62,0x21,0x4d,0xa5,0xe0,0xd1]
          vpavgb %ymm17, %ymm22, %ymm26 {%k5} {z}

// CHECK: vpavgb (%rcx), %ymm22, %ymm26
// CHECK:  encoding: [0x62,0x61,0x4d,0x20,0xe0,0x11]
          vpavgb (%rcx), %ymm22, %ymm26

// CHECK: vpavgb 291(%rax,%r14,8), %ymm22, %ymm26
// CHECK:  encoding: [0x62,0x21,0x4d,0x20,0xe0,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpavgb 291(%rax,%r14,8), %ymm22, %ymm26

// CHECK: vpavgb 4064(%rdx), %ymm22, %ymm26
// CHECK:  encoding: [0x62,0x61,0x4d,0x20,0xe0,0x52,0x7f]
          vpavgb 4064(%rdx), %ymm22, %ymm26

// CHECK: vpavgb 4096(%rdx), %ymm22, %ymm26
// CHECK:  encoding: [0x62,0x61,0x4d,0x20,0xe0,0x92,0x00,0x10,0x00,0x00]
          vpavgb 4096(%rdx), %ymm22, %ymm26

// CHECK: vpavgb -4096(%rdx), %ymm22, %ymm26
// CHECK:  encoding: [0x62,0x61,0x4d,0x20,0xe0,0x52,0x80]
          vpavgb -4096(%rdx), %ymm22, %ymm26

// CHECK: vpavgb -4128(%rdx), %ymm22, %ymm26
// CHECK:  encoding: [0x62,0x61,0x4d,0x20,0xe0,0x92,0xe0,0xef,0xff,0xff]
          vpavgb -4128(%rdx), %ymm22, %ymm26

// CHECK: vpavgw %xmm20, %xmm18, %xmm22
// CHECK:  encoding: [0x62,0xa1,0x6d,0x00,0xe3,0xf4]
          vpavgw %xmm20, %xmm18, %xmm22

// CHECK: vpavgw %xmm20, %xmm18, %xmm22 {%k7}
// CHECK:  encoding: [0x62,0xa1,0x6d,0x07,0xe3,0xf4]
          vpavgw %xmm20, %xmm18, %xmm22 {%k7}

// CHECK: vpavgw %xmm20, %xmm18, %xmm22 {%k7} {z}
// CHECK:  encoding: [0x62,0xa1,0x6d,0x87,0xe3,0xf4]
          vpavgw %xmm20, %xmm18, %xmm22 {%k7} {z}

// CHECK: vpavgw (%rcx), %xmm18, %xmm22
// CHECK:  encoding: [0x62,0xe1,0x6d,0x00,0xe3,0x31]
          vpavgw (%rcx), %xmm18, %xmm22

// CHECK: vpavgw 291(%rax,%r14,8), %xmm18, %xmm22
// CHECK:  encoding: [0x62,0xa1,0x6d,0x00,0xe3,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpavgw 291(%rax,%r14,8), %xmm18, %xmm22

// CHECK: vpavgw 2032(%rdx), %xmm18, %xmm22
// CHECK:  encoding: [0x62,0xe1,0x6d,0x00,0xe3,0x72,0x7f]
          vpavgw 2032(%rdx), %xmm18, %xmm22

// CHECK: vpavgw 2048(%rdx), %xmm18, %xmm22
// CHECK:  encoding: [0x62,0xe1,0x6d,0x00,0xe3,0xb2,0x00,0x08,0x00,0x00]
          vpavgw 2048(%rdx), %xmm18, %xmm22

// CHECK: vpavgw -2048(%rdx), %xmm18, %xmm22
// CHECK:  encoding: [0x62,0xe1,0x6d,0x00,0xe3,0x72,0x80]
          vpavgw -2048(%rdx), %xmm18, %xmm22

// CHECK: vpavgw -2064(%rdx), %xmm18, %xmm22
// CHECK:  encoding: [0x62,0xe1,0x6d,0x00,0xe3,0xb2,0xf0,0xf7,0xff,0xff]
          vpavgw -2064(%rdx), %xmm18, %xmm22

// CHECK: vpavgw %ymm21, %ymm23, %ymm21
// CHECK:  encoding: [0x62,0xa1,0x45,0x20,0xe3,0xed]
          vpavgw %ymm21, %ymm23, %ymm21

// CHECK: vpavgw %ymm21, %ymm23, %ymm21 {%k2}
// CHECK:  encoding: [0x62,0xa1,0x45,0x22,0xe3,0xed]
          vpavgw %ymm21, %ymm23, %ymm21 {%k2}

// CHECK: vpavgw %ymm21, %ymm23, %ymm21 {%k2} {z}
// CHECK:  encoding: [0x62,0xa1,0x45,0xa2,0xe3,0xed]
          vpavgw %ymm21, %ymm23, %ymm21 {%k2} {z}

// CHECK: vpavgw (%rcx), %ymm23, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x45,0x20,0xe3,0x29]
          vpavgw (%rcx), %ymm23, %ymm21

// CHECK: vpavgw 291(%rax,%r14,8), %ymm23, %ymm21
// CHECK:  encoding: [0x62,0xa1,0x45,0x20,0xe3,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpavgw 291(%rax,%r14,8), %ymm23, %ymm21

// CHECK: vpavgw 4064(%rdx), %ymm23, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x45,0x20,0xe3,0x6a,0x7f]
          vpavgw 4064(%rdx), %ymm23, %ymm21

// CHECK: vpavgw 4096(%rdx), %ymm23, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x45,0x20,0xe3,0xaa,0x00,0x10,0x00,0x00]
          vpavgw 4096(%rdx), %ymm23, %ymm21

// CHECK: vpavgw -4096(%rdx), %ymm23, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x45,0x20,0xe3,0x6a,0x80]
          vpavgw -4096(%rdx), %ymm23, %ymm21

// CHECK: vpavgw -4128(%rdx), %ymm23, %ymm21
// CHECK:  encoding: [0x62,0xe1,0x45,0x20,0xe3,0xaa,0xe0,0xef,0xff,0xff]
          vpavgw -4128(%rdx), %ymm23, %ymm21

// CHECK: vpshufb %xmm27, %xmm24, %xmm23
// CHECK:  encoding: [0x62,0x82,0x3d,0x00,0x00,0xfb]
          vpshufb %xmm27, %xmm24, %xmm23

// CHECK: vpshufb %xmm27, %xmm24, %xmm23 {%k4}
// CHECK:  encoding: [0x62,0x82,0x3d,0x04,0x00,0xfb]
          vpshufb %xmm27, %xmm24, %xmm23 {%k4}

// CHECK: vpshufb %xmm27, %xmm24, %xmm23 {%k4} {z}
// CHECK:  encoding: [0x62,0x82,0x3d,0x84,0x00,0xfb]
          vpshufb %xmm27, %xmm24, %xmm23 {%k4} {z}

// CHECK: vpshufb (%rcx), %xmm24, %xmm23
// CHECK:  encoding: [0x62,0xe2,0x3d,0x00,0x00,0x39]
          vpshufb (%rcx), %xmm24, %xmm23

// CHECK: vpshufb 291(%rax,%r14,8), %xmm24, %xmm23
// CHECK:  encoding: [0x62,0xa2,0x3d,0x00,0x00,0xbc,0xf0,0x23,0x01,0x00,0x00]
          vpshufb 291(%rax,%r14,8), %xmm24, %xmm23

// CHECK: vpshufb 2032(%rdx), %xmm24, %xmm23
// CHECK:  encoding: [0x62,0xe2,0x3d,0x00,0x00,0x7a,0x7f]
          vpshufb 2032(%rdx), %xmm24, %xmm23

// CHECK: vpshufb 2048(%rdx), %xmm24, %xmm23
// CHECK:  encoding: [0x62,0xe2,0x3d,0x00,0x00,0xba,0x00,0x08,0x00,0x00]
          vpshufb 2048(%rdx), %xmm24, %xmm23

// CHECK: vpshufb -2048(%rdx), %xmm24, %xmm23
// CHECK:  encoding: [0x62,0xe2,0x3d,0x00,0x00,0x7a,0x80]
          vpshufb -2048(%rdx), %xmm24, %xmm23

// CHECK: vpshufb -2064(%rdx), %xmm24, %xmm23
// CHECK:  encoding: [0x62,0xe2,0x3d,0x00,0x00,0xba,0xf0,0xf7,0xff,0xff]
          vpshufb -2064(%rdx), %xmm24, %xmm23

// CHECK: vpshufb %ymm17, %ymm18, %ymm19
// CHECK:  encoding: [0x62,0xa2,0x6d,0x20,0x00,0xd9]
          vpshufb %ymm17, %ymm18, %ymm19

// CHECK: vpshufb %ymm17, %ymm18, %ymm19 {%k4}
// CHECK:  encoding: [0x62,0xa2,0x6d,0x24,0x00,0xd9]
          vpshufb %ymm17, %ymm18, %ymm19 {%k4}

// CHECK: vpshufb %ymm17, %ymm18, %ymm19 {%k4} {z}
// CHECK:  encoding: [0x62,0xa2,0x6d,0xa4,0x00,0xd9]
          vpshufb %ymm17, %ymm18, %ymm19 {%k4} {z}

// CHECK: vpshufb (%rcx), %ymm18, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x6d,0x20,0x00,0x19]
          vpshufb (%rcx), %ymm18, %ymm19

// CHECK: vpshufb 291(%rax,%r14,8), %ymm18, %ymm19
// CHECK:  encoding: [0x62,0xa2,0x6d,0x20,0x00,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpshufb 291(%rax,%r14,8), %ymm18, %ymm19

// CHECK: vpshufb 4064(%rdx), %ymm18, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x6d,0x20,0x00,0x5a,0x7f]
          vpshufb 4064(%rdx), %ymm18, %ymm19

// CHECK: vpshufb 4096(%rdx), %ymm18, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x6d,0x20,0x00,0x9a,0x00,0x10,0x00,0x00]
          vpshufb 4096(%rdx), %ymm18, %ymm19

// CHECK: vpshufb -4096(%rdx), %ymm18, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x6d,0x20,0x00,0x5a,0x80]
          vpshufb -4096(%rdx), %ymm18, %ymm19

// CHECK: vpshufb -4128(%rdx), %ymm18, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x6d,0x20,0x00,0x9a,0xe0,0xef,0xff,0xff]
          vpshufb -4128(%rdx), %ymm18, %ymm19

// CHECK: vpmovwb %xmm28, %xmm27
// CHECK:  encoding: [0x62,0x02,0x7e,0x08,0x30,0xe3]
          vpmovwb %xmm28, %xmm27

// CHECK: vpmovwb %xmm28, %xmm27 {%k2}
// CHECK:  encoding: [0x62,0x02,0x7e,0x0a,0x30,0xe3]
          vpmovwb %xmm28, %xmm27 {%k2}

// CHECK: vpmovwb %xmm28, %xmm27 {%k2} {z}
// CHECK:  encoding: [0x62,0x02,0x7e,0x8a,0x30,0xe3]
          vpmovwb %xmm28, %xmm27 {%k2} {z}

// CHECK: vpmovwb %ymm26, %xmm26
// CHECK:  encoding: [0x62,0x02,0x7e,0x28,0x30,0xd2]
          vpmovwb %ymm26, %xmm26

// CHECK: vpmovwb %ymm26, %xmm26 {%k4}
// CHECK:  encoding: [0x62,0x02,0x7e,0x2c,0x30,0xd2]
          vpmovwb %ymm26, %xmm26 {%k4}

// CHECK: vpmovwb %ymm26, %xmm26 {%k4} {z}
// CHECK:  encoding: [0x62,0x02,0x7e,0xac,0x30,0xd2]
          vpmovwb %ymm26, %xmm26 {%k4} {z}

// CHECK: vpmovwb %xmm23, (%rcx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x30,0x39]
          vpmovwb %xmm23,(%rcx)

// CHECK: vpmovwb %xmm23, (%rcx) {%k6}
// CHECK:  encoding: [0x62,0xe2,0x7e,0x0e,0x30,0x39]
          vpmovwb %xmm23,(%rcx) {%k6}

// CHECK: vpmovwb %xmm23, 4660(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa2,0x7e,0x08,0x30,0xbc,0xf0,0x34,0x12,0x00,0x00]
          vpmovwb %xmm23,4660(%rax,%r14,8)

// CHECK: vpmovwb %xmm23, 1016(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x30,0x7a,0x7f]
          vpmovwb %xmm23, 1016(%rdx)

// CHECK: vpmovwb %xmm23, 1024(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x30,0xba,0x00,0x04,0x00,0x00]
          vpmovwb %xmm23, 1024(%rdx)

// CHECK: vpmovwb %xmm23, -1024(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x30,0x7a,0x80]
          vpmovwb %xmm23,-1024(%rdx)

// CHECK: vpmovwb %xmm23, -1032(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x30,0xba,0xf8,0xfb,0xff,0xff]
          vpmovwb %xmm23,-1032(%rdx)

// CHECK: vpmovwb %ymm21, (%rcx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x30,0x29]
          vpmovwb %ymm21,(%rcx)

// CHECK: vpmovwb %ymm21, (%rcx) {%k5}
// CHECK:  encoding: [0x62,0xe2,0x7e,0x2d,0x30,0x29]
          vpmovwb %ymm21,(%rcx) {%k5}

// CHECK: vpmovwb %ymm21, 4660(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa2,0x7e,0x28,0x30,0xac,0xf0,0x34,0x12,0x00,0x00]
          vpmovwb %ymm21, 4660(%rax,%r14,8)

// CHECK: vpmovwb %ymm21, 2032(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x30,0x6a,0x7f]
          vpmovwb %ymm21, 2032(%rdx)

// CHECK: vpmovwb %ymm21, 2048(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x30,0xaa,0x00,0x08,0x00,0x00]
          vpmovwb %ymm21, 2048(%rdx)

// CHECK: vpmovwb %ymm21, -2048(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x30,0x6a,0x80]
          vpmovwb %ymm21,-2048(%rdx)

// CHECK: vpmovwb %ymm21, -2064(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x30,0xaa,0xf0,0xf7,0xff,0xff]
          vpmovwb %ymm21, -2064(%rdx)

// CHECK: vpmovswb %xmm19, %xmm17
// CHECK:  encoding: [0x62,0xa2,0x7e,0x08,0x20,0xd9]
          vpmovswb %xmm19, %xmm17

// CHECK: vpmovswb %xmm19, %xmm17 {%k1}
// CHECK:  encoding: [0x62,0xa2,0x7e,0x09,0x20,0xd9]
          vpmovswb %xmm19, %xmm17 {%k1}

// CHECK: vpmovswb %xmm19, %xmm17 {%k1} {z}
// CHECK:  encoding: [0x62,0xa2,0x7e,0x89,0x20,0xd9]
          vpmovswb %xmm19, %xmm17 {%k1} {z}

// CHECK: vpmovswb %ymm19, %xmm21
// CHECK:  encoding: [0x62,0xa2,0x7e,0x28,0x20,0xdd]
          vpmovswb %ymm19, %xmm21

// CHECK: vpmovswb %ymm19, %xmm21 {%k4}
// CHECK:  encoding: [0x62,0xa2,0x7e,0x2c,0x20,0xdd]
          vpmovswb %ymm19, %xmm21 {%k4}

// CHECK: vpmovswb %ymm19, %xmm21 {%k4} {z}
// CHECK:  encoding: [0x62,0xa2,0x7e,0xac,0x20,0xdd]
          vpmovswb %ymm19, %xmm21 {%k4} {z}

// CHECK: vpmovswb %xmm18, (%rcx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x20,0x11]
          vpmovswb %xmm18,(%rcx)

// CHECK: vpmovswb %xmm18, (%rcx) {%k2}
// CHECK:  encoding: [0x62,0xe2,0x7e,0x0a,0x20,0x11]
          vpmovswb %xmm18,(%rcx) {%k2}

// CHECK: vpmovswb %xmm18, 4660(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa2,0x7e,0x08,0x20,0x94,0xf0,0x34,0x12,0x00,0x00]
          vpmovswb %xmm18, 4660(%rax,%r14,8)

// CHECK: vpmovswb %xmm18, 1016(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x20,0x52,0x7f]
          vpmovswb %xmm18, 1016(%rdx)

// CHECK: vpmovswb %xmm18, 1024(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x20,0x92,0x00,0x04,0x00,0x00]
          vpmovswb %xmm18, 1024(%rdx)

// CHECK: vpmovswb %xmm18, -1024(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x20,0x52,0x80]
          vpmovswb %xmm18, -1024(%rdx)

// CHECK: vpmovswb %xmm18, -1032(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x20,0x92,0xf8,0xfb,0xff,0xff]
          vpmovswb %xmm18, -1032(%rdx)

// CHECK: vpmovswb %ymm23, (%rcx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x20,0x39]
          vpmovswb %ymm23,(%rcx)

// CHECK: vpmovswb %ymm23, (%rcx) {%k2}
// CHECK:  encoding: [0x62,0xe2,0x7e,0x2a,0x20,0x39]
          vpmovswb %ymm23,(%rcx) {%k2}

// CHECK: vpmovswb %ymm23, 4660(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa2,0x7e,0x28,0x20,0xbc,0xf0,0x34,0x12,0x00,0x00]
          vpmovswb %ymm23, 4660(%rax,%r14,8)

// CHECK: vpmovswb %ymm23, 2032(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x20,0x7a,0x7f]
          vpmovswb %ymm23, 2032(%rdx)

// CHECK: vpmovswb %ymm23, 2048(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x20,0xba,0x00,0x08,0x00,0x00]
          vpmovswb %ymm23, 2048(%rdx)

// CHECK: vpmovswb %ymm23, -2048(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x20,0x7a,0x80]
          vpmovswb %ymm23, -2048(%rdx)

// CHECK: vpmovswb %ymm23, -2064(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x20,0xba,0xf0,0xf7,0xff,0xff]
          vpmovswb %ymm23, -2064(%rdx)

// CHECK: vpmovuswb %xmm17, %xmm26
// CHECK:  encoding: [0x62,0x82,0x7e,0x08,0x10,0xca]
          vpmovuswb %xmm17, %xmm26

// CHECK: vpmovuswb %xmm17, %xmm26 {%k6}
// CHECK:  encoding: [0x62,0x82,0x7e,0x0e,0x10,0xca]
          vpmovuswb %xmm17, %xmm26 {%k6}

// CHECK: vpmovuswb %xmm17, %xmm26 {%k6} {z}
// CHECK:  encoding: [0x62,0x82,0x7e,0x8e,0x10,0xca]
          vpmovuswb %xmm17, %xmm26 {%k6} {z}

// CHECK: vpmovuswb %ymm26, %xmm17
// CHECK:  encoding: [0x62,0x22,0x7e,0x28,0x10,0xd1]
          vpmovuswb %ymm26, %xmm17

// CHECK: vpmovuswb %ymm26, %xmm17 {%k2}
// CHECK:  encoding: [0x62,0x22,0x7e,0x2a,0x10,0xd1]
          vpmovuswb %ymm26, %xmm17 {%k2}

// CHECK: vpmovuswb %ymm26, %xmm17 {%k2} {z}
// CHECK:  encoding: [0x62,0x22,0x7e,0xaa,0x10,0xd1]
          vpmovuswb %ymm26, %xmm17 {%k2} {z}

// CHECK: vpmovuswb %xmm19, (%rcx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x10,0x19]
          vpmovuswb %xmm19,(%rcx)

// CHECK: vpmovuswb %xmm19, (%rcx) {%k1}
// CHECK:  encoding: [0x62,0xe2,0x7e,0x09,0x10,0x19]
          vpmovuswb %xmm19,(%rcx) {%k1}

// CHECK: vpmovuswb %xmm19, 4660(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa2,0x7e,0x08,0x10,0x9c,0xf0,0x34,0x12,0x00,0x00]
          vpmovuswb %xmm19, 4660(%rax,%r14,8)

// CHECK: vpmovuswb %xmm19, 1016(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x10,0x5a,0x7f]
          vpmovuswb %xmm19, 1016(%rdx)

// CHECK: vpmovuswb %xmm19, 1024(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x10,0x9a,0x00,0x04,0x00,0x00]
          vpmovuswb %xmm19, 1024(%rdx)

// CHECK: vpmovuswb %xmm19, -1024(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x10,0x5a,0x80]
          vpmovuswb %xmm19, -1024(%rdx)

// CHECK: vpmovuswb %xmm19, -1032(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x10,0x9a,0xf8,0xfb,0xff,0xff]
          vpmovuswb %xmm19, -1032(%rdx)

// CHECK: vpmovuswb %ymm23, (%rcx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x10,0x39]
          vpmovuswb %ymm23,(%rcx)

// CHECK: vpmovuswb %ymm23, (%rcx) {%k6}
// CHECK:  encoding: [0x62,0xe2,0x7e,0x2e,0x10,0x39]
          vpmovuswb %ymm23,(%rcx) {%k6}

// CHECK: vpmovuswb %ymm23, 4660(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa2,0x7e,0x28,0x10,0xbc,0xf0,0x34,0x12,0x00,0x00]
          vpmovuswb %ymm23, 4660(%rax,%r14,8)

// CHECK: vpmovuswb %ymm23, 2032(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x10,0x7a,0x7f]
          vpmovuswb %ymm23, 2032(%rdx)

// CHECK: vpmovuswb %ymm23, 2048(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x10,0xba,0x00,0x08,0x00,0x00]
          vpmovuswb %ymm23, 2048(%rdx)

// CHECK: vpmovuswb %ymm23, -2048(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x10,0x7a,0x80]
          vpmovuswb %ymm23, -2048(%rdx)

// CHECK: vpmovuswb %ymm23, -2064(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x10,0xba,0xf0,0xf7,0xff,0xff]
          vpmovuswb %ymm23, -2064(%rdx)

// CHECK: vpmovwb %xmm17, %xmm21
// CHECK:  encoding: [0x62,0xa2,0x7e,0x08,0x30,0xcd]
          vpmovwb %xmm17, %xmm21

// CHECK: vpmovwb %xmm17, %xmm21 {%k1}
// CHECK:  encoding: [0x62,0xa2,0x7e,0x09,0x30,0xcd]
          vpmovwb %xmm17, %xmm21 {%k1}

// CHECK: vpmovwb %xmm17, %xmm21 {%k1} {z}
// CHECK:  encoding: [0x62,0xa2,0x7e,0x89,0x30,0xcd]
          vpmovwb %xmm17, %xmm21 {%k1} {z}

// CHECK: vpmovwb %ymm23, %xmm26
// CHECK:  encoding: [0x62,0x82,0x7e,0x28,0x30,0xfa]
          vpmovwb %ymm23, %xmm26

// CHECK: vpmovwb %ymm23, %xmm26 {%k7}
// CHECK:  encoding: [0x62,0x82,0x7e,0x2f,0x30,0xfa]
          vpmovwb %ymm23, %xmm26 {%k7}

// CHECK: vpmovwb %ymm23, %xmm26 {%k7} {z}
// CHECK:  encoding: [0x62,0x82,0x7e,0xaf,0x30,0xfa]
          vpmovwb %ymm23, %xmm26 {%k7} {z}

// CHECK: vpmovwb %xmm21, (%rcx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x30,0x29]
          vpmovwb %xmm21, (%rcx)

// CHECK: vpmovwb %xmm21, (%rcx) {%k2}
// CHECK:  encoding: [0x62,0xe2,0x7e,0x0a,0x30,0x29]
          vpmovwb %xmm21, (%rcx) {%k2}

// CHECK: vpmovwb %xmm21, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa2,0x7e,0x08,0x30,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpmovwb %xmm21, 291(%rax,%r14,8)

// CHECK: vpmovwb %xmm21, 1016(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x30,0x6a,0x7f]
          vpmovwb %xmm21, 1016(%rdx)

// CHECK: vpmovwb %xmm21, 1024(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x30,0xaa,0x00,0x04,0x00,0x00]
          vpmovwb %xmm21, 1024(%rdx)

// CHECK: vpmovwb %xmm21, -1024(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x30,0x6a,0x80]
          vpmovwb %xmm21, -1024(%rdx)

// CHECK: vpmovwb %xmm21, -1032(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x08,0x30,0xaa,0xf8,0xfb,0xff,0xff]
          vpmovwb %xmm21, -1032(%rdx)

// CHECK: vpmovwb %ymm20, (%rcx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x30,0x21]
          vpmovwb %ymm20, (%rcx)

// CHECK: vpmovwb %ymm20, (%rcx) {%k4}
// CHECK:  encoding: [0x62,0xe2,0x7e,0x2c,0x30,0x21]
          vpmovwb %ymm20, (%rcx) {%k4}

// CHECK: vpmovwb %ymm20, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0xa2,0x7e,0x28,0x30,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpmovwb %ymm20, 291(%rax,%r14,8)

// CHECK: vpmovwb %ymm20, 2032(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x30,0x62,0x7f]
          vpmovwb %ymm20, 2032(%rdx)

// CHECK: vpmovwb %ymm20, 2048(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x30,0xa2,0x00,0x08,0x00,0x00]
          vpmovwb %ymm20, 2048(%rdx)

// CHECK: vpmovwb %ymm20, -2048(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x30,0x62,0x80]
          vpmovwb %ymm20, -2048(%rdx)

// CHECK: vpmovwb %ymm20, -2064(%rdx)
// CHECK:  encoding: [0x62,0xe2,0x7e,0x28,0x30,0xa2,0xf0,0xf7,0xff,0xff]
          vpmovwb %ymm20, -2064(%rdx)

// CHECK: vpmovswb %xmm20, %xmm24
// CHECK:  encoding: [0x62,0x82,0x7e,0x08,0x20,0xe0]
          vpmovswb %xmm20, %xmm24

// CHECK: vpmovswb %xmm20, %xmm24 {%k4}
// CHECK:  encoding: [0x62,0x82,0x7e,0x0c,0x20,0xe0]
          vpmovswb %xmm20, %xmm24 {%k4}

// CHECK: vpmovswb %xmm20, %xmm24 {%k4} {z}
// CHECK:  encoding: [0x62,0x82,0x7e,0x8c,0x20,0xe0]
          vpmovswb %xmm20, %xmm24 {%k4} {z}

// CHECK: vpmovswb %ymm18, %xmm27
// CHECK:  encoding: [0x62,0x82,0x7e,0x28,0x20,0xd3]
          vpmovswb %ymm18, %xmm27

// CHECK: vpmovswb %ymm18, %xmm27 {%k1}
// CHECK:  encoding: [0x62,0x82,0x7e,0x29,0x20,0xd3]
          vpmovswb %ymm18, %xmm27 {%k1}

// CHECK: vpmovswb %ymm18, %xmm27 {%k1} {z}
// CHECK:  encoding: [0x62,0x82,0x7e,0xa9,0x20,0xd3]
          vpmovswb %ymm18, %xmm27 {%k1} {z}

// CHECK: vpmovswb %xmm24, (%rcx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x20,0x01]
          vpmovswb %xmm24, (%rcx)

// CHECK: vpmovswb %xmm24, (%rcx) {%k3}
// CHECK:  encoding: [0x62,0x62,0x7e,0x0b,0x20,0x01]
          vpmovswb %xmm24, (%rcx) {%k3}

// CHECK: vpmovswb %xmm24, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x22,0x7e,0x08,0x20,0x84,0xf0,0x23,0x01,0x00,0x00]
          vpmovswb %xmm24, 291(%rax,%r14,8)

// CHECK: vpmovswb %xmm24, 1016(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x20,0x42,0x7f]
          vpmovswb %xmm24, 1016(%rdx)

// CHECK: vpmovswb %xmm24, 1024(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x20,0x82,0x00,0x04,0x00,0x00]
          vpmovswb %xmm24, 1024(%rdx)

// CHECK: vpmovswb %xmm24, -1024(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x20,0x42,0x80]
          vpmovswb %xmm24, -1024(%rdx)

// CHECK: vpmovswb %xmm24, -1032(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x20,0x82,0xf8,0xfb,0xff,0xff]
          vpmovswb %xmm24, -1032(%rdx)

// CHECK: vpmovswb %ymm27, (%rcx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x20,0x19]
          vpmovswb %ymm27, (%rcx)

// CHECK: vpmovswb %ymm27, (%rcx) {%k7}
// CHECK:  encoding: [0x62,0x62,0x7e,0x2f,0x20,0x19]
          vpmovswb %ymm27, (%rcx) {%k7}

// CHECK: vpmovswb %ymm27, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x22,0x7e,0x28,0x20,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpmovswb %ymm27, 291(%rax,%r14,8)

// CHECK: vpmovswb %ymm27, 2032(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x20,0x5a,0x7f]
          vpmovswb %ymm27, 2032(%rdx)

// CHECK: vpmovswb %ymm27, 2048(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x20,0x9a,0x00,0x08,0x00,0x00]
          vpmovswb %ymm27, 2048(%rdx)

// CHECK: vpmovswb %ymm27, -2048(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x20,0x5a,0x80]
          vpmovswb %ymm27, -2048(%rdx)

// CHECK: vpmovswb %ymm27, -2064(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x20,0x9a,0xf0,0xf7,0xff,0xff]
          vpmovswb %ymm27, -2064(%rdx)

// CHECK: vpmovuswb %xmm19, %xmm23
// CHECK:  encoding: [0x62,0xa2,0x7e,0x08,0x10,0xdf]
          vpmovuswb %xmm19, %xmm23

// CHECK: vpmovuswb %xmm19, %xmm23 {%k4}
// CHECK:  encoding: [0x62,0xa2,0x7e,0x0c,0x10,0xdf]
          vpmovuswb %xmm19, %xmm23 {%k4}

// CHECK: vpmovuswb %xmm19, %xmm23 {%k4} {z}
// CHECK:  encoding: [0x62,0xa2,0x7e,0x8c,0x10,0xdf]
          vpmovuswb %xmm19, %xmm23 {%k4} {z}

// CHECK: vpmovuswb %ymm23, %xmm28
// CHECK:  encoding: [0x62,0x82,0x7e,0x28,0x10,0xfc]
          vpmovuswb %ymm23, %xmm28

// CHECK: vpmovuswb %ymm23, %xmm28 {%k6}
// CHECK:  encoding: [0x62,0x82,0x7e,0x2e,0x10,0xfc]
          vpmovuswb %ymm23, %xmm28 {%k6}

// CHECK: vpmovuswb %ymm23, %xmm28 {%k6} {z}
// CHECK:  encoding: [0x62,0x82,0x7e,0xae,0x10,0xfc]
          vpmovuswb %ymm23, %xmm28 {%k6} {z}

// CHECK: vpmovuswb %xmm25, (%rcx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x10,0x09]
          vpmovuswb %xmm25, (%rcx)

// CHECK: vpmovuswb %xmm25, (%rcx) {%k3}
// CHECK:  encoding: [0x62,0x62,0x7e,0x0b,0x10,0x09]
          vpmovuswb %xmm25, (%rcx) {%k3}

// CHECK: vpmovuswb %xmm25, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x22,0x7e,0x08,0x10,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpmovuswb %xmm25, 291(%rax,%r14,8)

// CHECK: vpmovuswb %xmm25, 1016(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x10,0x4a,0x7f]
          vpmovuswb %xmm25, 1016(%rdx)

// CHECK: vpmovuswb %xmm25, 1024(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x10,0x8a,0x00,0x04,0x00,0x00]
          vpmovuswb %xmm25, 1024(%rdx)

// CHECK: vpmovuswb %xmm25, -1024(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x10,0x4a,0x80]
          vpmovuswb %xmm25, -1024(%rdx)

// CHECK: vpmovuswb %xmm25, -1032(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x08,0x10,0x8a,0xf8,0xfb,0xff,0xff]
          vpmovuswb %xmm25, -1032(%rdx)

// CHECK: vpmovuswb %ymm28, (%rcx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x10,0x21]
          vpmovuswb %ymm28, (%rcx)

// CHECK: vpmovuswb %ymm28, (%rcx) {%k2}
// CHECK:  encoding: [0x62,0x62,0x7e,0x2a,0x10,0x21]
          vpmovuswb %ymm28, (%rcx) {%k2}

// CHECK: vpmovuswb %ymm28, 291(%rax,%r14,8)
// CHECK:  encoding: [0x62,0x22,0x7e,0x28,0x10,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpmovuswb %ymm28, 291(%rax,%r14,8)

// CHECK: vpmovuswb %ymm28, 2032(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x10,0x62,0x7f]
          vpmovuswb %ymm28, 2032(%rdx)

// CHECK: vpmovuswb %ymm28, 2048(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x10,0xa2,0x00,0x08,0x00,0x00]
          vpmovuswb %ymm28, 2048(%rdx)

// CHECK: vpmovuswb %ymm28, -2048(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x10,0x62,0x80]
          vpmovuswb %ymm28, -2048(%rdx)

// CHECK: vpmovuswb %ymm28, -2064(%rdx)
// CHECK:  encoding: [0x62,0x62,0x7e,0x28,0x10,0xa2,0xf0,0xf7,0xff,0xff]
          vpmovuswb %ymm28, -2064(%rdx)

// CHECK: vpmulhuw %xmm18, %xmm21, %xmm24
// CHECK:  encoding: [0x62,0x21,0x55,0x00,0xe4,0xc2]
          vpmulhuw %xmm18, %xmm21, %xmm24

// CHECK: vpmulhuw %xmm18, %xmm21, %xmm24 {%k3}
// CHECK:  encoding: [0x62,0x21,0x55,0x03,0xe4,0xc2]
          vpmulhuw %xmm18, %xmm21, %xmm24 {%k3}

// CHECK: vpmulhuw %xmm18, %xmm21, %xmm24 {%k3} {z}
// CHECK:  encoding: [0x62,0x21,0x55,0x83,0xe4,0xc2]
          vpmulhuw %xmm18, %xmm21, %xmm24 {%k3} {z}

// CHECK: vpmulhuw (%rcx), %xmm21, %xmm24
// CHECK:  encoding: [0x62,0x61,0x55,0x00,0xe4,0x01]
          vpmulhuw (%rcx), %xmm21, %xmm24

// CHECK: vpmulhuw 291(%rax,%r14,8), %xmm21, %xmm24
// CHECK:  encoding: [0x62,0x21,0x55,0x00,0xe4,0x84,0xf0,0x23,0x01,0x00,0x00]
          vpmulhuw 291(%rax,%r14,8), %xmm21, %xmm24

// CHECK: vpmulhuw 2032(%rdx), %xmm21, %xmm24
// CHECK:  encoding: [0x62,0x61,0x55,0x00,0xe4,0x42,0x7f]
          vpmulhuw 2032(%rdx), %xmm21, %xmm24

// CHECK: vpmulhuw 2048(%rdx), %xmm21, %xmm24
// CHECK:  encoding: [0x62,0x61,0x55,0x00,0xe4,0x82,0x00,0x08,0x00,0x00]
          vpmulhuw 2048(%rdx), %xmm21, %xmm24

// CHECK: vpmulhuw -2048(%rdx), %xmm21, %xmm24
// CHECK:  encoding: [0x62,0x61,0x55,0x00,0xe4,0x42,0x80]
          vpmulhuw -2048(%rdx), %xmm21, %xmm24

// CHECK: vpmulhuw -2064(%rdx), %xmm21, %xmm24
// CHECK:  encoding: [0x62,0x61,0x55,0x00,0xe4,0x82,0xf0,0xf7,0xff,0xff]
          vpmulhuw -2064(%rdx), %xmm21, %xmm24

// CHECK: vpmulhuw %ymm19, %ymm28, %ymm19
// CHECK:  encoding: [0x62,0xa1,0x1d,0x20,0xe4,0xdb]
          vpmulhuw %ymm19, %ymm28, %ymm19

// CHECK: vpmulhuw %ymm19, %ymm28, %ymm19 {%k2}
// CHECK:  encoding: [0x62,0xa1,0x1d,0x22,0xe4,0xdb]
          vpmulhuw %ymm19, %ymm28, %ymm19 {%k2}

// CHECK: vpmulhuw %ymm19, %ymm28, %ymm19 {%k2} {z}
// CHECK:  encoding: [0x62,0xa1,0x1d,0xa2,0xe4,0xdb]
          vpmulhuw %ymm19, %ymm28, %ymm19 {%k2} {z}

// CHECK: vpmulhuw (%rcx), %ymm28, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x1d,0x20,0xe4,0x19]
          vpmulhuw (%rcx), %ymm28, %ymm19

// CHECK: vpmulhuw 291(%rax,%r14,8), %ymm28, %ymm19
// CHECK:  encoding: [0x62,0xa1,0x1d,0x20,0xe4,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpmulhuw 291(%rax,%r14,8), %ymm28, %ymm19

// CHECK: vpmulhuw 4064(%rdx), %ymm28, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x1d,0x20,0xe4,0x5a,0x7f]
          vpmulhuw 4064(%rdx), %ymm28, %ymm19

// CHECK: vpmulhuw 4096(%rdx), %ymm28, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x1d,0x20,0xe4,0x9a,0x00,0x10,0x00,0x00]
          vpmulhuw 4096(%rdx), %ymm28, %ymm19

// CHECK: vpmulhuw -4096(%rdx), %ymm28, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x1d,0x20,0xe4,0x5a,0x80]
          vpmulhuw -4096(%rdx), %ymm28, %ymm19

// CHECK: vpmulhuw -4128(%rdx), %ymm28, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x1d,0x20,0xe4,0x9a,0xe0,0xef,0xff,0xff]
          vpmulhuw -4128(%rdx), %ymm28, %ymm19

// CHECK: vpmulhw %xmm25, %xmm20, %xmm22
// CHECK:  encoding: [0x62,0x81,0x5d,0x00,0xe5,0xf1]
          vpmulhw %xmm25, %xmm20, %xmm22

// CHECK: vpmulhw %xmm25, %xmm20, %xmm22 {%k2}
// CHECK:  encoding: [0x62,0x81,0x5d,0x02,0xe5,0xf1]
          vpmulhw %xmm25, %xmm20, %xmm22 {%k2}

// CHECK: vpmulhw %xmm25, %xmm20, %xmm22 {%k2} {z}
// CHECK:  encoding: [0x62,0x81,0x5d,0x82,0xe5,0xf1]
          vpmulhw %xmm25, %xmm20, %xmm22 {%k2} {z}

// CHECK: vpmulhw (%rcx), %xmm20, %xmm22
// CHECK:  encoding: [0x62,0xe1,0x5d,0x00,0xe5,0x31]
          vpmulhw (%rcx), %xmm20, %xmm22

// CHECK: vpmulhw 291(%rax,%r14,8), %xmm20, %xmm22
// CHECK:  encoding: [0x62,0xa1,0x5d,0x00,0xe5,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpmulhw 291(%rax,%r14,8), %xmm20, %xmm22

// CHECK: vpmulhw 2032(%rdx), %xmm20, %xmm22
// CHECK:  encoding: [0x62,0xe1,0x5d,0x00,0xe5,0x72,0x7f]
          vpmulhw 2032(%rdx), %xmm20, %xmm22

// CHECK: vpmulhw 2048(%rdx), %xmm20, %xmm22
// CHECK:  encoding: [0x62,0xe1,0x5d,0x00,0xe5,0xb2,0x00,0x08,0x00,0x00]
          vpmulhw 2048(%rdx), %xmm20, %xmm22

// CHECK: vpmulhw -2048(%rdx), %xmm20, %xmm22
// CHECK:  encoding: [0x62,0xe1,0x5d,0x00,0xe5,0x72,0x80]
          vpmulhw -2048(%rdx), %xmm20, %xmm22

// CHECK: vpmulhw -2064(%rdx), %xmm20, %xmm22
// CHECK:  encoding: [0x62,0xe1,0x5d,0x00,0xe5,0xb2,0xf0,0xf7,0xff,0xff]
          vpmulhw -2064(%rdx), %xmm20, %xmm22

// CHECK: vpmulhw %ymm24, %ymm27, %ymm22
// CHECK:  encoding: [0x62,0x81,0x25,0x20,0xe5,0xf0]
          vpmulhw %ymm24, %ymm27, %ymm22

// CHECK: vpmulhw %ymm24, %ymm27, %ymm22 {%k1}
// CHECK:  encoding: [0x62,0x81,0x25,0x21,0xe5,0xf0]
          vpmulhw %ymm24, %ymm27, %ymm22 {%k1}

// CHECK: vpmulhw %ymm24, %ymm27, %ymm22 {%k1} {z}
// CHECK:  encoding: [0x62,0x81,0x25,0xa1,0xe5,0xf0]
          vpmulhw %ymm24, %ymm27, %ymm22 {%k1} {z}

// CHECK: vpmulhw (%rcx), %ymm27, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x25,0x20,0xe5,0x31]
          vpmulhw (%rcx), %ymm27, %ymm22

// CHECK: vpmulhw 291(%rax,%r14,8), %ymm27, %ymm22
// CHECK:  encoding: [0x62,0xa1,0x25,0x20,0xe5,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpmulhw 291(%rax,%r14,8), %ymm27, %ymm22

// CHECK: vpmulhw 4064(%rdx), %ymm27, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x25,0x20,0xe5,0x72,0x7f]
          vpmulhw 4064(%rdx), %ymm27, %ymm22

// CHECK: vpmulhw 4096(%rdx), %ymm27, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x25,0x20,0xe5,0xb2,0x00,0x10,0x00,0x00]
          vpmulhw 4096(%rdx), %ymm27, %ymm22

// CHECK: vpmulhw -4096(%rdx), %ymm27, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x25,0x20,0xe5,0x72,0x80]
          vpmulhw -4096(%rdx), %ymm27, %ymm22

// CHECK: vpmulhw -4128(%rdx), %ymm27, %ymm22
// CHECK:  encoding: [0x62,0xe1,0x25,0x20,0xe5,0xb2,0xe0,0xef,0xff,0xff]
          vpmulhw -4128(%rdx), %ymm27, %ymm22

// CHECK: vpmulhrsw %xmm26, %xmm19, %xmm28
// CHECK:  encoding: [0x62,0x02,0x65,0x00,0x0b,0xe2]
          vpmulhrsw %xmm26, %xmm19, %xmm28

// CHECK: vpmulhrsw %xmm26, %xmm19, %xmm28 {%k6}
// CHECK:  encoding: [0x62,0x02,0x65,0x06,0x0b,0xe2]
          vpmulhrsw %xmm26, %xmm19, %xmm28 {%k6}

// CHECK: vpmulhrsw %xmm26, %xmm19, %xmm28 {%k6} {z}
// CHECK:  encoding: [0x62,0x02,0x65,0x86,0x0b,0xe2]
          vpmulhrsw %xmm26, %xmm19, %xmm28 {%k6} {z}

// CHECK: vpmulhrsw (%rcx), %xmm19, %xmm28
// CHECK:  encoding: [0x62,0x62,0x65,0x00,0x0b,0x21]
          vpmulhrsw (%rcx), %xmm19, %xmm28

// CHECK: vpmulhrsw 291(%rax,%r14,8), %xmm19, %xmm28
// CHECK:  encoding: [0x62,0x22,0x65,0x00,0x0b,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpmulhrsw 291(%rax,%r14,8), %xmm19, %xmm28

// CHECK: vpmulhrsw 2032(%rdx), %xmm19, %xmm28
// CHECK:  encoding: [0x62,0x62,0x65,0x00,0x0b,0x62,0x7f]
          vpmulhrsw 2032(%rdx), %xmm19, %xmm28

// CHECK: vpmulhrsw 2048(%rdx), %xmm19, %xmm28
// CHECK:  encoding: [0x62,0x62,0x65,0x00,0x0b,0xa2,0x00,0x08,0x00,0x00]
          vpmulhrsw 2048(%rdx), %xmm19, %xmm28

// CHECK: vpmulhrsw -2048(%rdx), %xmm19, %xmm28
// CHECK:  encoding: [0x62,0x62,0x65,0x00,0x0b,0x62,0x80]
          vpmulhrsw -2048(%rdx), %xmm19, %xmm28

// CHECK: vpmulhrsw -2064(%rdx), %xmm19, %xmm28
// CHECK:  encoding: [0x62,0x62,0x65,0x00,0x0b,0xa2,0xf0,0xf7,0xff,0xff]
          vpmulhrsw -2064(%rdx), %xmm19, %xmm28

// CHECK: vpmulhrsw %ymm26, %ymm20, %ymm28
// CHECK:  encoding: [0x62,0x02,0x5d,0x20,0x0b,0xe2]
          vpmulhrsw %ymm26, %ymm20, %ymm28

// CHECK: vpmulhrsw %ymm26, %ymm20, %ymm28 {%k3}
// CHECK:  encoding: [0x62,0x02,0x5d,0x23,0x0b,0xe2]
          vpmulhrsw %ymm26, %ymm20, %ymm28 {%k3}

// CHECK: vpmulhrsw %ymm26, %ymm20, %ymm28 {%k3} {z}
// CHECK:  encoding: [0x62,0x02,0x5d,0xa3,0x0b,0xe2]
          vpmulhrsw %ymm26, %ymm20, %ymm28 {%k3} {z}

// CHECK: vpmulhrsw (%rcx), %ymm20, %ymm28
// CHECK:  encoding: [0x62,0x62,0x5d,0x20,0x0b,0x21]
          vpmulhrsw (%rcx), %ymm20, %ymm28

// CHECK: vpmulhrsw 291(%rax,%r14,8), %ymm20, %ymm28
// CHECK:  encoding: [0x62,0x22,0x5d,0x20,0x0b,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpmulhrsw 291(%rax,%r14,8), %ymm20, %ymm28

// CHECK: vpmulhrsw 4064(%rdx), %ymm20, %ymm28
// CHECK:  encoding: [0x62,0x62,0x5d,0x20,0x0b,0x62,0x7f]
          vpmulhrsw 4064(%rdx), %ymm20, %ymm28

// CHECK: vpmulhrsw 4096(%rdx), %ymm20, %ymm28
// CHECK:  encoding: [0x62,0x62,0x5d,0x20,0x0b,0xa2,0x00,0x10,0x00,0x00]
          vpmulhrsw 4096(%rdx), %ymm20, %ymm28

// CHECK: vpmulhrsw -4096(%rdx), %ymm20, %ymm28
// CHECK:  encoding: [0x62,0x62,0x5d,0x20,0x0b,0x62,0x80]
          vpmulhrsw -4096(%rdx), %ymm20, %ymm28

// CHECK: vpmulhrsw -4128(%rdx), %ymm20, %ymm28
// CHECK:  encoding: [0x62,0x62,0x5d,0x20,0x0b,0xa2,0xe0,0xef,0xff,0xff]
          vpmulhrsw -4128(%rdx), %ymm20, %ymm28

// CHECK: vpmaddubsw %xmm20, %xmm21, %xmm28
// CHECK:  encoding: [0x62,0x22,0x55,0x00,0x04,0xe4]
          vpmaddubsw %xmm20, %xmm21, %xmm28

// CHECK: vpmaddubsw %xmm20, %xmm21, %xmm28 {%k6}
// CHECK:  encoding: [0x62,0x22,0x55,0x06,0x04,0xe4]
          vpmaddubsw %xmm20, %xmm21, %xmm28 {%k6}

// CHECK: vpmaddubsw %xmm20, %xmm21, %xmm28 {%k6} {z}
// CHECK:  encoding: [0x62,0x22,0x55,0x86,0x04,0xe4]
          vpmaddubsw %xmm20, %xmm21, %xmm28 {%k6} {z}

// CHECK: vpmaddubsw (%rcx), %xmm21, %xmm28
// CHECK:  encoding: [0x62,0x62,0x55,0x00,0x04,0x21]
          vpmaddubsw (%rcx), %xmm21, %xmm28

// CHECK: vpmaddubsw 291(%rax,%r14,8), %xmm21, %xmm28
// CHECK:  encoding: [0x62,0x22,0x55,0x00,0x04,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpmaddubsw 291(%rax,%r14,8), %xmm21, %xmm28

// CHECK: vpmaddubsw 2032(%rdx), %xmm21, %xmm28
// CHECK:  encoding: [0x62,0x62,0x55,0x00,0x04,0x62,0x7f]
          vpmaddubsw 2032(%rdx), %xmm21, %xmm28

// CHECK: vpmaddubsw 2048(%rdx), %xmm21, %xmm28
// CHECK:  encoding: [0x62,0x62,0x55,0x00,0x04,0xa2,0x00,0x08,0x00,0x00]
          vpmaddubsw 2048(%rdx), %xmm21, %xmm28

// CHECK: vpmaddubsw -2048(%rdx), %xmm21, %xmm28
// CHECK:  encoding: [0x62,0x62,0x55,0x00,0x04,0x62,0x80]
          vpmaddubsw -2048(%rdx), %xmm21, %xmm28

// CHECK: vpmaddubsw -2064(%rdx), %xmm21, %xmm28
// CHECK:  encoding: [0x62,0x62,0x55,0x00,0x04,0xa2,0xf0,0xf7,0xff,0xff]
          vpmaddubsw -2064(%rdx), %xmm21, %xmm28

// CHECK: vpmaddubsw %ymm26, %ymm26, %ymm30
// CHECK:  encoding: [0x62,0x02,0x2d,0x20,0x04,0xf2]
          vpmaddubsw %ymm26, %ymm26, %ymm30

// CHECK: vpmaddubsw %ymm26, %ymm26, %ymm30 {%k5}
// CHECK:  encoding: [0x62,0x02,0x2d,0x25,0x04,0xf2]
          vpmaddubsw %ymm26, %ymm26, %ymm30 {%k5}

// CHECK: vpmaddubsw %ymm26, %ymm26, %ymm30 {%k5} {z}
// CHECK:  encoding: [0x62,0x02,0x2d,0xa5,0x04,0xf2]
          vpmaddubsw %ymm26, %ymm26, %ymm30 {%k5} {z}

// CHECK: vpmaddubsw (%rcx), %ymm26, %ymm30
// CHECK:  encoding: [0x62,0x62,0x2d,0x20,0x04,0x31]
          vpmaddubsw (%rcx), %ymm26, %ymm30

// CHECK: vpmaddubsw 291(%rax,%r14,8), %ymm26, %ymm30
// CHECK:  encoding: [0x62,0x22,0x2d,0x20,0x04,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpmaddubsw 291(%rax,%r14,8), %ymm26, %ymm30

// CHECK: vpmaddubsw 4064(%rdx), %ymm26, %ymm30
// CHECK:  encoding: [0x62,0x62,0x2d,0x20,0x04,0x72,0x7f]
          vpmaddubsw 4064(%rdx), %ymm26, %ymm30

// CHECK: vpmaddubsw 4096(%rdx), %ymm26, %ymm30
// CHECK:  encoding: [0x62,0x62,0x2d,0x20,0x04,0xb2,0x00,0x10,0x00,0x00]
          vpmaddubsw 4096(%rdx), %ymm26, %ymm30

// CHECK: vpmaddubsw -4096(%rdx), %ymm26, %ymm30
// CHECK:  encoding: [0x62,0x62,0x2d,0x20,0x04,0x72,0x80]
          vpmaddubsw -4096(%rdx), %ymm26, %ymm30

// CHECK: vpmaddubsw -4128(%rdx), %ymm26, %ymm30
// CHECK:  encoding: [0x62,0x62,0x2d,0x20,0x04,0xb2,0xe0,0xef,0xff,0xff]
          vpmaddubsw -4128(%rdx), %ymm26, %ymm30

// CHECK: vpmaddwd %xmm28, %xmm24, %xmm17
// CHECK:  encoding: [0x62,0x81,0x3d,0x00,0xf5,0xcc]
          vpmaddwd %xmm28, %xmm24, %xmm17

// CHECK: vpmaddwd %xmm28, %xmm24, %xmm17 {%k1}
// CHECK:  encoding: [0x62,0x81,0x3d,0x01,0xf5,0xcc]
          vpmaddwd %xmm28, %xmm24, %xmm17 {%k1}

// CHECK: vpmaddwd %xmm28, %xmm24, %xmm17 {%k1} {z}
// CHECK:  encoding: [0x62,0x81,0x3d,0x81,0xf5,0xcc]
          vpmaddwd %xmm28, %xmm24, %xmm17 {%k1} {z}

// CHECK: vpmaddwd (%rcx), %xmm24, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x3d,0x00,0xf5,0x09]
          vpmaddwd (%rcx), %xmm24, %xmm17

// CHECK: vpmaddwd 291(%rax,%r14,8), %xmm24, %xmm17
// CHECK:  encoding: [0x62,0xa1,0x3d,0x00,0xf5,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpmaddwd 291(%rax,%r14,8), %xmm24, %xmm17

// CHECK: vpmaddwd 2032(%rdx), %xmm24, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x3d,0x00,0xf5,0x4a,0x7f]
          vpmaddwd 2032(%rdx), %xmm24, %xmm17

// CHECK: vpmaddwd 2048(%rdx), %xmm24, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x3d,0x00,0xf5,0x8a,0x00,0x08,0x00,0x00]
          vpmaddwd 2048(%rdx), %xmm24, %xmm17

// CHECK: vpmaddwd -2048(%rdx), %xmm24, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x3d,0x00,0xf5,0x4a,0x80]
          vpmaddwd -2048(%rdx), %xmm24, %xmm17

// CHECK: vpmaddwd -2064(%rdx), %xmm24, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x3d,0x00,0xf5,0x8a,0xf0,0xf7,0xff,0xff]
          vpmaddwd -2064(%rdx), %xmm24, %xmm17

// CHECK: vpmaddwd %ymm19, %ymm23, %ymm24
// CHECK:  encoding: [0x62,0x21,0x45,0x20,0xf5,0xc3]
          vpmaddwd %ymm19, %ymm23, %ymm24

// CHECK: vpmaddwd %ymm19, %ymm23, %ymm24 {%k4}
// CHECK:  encoding: [0x62,0x21,0x45,0x24,0xf5,0xc3]
          vpmaddwd %ymm19, %ymm23, %ymm24 {%k4}

// CHECK: vpmaddwd %ymm19, %ymm23, %ymm24 {%k4} {z}
// CHECK:  encoding: [0x62,0x21,0x45,0xa4,0xf5,0xc3]
          vpmaddwd %ymm19, %ymm23, %ymm24 {%k4} {z}

// CHECK: vpmaddwd (%rcx), %ymm23, %ymm24
// CHECK:  encoding: [0x62,0x61,0x45,0x20,0xf5,0x01]
          vpmaddwd (%rcx), %ymm23, %ymm24

// CHECK: vpmaddwd 291(%rax,%r14,8), %ymm23, %ymm24
// CHECK:  encoding: [0x62,0x21,0x45,0x20,0xf5,0x84,0xf0,0x23,0x01,0x00,0x00]
          vpmaddwd 291(%rax,%r14,8), %ymm23, %ymm24

// CHECK: vpmaddwd 4064(%rdx), %ymm23, %ymm24
// CHECK:  encoding: [0x62,0x61,0x45,0x20,0xf5,0x42,0x7f]
          vpmaddwd 4064(%rdx), %ymm23, %ymm24

// CHECK: vpmaddwd 4096(%rdx), %ymm23, %ymm24
// CHECK:  encoding: [0x62,0x61,0x45,0x20,0xf5,0x82,0x00,0x10,0x00,0x00]
          vpmaddwd 4096(%rdx), %ymm23, %ymm24

// CHECK: vpmaddwd -4096(%rdx), %ymm23, %ymm24
// CHECK:  encoding: [0x62,0x61,0x45,0x20,0xf5,0x42,0x80]
          vpmaddwd -4096(%rdx), %ymm23, %ymm24

// CHECK: vpmaddwd -4128(%rdx), %ymm23, %ymm24
// CHECK:  encoding: [0x62,0x61,0x45,0x20,0xf5,0x82,0xe0,0xef,0xff,0xff]
          vpmaddwd -4128(%rdx), %ymm23, %ymm24

// CHECK: vpmaddubsw %xmm25, %xmm23, %xmm19
// CHECK:  encoding: [0x62,0x82,0x45,0x00,0x04,0xd9]
          vpmaddubsw %xmm25, %xmm23, %xmm19

// CHECK: vpmaddubsw %xmm25, %xmm23, %xmm19 {%k2}
// CHECK:  encoding: [0x62,0x82,0x45,0x02,0x04,0xd9]
          vpmaddubsw %xmm25, %xmm23, %xmm19 {%k2}

// CHECK: vpmaddubsw %xmm25, %xmm23, %xmm19 {%k2} {z}
// CHECK:  encoding: [0x62,0x82,0x45,0x82,0x04,0xd9]
          vpmaddubsw %xmm25, %xmm23, %xmm19 {%k2} {z}

// CHECK: vpmaddubsw (%rcx), %xmm23, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x45,0x00,0x04,0x19]
          vpmaddubsw (%rcx), %xmm23, %xmm19

// CHECK: vpmaddubsw 4660(%rax,%r14,8), %xmm23, %xmm19
// CHECK:  encoding: [0x62,0xa2,0x45,0x00,0x04,0x9c,0xf0,0x34,0x12,0x00,0x00]
          vpmaddubsw 4660(%rax,%r14,8), %xmm23, %xmm19

// CHECK: vpmaddubsw 2032(%rdx), %xmm23, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x45,0x00,0x04,0x5a,0x7f]
          vpmaddubsw 2032(%rdx), %xmm23, %xmm19

// CHECK: vpmaddubsw 2048(%rdx), %xmm23, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x45,0x00,0x04,0x9a,0x00,0x08,0x00,0x00]
          vpmaddubsw 2048(%rdx), %xmm23, %xmm19

// CHECK: vpmaddubsw -2048(%rdx), %xmm23, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x45,0x00,0x04,0x5a,0x80]
          vpmaddubsw -2048(%rdx), %xmm23, %xmm19

// CHECK: vpmaddubsw -2064(%rdx), %xmm23, %xmm19
// CHECK:  encoding: [0x62,0xe2,0x45,0x00,0x04,0x9a,0xf0,0xf7,0xff,0xff]
          vpmaddubsw -2064(%rdx), %xmm23, %xmm19

// CHECK: vpmaddubsw %ymm22, %ymm19, %ymm17
// CHECK:  encoding: [0x62,0xa2,0x65,0x20,0x04,0xce]
          vpmaddubsw %ymm22, %ymm19, %ymm17

// CHECK: vpmaddubsw %ymm22, %ymm19, %ymm17 {%k7}
// CHECK:  encoding: [0x62,0xa2,0x65,0x27,0x04,0xce]
          vpmaddubsw %ymm22, %ymm19, %ymm17 {%k7}

// CHECK: vpmaddubsw %ymm22, %ymm19, %ymm17 {%k7} {z}
// CHECK:  encoding: [0x62,0xa2,0x65,0xa7,0x04,0xce]
          vpmaddubsw %ymm22, %ymm19, %ymm17 {%k7} {z}

// CHECK: vpmaddubsw (%rcx), %ymm19, %ymm17
// CHECK:  encoding: [0x62,0xe2,0x65,0x20,0x04,0x09]
          vpmaddubsw (%rcx), %ymm19, %ymm17

// CHECK: vpmaddubsw 4660(%rax,%r14,8), %ymm19, %ymm17
// CHECK:  encoding: [0x62,0xa2,0x65,0x20,0x04,0x8c,0xf0,0x34,0x12,0x00,0x00]
          vpmaddubsw 4660(%rax,%r14,8), %ymm19, %ymm17

// CHECK: vpmaddubsw 4064(%rdx), %ymm19, %ymm17
// CHECK:  encoding: [0x62,0xe2,0x65,0x20,0x04,0x4a,0x7f]
          vpmaddubsw 4064(%rdx), %ymm19, %ymm17

// CHECK: vpmaddubsw 4096(%rdx), %ymm19, %ymm17
// CHECK:  encoding: [0x62,0xe2,0x65,0x20,0x04,0x8a,0x00,0x10,0x00,0x00]
          vpmaddubsw 4096(%rdx), %ymm19, %ymm17

// CHECK: vpmaddubsw -4096(%rdx), %ymm19, %ymm17
// CHECK:  encoding: [0x62,0xe2,0x65,0x20,0x04,0x4a,0x80]
          vpmaddubsw -4096(%rdx), %ymm19, %ymm17

// CHECK: vpmaddubsw -4128(%rdx), %ymm19, %ymm17
// CHECK:  encoding: [0x62,0xe2,0x65,0x20,0x04,0x8a,0xe0,0xef,0xff,0xff]
          vpmaddubsw -4128(%rdx), %ymm19, %ymm17

// CHECK: vpmaddwd %xmm20, %xmm22, %xmm23
// CHECK:  encoding: [0x62,0xa1,0x4d,0x00,0xf5,0xfc]
          vpmaddwd %xmm20, %xmm22, %xmm23

// CHECK: vpmaddwd %xmm20, %xmm22, %xmm23 {%k3}
// CHECK:  encoding: [0x62,0xa1,0x4d,0x03,0xf5,0xfc]
          vpmaddwd %xmm20, %xmm22, %xmm23 {%k3}

// CHECK: vpmaddwd %xmm20, %xmm22, %xmm23 {%k3} {z}
// CHECK:  encoding: [0x62,0xa1,0x4d,0x83,0xf5,0xfc]
          vpmaddwd %xmm20, %xmm22, %xmm23 {%k3} {z}

// CHECK: vpmaddwd (%rcx), %xmm22, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x4d,0x00,0xf5,0x39]
          vpmaddwd (%rcx), %xmm22, %xmm23

// CHECK: vpmaddwd 4660(%rax,%r14,8), %xmm22, %xmm23
// CHECK:  encoding: [0x62,0xa1,0x4d,0x00,0xf5,0xbc,0xf0,0x34,0x12,0x00,0x00]
          vpmaddwd 4660(%rax,%r14,8), %xmm22, %xmm23

// CHECK: vpmaddwd 2032(%rdx), %xmm22, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x4d,0x00,0xf5,0x7a,0x7f]
          vpmaddwd 2032(%rdx), %xmm22, %xmm23

// CHECK: vpmaddwd 2048(%rdx), %xmm22, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x4d,0x00,0xf5,0xba,0x00,0x08,0x00,0x00]
          vpmaddwd 2048(%rdx), %xmm22, %xmm23

// CHECK: vpmaddwd -2048(%rdx), %xmm22, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x4d,0x00,0xf5,0x7a,0x80]
          vpmaddwd -2048(%rdx), %xmm22, %xmm23

// CHECK: vpmaddwd -2064(%rdx), %xmm22, %xmm23
// CHECK:  encoding: [0x62,0xe1,0x4d,0x00,0xf5,0xba,0xf0,0xf7,0xff,0xff]
          vpmaddwd -2064(%rdx), %xmm22, %xmm23

// CHECK: vpmaddwd %ymm17, %ymm20, %ymm19
// CHECK:  encoding: [0x62,0xa1,0x5d,0x20,0xf5,0xd9]
          vpmaddwd %ymm17, %ymm20, %ymm19

// CHECK: vpmaddwd %ymm17, %ymm20, %ymm19 {%k2}
// CHECK:  encoding: [0x62,0xa1,0x5d,0x22,0xf5,0xd9]
          vpmaddwd %ymm17, %ymm20, %ymm19 {%k2}

// CHECK: vpmaddwd %ymm17, %ymm20, %ymm19 {%k2} {z}
// CHECK:  encoding: [0x62,0xa1,0x5d,0xa2,0xf5,0xd9]
          vpmaddwd %ymm17, %ymm20, %ymm19 {%k2} {z}

// CHECK: vpmaddwd (%rcx), %ymm20, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x5d,0x20,0xf5,0x19]
          vpmaddwd (%rcx), %ymm20, %ymm19

// CHECK: vpmaddwd 4660(%rax,%r14,8), %ymm20, %ymm19
// CHECK:  encoding: [0x62,0xa1,0x5d,0x20,0xf5,0x9c,0xf0,0x34,0x12,0x00,0x00]
          vpmaddwd 4660(%rax,%r14,8), %ymm20, %ymm19

// CHECK: vpmaddwd 4064(%rdx), %ymm20, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x5d,0x20,0xf5,0x5a,0x7f]
          vpmaddwd 4064(%rdx), %ymm20, %ymm19

// CHECK: vpmaddwd 4096(%rdx), %ymm20, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x5d,0x20,0xf5,0x9a,0x00,0x10,0x00,0x00]
          vpmaddwd 4096(%rdx), %ymm20, %ymm19

// CHECK: vpmaddwd -4096(%rdx), %ymm20, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x5d,0x20,0xf5,0x5a,0x80]
          vpmaddwd -4096(%rdx), %ymm20, %ymm19

// CHECK: vpmaddwd -4128(%rdx), %ymm20, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x5d,0x20,0xf5,0x9a,0xe0,0xef,0xff,0xff]
          vpmaddwd -4128(%rdx), %ymm20, %ymm19

// CHECK: vptestnmw %xmm24, %xmm29, %k4
// CHECK:  encoding: [0x62,0x92,0x96,0x00,0x26,0xe0]
          vptestnmw %xmm24, %xmm29, %k4

// CHECK: vptestnmw %xmm24, %xmm29, %k4 {%k5}
// CHECK:  encoding: [0x62,0x92,0x96,0x05,0x26,0xe0]
          vptestnmw %xmm24, %xmm29, %k4 {%k5}

// CHECK: vptestnmw (%rcx), %xmm29, %k4
// CHECK:  encoding: [0x62,0xf2,0x96,0x00,0x26,0x21]
          vptestnmw (%rcx), %xmm29, %k4

// CHECK: vptestnmw 291(%rax,%r14,8), %xmm29, %k4
// CHECK:  encoding: [0x62,0xb2,0x96,0x00,0x26,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vptestnmw 291(%rax,%r14,8), %xmm29, %k4

// CHECK: vptestnmw 2032(%rdx), %xmm29, %k4
// CHECK:  encoding: [0x62,0xf2,0x96,0x00,0x26,0x62,0x7f]
          vptestnmw 2032(%rdx), %xmm29, %k4

// CHECK: vptestnmw 2048(%rdx), %xmm29, %k4
// CHECK:  encoding: [0x62,0xf2,0x96,0x00,0x26,0xa2,0x00,0x08,0x00,0x00]
          vptestnmw 2048(%rdx), %xmm29, %k4

// CHECK: vptestnmw -2048(%rdx), %xmm29, %k4
// CHECK:  encoding: [0x62,0xf2,0x96,0x00,0x26,0x62,0x80]
          vptestnmw -2048(%rdx), %xmm29, %k4

// CHECK: vptestnmw -2064(%rdx), %xmm29, %k4
// CHECK:  encoding: [0x62,0xf2,0x96,0x00,0x26,0xa2,0xf0,0xf7,0xff,0xff]
          vptestnmw -2064(%rdx), %xmm29, %k4

// CHECK: vptestnmw %ymm17, %ymm28, %k2
// CHECK:  encoding: [0x62,0xb2,0x9e,0x20,0x26,0xd1]
          vptestnmw %ymm17, %ymm28, %k2

// CHECK: vptestnmw %ymm17, %ymm28, %k2 {%k2}
// CHECK:  encoding: [0x62,0xb2,0x9e,0x22,0x26,0xd1]
          vptestnmw %ymm17, %ymm28, %k2 {%k2}

// CHECK: vptestnmw (%rcx), %ymm28, %k2
// CHECK:  encoding: [0x62,0xf2,0x9e,0x20,0x26,0x11]
          vptestnmw (%rcx), %ymm28, %k2

// CHECK: vptestnmw 291(%rax,%r14,8), %ymm28, %k2
// CHECK:  encoding: [0x62,0xb2,0x9e,0x20,0x26,0x94,0xf0,0x23,0x01,0x00,0x00]
          vptestnmw 291(%rax,%r14,8), %ymm28, %k2

// CHECK: vptestnmw 4064(%rdx), %ymm28, %k2
// CHECK:  encoding: [0x62,0xf2,0x9e,0x20,0x26,0x52,0x7f]
          vptestnmw 4064(%rdx), %ymm28, %k2

// CHECK: vptestnmw 4096(%rdx), %ymm28, %k2
// CHECK:  encoding: [0x62,0xf2,0x9e,0x20,0x26,0x92,0x00,0x10,0x00,0x00]
          vptestnmw 4096(%rdx), %ymm28, %k2

// CHECK: vptestnmw -4096(%rdx), %ymm28, %k2
// CHECK:  encoding: [0x62,0xf2,0x9e,0x20,0x26,0x52,0x80]
          vptestnmw -4096(%rdx), %ymm28, %k2

// CHECK: vptestnmw -4128(%rdx), %ymm28, %k2
// CHECK:  encoding: [0x62,0xf2,0x9e,0x20,0x26,0x92,0xe0,0xef,0xff,0xff]
          vptestnmw -4128(%rdx), %ymm28, %k2

// CHECK: vptestnmw %xmm21, %xmm27, %k2
// CHECK:  encoding: [0x62,0xb2,0xa6,0x00,0x26,0xd5]
          vptestnmw %xmm21, %xmm27, %k2

// CHECK: vptestnmw %xmm21, %xmm27, %k2 {%k3}
// CHECK:  encoding: [0x62,0xb2,0xa6,0x03,0x26,0xd5]
          vptestnmw %xmm21, %xmm27, %k2 {%k3}

// CHECK: vptestnmw (%rcx), %xmm27, %k2
// CHECK:  encoding: [0x62,0xf2,0xa6,0x00,0x26,0x11]
          vptestnmw (%rcx), %xmm27, %k2

// CHECK: vptestnmw 4660(%rax,%r14,8), %xmm27, %k2
// CHECK:  encoding: [0x62,0xb2,0xa6,0x00,0x26,0x94,0xf0,0x34,0x12,0x00,0x00]
          vptestnmw 4660(%rax,%r14,8), %xmm27, %k2

// CHECK: vptestnmw 2032(%rdx), %xmm27, %k2
// CHECK:  encoding: [0x62,0xf2,0xa6,0x00,0x26,0x52,0x7f]
          vptestnmw 2032(%rdx), %xmm27, %k2

// CHECK: vptestnmw 2048(%rdx), %xmm27, %k2
// CHECK:  encoding: [0x62,0xf2,0xa6,0x00,0x26,0x92,0x00,0x08,0x00,0x00]
          vptestnmw 2048(%rdx), %xmm27, %k2

// CHECK: vptestnmw -2048(%rdx), %xmm27, %k2
// CHECK:  encoding: [0x62,0xf2,0xa6,0x00,0x26,0x52,0x80]
          vptestnmw -2048(%rdx), %xmm27, %k2

// CHECK: vptestnmw -2064(%rdx), %xmm27, %k2
// CHECK:  encoding: [0x62,0xf2,0xa6,0x00,0x26,0x92,0xf0,0xf7,0xff,0xff]
          vptestnmw -2064(%rdx), %xmm27, %k2

// CHECK: vptestnmw %ymm23, %ymm19, %k4
// CHECK:  encoding: [0x62,0xb2,0xe6,0x20,0x26,0xe7]
          vptestnmw %ymm23, %ymm19, %k4

// CHECK: vptestnmw %ymm23, %ymm19, %k4 {%k1}
// CHECK:  encoding: [0x62,0xb2,0xe6,0x21,0x26,0xe7]
          vptestnmw %ymm23, %ymm19, %k4 {%k1}

// CHECK: vptestnmw (%rcx), %ymm19, %k4
// CHECK:  encoding: [0x62,0xf2,0xe6,0x20,0x26,0x21]
          vptestnmw (%rcx), %ymm19, %k4

// CHECK: vptestnmw 4660(%rax,%r14,8), %ymm19, %k4
// CHECK:  encoding: [0x62,0xb2,0xe6,0x20,0x26,0xa4,0xf0,0x34,0x12,0x00,0x00]
          vptestnmw 4660(%rax,%r14,8), %ymm19, %k4

// CHECK: vptestnmw 4064(%rdx), %ymm19, %k4
// CHECK:  encoding: [0x62,0xf2,0xe6,0x20,0x26,0x62,0x7f]
          vptestnmw 4064(%rdx), %ymm19, %k4

// CHECK: vptestnmw 4096(%rdx), %ymm19, %k4
// CHECK:  encoding: [0x62,0xf2,0xe6,0x20,0x26,0xa2,0x00,0x10,0x00,0x00]
          vptestnmw 4096(%rdx), %ymm19, %k4

// CHECK: vptestnmw -4096(%rdx), %ymm19, %k4
// CHECK:  encoding: [0x62,0xf2,0xe6,0x20,0x26,0x62,0x80]
          vptestnmw -4096(%rdx), %ymm19, %k4

// CHECK: vptestnmw -4128(%rdx), %ymm19, %k4
// CHECK:  encoding: [0x62,0xf2,0xe6,0x20,0x26,0xa2,0xe0,0xef,0xff,0xff]
          vptestnmw -4128(%rdx), %ymm19, %k4

// CHECK: vptestnmb %xmm22, %xmm27, %k4
// CHECK:  encoding: [0x62,0xb2,0x26,0x00,0x26,0xe6]
          vptestnmb %xmm22, %xmm27, %k4

// CHECK: vptestnmb %xmm22, %xmm27, %k4 {%k1}
// CHECK:  encoding: [0x62,0xb2,0x26,0x01,0x26,0xe6]
          vptestnmb %xmm22, %xmm27, %k4 {%k1}

// CHECK: vptestnmb (%rcx), %xmm27, %k4
// CHECK:  encoding: [0x62,0xf2,0x26,0x00,0x26,0x21]
          vptestnmb (%rcx), %xmm27, %k4

// CHECK: vptestnmb 291(%rax,%r14,8), %xmm27, %k4
// CHECK:  encoding: [0x62,0xb2,0x26,0x00,0x26,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vptestnmb 291(%rax,%r14,8), %xmm27, %k4

// CHECK: vptestnmb 2032(%rdx), %xmm27, %k4
// CHECK:  encoding: [0x62,0xf2,0x26,0x00,0x26,0x62,0x7f]
          vptestnmb 2032(%rdx), %xmm27, %k4

// CHECK: vptestnmb 2048(%rdx), %xmm27, %k4
// CHECK:  encoding: [0x62,0xf2,0x26,0x00,0x26,0xa2,0x00,0x08,0x00,0x00]
          vptestnmb 2048(%rdx), %xmm27, %k4

// CHECK: vptestnmb -2048(%rdx), %xmm27, %k4
// CHECK:  encoding: [0x62,0xf2,0x26,0x00,0x26,0x62,0x80]
          vptestnmb -2048(%rdx), %xmm27, %k4

// CHECK: vptestnmb -2064(%rdx), %xmm27, %k4
// CHECK:  encoding: [0x62,0xf2,0x26,0x00,0x26,0xa2,0xf0,0xf7,0xff,0xff]
          vptestnmb -2064(%rdx), %xmm27, %k4

// CHECK: vptestnmb %ymm17, %ymm25, %k5
// CHECK:  encoding: [0x62,0xb2,0x36,0x20,0x26,0xe9]
          vptestnmb %ymm17, %ymm25, %k5

// CHECK: vptestnmb %ymm17, %ymm25, %k5 {%k6}
// CHECK:  encoding: [0x62,0xb2,0x36,0x26,0x26,0xe9]
          vptestnmb %ymm17, %ymm25, %k5 {%k6}

// CHECK: vptestnmb (%rcx), %ymm25, %k5
// CHECK:  encoding: [0x62,0xf2,0x36,0x20,0x26,0x29]
          vptestnmb (%rcx), %ymm25, %k5

// CHECK: vptestnmb 291(%rax,%r14,8), %ymm25, %k5
// CHECK:  encoding: [0x62,0xb2,0x36,0x20,0x26,0xac,0xf0,0x23,0x01,0x00,0x00]
          vptestnmb 291(%rax,%r14,8), %ymm25, %k5

// CHECK: vptestnmb 4064(%rdx), %ymm25, %k5
// CHECK:  encoding: [0x62,0xf2,0x36,0x20,0x26,0x6a,0x7f]
          vptestnmb 4064(%rdx), %ymm25, %k5

// CHECK: vptestnmb 4096(%rdx), %ymm25, %k5
// CHECK:  encoding: [0x62,0xf2,0x36,0x20,0x26,0xaa,0x00,0x10,0x00,0x00]
          vptestnmb 4096(%rdx), %ymm25, %k5

// CHECK: vptestnmb -4096(%rdx), %ymm25, %k5
// CHECK:  encoding: [0x62,0xf2,0x36,0x20,0x26,0x6a,0x80]
          vptestnmb -4096(%rdx), %ymm25, %k5

// CHECK: vptestnmb -4128(%rdx), %ymm25, %k5
// CHECK:  encoding: [0x62,0xf2,0x36,0x20,0x26,0xaa,0xe0,0xef,0xff,0xff]
          vptestnmb -4128(%rdx), %ymm25, %k5

// CHECK: vptestnmb %xmm19, %xmm27, %k4
// CHECK:  encoding: [0x62,0xb2,0x26,0x00,0x26,0xe3]
          vptestnmb %xmm19, %xmm27, %k4

// CHECK: vptestnmb %xmm19, %xmm27, %k4 {%k3}
// CHECK:  encoding: [0x62,0xb2,0x26,0x03,0x26,0xe3]
          vptestnmb %xmm19, %xmm27, %k4 {%k3}

// CHECK: vptestnmb (%rcx), %xmm27, %k4
// CHECK:  encoding: [0x62,0xf2,0x26,0x00,0x26,0x21]
          vptestnmb (%rcx), %xmm27, %k4

// CHECK: vptestnmb 4660(%rax,%r14,8), %xmm27, %k4
// CHECK:  encoding: [0x62,0xb2,0x26,0x00,0x26,0xa4,0xf0,0x34,0x12,0x00,0x00]
          vptestnmb 4660(%rax,%r14,8), %xmm27, %k4

// CHECK: vptestnmb 2032(%rdx), %xmm27, %k4
// CHECK:  encoding: [0x62,0xf2,0x26,0x00,0x26,0x62,0x7f]
          vptestnmb 2032(%rdx), %xmm27, %k4

// CHECK: vptestnmb 2048(%rdx), %xmm27, %k4
// CHECK:  encoding: [0x62,0xf2,0x26,0x00,0x26,0xa2,0x00,0x08,0x00,0x00]
          vptestnmb 2048(%rdx), %xmm27, %k4

// CHECK: vptestnmb -2048(%rdx), %xmm27, %k4
// CHECK:  encoding: [0x62,0xf2,0x26,0x00,0x26,0x62,0x80]
          vptestnmb -2048(%rdx), %xmm27, %k4

// CHECK: vptestnmb -2064(%rdx), %xmm27, %k4
// CHECK:  encoding: [0x62,0xf2,0x26,0x00,0x26,0xa2,0xf0,0xf7,0xff,0xff]
          vptestnmb -2064(%rdx), %xmm27, %k4

// CHECK: vptestnmb %ymm24, %ymm28, %k4
// CHECK:  encoding: [0x62,0x92,0x1e,0x20,0x26,0xe0]
          vptestnmb %ymm24, %ymm28, %k4

// CHECK: vptestnmb %ymm24, %ymm28, %k4 {%k1}
// CHECK:  encoding: [0x62,0x92,0x1e,0x21,0x26,0xe0]
          vptestnmb %ymm24, %ymm28, %k4 {%k1}

// CHECK: vptestnmb (%rcx), %ymm28, %k4
// CHECK:  encoding: [0x62,0xf2,0x1e,0x20,0x26,0x21]
          vptestnmb (%rcx), %ymm28, %k4

// CHECK: vptestnmb 4660(%rax,%r14,8), %ymm28, %k4
// CHECK:  encoding: [0x62,0xb2,0x1e,0x20,0x26,0xa4,0xf0,0x34,0x12,0x00,0x00]
          vptestnmb 4660(%rax,%r14,8), %ymm28, %k4

// CHECK: vptestnmb 4064(%rdx), %ymm28, %k4
// CHECK:  encoding: [0x62,0xf2,0x1e,0x20,0x26,0x62,0x7f]
          vptestnmb 4064(%rdx), %ymm28, %k4

// CHECK: vptestnmb 4096(%rdx), %ymm28, %k4
// CHECK:  encoding: [0x62,0xf2,0x1e,0x20,0x26,0xa2,0x00,0x10,0x00,0x00]
          vptestnmb 4096(%rdx), %ymm28, %k4

// CHECK: vptestnmb -4096(%rdx), %ymm28, %k4
// CHECK:  encoding: [0x62,0xf2,0x1e,0x20,0x26,0x62,0x80]
          vptestnmb -4096(%rdx), %ymm28, %k4

// CHECK: vptestnmb -4128(%rdx), %ymm28, %k4
// CHECK:  encoding: [0x62,0xf2,0x1e,0x20,0x26,0xa2,0xe0,0xef,0xff,0xff]
          vptestnmb -4128(%rdx), %ymm28, %k4

// CHECK: vpunpcklbw %xmm20, %xmm19, %xmm30
// CHECK:  encoding: [0x62,0x21,0x65,0x00,0x60,0xf4]
          vpunpcklbw %xmm20, %xmm19, %xmm30

// CHECK: vpunpcklbw %xmm20, %xmm19, %xmm30 {%k4}
// CHECK:  encoding: [0x62,0x21,0x65,0x04,0x60,0xf4]
          vpunpcklbw %xmm20, %xmm19, %xmm30 {%k4}

// CHECK: vpunpcklbw %xmm20, %xmm19, %xmm30 {%k4} {z}
// CHECK:  encoding: [0x62,0x21,0x65,0x84,0x60,0xf4]
          vpunpcklbw %xmm20, %xmm19, %xmm30 {%k4} {z}

// CHECK: vpunpcklbw (%rcx), %xmm19, %xmm30
// CHECK:  encoding: [0x62,0x61,0x65,0x00,0x60,0x31]
          vpunpcklbw (%rcx), %xmm19, %xmm30

// CHECK: vpunpcklbw 4660(%rax,%r14,8), %xmm19, %xmm30
// CHECK:  encoding: [0x62,0x21,0x65,0x00,0x60,0xb4,0xf0,0x34,0x12,0x00,0x00]
          vpunpcklbw 4660(%rax,%r14,8), %xmm19, %xmm30

// CHECK: vpunpcklbw 2032(%rdx), %xmm19, %xmm30
// CHECK:  encoding: [0x62,0x61,0x65,0x00,0x60,0x72,0x7f]
          vpunpcklbw 2032(%rdx), %xmm19, %xmm30

// CHECK: vpunpcklbw 2048(%rdx), %xmm19, %xmm30
// CHECK:  encoding: [0x62,0x61,0x65,0x00,0x60,0xb2,0x00,0x08,0x00,0x00]
          vpunpcklbw 2048(%rdx), %xmm19, %xmm30

// CHECK: vpunpcklbw -2048(%rdx), %xmm19, %xmm30
// CHECK:  encoding: [0x62,0x61,0x65,0x00,0x60,0x72,0x80]
          vpunpcklbw -2048(%rdx), %xmm19, %xmm30

// CHECK: vpunpcklbw -2064(%rdx), %xmm19, %xmm30
// CHECK:  encoding: [0x62,0x61,0x65,0x00,0x60,0xb2,0xf0,0xf7,0xff,0xff]
          vpunpcklbw -2064(%rdx), %xmm19, %xmm30

// CHECK: vpunpcklbw %ymm22, %ymm28, %ymm20
// CHECK:  encoding: [0x62,0xa1,0x1d,0x20,0x60,0xe6]
          vpunpcklbw %ymm22, %ymm28, %ymm20

// CHECK: vpunpcklbw %ymm22, %ymm28, %ymm20 {%k1}
// CHECK:  encoding: [0x62,0xa1,0x1d,0x21,0x60,0xe6]
          vpunpcklbw %ymm22, %ymm28, %ymm20 {%k1}

// CHECK: vpunpcklbw %ymm22, %ymm28, %ymm20 {%k1} {z}
// CHECK:  encoding: [0x62,0xa1,0x1d,0xa1,0x60,0xe6]
          vpunpcklbw %ymm22, %ymm28, %ymm20 {%k1} {z}

// CHECK: vpunpcklbw (%rcx), %ymm28, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x1d,0x20,0x60,0x21]
          vpunpcklbw (%rcx), %ymm28, %ymm20

// CHECK: vpunpcklbw 4660(%rax,%r14,8), %ymm28, %ymm20
// CHECK:  encoding: [0x62,0xa1,0x1d,0x20,0x60,0xa4,0xf0,0x34,0x12,0x00,0x00]
          vpunpcklbw 4660(%rax,%r14,8), %ymm28, %ymm20

// CHECK: vpunpcklbw 4064(%rdx), %ymm28, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x1d,0x20,0x60,0x62,0x7f]
          vpunpcklbw 4064(%rdx), %ymm28, %ymm20

// CHECK: vpunpcklbw 4096(%rdx), %ymm28, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x1d,0x20,0x60,0xa2,0x00,0x10,0x00,0x00]
          vpunpcklbw 4096(%rdx), %ymm28, %ymm20

// CHECK: vpunpcklbw -4096(%rdx), %ymm28, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x1d,0x20,0x60,0x62,0x80]
          vpunpcklbw -4096(%rdx), %ymm28, %ymm20

// CHECK: vpunpcklbw -4128(%rdx), %ymm28, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x1d,0x20,0x60,0xa2,0xe0,0xef,0xff,0xff]
          vpunpcklbw -4128(%rdx), %ymm28, %ymm20

// CHECK: vpunpckhbw %xmm27, %xmm22, %xmm18
// CHECK:  encoding: [0x62,0x81,0x4d,0x00,0x68,0xd3]
          vpunpckhbw %xmm27, %xmm22, %xmm18

// CHECK: vpunpckhbw %xmm27, %xmm22, %xmm18 {%k1}
// CHECK:  encoding: [0x62,0x81,0x4d,0x01,0x68,0xd3]
          vpunpckhbw %xmm27, %xmm22, %xmm18 {%k1}

// CHECK: vpunpckhbw %xmm27, %xmm22, %xmm18 {%k1} {z}
// CHECK:  encoding: [0x62,0x81,0x4d,0x81,0x68,0xd3]
          vpunpckhbw %xmm27, %xmm22, %xmm18 {%k1} {z}

// CHECK: vpunpckhbw (%rcx), %xmm22, %xmm18
// CHECK:  encoding: [0x62,0xe1,0x4d,0x00,0x68,0x11]
          vpunpckhbw (%rcx), %xmm22, %xmm18

// CHECK: vpunpckhbw 4660(%rax,%r14,8), %xmm22, %xmm18
// CHECK:  encoding: [0x62,0xa1,0x4d,0x00,0x68,0x94,0xf0,0x34,0x12,0x00,0x00]
          vpunpckhbw 4660(%rax,%r14,8), %xmm22, %xmm18

// CHECK: vpunpckhbw 2032(%rdx), %xmm22, %xmm18
// CHECK:  encoding: [0x62,0xe1,0x4d,0x00,0x68,0x52,0x7f]
          vpunpckhbw 2032(%rdx), %xmm22, %xmm18

// CHECK: vpunpckhbw 2048(%rdx), %xmm22, %xmm18
// CHECK:  encoding: [0x62,0xe1,0x4d,0x00,0x68,0x92,0x00,0x08,0x00,0x00]
          vpunpckhbw 2048(%rdx), %xmm22, %xmm18

// CHECK: vpunpckhbw -2048(%rdx), %xmm22, %xmm18
// CHECK:  encoding: [0x62,0xe1,0x4d,0x00,0x68,0x52,0x80]
          vpunpckhbw -2048(%rdx), %xmm22, %xmm18

// CHECK: vpunpckhbw -2064(%rdx), %xmm22, %xmm18
// CHECK:  encoding: [0x62,0xe1,0x4d,0x00,0x68,0x92,0xf0,0xf7,0xff,0xff]
          vpunpckhbw -2064(%rdx), %xmm22, %xmm18

// CHECK: vpunpckhbw %ymm24, %ymm20, %ymm17
// CHECK:  encoding: [0x62,0x81,0x5d,0x20,0x68,0xc8]
          vpunpckhbw %ymm24, %ymm20, %ymm17

// CHECK: vpunpckhbw %ymm24, %ymm20, %ymm17 {%k5}
// CHECK:  encoding: [0x62,0x81,0x5d,0x25,0x68,0xc8]
          vpunpckhbw %ymm24, %ymm20, %ymm17 {%k5}

// CHECK: vpunpckhbw %ymm24, %ymm20, %ymm17 {%k5} {z}
// CHECK:  encoding: [0x62,0x81,0x5d,0xa5,0x68,0xc8]
          vpunpckhbw %ymm24, %ymm20, %ymm17 {%k5} {z}

// CHECK: vpunpckhbw (%rcx), %ymm20, %ymm17
// CHECK:  encoding: [0x62,0xe1,0x5d,0x20,0x68,0x09]
          vpunpckhbw (%rcx), %ymm20, %ymm17

// CHECK: vpunpckhbw 4660(%rax,%r14,8), %ymm20, %ymm17
// CHECK:  encoding: [0x62,0xa1,0x5d,0x20,0x68,0x8c,0xf0,0x34,0x12,0x00,0x00]
          vpunpckhbw 4660(%rax,%r14,8), %ymm20, %ymm17

// CHECK: vpunpckhbw 4064(%rdx), %ymm20, %ymm17
// CHECK:  encoding: [0x62,0xe1,0x5d,0x20,0x68,0x4a,0x7f]
          vpunpckhbw 4064(%rdx), %ymm20, %ymm17

// CHECK: vpunpckhbw 4096(%rdx), %ymm20, %ymm17
// CHECK:  encoding: [0x62,0xe1,0x5d,0x20,0x68,0x8a,0x00,0x10,0x00,0x00]
          vpunpckhbw 4096(%rdx), %ymm20, %ymm17

// CHECK: vpunpckhbw -4096(%rdx), %ymm20, %ymm17
// CHECK:  encoding: [0x62,0xe1,0x5d,0x20,0x68,0x4a,0x80]
          vpunpckhbw -4096(%rdx), %ymm20, %ymm17

// CHECK: vpunpckhbw -4128(%rdx), %ymm20, %ymm17
// CHECK:  encoding: [0x62,0xe1,0x5d,0x20,0x68,0x8a,0xe0,0xef,0xff,0xff]
          vpunpckhbw -4128(%rdx), %ymm20, %ymm17

// CHECK: vpunpcklwd %xmm17, %xmm27, %xmm27
// CHECK:  encoding: [0x62,0x21,0x25,0x00,0x61,0xd9]
          vpunpcklwd %xmm17, %xmm27, %xmm27

// CHECK: vpunpcklwd %xmm17, %xmm27, %xmm27 {%k5}
// CHECK:  encoding: [0x62,0x21,0x25,0x05,0x61,0xd9]
          vpunpcklwd %xmm17, %xmm27, %xmm27 {%k5}

// CHECK: vpunpcklwd %xmm17, %xmm27, %xmm27 {%k5} {z}
// CHECK:  encoding: [0x62,0x21,0x25,0x85,0x61,0xd9]
          vpunpcklwd %xmm17, %xmm27, %xmm27 {%k5} {z}

// CHECK: vpunpcklwd (%rcx), %xmm27, %xmm27
// CHECK:  encoding: [0x62,0x61,0x25,0x00,0x61,0x19]
          vpunpcklwd (%rcx), %xmm27, %xmm27

// CHECK: vpunpcklwd 4660(%rax,%r14,8), %xmm27, %xmm27
// CHECK:  encoding: [0x62,0x21,0x25,0x00,0x61,0x9c,0xf0,0x34,0x12,0x00,0x00]
          vpunpcklwd 4660(%rax,%r14,8), %xmm27, %xmm27

// CHECK: vpunpcklwd 2032(%rdx), %xmm27, %xmm27
// CHECK:  encoding: [0x62,0x61,0x25,0x00,0x61,0x5a,0x7f]
          vpunpcklwd 2032(%rdx), %xmm27, %xmm27

// CHECK: vpunpcklwd 2048(%rdx), %xmm27, %xmm27
// CHECK:  encoding: [0x62,0x61,0x25,0x00,0x61,0x9a,0x00,0x08,0x00,0x00]
          vpunpcklwd 2048(%rdx), %xmm27, %xmm27

// CHECK: vpunpcklwd -2048(%rdx), %xmm27, %xmm27
// CHECK:  encoding: [0x62,0x61,0x25,0x00,0x61,0x5a,0x80]
          vpunpcklwd -2048(%rdx), %xmm27, %xmm27

// CHECK: vpunpcklwd -2064(%rdx), %xmm27, %xmm27
// CHECK:  encoding: [0x62,0x61,0x25,0x00,0x61,0x9a,0xf0,0xf7,0xff,0xff]
          vpunpcklwd -2064(%rdx), %xmm27, %xmm27

// CHECK: vpunpcklwd %ymm23, %ymm25, %ymm18
// CHECK:  encoding: [0x62,0xa1,0x35,0x20,0x61,0xd7]
          vpunpcklwd %ymm23, %ymm25, %ymm18

// CHECK: vpunpcklwd %ymm23, %ymm25, %ymm18 {%k5}
// CHECK:  encoding: [0x62,0xa1,0x35,0x25,0x61,0xd7]
          vpunpcklwd %ymm23, %ymm25, %ymm18 {%k5}

// CHECK: vpunpcklwd %ymm23, %ymm25, %ymm18 {%k5} {z}
// CHECK:  encoding: [0x62,0xa1,0x35,0xa5,0x61,0xd7]
          vpunpcklwd %ymm23, %ymm25, %ymm18 {%k5} {z}

// CHECK: vpunpcklwd (%rcx), %ymm25, %ymm18
// CHECK:  encoding: [0x62,0xe1,0x35,0x20,0x61,0x11]
          vpunpcklwd (%rcx), %ymm25, %ymm18

// CHECK: vpunpcklwd 4660(%rax,%r14,8), %ymm25, %ymm18
// CHECK:  encoding: [0x62,0xa1,0x35,0x20,0x61,0x94,0xf0,0x34,0x12,0x00,0x00]
          vpunpcklwd 4660(%rax,%r14,8), %ymm25, %ymm18

// CHECK: vpunpcklwd 4064(%rdx), %ymm25, %ymm18
// CHECK:  encoding: [0x62,0xe1,0x35,0x20,0x61,0x52,0x7f]
          vpunpcklwd 4064(%rdx), %ymm25, %ymm18

// CHECK: vpunpcklwd 4096(%rdx), %ymm25, %ymm18
// CHECK:  encoding: [0x62,0xe1,0x35,0x20,0x61,0x92,0x00,0x10,0x00,0x00]
          vpunpcklwd 4096(%rdx), %ymm25, %ymm18

// CHECK: vpunpcklwd -4096(%rdx), %ymm25, %ymm18
// CHECK:  encoding: [0x62,0xe1,0x35,0x20,0x61,0x52,0x80]
          vpunpcklwd -4096(%rdx), %ymm25, %ymm18

// CHECK: vpunpcklwd -4128(%rdx), %ymm25, %ymm18
// CHECK:  encoding: [0x62,0xe1,0x35,0x20,0x61,0x92,0xe0,0xef,0xff,0xff]
          vpunpcklwd -4128(%rdx), %ymm25, %ymm18

// CHECK: vpunpckhwd %xmm17, %xmm28, %xmm17
// CHECK:  encoding: [0x62,0xa1,0x1d,0x00,0x69,0xc9]
          vpunpckhwd %xmm17, %xmm28, %xmm17

// CHECK: vpunpckhwd %xmm17, %xmm28, %xmm17 {%k7}
// CHECK:  encoding: [0x62,0xa1,0x1d,0x07,0x69,0xc9]
          vpunpckhwd %xmm17, %xmm28, %xmm17 {%k7}

// CHECK: vpunpckhwd %xmm17, %xmm28, %xmm17 {%k7} {z}
// CHECK:  encoding: [0x62,0xa1,0x1d,0x87,0x69,0xc9]
          vpunpckhwd %xmm17, %xmm28, %xmm17 {%k7} {z}

// CHECK: vpunpckhwd (%rcx), %xmm28, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x1d,0x00,0x69,0x09]
          vpunpckhwd (%rcx), %xmm28, %xmm17

// CHECK: vpunpckhwd 4660(%rax,%r14,8), %xmm28, %xmm17
// CHECK:  encoding: [0x62,0xa1,0x1d,0x00,0x69,0x8c,0xf0,0x34,0x12,0x00,0x00]
          vpunpckhwd 4660(%rax,%r14,8), %xmm28, %xmm17

// CHECK: vpunpckhwd 2032(%rdx), %xmm28, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x1d,0x00,0x69,0x4a,0x7f]
          vpunpckhwd 2032(%rdx), %xmm28, %xmm17

// CHECK: vpunpckhwd 2048(%rdx), %xmm28, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x1d,0x00,0x69,0x8a,0x00,0x08,0x00,0x00]
          vpunpckhwd 2048(%rdx), %xmm28, %xmm17

// CHECK: vpunpckhwd -2048(%rdx), %xmm28, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x1d,0x00,0x69,0x4a,0x80]
          vpunpckhwd -2048(%rdx), %xmm28, %xmm17

// CHECK: vpunpckhwd -2064(%rdx), %xmm28, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x1d,0x00,0x69,0x8a,0xf0,0xf7,0xff,0xff]
          vpunpckhwd -2064(%rdx), %xmm28, %xmm17

// CHECK: vpunpckhwd %ymm20, %ymm25, %ymm24
// CHECK:  encoding: [0x62,0x21,0x35,0x20,0x69,0xc4]
          vpunpckhwd %ymm20, %ymm25, %ymm24

// CHECK: vpunpckhwd %ymm20, %ymm25, %ymm24 {%k1}
// CHECK:  encoding: [0x62,0x21,0x35,0x21,0x69,0xc4]
          vpunpckhwd %ymm20, %ymm25, %ymm24 {%k1}

// CHECK: vpunpckhwd %ymm20, %ymm25, %ymm24 {%k1} {z}
// CHECK:  encoding: [0x62,0x21,0x35,0xa1,0x69,0xc4]
          vpunpckhwd %ymm20, %ymm25, %ymm24 {%k1} {z}

// CHECK: vpunpckhwd (%rcx), %ymm25, %ymm24
// CHECK:  encoding: [0x62,0x61,0x35,0x20,0x69,0x01]
          vpunpckhwd (%rcx), %ymm25, %ymm24

// CHECK: vpunpckhwd 4660(%rax,%r14,8), %ymm25, %ymm24
// CHECK:  encoding: [0x62,0x21,0x35,0x20,0x69,0x84,0xf0,0x34,0x12,0x00,0x00]
          vpunpckhwd 4660(%rax,%r14,8), %ymm25, %ymm24

// CHECK: vpunpckhwd 4064(%rdx), %ymm25, %ymm24
// CHECK:  encoding: [0x62,0x61,0x35,0x20,0x69,0x42,0x7f]
          vpunpckhwd 4064(%rdx), %ymm25, %ymm24

// CHECK: vpunpckhwd 4096(%rdx), %ymm25, %ymm24
// CHECK:  encoding: [0x62,0x61,0x35,0x20,0x69,0x82,0x00,0x10,0x00,0x00]
          vpunpckhwd 4096(%rdx), %ymm25, %ymm24

// CHECK: vpunpckhwd -4096(%rdx), %ymm25, %ymm24
// CHECK:  encoding: [0x62,0x61,0x35,0x20,0x69,0x42,0x80]
          vpunpckhwd -4096(%rdx), %ymm25, %ymm24

// CHECK: vpunpckhwd -4128(%rdx), %ymm25, %ymm24
// CHECK:  encoding: [0x62,0x61,0x35,0x20,0x69,0x82,0xe0,0xef,0xff,0xff]
          vpunpckhwd -4128(%rdx), %ymm25, %ymm24

// CHECK: vpunpcklbw %xmm23, %xmm29, %xmm18
// CHECK:  encoding: [0x62,0xa1,0x15,0x00,0x60,0xd7]
          vpunpcklbw %xmm23, %xmm29, %xmm18

// CHECK: vpunpcklbw %xmm23, %xmm29, %xmm18 {%k4}
// CHECK:  encoding: [0x62,0xa1,0x15,0x04,0x60,0xd7]
          vpunpcklbw %xmm23, %xmm29, %xmm18 {%k4}

// CHECK: vpunpcklbw %xmm23, %xmm29, %xmm18 {%k4} {z}
// CHECK:  encoding: [0x62,0xa1,0x15,0x84,0x60,0xd7]
          vpunpcklbw %xmm23, %xmm29, %xmm18 {%k4} {z}

// CHECK: vpunpcklbw (%rcx), %xmm29, %xmm18
// CHECK:  encoding: [0x62,0xe1,0x15,0x00,0x60,0x11]
          vpunpcklbw (%rcx), %xmm29, %xmm18

// CHECK: vpunpcklbw 291(%rax,%r14,8), %xmm29, %xmm18
// CHECK:  encoding: [0x62,0xa1,0x15,0x00,0x60,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpunpcklbw 291(%rax,%r14,8), %xmm29, %xmm18

// CHECK: vpunpcklbw 2032(%rdx), %xmm29, %xmm18
// CHECK:  encoding: [0x62,0xe1,0x15,0x00,0x60,0x52,0x7f]
          vpunpcklbw 2032(%rdx), %xmm29, %xmm18

// CHECK: vpunpcklbw 2048(%rdx), %xmm29, %xmm18
// CHECK:  encoding: [0x62,0xe1,0x15,0x00,0x60,0x92,0x00,0x08,0x00,0x00]
          vpunpcklbw 2048(%rdx), %xmm29, %xmm18

// CHECK: vpunpcklbw -2048(%rdx), %xmm29, %xmm18
// CHECK:  encoding: [0x62,0xe1,0x15,0x00,0x60,0x52,0x80]
          vpunpcklbw -2048(%rdx), %xmm29, %xmm18

// CHECK: vpunpcklbw -2064(%rdx), %xmm29, %xmm18
// CHECK:  encoding: [0x62,0xe1,0x15,0x00,0x60,0x92,0xf0,0xf7,0xff,0xff]
          vpunpcklbw -2064(%rdx), %xmm29, %xmm18

// CHECK: vpunpcklbw %ymm21, %ymm28, %ymm27
// CHECK:  encoding: [0x62,0x21,0x1d,0x20,0x60,0xdd]
          vpunpcklbw %ymm21, %ymm28, %ymm27

// CHECK: vpunpcklbw %ymm21, %ymm28, %ymm27 {%k4}
// CHECK:  encoding: [0x62,0x21,0x1d,0x24,0x60,0xdd]
          vpunpcklbw %ymm21, %ymm28, %ymm27 {%k4}

// CHECK: vpunpcklbw %ymm21, %ymm28, %ymm27 {%k4} {z}
// CHECK:  encoding: [0x62,0x21,0x1d,0xa4,0x60,0xdd]
          vpunpcklbw %ymm21, %ymm28, %ymm27 {%k4} {z}

// CHECK: vpunpcklbw (%rcx), %ymm28, %ymm27
// CHECK:  encoding: [0x62,0x61,0x1d,0x20,0x60,0x19]
          vpunpcklbw (%rcx), %ymm28, %ymm27

// CHECK: vpunpcklbw 291(%rax,%r14,8), %ymm28, %ymm27
// CHECK:  encoding: [0x62,0x21,0x1d,0x20,0x60,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpunpcklbw 291(%rax,%r14,8), %ymm28, %ymm27

// CHECK: vpunpcklbw 4064(%rdx), %ymm28, %ymm27
// CHECK:  encoding: [0x62,0x61,0x1d,0x20,0x60,0x5a,0x7f]
          vpunpcklbw 4064(%rdx), %ymm28, %ymm27

// CHECK: vpunpcklbw 4096(%rdx), %ymm28, %ymm27
// CHECK:  encoding: [0x62,0x61,0x1d,0x20,0x60,0x9a,0x00,0x10,0x00,0x00]
          vpunpcklbw 4096(%rdx), %ymm28, %ymm27

// CHECK: vpunpcklbw -4096(%rdx), %ymm28, %ymm27
// CHECK:  encoding: [0x62,0x61,0x1d,0x20,0x60,0x5a,0x80]
          vpunpcklbw -4096(%rdx), %ymm28, %ymm27

// CHECK: vpunpcklbw -4128(%rdx), %ymm28, %ymm27
// CHECK:  encoding: [0x62,0x61,0x1d,0x20,0x60,0x9a,0xe0,0xef,0xff,0xff]
          vpunpcklbw -4128(%rdx), %ymm28, %ymm27

// CHECK: vpunpckhbw %xmm24, %xmm21, %xmm18
// CHECK:  encoding: [0x62,0x81,0x55,0x00,0x68,0xd0]
          vpunpckhbw %xmm24, %xmm21, %xmm18

// CHECK: vpunpckhbw %xmm24, %xmm21, %xmm18 {%k6}
// CHECK:  encoding: [0x62,0x81,0x55,0x06,0x68,0xd0]
          vpunpckhbw %xmm24, %xmm21, %xmm18 {%k6}

// CHECK: vpunpckhbw %xmm24, %xmm21, %xmm18 {%k6} {z}
// CHECK:  encoding: [0x62,0x81,0x55,0x86,0x68,0xd0]
          vpunpckhbw %xmm24, %xmm21, %xmm18 {%k6} {z}

// CHECK: vpunpckhbw (%rcx), %xmm21, %xmm18
// CHECK:  encoding: [0x62,0xe1,0x55,0x00,0x68,0x11]
          vpunpckhbw (%rcx), %xmm21, %xmm18

// CHECK: vpunpckhbw 291(%rax,%r14,8), %xmm21, %xmm18
// CHECK:  encoding: [0x62,0xa1,0x55,0x00,0x68,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpunpckhbw 291(%rax,%r14,8), %xmm21, %xmm18

// CHECK: vpunpckhbw 2032(%rdx), %xmm21, %xmm18
// CHECK:  encoding: [0x62,0xe1,0x55,0x00,0x68,0x52,0x7f]
          vpunpckhbw 2032(%rdx), %xmm21, %xmm18

// CHECK: vpunpckhbw 2048(%rdx), %xmm21, %xmm18
// CHECK:  encoding: [0x62,0xe1,0x55,0x00,0x68,0x92,0x00,0x08,0x00,0x00]
          vpunpckhbw 2048(%rdx), %xmm21, %xmm18

// CHECK: vpunpckhbw -2048(%rdx), %xmm21, %xmm18
// CHECK:  encoding: [0x62,0xe1,0x55,0x00,0x68,0x52,0x80]
          vpunpckhbw -2048(%rdx), %xmm21, %xmm18

// CHECK: vpunpckhbw -2064(%rdx), %xmm21, %xmm18
// CHECK:  encoding: [0x62,0xe1,0x55,0x00,0x68,0x92,0xf0,0xf7,0xff,0xff]
          vpunpckhbw -2064(%rdx), %xmm21, %xmm18

// CHECK: vpunpckhbw %ymm23, %ymm26, %ymm20
// CHECK:  encoding: [0x62,0xa1,0x2d,0x20,0x68,0xe7]
          vpunpckhbw %ymm23, %ymm26, %ymm20

// CHECK: vpunpckhbw %ymm23, %ymm26, %ymm20 {%k1}
// CHECK:  encoding: [0x62,0xa1,0x2d,0x21,0x68,0xe7]
          vpunpckhbw %ymm23, %ymm26, %ymm20 {%k1}

// CHECK: vpunpckhbw %ymm23, %ymm26, %ymm20 {%k1} {z}
// CHECK:  encoding: [0x62,0xa1,0x2d,0xa1,0x68,0xe7]
          vpunpckhbw %ymm23, %ymm26, %ymm20 {%k1} {z}

// CHECK: vpunpckhbw (%rcx), %ymm26, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x2d,0x20,0x68,0x21]
          vpunpckhbw (%rcx), %ymm26, %ymm20

// CHECK: vpunpckhbw 291(%rax,%r14,8), %ymm26, %ymm20
// CHECK:  encoding: [0x62,0xa1,0x2d,0x20,0x68,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpunpckhbw 291(%rax,%r14,8), %ymm26, %ymm20

// CHECK: vpunpckhbw 4064(%rdx), %ymm26, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x2d,0x20,0x68,0x62,0x7f]
          vpunpckhbw 4064(%rdx), %ymm26, %ymm20

// CHECK: vpunpckhbw 4096(%rdx), %ymm26, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x2d,0x20,0x68,0xa2,0x00,0x10,0x00,0x00]
          vpunpckhbw 4096(%rdx), %ymm26, %ymm20

// CHECK: vpunpckhbw -4096(%rdx), %ymm26, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x2d,0x20,0x68,0x62,0x80]
          vpunpckhbw -4096(%rdx), %ymm26, %ymm20

// CHECK: vpunpckhbw -4128(%rdx), %ymm26, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x2d,0x20,0x68,0xa2,0xe0,0xef,0xff,0xff]
          vpunpckhbw -4128(%rdx), %ymm26, %ymm20

// CHECK: vpunpcklwd %xmm21, %xmm25, %xmm21
// CHECK:  encoding: [0x62,0xa1,0x35,0x00,0x61,0xed]
          vpunpcklwd %xmm21, %xmm25, %xmm21

// CHECK: vpunpcklwd %xmm21, %xmm25, %xmm21 {%k6}
// CHECK:  encoding: [0x62,0xa1,0x35,0x06,0x61,0xed]
          vpunpcklwd %xmm21, %xmm25, %xmm21 {%k6}

// CHECK: vpunpcklwd %xmm21, %xmm25, %xmm21 {%k6} {z}
// CHECK:  encoding: [0x62,0xa1,0x35,0x86,0x61,0xed]
          vpunpcklwd %xmm21, %xmm25, %xmm21 {%k6} {z}

// CHECK: vpunpcklwd (%rcx), %xmm25, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x35,0x00,0x61,0x29]
          vpunpcklwd (%rcx), %xmm25, %xmm21

// CHECK: vpunpcklwd 291(%rax,%r14,8), %xmm25, %xmm21
// CHECK:  encoding: [0x62,0xa1,0x35,0x00,0x61,0xac,0xf0,0x23,0x01,0x00,0x00]
          vpunpcklwd 291(%rax,%r14,8), %xmm25, %xmm21

// CHECK: vpunpcklwd 2032(%rdx), %xmm25, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x35,0x00,0x61,0x6a,0x7f]
          vpunpcklwd 2032(%rdx), %xmm25, %xmm21

// CHECK: vpunpcklwd 2048(%rdx), %xmm25, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x35,0x00,0x61,0xaa,0x00,0x08,0x00,0x00]
          vpunpcklwd 2048(%rdx), %xmm25, %xmm21

// CHECK: vpunpcklwd -2048(%rdx), %xmm25, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x35,0x00,0x61,0x6a,0x80]
          vpunpcklwd -2048(%rdx), %xmm25, %xmm21

// CHECK: vpunpcklwd -2064(%rdx), %xmm25, %xmm21
// CHECK:  encoding: [0x62,0xe1,0x35,0x00,0x61,0xaa,0xf0,0xf7,0xff,0xff]
          vpunpcklwd -2064(%rdx), %xmm25, %xmm21

// CHECK: vpunpcklwd %ymm26, %ymm23, %ymm26
// CHECK:  encoding: [0x62,0x01,0x45,0x20,0x61,0xd2]
          vpunpcklwd %ymm26, %ymm23, %ymm26

// CHECK: vpunpcklwd %ymm26, %ymm23, %ymm26 {%k2}
// CHECK:  encoding: [0x62,0x01,0x45,0x22,0x61,0xd2]
          vpunpcklwd %ymm26, %ymm23, %ymm26 {%k2}

// CHECK: vpunpcklwd %ymm26, %ymm23, %ymm26 {%k2} {z}
// CHECK:  encoding: [0x62,0x01,0x45,0xa2,0x61,0xd2]
          vpunpcklwd %ymm26, %ymm23, %ymm26 {%k2} {z}

// CHECK: vpunpcklwd (%rcx), %ymm23, %ymm26
// CHECK:  encoding: [0x62,0x61,0x45,0x20,0x61,0x11]
          vpunpcklwd (%rcx), %ymm23, %ymm26

// CHECK: vpunpcklwd 291(%rax,%r14,8), %ymm23, %ymm26
// CHECK:  encoding: [0x62,0x21,0x45,0x20,0x61,0x94,0xf0,0x23,0x01,0x00,0x00]
          vpunpcklwd 291(%rax,%r14,8), %ymm23, %ymm26

// CHECK: vpunpcklwd 4064(%rdx), %ymm23, %ymm26
// CHECK:  encoding: [0x62,0x61,0x45,0x20,0x61,0x52,0x7f]
          vpunpcklwd 4064(%rdx), %ymm23, %ymm26

// CHECK: vpunpcklwd 4096(%rdx), %ymm23, %ymm26
// CHECK:  encoding: [0x62,0x61,0x45,0x20,0x61,0x92,0x00,0x10,0x00,0x00]
          vpunpcklwd 4096(%rdx), %ymm23, %ymm26

// CHECK: vpunpcklwd -4096(%rdx), %ymm23, %ymm26
// CHECK:  encoding: [0x62,0x61,0x45,0x20,0x61,0x52,0x80]
          vpunpcklwd -4096(%rdx), %ymm23, %ymm26

// CHECK: vpunpcklwd -4128(%rdx), %ymm23, %ymm26
// CHECK:  encoding: [0x62,0x61,0x45,0x20,0x61,0x92,0xe0,0xef,0xff,0xff]
          vpunpcklwd -4128(%rdx), %ymm23, %ymm26

// CHECK: vpunpckhwd %xmm23, %xmm18, %xmm17
// CHECK:  encoding: [0x62,0xa1,0x6d,0x00,0x69,0xcf]
          vpunpckhwd %xmm23, %xmm18, %xmm17

// CHECK: vpunpckhwd %xmm23, %xmm18, %xmm17 {%k3}
// CHECK:  encoding: [0x62,0xa1,0x6d,0x03,0x69,0xcf]
          vpunpckhwd %xmm23, %xmm18, %xmm17 {%k3}

// CHECK: vpunpckhwd %xmm23, %xmm18, %xmm17 {%k3} {z}
// CHECK:  encoding: [0x62,0xa1,0x6d,0x83,0x69,0xcf]
          vpunpckhwd %xmm23, %xmm18, %xmm17 {%k3} {z}

// CHECK: vpunpckhwd (%rcx), %xmm18, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x6d,0x00,0x69,0x09]
          vpunpckhwd (%rcx), %xmm18, %xmm17

// CHECK: vpunpckhwd 291(%rax,%r14,8), %xmm18, %xmm17
// CHECK:  encoding: [0x62,0xa1,0x6d,0x00,0x69,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpunpckhwd 291(%rax,%r14,8), %xmm18, %xmm17

// CHECK: vpunpckhwd 2032(%rdx), %xmm18, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x6d,0x00,0x69,0x4a,0x7f]
          vpunpckhwd 2032(%rdx), %xmm18, %xmm17

// CHECK: vpunpckhwd 2048(%rdx), %xmm18, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x6d,0x00,0x69,0x8a,0x00,0x08,0x00,0x00]
          vpunpckhwd 2048(%rdx), %xmm18, %xmm17

// CHECK: vpunpckhwd -2048(%rdx), %xmm18, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x6d,0x00,0x69,0x4a,0x80]
          vpunpckhwd -2048(%rdx), %xmm18, %xmm17

// CHECK: vpunpckhwd -2064(%rdx), %xmm18, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x6d,0x00,0x69,0x8a,0xf0,0xf7,0xff,0xff]
          vpunpckhwd -2064(%rdx), %xmm18, %xmm17

// CHECK: vpunpckhwd %ymm26, %ymm25, %ymm28
// CHECK:  encoding: [0x62,0x01,0x35,0x20,0x69,0xe2]
          vpunpckhwd %ymm26, %ymm25, %ymm28

// CHECK: vpunpckhwd %ymm26, %ymm25, %ymm28 {%k4}
// CHECK:  encoding: [0x62,0x01,0x35,0x24,0x69,0xe2]
          vpunpckhwd %ymm26, %ymm25, %ymm28 {%k4}

// CHECK: vpunpckhwd %ymm26, %ymm25, %ymm28 {%k4} {z}
// CHECK:  encoding: [0x62,0x01,0x35,0xa4,0x69,0xe2]
          vpunpckhwd %ymm26, %ymm25, %ymm28 {%k4} {z}

// CHECK: vpunpckhwd (%rcx), %ymm25, %ymm28
// CHECK:  encoding: [0x62,0x61,0x35,0x20,0x69,0x21]
          vpunpckhwd (%rcx), %ymm25, %ymm28

// CHECK: vpunpckhwd 291(%rax,%r14,8), %ymm25, %ymm28
// CHECK:  encoding: [0x62,0x21,0x35,0x20,0x69,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpunpckhwd 291(%rax,%r14,8), %ymm25, %ymm28

// CHECK: vpunpckhwd 4064(%rdx), %ymm25, %ymm28
// CHECK:  encoding: [0x62,0x61,0x35,0x20,0x69,0x62,0x7f]
          vpunpckhwd 4064(%rdx), %ymm25, %ymm28

// CHECK: vpunpckhwd 4096(%rdx), %ymm25, %ymm28
// CHECK:  encoding: [0x62,0x61,0x35,0x20,0x69,0xa2,0x00,0x10,0x00,0x00]
          vpunpckhwd 4096(%rdx), %ymm25, %ymm28

// CHECK: vpunpckhwd -4096(%rdx), %ymm25, %ymm28
// CHECK:  encoding: [0x62,0x61,0x35,0x20,0x69,0x62,0x80]
          vpunpckhwd -4096(%rdx), %ymm25, %ymm28

// CHECK: vpunpckhwd -4128(%rdx), %ymm25, %ymm28
// CHECK:  encoding: [0x62,0x61,0x35,0x20,0x69,0xa2,0xe0,0xef,0xff,0xff]
          vpunpckhwd -4128(%rdx), %ymm25, %ymm28


// CHECK: vpalignr $171, %xmm21, %xmm26, %xmm19
// CHECK:  encoding: [0x62,0xa3,0x2d,0x00,0x0f,0xdd,0xab]
          vpalignr $171, %xmm21, %xmm26, %xmm19

// CHECK: vpalignr $171, %xmm21, %xmm26, %xmm19 {%k4}
// CHECK:  encoding: [0x62,0xa3,0x2d,0x04,0x0f,0xdd,0xab]
          vpalignr $171, %xmm21, %xmm26, %xmm19 {%k4}

// CHECK: vpalignr $171, %xmm21, %xmm26, %xmm19 {%k4} {z}
// CHECK:  encoding: [0x62,0xa3,0x2d,0x84,0x0f,0xdd,0xab]
          vpalignr $171, %xmm21, %xmm26, %xmm19 {%k4} {z}

// CHECK: vpalignr $123, %xmm21, %xmm26, %xmm19
// CHECK:  encoding: [0x62,0xa3,0x2d,0x00,0x0f,0xdd,0x7b]
          vpalignr $123, %xmm21, %xmm26, %xmm19

// CHECK: vpalignr $123, (%rcx), %xmm26, %xmm19
// CHECK:  encoding: [0x62,0xe3,0x2d,0x00,0x0f,0x19,0x7b]
          vpalignr $123, (%rcx), %xmm26, %xmm19

// CHECK: vpalignr $123, 291(%rax,%r14,8), %xmm26, %xmm19
// CHECK:  encoding: [0x62,0xa3,0x2d,0x00,0x0f,0x9c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpalignr $123, 291(%rax,%r14,8), %xmm26, %xmm19

// CHECK: vpalignr $123, 2032(%rdx), %xmm26, %xmm19
// CHECK:  encoding: [0x62,0xe3,0x2d,0x00,0x0f,0x5a,0x7f,0x7b]
          vpalignr $123, 2032(%rdx), %xmm26, %xmm19

// CHECK: vpalignr $123, 2048(%rdx), %xmm26, %xmm19
// CHECK:  encoding: [0x62,0xe3,0x2d,0x00,0x0f,0x9a,0x00,0x08,0x00,0x00,0x7b]
          vpalignr $123, 2048(%rdx), %xmm26, %xmm19

// CHECK: vpalignr $123, -2048(%rdx), %xmm26, %xmm19
// CHECK:  encoding: [0x62,0xe3,0x2d,0x00,0x0f,0x5a,0x80,0x7b]
          vpalignr $123, -2048(%rdx), %xmm26, %xmm19

// CHECK: vpalignr $123, -2064(%rdx), %xmm26, %xmm19
// CHECK:  encoding: [0x62,0xe3,0x2d,0x00,0x0f,0x9a,0xf0,0xf7,0xff,0xff,0x7b]
          vpalignr $123, -2064(%rdx), %xmm26, %xmm19

// CHECK: vpalignr $171, %ymm22, %ymm21, %ymm27
// CHECK:  encoding: [0x62,0x23,0x55,0x20,0x0f,0xde,0xab]
          vpalignr $171, %ymm22, %ymm21, %ymm27

// CHECK: vpalignr $171, %ymm22, %ymm21, %ymm27 {%k2}
// CHECK:  encoding: [0x62,0x23,0x55,0x22,0x0f,0xde,0xab]
          vpalignr $171, %ymm22, %ymm21, %ymm27 {%k2}

// CHECK: vpalignr $171, %ymm22, %ymm21, %ymm27 {%k2} {z}
// CHECK:  encoding: [0x62,0x23,0x55,0xa2,0x0f,0xde,0xab]
          vpalignr $171, %ymm22, %ymm21, %ymm27 {%k2} {z}

// CHECK: vpalignr $123, %ymm22, %ymm21, %ymm27
// CHECK:  encoding: [0x62,0x23,0x55,0x20,0x0f,0xde,0x7b]
          vpalignr $123, %ymm22, %ymm21, %ymm27

// CHECK: vpalignr $123, (%rcx), %ymm21, %ymm27
// CHECK:  encoding: [0x62,0x63,0x55,0x20,0x0f,0x19,0x7b]
          vpalignr $123, (%rcx), %ymm21, %ymm27

// CHECK: vpalignr $123, 291(%rax,%r14,8), %ymm21, %ymm27
// CHECK:  encoding: [0x62,0x23,0x55,0x20,0x0f,0x9c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpalignr $123, 291(%rax,%r14,8), %ymm21, %ymm27

// CHECK: vpalignr $123, 4064(%rdx), %ymm21, %ymm27
// CHECK:  encoding: [0x62,0x63,0x55,0x20,0x0f,0x5a,0x7f,0x7b]
          vpalignr $123, 4064(%rdx), %ymm21, %ymm27

// CHECK: vpalignr $123, 4096(%rdx), %ymm21, %ymm27
// CHECK:  encoding: [0x62,0x63,0x55,0x20,0x0f,0x9a,0x00,0x10,0x00,0x00,0x7b]
          vpalignr $123, 4096(%rdx), %ymm21, %ymm27

// CHECK: vpalignr $123, -4096(%rdx), %ymm21, %ymm27
// CHECK:  encoding: [0x62,0x63,0x55,0x20,0x0f,0x5a,0x80,0x7b]
          vpalignr $123, -4096(%rdx), %ymm21, %ymm27

// CHECK: vpalignr $123, -4128(%rdx), %ymm21, %ymm27
// CHECK:  encoding: [0x62,0x63,0x55,0x20,0x0f,0x9a,0xe0,0xef,0xff,0xff,0x7b]
          vpalignr $123, -4128(%rdx), %ymm21, %ymm27

// CHECK: vpalignr $171, %xmm25, %xmm20, %xmm30
// CHECK:  encoding: [0x62,0x03,0x5d,0x00,0x0f,0xf1,0xab]
          vpalignr $0xab, %xmm25, %xmm20, %xmm30

// CHECK: vpalignr $171, %xmm25, %xmm20, %xmm30 {%k2}
// CHECK:  encoding: [0x62,0x03,0x5d,0x02,0x0f,0xf1,0xab]
          vpalignr $0xab, %xmm25, %xmm20, %xmm30 {%k2}

// CHECK: vpalignr $171, %xmm25, %xmm20, %xmm30 {%k2} {z}
// CHECK:  encoding: [0x62,0x03,0x5d,0x82,0x0f,0xf1,0xab]
          vpalignr $0xab, %xmm25, %xmm20, %xmm30 {%k2} {z}

// CHECK: vpalignr $123, %xmm25, %xmm20, %xmm30
// CHECK:  encoding: [0x62,0x03,0x5d,0x00,0x0f,0xf1,0x7b]
          vpalignr $0x7b, %xmm25, %xmm20, %xmm30

// CHECK: vpalignr $123, (%rcx), %xmm20, %xmm30
// CHECK:  encoding: [0x62,0x63,0x5d,0x00,0x0f,0x31,0x7b]
          vpalignr $0x7b,(%rcx), %xmm20, %xmm30

// CHECK: vpalignr $123, 4660(%rax,%r14,8), %xmm20, %xmm30
// CHECK:  encoding: [0x62,0x23,0x5d,0x00,0x0f,0xb4,0xf0,0x34,0x12,0x00,0x00,0x7b]
          vpalignr $0x7b,4660(%rax,%r14,8), %xmm20, %xmm30

// CHECK: vpalignr $123, 2032(%rdx), %xmm20, %xmm30
// CHECK:  encoding: [0x62,0x63,0x5d,0x00,0x0f,0x72,0x7f,0x7b]
          vpalignr $0x7b,2032(%rdx), %xmm20, %xmm30

// CHECK: vpalignr $123, 2048(%rdx), %xmm20, %xmm30
// CHECK:  encoding: [0x62,0x63,0x5d,0x00,0x0f,0xb2,0x00,0x08,0x00,0x00,0x7b]
          vpalignr $0x7b,2048(%rdx), %xmm20, %xmm30

// CHECK: vpalignr $123, -2048(%rdx), %xmm20, %xmm30
// CHECK:  encoding: [0x62,0x63,0x5d,0x00,0x0f,0x72,0x80,0x7b]
          vpalignr $0x7b,-2048(%rdx), %xmm20, %xmm30

// CHECK: vpalignr $123, -2064(%rdx), %xmm20, %xmm30
// CHECK:  encoding: [0x62,0x63,0x5d,0x00,0x0f,0xb2,0xf0,0xf7,0xff,0xff,0x7b]
          vpalignr $0x7b,-2064(%rdx), %xmm20, %xmm30

// CHECK: vpalignr $171, %ymm27, %ymm17, %ymm21
// CHECK:  encoding: [0x62,0x83,0x75,0x20,0x0f,0xeb,0xab]
          vpalignr $0xab, %ymm27, %ymm17, %ymm21

// CHECK: vpalignr $171, %ymm27, %ymm17, %ymm21 {%k7}
// CHECK:  encoding: [0x62,0x83,0x75,0x27,0x0f,0xeb,0xab]
          vpalignr $0xab, %ymm27, %ymm17, %ymm21 {%k7}

// CHECK: vpalignr $171, %ymm27, %ymm17, %ymm21 {%k7} {z}
// CHECK:  encoding: [0x62,0x83,0x75,0xa7,0x0f,0xeb,0xab]
          vpalignr $0xab, %ymm27, %ymm17, %ymm21 {%k7} {z}

// CHECK: vpalignr $123, %ymm27, %ymm17, %ymm21
// CHECK:  encoding: [0x62,0x83,0x75,0x20,0x0f,0xeb,0x7b]
          vpalignr $0x7b, %ymm27, %ymm17, %ymm21

// CHECK: vpalignr $123, (%rcx), %ymm17, %ymm21
// CHECK:  encoding: [0x62,0xe3,0x75,0x20,0x0f,0x29,0x7b]
          vpalignr $0x7b,(%rcx), %ymm17, %ymm21

// CHECK: vpalignr $123, 4660(%rax,%r14,8), %ymm17, %ymm21
// CHECK:  encoding: [0x62,0xa3,0x75,0x20,0x0f,0xac,0xf0,0x34,0x12,0x00,0x00,0x7b]
          vpalignr $0x7b,4660(%rax,%r14,8), %ymm17, %ymm21

// CHECK: vpalignr $123, 4064(%rdx), %ymm17, %ymm21
// CHECK:  encoding: [0x62,0xe3,0x75,0x20,0x0f,0x6a,0x7f,0x7b]
          vpalignr $0x7b,4064(%rdx), %ymm17, %ymm21

// CHECK: vpalignr $123, 4096(%rdx), %ymm17, %ymm21
// CHECK:  encoding: [0x62,0xe3,0x75,0x20,0x0f,0xaa,0x00,0x10,0x00,0x00,0x7b]
          vpalignr $0x7b,4096(%rdx), %ymm17, %ymm21

// CHECK: vpalignr $123, -4096(%rdx), %ymm17, %ymm21
// CHECK:  encoding: [0x62,0xe3,0x75,0x20,0x0f,0x6a,0x80,0x7b]
          vpalignr $0x7b,-4096(%rdx), %ymm17, %ymm21

// CHECK: vpalignr $123, -4128(%rdx), %ymm17, %ymm21
// CHECK:  encoding: [0x62,0xe3,0x75,0x20,0x0f,0xaa,0xe0,0xef,0xff,0xff,0x7b]
          vpalignr $0x7b,-4128(%rdx), %ymm17, %ymm21

// CHECK: vdbpsadbw $171, %xmm20, %xmm29, %xmm17
// CHECK:  encoding: [0x62,0xa3,0x15,0x00,0x42,0xcc,0xab]
          vdbpsadbw $0xab, %xmm20, %xmm29, %xmm17

// CHECK: vdbpsadbw $171, %xmm20, %xmm29, %xmm17 {%k4}
// CHECK:  encoding: [0x62,0xa3,0x15,0x04,0x42,0xcc,0xab]
          vdbpsadbw $0xab, %xmm20, %xmm29, %xmm17 {%k4}

// CHECK: vdbpsadbw $171, %xmm20, %xmm29, %xmm17 {%k4} {z}
// CHECK:  encoding: [0x62,0xa3,0x15,0x84,0x42,0xcc,0xab]
          vdbpsadbw $0xab, %xmm20, %xmm29, %xmm17 {%k4} {z}

// CHECK: vdbpsadbw $123, %xmm20, %xmm29, %xmm17
// CHECK:  encoding: [0x62,0xa3,0x15,0x00,0x42,0xcc,0x7b]
          vdbpsadbw $0x7b, %xmm20, %xmm29, %xmm17

// CHECK: vdbpsadbw $123, (%rcx), %xmm29, %xmm17
// CHECK:  encoding: [0x62,0xe3,0x15,0x00,0x42,0x09,0x7b]
          vdbpsadbw $0x7b,(%rcx), %xmm29, %xmm17

// CHECK: vdbpsadbw $123, 4660(%rax,%r14,8), %xmm29, %xmm17
// CHECK:  encoding: [0x62,0xa3,0x15,0x00,0x42,0x8c,0xf0,0x34,0x12,0x00,0x00,0x7b]
          vdbpsadbw $0x7b,4660(%rax,%r14,8), %xmm29, %xmm17

// CHECK: vdbpsadbw $123, 2032(%rdx), %xmm29, %xmm17
// CHECK:  encoding: [0x62,0xe3,0x15,0x00,0x42,0x4a,0x7f,0x7b]
          vdbpsadbw $0x7b,2032(%rdx), %xmm29, %xmm17

// CHECK: vdbpsadbw $123, 2048(%rdx), %xmm29, %xmm17
// CHECK:  encoding: [0x62,0xe3,0x15,0x00,0x42,0x8a,0x00,0x08,0x00,0x00,0x7b]
          vdbpsadbw $0x7b,2048(%rdx), %xmm29, %xmm17

// CHECK: vdbpsadbw $123, -2048(%rdx), %xmm29, %xmm17
// CHECK:  encoding: [0x62,0xe3,0x15,0x00,0x42,0x4a,0x80,0x7b]
          vdbpsadbw $0x7b,-2048(%rdx), %xmm29, %xmm17

// CHECK: vdbpsadbw $123, -2064(%rdx), %xmm29, %xmm17
// CHECK:  encoding: [0x62,0xe3,0x15,0x00,0x42,0x8a,0xf0,0xf7,0xff,0xff,0x7b]
          vdbpsadbw $0x7b,-2064(%rdx), %xmm29, %xmm17

// CHECK: vdbpsadbw $171, %ymm26, %ymm28, %ymm26
// CHECK:  encoding: [0x62,0x03,0x1d,0x20,0x42,0xd2,0xab]
          vdbpsadbw $0xab, %ymm26, %ymm28, %ymm26

// CHECK: vdbpsadbw $171, %ymm26, %ymm28, %ymm26 {%k4}
// CHECK:  encoding: [0x62,0x03,0x1d,0x24,0x42,0xd2,0xab]
          vdbpsadbw $0xab, %ymm26, %ymm28, %ymm26 {%k4}

// CHECK: vdbpsadbw $171, %ymm26, %ymm28, %ymm26 {%k4} {z}
// CHECK:  encoding: [0x62,0x03,0x1d,0xa4,0x42,0xd2,0xab]
          vdbpsadbw $0xab, %ymm26, %ymm28, %ymm26 {%k4} {z}

// CHECK: vdbpsadbw $123, %ymm26, %ymm28, %ymm26
// CHECK:  encoding: [0x62,0x03,0x1d,0x20,0x42,0xd2,0x7b]
          vdbpsadbw $0x7b, %ymm26, %ymm28, %ymm26

// CHECK: vdbpsadbw $123, (%rcx), %ymm28, %ymm26
// CHECK:  encoding: [0x62,0x63,0x1d,0x20,0x42,0x11,0x7b]
          vdbpsadbw $0x7b,(%rcx), %ymm28, %ymm26

// CHECK: vdbpsadbw $123, 4660(%rax,%r14,8), %ymm28, %ymm26
// CHECK:  encoding: [0x62,0x23,0x1d,0x20,0x42,0x94,0xf0,0x34,0x12,0x00,0x00,0x7b]
          vdbpsadbw $0x7b,4660(%rax,%r14,8), %ymm28, %ymm26

// CHECK: vdbpsadbw $123, 4064(%rdx), %ymm28, %ymm26
// CHECK:  encoding: [0x62,0x63,0x1d,0x20,0x42,0x52,0x7f,0x7b]
          vdbpsadbw $0x7b,4064(%rdx), %ymm28, %ymm26

// CHECK: vdbpsadbw $123, 4096(%rdx), %ymm28, %ymm26
// CHECK:  encoding: [0x62,0x63,0x1d,0x20,0x42,0x92,0x00,0x10,0x00,0x00,0x7b]
          vdbpsadbw $0x7b,4096(%rdx), %ymm28, %ymm26

// CHECK: vdbpsadbw $123, -4096(%rdx), %ymm28, %ymm26
// CHECK:  encoding: [0x62,0x63,0x1d,0x20,0x42,0x52,0x80,0x7b]
          vdbpsadbw $0x7b,-4096(%rdx), %ymm28, %ymm26

// CHECK: vdbpsadbw $123, -4128(%rdx), %ymm28, %ymm26
// CHECK:  encoding: [0x62,0x63,0x1d,0x20,0x42,0x92,0xe0,0xef,0xff,0xff,0x7b]
          vdbpsadbw $0x7b,-4128(%rdx), %ymm28, %ymm26

// CHECK: vdbpsadbw $171, %xmm17, %xmm25, %xmm22
// CHECK:  encoding: [0x62,0xa3,0x35,0x00,0x42,0xf1,0xab]
          vdbpsadbw $171, %xmm17, %xmm25, %xmm22

// CHECK: vdbpsadbw $171, %xmm17, %xmm25, %xmm22 {%k3}
// CHECK:  encoding: [0x62,0xa3,0x35,0x03,0x42,0xf1,0xab]
          vdbpsadbw $171, %xmm17, %xmm25, %xmm22 {%k3}

// CHECK: vdbpsadbw $171, %xmm17, %xmm25, %xmm22 {%k3} {z}
// CHECK:  encoding: [0x62,0xa3,0x35,0x83,0x42,0xf1,0xab]
          vdbpsadbw $171, %xmm17, %xmm25, %xmm22 {%k3} {z}

// CHECK: vdbpsadbw $123, %xmm17, %xmm25, %xmm22
// CHECK:  encoding: [0x62,0xa3,0x35,0x00,0x42,0xf1,0x7b]
          vdbpsadbw $123, %xmm17, %xmm25, %xmm22

// CHECK: vdbpsadbw $123, (%rcx), %xmm25, %xmm22
// CHECK:  encoding: [0x62,0xe3,0x35,0x00,0x42,0x31,0x7b]
          vdbpsadbw $123, (%rcx), %xmm25, %xmm22

// CHECK: vdbpsadbw $123, 291(%rax,%r14,8), %xmm25, %xmm22
// CHECK:  encoding: [0x62,0xa3,0x35,0x00,0x42,0xb4,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vdbpsadbw $123, 291(%rax,%r14,8), %xmm25, %xmm22

// CHECK: vdbpsadbw $123, 2032(%rdx), %xmm25, %xmm22
// CHECK:  encoding: [0x62,0xe3,0x35,0x00,0x42,0x72,0x7f,0x7b]
          vdbpsadbw $123, 2032(%rdx), %xmm25, %xmm22

// CHECK: vdbpsadbw $123, 2048(%rdx), %xmm25, %xmm22
// CHECK:  encoding: [0x62,0xe3,0x35,0x00,0x42,0xb2,0x00,0x08,0x00,0x00,0x7b]
          vdbpsadbw $123, 2048(%rdx), %xmm25, %xmm22

// CHECK: vdbpsadbw $123, -2048(%rdx), %xmm25, %xmm22
// CHECK:  encoding: [0x62,0xe3,0x35,0x00,0x42,0x72,0x80,0x7b]
          vdbpsadbw $123, -2048(%rdx), %xmm25, %xmm22

// CHECK: vdbpsadbw $123, -2064(%rdx), %xmm25, %xmm22
// CHECK:  encoding: [0x62,0xe3,0x35,0x00,0x42,0xb2,0xf0,0xf7,0xff,0xff,0x7b]
          vdbpsadbw $123, -2064(%rdx), %xmm25, %xmm22

// CHECK: vdbpsadbw $171, %ymm20, %ymm19, %ymm17
// CHECK:  encoding: [0x62,0xa3,0x65,0x20,0x42,0xcc,0xab]
          vdbpsadbw $171, %ymm20, %ymm19, %ymm17

// CHECK: vdbpsadbw $171, %ymm20, %ymm19, %ymm17 {%k5}
// CHECK:  encoding: [0x62,0xa3,0x65,0x25,0x42,0xcc,0xab]
          vdbpsadbw $171, %ymm20, %ymm19, %ymm17 {%k5}

// CHECK: vdbpsadbw $171, %ymm20, %ymm19, %ymm17 {%k5} {z}
// CHECK:  encoding: [0x62,0xa3,0x65,0xa5,0x42,0xcc,0xab]
          vdbpsadbw $171, %ymm20, %ymm19, %ymm17 {%k5} {z}

// CHECK: vdbpsadbw $123, %ymm20, %ymm19, %ymm17
// CHECK:  encoding: [0x62,0xa3,0x65,0x20,0x42,0xcc,0x7b]
          vdbpsadbw $123, %ymm20, %ymm19, %ymm17

// CHECK: vdbpsadbw $123, (%rcx), %ymm19, %ymm17
// CHECK:  encoding: [0x62,0xe3,0x65,0x20,0x42,0x09,0x7b]
          vdbpsadbw $123, (%rcx), %ymm19, %ymm17

// CHECK: vdbpsadbw $123, 291(%rax,%r14,8), %ymm19, %ymm17
// CHECK:  encoding: [0x62,0xa3,0x65,0x20,0x42,0x8c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vdbpsadbw $123, 291(%rax,%r14,8), %ymm19, %ymm17

// CHECK: vdbpsadbw $123, 4064(%rdx), %ymm19, %ymm17
// CHECK:  encoding: [0x62,0xe3,0x65,0x20,0x42,0x4a,0x7f,0x7b]
          vdbpsadbw $123, 4064(%rdx), %ymm19, %ymm17

// CHECK: vdbpsadbw $123, 4096(%rdx), %ymm19, %ymm17
// CHECK:  encoding: [0x62,0xe3,0x65,0x20,0x42,0x8a,0x00,0x10,0x00,0x00,0x7b]
          vdbpsadbw $123, 4096(%rdx), %ymm19, %ymm17

// CHECK: vdbpsadbw $123, -4096(%rdx), %ymm19, %ymm17
// CHECK:  encoding: [0x62,0xe3,0x65,0x20,0x42,0x4a,0x80,0x7b]
          vdbpsadbw $123, -4096(%rdx), %ymm19, %ymm17

// CHECK: vdbpsadbw $123, -4128(%rdx), %ymm19, %ymm17
// CHECK:  encoding: [0x62,0xe3,0x65,0x20,0x42,0x8a,0xe0,0xef,0xff,0xff,0x7b]
          vdbpsadbw $123, -4128(%rdx), %ymm19, %ymm17
// CHECK: vpslldq $171, %xmm24, %xmm20
// CHECK:  encoding: [0x62,0x91,0x5d,0x00,0x73,0xf8,0xab]
          vpslldq $171, %xmm24, %xmm20

// CHECK: vpslldq $123, %xmm24, %xmm20
// CHECK:  encoding: [0x62,0x91,0x5d,0x00,0x73,0xf8,0x7b]
          vpslldq $123, %xmm24, %xmm20

// CHECK: vpslldq $123, (%rcx), %xmm20
// CHECK:  encoding: [0x62,0xf1,0x5d,0x00,0x73,0x39,0x7b]
          vpslldq $123, (%rcx), %xmm20

// CHECK: vpslldq $123, 291(%rax,%r14,8), %xmm20
// CHECK:  encoding: [0x62,0xb1,0x5d,0x00,0x73,0xbc,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpslldq $123, 291(%rax,%r14,8), %xmm20

// CHECK: vpslldq $123, 2032(%rdx), %xmm20
// CHECK:  encoding: [0x62,0xf1,0x5d,0x00,0x73,0x7a,0x7f,0x7b]
          vpslldq $123, 2032(%rdx), %xmm20

// CHECK: vpslldq $123, 2048(%rdx), %xmm20
// CHECK:  encoding: [0x62,0xf1,0x5d,0x00,0x73,0xba,0x00,0x08,0x00,0x00,0x7b]
          vpslldq $123, 2048(%rdx), %xmm20

// CHECK: vpslldq $123, -2048(%rdx), %xmm20
// CHECK:  encoding: [0x62,0xf1,0x5d,0x00,0x73,0x7a,0x80,0x7b]
          vpslldq $123, -2048(%rdx), %xmm20

// CHECK: vpslldq $123, -2064(%rdx), %xmm20
// CHECK:  encoding: [0x62,0xf1,0x5d,0x00,0x73,0xba,0xf0,0xf7,0xff,0xff,0x7b]
          vpslldq $123, -2064(%rdx), %xmm20

// CHECK: vpslldq $171, %ymm25, %ymm26
// CHECK:  encoding: [0x62,0x91,0x2d,0x20,0x73,0xf9,0xab]
          vpslldq $171, %ymm25, %ymm26

// CHECK: vpslldq $123, %ymm25, %ymm26
// CHECK:  encoding: [0x62,0x91,0x2d,0x20,0x73,0xf9,0x7b]
          vpslldq $123, %ymm25, %ymm26

// CHECK: vpslldq $123, (%rcx), %ymm26
// CHECK:  encoding: [0x62,0xf1,0x2d,0x20,0x73,0x39,0x7b]
          vpslldq $123, (%rcx), %ymm26

// CHECK: vpslldq $123, 291(%rax,%r14,8), %ymm26
// CHECK:  encoding: [0x62,0xb1,0x2d,0x20,0x73,0xbc,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpslldq $123, 291(%rax,%r14,8), %ymm26

// CHECK: vpslldq $123, 4064(%rdx), %ymm26
// CHECK:  encoding: [0x62,0xf1,0x2d,0x20,0x73,0x7a,0x7f,0x7b]
          vpslldq $123, 4064(%rdx), %ymm26

// CHECK: vpslldq $123, 4096(%rdx), %ymm26
// CHECK:  encoding: [0x62,0xf1,0x2d,0x20,0x73,0xba,0x00,0x10,0x00,0x00,0x7b]
          vpslldq $123, 4096(%rdx), %ymm26

// CHECK: vpslldq $123, -4096(%rdx), %ymm26
// CHECK:  encoding: [0x62,0xf1,0x2d,0x20,0x73,0x7a,0x80,0x7b]
          vpslldq $123, -4096(%rdx), %ymm26

// CHECK: vpslldq $123, -4128(%rdx), %ymm26
// CHECK:  encoding: [0x62,0xf1,0x2d,0x20,0x73,0xba,0xe0,0xef,0xff,0xff,0x7b]
          vpslldq $123, -4128(%rdx), %ymm26

// CHECK: vpslldq $171, %xmm19, %xmm23
// CHECK:  encoding: [0x62,0xb1,0x45,0x00,0x73,0xfb,0xab]
          vpslldq $0xab, %xmm19, %xmm23

// CHECK: vpslldq $123, %xmm19, %xmm23
// CHECK:  encoding: [0x62,0xb1,0x45,0x00,0x73,0xfb,0x7b]
          vpslldq $0x7b, %xmm19, %xmm23

// CHECK: vpslldq $123, (%rcx), %xmm23
// CHECK:  encoding: [0x62,0xf1,0x45,0x00,0x73,0x39,0x7b]
          vpslldq $0x7b,(%rcx), %xmm23

// CHECK: vpslldq $123, 4660(%rax,%r14,8), %xmm23
// CHECK:  encoding: [0x62,0xb1,0x45,0x00,0x73,0xbc,0xf0,0x34,0x12,0x00,0x00,0x7b]
          vpslldq $0x7b,4660(%rax,%r14,8), %xmm23

// CHECK: vpslldq $123, 2032(%rdx), %xmm23
// CHECK:  encoding: [0x62,0xf1,0x45,0x00,0x73,0x7a,0x7f,0x7b]
          vpslldq $0x7b,2032(%rdx), %xmm23

// CHECK: vpslldq $123, 2048(%rdx), %xmm23
// CHECK:  encoding: [0x62,0xf1,0x45,0x00,0x73,0xba,0x00,0x08,0x00,0x00,0x7b]
          vpslldq $0x7b,2048(%rdx), %xmm23

// CHECK: vpslldq $123, -2048(%rdx), %xmm23
// CHECK:  encoding: [0x62,0xf1,0x45,0x00,0x73,0x7a,0x80,0x7b]
          vpslldq $0x7b,-2048(%rdx), %xmm23

// CHECK: vpslldq $123, -2064(%rdx), %xmm23
// CHECK:  encoding: [0x62,0xf1,0x45,0x00,0x73,0xba,0xf0,0xf7,0xff,0xff,0x7b]
          vpslldq $0x7b,-2064(%rdx), %xmm23

// CHECK: vpslldq $171, %ymm25, %ymm29
// CHECK:  encoding: [0x62,0x91,0x15,0x20,0x73,0xf9,0xab]
          vpslldq $0xab, %ymm25, %ymm29

// CHECK: vpslldq $123, %ymm25, %ymm29
// CHECK:  encoding: [0x62,0x91,0x15,0x20,0x73,0xf9,0x7b]
          vpslldq $0x7b, %ymm25, %ymm29

// CHECK: vpslldq $123, (%rcx), %ymm29
// CHECK:  encoding: [0x62,0xf1,0x15,0x20,0x73,0x39,0x7b]
          vpslldq $0x7b,(%rcx), %ymm29

// CHECK: vpslldq $123, 4660(%rax,%r14,8), %ymm29
// CHECK:  encoding: [0x62,0xb1,0x15,0x20,0x73,0xbc,0xf0,0x34,0x12,0x00,0x00,0x7b]
          vpslldq $0x7b,4660(%rax,%r14,8), %ymm29

// CHECK: vpslldq $123, 4064(%rdx), %ymm29
// CHECK:  encoding: [0x62,0xf1,0x15,0x20,0x73,0x7a,0x7f,0x7b]
          vpslldq $0x7b,4064(%rdx), %ymm29

// CHECK: vpslldq $123, 4096(%rdx), %ymm29
// CHECK:  encoding: [0x62,0xf1,0x15,0x20,0x73,0xba,0x00,0x10,0x00,0x00,0x7b]
          vpslldq $0x7b,4096(%rdx), %ymm29

// CHECK: vpslldq $123, -4096(%rdx), %ymm29
// CHECK:  encoding: [0x62,0xf1,0x15,0x20,0x73,0x7a,0x80,0x7b]
          vpslldq $0x7b,-4096(%rdx), %ymm29

// CHECK: vpslldq $123, -4128(%rdx), %ymm29
// CHECK:  encoding: [0x62,0xf1,0x15,0x20,0x73,0xba,0xe0,0xef,0xff,0xff,0x7b]
          vpslldq $0x7b,-4128(%rdx), %ymm29

// CHECK: vpsrldq $171, %xmm21, %xmm24
// CHECK:  encoding: [0x62,0xb1,0x3d,0x00,0x73,0xdd,0xab]
          vpsrldq $171, %xmm21, %xmm24

// CHECK: vpsrldq $123, %xmm21, %xmm24
// CHECK:  encoding: [0x62,0xb1,0x3d,0x00,0x73,0xdd,0x7b]
          vpsrldq $123, %xmm21, %xmm24

// CHECK: vpsrldq $123, (%rcx), %xmm24
// CHECK:  encoding: [0x62,0xf1,0x3d,0x00,0x73,0x19,0x7b]
          vpsrldq $123, (%rcx), %xmm24

// CHECK: vpsrldq $123, 291(%rax,%r14,8), %xmm24
// CHECK:  encoding: [0x62,0xb1,0x3d,0x00,0x73,0x9c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpsrldq $123, 291(%rax,%r14,8), %xmm24

// CHECK: vpsrldq $123, 2032(%rdx), %xmm24
// CHECK:  encoding: [0x62,0xf1,0x3d,0x00,0x73,0x5a,0x7f,0x7b]
          vpsrldq $123, 2032(%rdx), %xmm24

// CHECK: vpsrldq $123, 2048(%rdx), %xmm24
// CHECK:  encoding: [0x62,0xf1,0x3d,0x00,0x73,0x9a,0x00,0x08,0x00,0x00,0x7b]
          vpsrldq $123, 2048(%rdx), %xmm24

// CHECK: vpsrldq $123, -2048(%rdx), %xmm24
// CHECK:  encoding: [0x62,0xf1,0x3d,0x00,0x73,0x5a,0x80,0x7b]
          vpsrldq $123, -2048(%rdx), %xmm24

// CHECK: vpsrldq $123, -2064(%rdx), %xmm24
// CHECK:  encoding: [0x62,0xf1,0x3d,0x00,0x73,0x9a,0xf0,0xf7,0xff,0xff,0x7b]
          vpsrldq $123, -2064(%rdx), %xmm24

// CHECK: vpsrldq $171, %ymm25, %ymm24
// CHECK:  encoding: [0x62,0x91,0x3d,0x20,0x73,0xd9,0xab]
          vpsrldq $171, %ymm25, %ymm24

// CHECK: vpsrldq $123, %ymm25, %ymm24
// CHECK:  encoding: [0x62,0x91,0x3d,0x20,0x73,0xd9,0x7b]
          vpsrldq $123, %ymm25, %ymm24

// CHECK: vpsrldq $123, (%rcx), %ymm24
// CHECK:  encoding: [0x62,0xf1,0x3d,0x20,0x73,0x19,0x7b]
          vpsrldq $123, (%rcx), %ymm24

// CHECK: vpsrldq $123, 291(%rax,%r14,8), %ymm24
// CHECK:  encoding: [0x62,0xb1,0x3d,0x20,0x73,0x9c,0xf0,0x23,0x01,0x00,0x00,0x7b]
          vpsrldq $123, 291(%rax,%r14,8), %ymm24

// CHECK: vpsrldq $123, 4064(%rdx), %ymm24
// CHECK:  encoding: [0x62,0xf1,0x3d,0x20,0x73,0x5a,0x7f,0x7b]
          vpsrldq $123, 4064(%rdx), %ymm24

// CHECK: vpsrldq $123, 4096(%rdx), %ymm24
// CHECK:  encoding: [0x62,0xf1,0x3d,0x20,0x73,0x9a,0x00,0x10,0x00,0x00,0x7b]
          vpsrldq $123, 4096(%rdx), %ymm24

// CHECK: vpsrldq $123, -4096(%rdx), %ymm24
// CHECK:  encoding: [0x62,0xf1,0x3d,0x20,0x73,0x5a,0x80,0x7b]
          vpsrldq $123, -4096(%rdx), %ymm24

// CHECK: vpsrldq $123, -4128(%rdx), %ymm24
// CHECK:  encoding: [0x62,0xf1,0x3d,0x20,0x73,0x9a,0xe0,0xef,0xff,0xff,0x7b]
          vpsrldq $123, -4128(%rdx), %ymm24

// CHECK: vpsrldq $171, %xmm17, %xmm18
// CHECK:  encoding: [0x62,0xb1,0x6d,0x00,0x73,0xd9,0xab]
          vpsrldq $0xab, %xmm17, %xmm18

// CHECK: vpsrldq $123, %xmm17, %xmm18
// CHECK:  encoding: [0x62,0xb1,0x6d,0x00,0x73,0xd9,0x7b]
          vpsrldq $0x7b, %xmm17, %xmm18

// CHECK: vpsrldq $123, (%rcx), %xmm18
// CHECK:  encoding: [0x62,0xf1,0x6d,0x00,0x73,0x19,0x7b]
          vpsrldq $0x7b,(%rcx), %xmm18

// CHECK: vpsrldq $123, 4660(%rax,%r14,8), %xmm18
// CHECK:  encoding: [0x62,0xb1,0x6d,0x00,0x73,0x9c,0xf0,0x34,0x12,0x00,0x00,0x7b]
          vpsrldq $0x7b,4660(%rax,%r14,8), %xmm18

// CHECK: vpsrldq $123, 2032(%rdx), %xmm18
// CHECK:  encoding: [0x62,0xf1,0x6d,0x00,0x73,0x5a,0x7f,0x7b]
          vpsrldq $0x7b,2032(%rdx), %xmm18

// CHECK: vpsrldq $123, 2048(%rdx), %xmm18
// CHECK:  encoding: [0x62,0xf1,0x6d,0x00,0x73,0x9a,0x00,0x08,0x00,0x00,0x7b]
          vpsrldq $0x7b,2048(%rdx), %xmm18

// CHECK: vpsrldq $123, -2048(%rdx), %xmm18
// CHECK:  encoding: [0x62,0xf1,0x6d,0x00,0x73,0x5a,0x80,0x7b]
          vpsrldq $0x7b,-2048(%rdx), %xmm18

// CHECK: vpsrldq $123, -2064(%rdx), %xmm18
// CHECK:  encoding: [0x62,0xf1,0x6d,0x00,0x73,0x9a,0xf0,0xf7,0xff,0xff,0x7b]
          vpsrldq $0x7b,-2064(%rdx), %xmm18

// CHECK: vpsrldq $171, %ymm28, %ymm20
// CHECK:  encoding: [0x62,0x91,0x5d,0x20,0x73,0xdc,0xab]
          vpsrldq $0xab, %ymm28, %ymm20

// CHECK: vpsrldq $123, %ymm28, %ymm20
// CHECK:  encoding: [0x62,0x91,0x5d,0x20,0x73,0xdc,0x7b]
          vpsrldq $0x7b, %ymm28, %ymm20

// CHECK: vpsrldq $123, (%rcx), %ymm20
// CHECK:  encoding: [0x62,0xf1,0x5d,0x20,0x73,0x19,0x7b]
          vpsrldq $0x7b,(%rcx), %ymm20

// CHECK: vpsrldq $123, 4660(%rax,%r14,8), %ymm20
// CHECK:  encoding: [0x62,0xb1,0x5d,0x20,0x73,0x9c,0xf0,0x34,0x12,0x00,0x00,0x7b]
          vpsrldq $0x7b,4660(%rax,%r14,8), %ymm20

// CHECK: vpsrldq $123, 4064(%rdx), %ymm20
// CHECK:  encoding: [0x62,0xf1,0x5d,0x20,0x73,0x5a,0x7f,0x7b]
          vpsrldq $0x7b,4064(%rdx), %ymm20

// CHECK: vpsrldq $123, 4096(%rdx), %ymm20
// CHECK:  encoding: [0x62,0xf1,0x5d,0x20,0x73,0x9a,0x00,0x10,0x00,0x00,0x7b]
          vpsrldq $0x7b,4096(%rdx), %ymm20

// CHECK: vpsrldq $123, -4096(%rdx), %ymm20
// CHECK:  encoding: [0x62,0xf1,0x5d,0x20,0x73,0x5a,0x80,0x7b]
          vpsrldq $0x7b,-4096(%rdx), %ymm20

// CHECK: vpsrldq $123, -4128(%rdx), %ymm20
// CHECK:  encoding: [0x62,0xf1,0x5d,0x20,0x73,0x9a,0xe0,0xef,0xff,0xff,0x7b]
          vpsrldq $0x7b,-4128(%rdx), %ymm20

// CHECK: vpsadbw %xmm24, %xmm24, %xmm17
// CHECK:  encoding: [0x62,0x81,0x3d,0x00,0xf6,0xc8]
          vpsadbw %xmm24, %xmm24, %xmm17

// CHECK: vpsadbw (%rcx), %xmm24, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x3d,0x00,0xf6,0x09]
          vpsadbw (%rcx), %xmm24, %xmm17

// CHECK: vpsadbw 291(%rax,%r14,8), %xmm24, %xmm17
// CHECK:  encoding: [0x62,0xa1,0x3d,0x00,0xf6,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpsadbw 291(%rax,%r14,8), %xmm24, %xmm17

// CHECK: vpsadbw 2032(%rdx), %xmm24, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x3d,0x00,0xf6,0x4a,0x7f]
          vpsadbw 2032(%rdx), %xmm24, %xmm17

// CHECK: vpsadbw 2048(%rdx), %xmm24, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x3d,0x00,0xf6,0x8a,0x00,0x08,0x00,0x00]
          vpsadbw 2048(%rdx), %xmm24, %xmm17

// CHECK: vpsadbw -2048(%rdx), %xmm24, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x3d,0x00,0xf6,0x4a,0x80]
          vpsadbw -2048(%rdx), %xmm24, %xmm17

// CHECK: vpsadbw -2064(%rdx), %xmm24, %xmm17
// CHECK:  encoding: [0x62,0xe1,0x3d,0x00,0xf6,0x8a,0xf0,0xf7,0xff,0xff]
          vpsadbw -2064(%rdx), %xmm24, %xmm17

// CHECK: vpsadbw %ymm24, %ymm27, %ymm19
// CHECK:  encoding: [0x62,0x81,0x25,0x20,0xf6,0xd8]
          vpsadbw %ymm24, %ymm27, %ymm19

// CHECK: vpsadbw (%rcx), %ymm27, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x25,0x20,0xf6,0x19]
          vpsadbw (%rcx), %ymm27, %ymm19

// CHECK: vpsadbw 291(%rax,%r14,8), %ymm27, %ymm19
// CHECK:  encoding: [0x62,0xa1,0x25,0x20,0xf6,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpsadbw 291(%rax,%r14,8), %ymm27, %ymm19

// CHECK: vpsadbw 4064(%rdx), %ymm27, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x25,0x20,0xf6,0x5a,0x7f]
          vpsadbw 4064(%rdx), %ymm27, %ymm19

// CHECK: vpsadbw 4096(%rdx), %ymm27, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x25,0x20,0xf6,0x9a,0x00,0x10,0x00,0x00]
          vpsadbw 4096(%rdx), %ymm27, %ymm19

// CHECK: vpsadbw -4096(%rdx), %ymm27, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x25,0x20,0xf6,0x5a,0x80]
          vpsadbw -4096(%rdx), %ymm27, %ymm19

// CHECK: vpsadbw -4128(%rdx), %ymm27, %ymm19
// CHECK:  encoding: [0x62,0xe1,0x25,0x20,0xf6,0x9a,0xe0,0xef,0xff,0xff]
          vpsadbw -4128(%rdx), %ymm27, %ymm19

// CHECK: vpsadbw %xmm21, %xmm19, %xmm30
// CHECK:  encoding: [0x62,0x21,0x65,0x00,0xf6,0xf5]
          vpsadbw %xmm21, %xmm19, %xmm30

// CHECK: vpsadbw (%rcx), %xmm19, %xmm30
// CHECK:  encoding: [0x62,0x61,0x65,0x00,0xf6,0x31]
          vpsadbw (%rcx), %xmm19, %xmm30

// CHECK: vpsadbw 4660(%rax,%r14,8), %xmm19, %xmm30
// CHECK:  encoding: [0x62,0x21,0x65,0x00,0xf6,0xb4,0xf0,0x34,0x12,0x00,0x00]
          vpsadbw 4660(%rax,%r14,8), %xmm19, %xmm30

// CHECK: vpsadbw 2032(%rdx), %xmm19, %xmm30
// CHECK:  encoding: [0x62,0x61,0x65,0x00,0xf6,0x72,0x7f]
          vpsadbw 2032(%rdx), %xmm19, %xmm30

// CHECK: vpsadbw 2048(%rdx), %xmm19, %xmm30
// CHECK:  encoding: [0x62,0x61,0x65,0x00,0xf6,0xb2,0x00,0x08,0x00,0x00]
          vpsadbw 2048(%rdx), %xmm19, %xmm30

// CHECK: vpsadbw -2048(%rdx), %xmm19, %xmm30
// CHECK:  encoding: [0x62,0x61,0x65,0x00,0xf6,0x72,0x80]
          vpsadbw -2048(%rdx), %xmm19, %xmm30

// CHECK: vpsadbw -2064(%rdx), %xmm19, %xmm30
// CHECK:  encoding: [0x62,0x61,0x65,0x00,0xf6,0xb2,0xf0,0xf7,0xff,0xff]
          vpsadbw -2064(%rdx), %xmm19, %xmm30

// CHECK: vpsadbw %ymm27, %ymm26, %ymm20
// CHECK:  encoding: [0x62,0x81,0x2d,0x20,0xf6,0xe3]
          vpsadbw %ymm27, %ymm26, %ymm20

// CHECK: vpsadbw (%rcx), %ymm26, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x2d,0x20,0xf6,0x21]
          vpsadbw (%rcx), %ymm26, %ymm20

// CHECK: vpsadbw 4660(%rax,%r14,8), %ymm26, %ymm20
// CHECK:  encoding: [0x62,0xa1,0x2d,0x20,0xf6,0xa4,0xf0,0x34,0x12,0x00,0x00]
          vpsadbw 4660(%rax,%r14,8), %ymm26, %ymm20

// CHECK: vpsadbw 4064(%rdx), %ymm26, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x2d,0x20,0xf6,0x62,0x7f]
          vpsadbw 4064(%rdx), %ymm26, %ymm20

// CHECK: vpsadbw 4096(%rdx), %ymm26, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x2d,0x20,0xf6,0xa2,0x00,0x10,0x00,0x00]
          vpsadbw 4096(%rdx), %ymm26, %ymm20

// CHECK: vpsadbw -4096(%rdx), %ymm26, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x2d,0x20,0xf6,0x62,0x80]
          vpsadbw -4096(%rdx), %ymm26, %ymm20

// CHECK: vpsadbw -4128(%rdx), %ymm26, %ymm20
// CHECK:  encoding: [0x62,0xe1,0x2d,0x20,0xf6,0xa2,0xe0,0xef,0xff,0xff]
          vpsadbw -4128(%rdx), %ymm26, %ymm20

// CHECK: vpbroadcastb %xmm28, %xmm30
// CHECK:  encoding: [0x62,0x02,0x7d,0x08,0x78,0xf4]
          vpbroadcastb %xmm28, %xmm30

// CHECK: vpbroadcastb %xmm28, %xmm30 {%k4}
// CHECK:  encoding: [0x62,0x02,0x7d,0x0c,0x78,0xf4]
          vpbroadcastb %xmm28, %xmm30 {%k4}

// CHECK: vpbroadcastb %xmm28, %xmm30 {%k4} {z}
// CHECK:  encoding: [0x62,0x02,0x7d,0x8c,0x78,0xf4]
          vpbroadcastb %xmm28, %xmm30 {%k4} {z}

// CHECK: vpbroadcastb (%rcx), %xmm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x78,0x31]
          vpbroadcastb (%rcx), %xmm30

// CHECK: vpbroadcastb 4660(%rax,%r14,8), %xmm30
// CHECK:  encoding: [0x62,0x22,0x7d,0x08,0x78,0xb4,0xf0,0x34,0x12,0x00,0x00]
          vpbroadcastb 4660(%rax,%r14,8), %xmm30

// CHECK: vpbroadcastb 127(%rdx), %xmm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x78,0x72,0x7f]
          vpbroadcastb 127(%rdx), %xmm30

// CHECK: vpbroadcastb 128(%rdx), %xmm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x78,0xb2,0x80,0x00,0x00,0x00]
          vpbroadcastb 128(%rdx), %xmm30

// CHECK: vpbroadcastb -128(%rdx), %xmm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x78,0x72,0x80]
          vpbroadcastb -128(%rdx), %xmm30

// CHECK: vpbroadcastb -129(%rdx), %xmm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x78,0xb2,0x7f,0xff,0xff,0xff]
          vpbroadcastb -129(%rdx), %xmm30

// CHECK: vpbroadcastb %xmm25, %ymm17
// CHECK:  encoding: [0x62,0x82,0x7d,0x28,0x78,0xc9]
          vpbroadcastb %xmm25, %ymm17

// CHECK: vpbroadcastb %xmm25, %ymm17 {%k2}
// CHECK:  encoding: [0x62,0x82,0x7d,0x2a,0x78,0xc9]
          vpbroadcastb %xmm25, %ymm17 {%k2}

// CHECK: vpbroadcastb %xmm25, %ymm17 {%k2} {z}
// CHECK:  encoding: [0x62,0x82,0x7d,0xaa,0x78,0xc9]
          vpbroadcastb %xmm25, %ymm17 {%k2} {z}

// CHECK: vpbroadcastb (%rcx), %ymm17
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x78,0x09]
          vpbroadcastb (%rcx), %ymm17

// CHECK: vpbroadcastb 4660(%rax,%r14,8), %ymm17
// CHECK:  encoding: [0x62,0xa2,0x7d,0x28,0x78,0x8c,0xf0,0x34,0x12,0x00,0x00]
          vpbroadcastb 4660(%rax,%r14,8), %ymm17

// CHECK: vpbroadcastb 127(%rdx), %ymm17
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x78,0x4a,0x7f]
          vpbroadcastb 127(%rdx), %ymm17

// CHECK: vpbroadcastb 128(%rdx), %ymm17
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x78,0x8a,0x80,0x00,0x00,0x00]
          vpbroadcastb 128(%rdx), %ymm17

// CHECK: vpbroadcastb -128(%rdx), %ymm17
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x78,0x4a,0x80]
          vpbroadcastb -128(%rdx), %ymm17

// CHECK: vpbroadcastb -129(%rdx), %ymm17
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x78,0x8a,0x7f,0xff,0xff,0xff]
          vpbroadcastb -129(%rdx), %ymm17

// CHECK: vpbroadcastb %eax, %xmm20
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x7a,0xe0]
          vpbroadcastb %eax, %xmm20

// CHECK: vpbroadcastb %eax, %xmm20 {%k3}
// CHECK:  encoding: [0x62,0xe2,0x7d,0x0b,0x7a,0xe0]
          vpbroadcastb %eax, %xmm20 {%k3}

// CHECK: vpbroadcastb %eax, %xmm20 {%k3} {z}
// CHECK:  encoding: [0x62,0xe2,0x7d,0x8b,0x7a,0xe0]
          vpbroadcastb %eax, %xmm20 {%k3} {z}

// CHECK: vpbroadcastb %eax, %ymm27
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x7a,0xd8]
          vpbroadcastb %eax, %ymm27

// CHECK: vpbroadcastb %eax, %ymm27 {%k6}
// CHECK:  encoding: [0x62,0x62,0x7d,0x2e,0x7a,0xd8]
          vpbroadcastb %eax, %ymm27 {%k6}

// CHECK: vpbroadcastb %eax, %ymm27 {%k6} {z}
// CHECK:  encoding: [0x62,0x62,0x7d,0xae,0x7a,0xd8]
          vpbroadcastb %eax, %ymm27 {%k6} {z}

// CHECK: vpbroadcastw %xmm24, %xmm30
// CHECK:  encoding: [0x62,0x02,0x7d,0x08,0x79,0xf0]
          vpbroadcastw %xmm24, %xmm30

// CHECK: vpbroadcastw %xmm24, %xmm30 {%k1}
// CHECK:  encoding: [0x62,0x02,0x7d,0x09,0x79,0xf0]
          vpbroadcastw %xmm24, %xmm30 {%k1}

// CHECK: vpbroadcastw %xmm24, %xmm30 {%k1} {z}
// CHECK:  encoding: [0x62,0x02,0x7d,0x89,0x79,0xf0]
          vpbroadcastw %xmm24, %xmm30 {%k1} {z}

// CHECK: vpbroadcastw (%rcx), %xmm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x79,0x31]
          vpbroadcastw (%rcx), %xmm30

// CHECK: vpbroadcastw 4660(%rax,%r14,8), %xmm30
// CHECK:  encoding: [0x62,0x22,0x7d,0x08,0x79,0xb4,0xf0,0x34,0x12,0x00,0x00]
          vpbroadcastw 4660(%rax,%r14,8), %xmm30

// CHECK: vpbroadcastw 254(%rdx), %xmm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x79,0x72,0x7f]
          vpbroadcastw 254(%rdx), %xmm30

// CHECK: vpbroadcastw 256(%rdx), %xmm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x79,0xb2,0x00,0x01,0x00,0x00]
          vpbroadcastw 256(%rdx), %xmm30

// CHECK: vpbroadcastw -256(%rdx), %xmm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x79,0x72,0x80]
          vpbroadcastw -256(%rdx), %xmm30

// CHECK: vpbroadcastw -258(%rdx), %xmm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x79,0xb2,0xfe,0xfe,0xff,0xff]
          vpbroadcastw -258(%rdx), %xmm30

// CHECK: vpbroadcastw %xmm18, %ymm28
// CHECK:  encoding: [0x62,0x22,0x7d,0x28,0x79,0xe2]
          vpbroadcastw %xmm18, %ymm28

// CHECK: vpbroadcastw %xmm18, %ymm28 {%k3}
// CHECK:  encoding: [0x62,0x22,0x7d,0x2b,0x79,0xe2]
          vpbroadcastw %xmm18, %ymm28 {%k3}

// CHECK: vpbroadcastw %xmm18, %ymm28 {%k3} {z}
// CHECK:  encoding: [0x62,0x22,0x7d,0xab,0x79,0xe2]
          vpbroadcastw %xmm18, %ymm28 {%k3} {z}

// CHECK: vpbroadcastw (%rcx), %ymm28
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x79,0x21]
          vpbroadcastw (%rcx), %ymm28

// CHECK: vpbroadcastw 4660(%rax,%r14,8), %ymm28
// CHECK:  encoding: [0x62,0x22,0x7d,0x28,0x79,0xa4,0xf0,0x34,0x12,0x00,0x00]
          vpbroadcastw 4660(%rax,%r14,8), %ymm28

// CHECK: vpbroadcastw 254(%rdx), %ymm28
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x79,0x62,0x7f]
          vpbroadcastw 254(%rdx), %ymm28

// CHECK: vpbroadcastw 256(%rdx), %ymm28
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x79,0xa2,0x00,0x01,0x00,0x00]
          vpbroadcastw 256(%rdx), %ymm28

// CHECK: vpbroadcastw -256(%rdx), %ymm28
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x79,0x62,0x80]
          vpbroadcastw -256(%rdx), %ymm28

// CHECK: vpbroadcastw -258(%rdx), %ymm28
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x79,0xa2,0xfe,0xfe,0xff,0xff]
          vpbroadcastw -258(%rdx), %ymm28

// CHECK: vpbroadcastw %eax, %xmm24
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x7b,0xc0]
          vpbroadcastw %eax, %xmm24

// CHECK: vpbroadcastw %eax, %xmm24 {%k6}
// CHECK:  encoding: [0x62,0x62,0x7d,0x0e,0x7b,0xc0]
          vpbroadcastw %eax, %xmm24 {%k6}

// CHECK: vpbroadcastw %eax, %xmm24 {%k6} {z}
// CHECK:  encoding: [0x62,0x62,0x7d,0x8e,0x7b,0xc0]
          vpbroadcastw %eax, %xmm24 {%k6} {z}

// CHECK: vpbroadcastw %eax, %ymm19
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x7b,0xd8]
          vpbroadcastw %eax, %ymm19

// CHECK: vpbroadcastw %eax, %ymm19 {%k3}
// CHECK:  encoding: [0x62,0xe2,0x7d,0x2b,0x7b,0xd8]
          vpbroadcastw %eax, %ymm19 {%k3}

// CHECK: vpbroadcastw %eax, %ymm19 {%k3} {z}
// CHECK:  encoding: [0x62,0xe2,0x7d,0xab,0x7b,0xd8]
          vpbroadcastw %eax, %ymm19 {%k3} {z}

// CHECK: vpbroadcastb %xmm20, %xmm20
// CHECK:  encoding: [0x62,0xa2,0x7d,0x08,0x78,0xe4]
          vpbroadcastb %xmm20, %xmm20

// CHECK: vpbroadcastb %xmm20, %xmm20 {%k7}
// CHECK:  encoding: [0x62,0xa2,0x7d,0x0f,0x78,0xe4]
          vpbroadcastb %xmm20, %xmm20 {%k7}

// CHECK: vpbroadcastb %xmm20, %xmm20 {%k7} {z}
// CHECK:  encoding: [0x62,0xa2,0x7d,0x8f,0x78,0xe4]
          vpbroadcastb %xmm20, %xmm20 {%k7} {z}

// CHECK: vpbroadcastb (%rcx), %xmm20
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x78,0x21]
          vpbroadcastb (%rcx), %xmm20

// CHECK: vpbroadcastb 291(%rax,%r14,8), %xmm20
// CHECK:  encoding: [0x62,0xa2,0x7d,0x08,0x78,0xa4,0xf0,0x23,0x01,0x00,0x00]
          vpbroadcastb 291(%rax,%r14,8), %xmm20

// CHECK: vpbroadcastb 127(%rdx), %xmm20
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x78,0x62,0x7f]
          vpbroadcastb 127(%rdx), %xmm20

// CHECK: vpbroadcastb 128(%rdx), %xmm20
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x78,0xa2,0x80,0x00,0x00,0x00]
          vpbroadcastb 128(%rdx), %xmm20

// CHECK: vpbroadcastb -128(%rdx), %xmm20
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x78,0x62,0x80]
          vpbroadcastb -128(%rdx), %xmm20

// CHECK: vpbroadcastb -129(%rdx), %xmm20
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x78,0xa2,0x7f,0xff,0xff,0xff]
          vpbroadcastb -129(%rdx), %xmm20

// CHECK: vpbroadcastb %xmm27, %ymm30
// CHECK:  encoding: [0x62,0x02,0x7d,0x28,0x78,0xf3]
          vpbroadcastb %xmm27, %ymm30

// CHECK: vpbroadcastb %xmm27, %ymm30 {%k6}
// CHECK:  encoding: [0x62,0x02,0x7d,0x2e,0x78,0xf3]
          vpbroadcastb %xmm27, %ymm30 {%k6}

// CHECK: vpbroadcastb %xmm27, %ymm30 {%k6} {z}
// CHECK:  encoding: [0x62,0x02,0x7d,0xae,0x78,0xf3]
          vpbroadcastb %xmm27, %ymm30 {%k6} {z}

// CHECK: vpbroadcastb (%rcx), %ymm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x78,0x31]
          vpbroadcastb (%rcx), %ymm30

// CHECK: vpbroadcastb 291(%rax,%r14,8), %ymm30
// CHECK:  encoding: [0x62,0x22,0x7d,0x28,0x78,0xb4,0xf0,0x23,0x01,0x00,0x00]
          vpbroadcastb 291(%rax,%r14,8), %ymm30

// CHECK: vpbroadcastb 127(%rdx), %ymm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x78,0x72,0x7f]
          vpbroadcastb 127(%rdx), %ymm30

// CHECK: vpbroadcastb 128(%rdx), %ymm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x78,0xb2,0x80,0x00,0x00,0x00]
          vpbroadcastb 128(%rdx), %ymm30

// CHECK: vpbroadcastb -128(%rdx), %ymm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x78,0x72,0x80]
          vpbroadcastb -128(%rdx), %ymm30

// CHECK: vpbroadcastb -129(%rdx), %ymm30
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x78,0xb2,0x7f,0xff,0xff,0xff]
          vpbroadcastb -129(%rdx), %ymm30

// CHECK: vpbroadcastb %eax, %xmm22
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x7a,0xf0]
          vpbroadcastb %eax, %xmm22

// CHECK: vpbroadcastb %eax, %xmm22 {%k3}
// CHECK:  encoding: [0x62,0xe2,0x7d,0x0b,0x7a,0xf0]
          vpbroadcastb %eax, %xmm22 {%k3}

// CHECK: vpbroadcastb %eax, %xmm22 {%k3} {z}
// CHECK:  encoding: [0x62,0xe2,0x7d,0x8b,0x7a,0xf0]
          vpbroadcastb %eax, %xmm22 {%k3} {z}

// CHECK: vpbroadcastb %eax, %ymm17
// CHECK:  encoding: [0x62,0xe2,0x7d,0x28,0x7a,0xc8]
          vpbroadcastb %eax, %ymm17

// CHECK: vpbroadcastb %eax, %ymm17 {%k1}
// CHECK:  encoding: [0x62,0xe2,0x7d,0x29,0x7a,0xc8]
          vpbroadcastb %eax, %ymm17 {%k1}

// CHECK: vpbroadcastb %eax, %ymm17 {%k1} {z}
// CHECK:  encoding: [0x62,0xe2,0x7d,0xa9,0x7a,0xc8]
          vpbroadcastb %eax, %ymm17 {%k1} {z}

// CHECK: vpbroadcastw %xmm20, %xmm19
// CHECK:  encoding: [0x62,0xa2,0x7d,0x08,0x79,0xdc]
          vpbroadcastw %xmm20, %xmm19

// CHECK: vpbroadcastw %xmm20, %xmm19 {%k2}
// CHECK:  encoding: [0x62,0xa2,0x7d,0x0a,0x79,0xdc]
          vpbroadcastw %xmm20, %xmm19 {%k2}

// CHECK: vpbroadcastw %xmm20, %xmm19 {%k2} {z}
// CHECK:  encoding: [0x62,0xa2,0x7d,0x8a,0x79,0xdc]
          vpbroadcastw %xmm20, %xmm19 {%k2} {z}

// CHECK: vpbroadcastw (%rcx), %xmm19
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x79,0x19]
          vpbroadcastw (%rcx), %xmm19

// CHECK: vpbroadcastw 291(%rax,%r14,8), %xmm19
// CHECK:  encoding: [0x62,0xa2,0x7d,0x08,0x79,0x9c,0xf0,0x23,0x01,0x00,0x00]
          vpbroadcastw 291(%rax,%r14,8), %xmm19

// CHECK: vpbroadcastw 254(%rdx), %xmm19
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x79,0x5a,0x7f]
          vpbroadcastw 254(%rdx), %xmm19

// CHECK: vpbroadcastw 256(%rdx), %xmm19
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x79,0x9a,0x00,0x01,0x00,0x00]
          vpbroadcastw 256(%rdx), %xmm19

// CHECK: vpbroadcastw -256(%rdx), %xmm19
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x79,0x5a,0x80]
          vpbroadcastw -256(%rdx), %xmm19

// CHECK: vpbroadcastw -258(%rdx), %xmm19
// CHECK:  encoding: [0x62,0xe2,0x7d,0x08,0x79,0x9a,0xfe,0xfe,0xff,0xff]
          vpbroadcastw -258(%rdx), %xmm19

// CHECK: vpbroadcastw %xmm17, %ymm25
// CHECK:  encoding: [0x62,0x22,0x7d,0x28,0x79,0xc9]
          vpbroadcastw %xmm17, %ymm25

// CHECK: vpbroadcastw %xmm17, %ymm25 {%k7}
// CHECK:  encoding: [0x62,0x22,0x7d,0x2f,0x79,0xc9]
          vpbroadcastw %xmm17, %ymm25 {%k7}

// CHECK: vpbroadcastw %xmm17, %ymm25 {%k7} {z}
// CHECK:  encoding: [0x62,0x22,0x7d,0xaf,0x79,0xc9]
          vpbroadcastw %xmm17, %ymm25 {%k7} {z}

// CHECK: vpbroadcastw (%rcx), %ymm25
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x79,0x09]
          vpbroadcastw (%rcx), %ymm25

// CHECK: vpbroadcastw 291(%rax,%r14,8), %ymm25
// CHECK:  encoding: [0x62,0x22,0x7d,0x28,0x79,0x8c,0xf0,0x23,0x01,0x00,0x00]
          vpbroadcastw 291(%rax,%r14,8), %ymm25

// CHECK: vpbroadcastw 254(%rdx), %ymm25
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x79,0x4a,0x7f]
          vpbroadcastw 254(%rdx), %ymm25

// CHECK: vpbroadcastw 256(%rdx), %ymm25
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x79,0x8a,0x00,0x01,0x00,0x00]
          vpbroadcastw 256(%rdx), %ymm25

// CHECK: vpbroadcastw -256(%rdx), %ymm25
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x79,0x4a,0x80]
          vpbroadcastw -256(%rdx), %ymm25

// CHECK: vpbroadcastw -258(%rdx), %ymm25
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x79,0x8a,0xfe,0xfe,0xff,0xff]
          vpbroadcastw -258(%rdx), %ymm25

// CHECK: vpbroadcastw %eax, %xmm29
// CHECK:  encoding: [0x62,0x62,0x7d,0x08,0x7b,0xe8]
          vpbroadcastw %eax, %xmm29

// CHECK: vpbroadcastw %eax, %xmm29 {%k1}
// CHECK:  encoding: [0x62,0x62,0x7d,0x09,0x7b,0xe8]
          vpbroadcastw %eax, %xmm29 {%k1}

// CHECK: vpbroadcastw %eax, %xmm29 {%k1} {z}
// CHECK:  encoding: [0x62,0x62,0x7d,0x89,0x7b,0xe8]
          vpbroadcastw %eax, %xmm29 {%k1} {z}

// CHECK: vpbroadcastw %eax, %ymm28
// CHECK:  encoding: [0x62,0x62,0x7d,0x28,0x7b,0xe0]
          vpbroadcastw %eax, %ymm28

// CHECK: vpbroadcastw %eax, %ymm28 {%k4}
// CHECK:  encoding: [0x62,0x62,0x7d,0x2c,0x7b,0xe0]
          vpbroadcastw %eax, %ymm28 {%k4}

// CHECK: vpbroadcastw %eax, %ymm28 {%k4} {z}
// CHECK:  encoding: [0x62,0x62,0x7d,0xac,0x7b,0xe0]
          vpbroadcastw %eax, %ymm28 {%k4} {z}

// CHECK: vmovdqu16.s %xmm27, %xmm23
// CHECK:  encoding: [0x62,0x21,0xff,0x08,0x7f,0xdf]
          vmovdqu16.s %xmm27, %xmm23

// CHECK: vmovdqu16.s %xmm27, %xmm23 {%k2}
// CHECK:  encoding: [0x62,0x21,0xff,0x0a,0x7f,0xdf]
          vmovdqu16.s %xmm27, %xmm23 {%k2}

// CHECK: vmovdqu16.s %xmm27, %xmm23 {%k2} {z}
// CHECK:  encoding: [0x62,0x21,0xff,0x8a,0x7f,0xdf]
          vmovdqu16.s %xmm27, %xmm23 {%k2} {z}

// CHECK: vmovdqu16.s %xmm17, %xmm27
// CHECK:  encoding: [0x62,0x81,0xff,0x08,0x7f,0xcb]
          vmovdqu16.s %xmm17, %xmm27

// CHECK: vmovdqu16.s %xmm17, %xmm27 {%k2}
// CHECK:  encoding: [0x62,0x81,0xff,0x0a,0x7f,0xcb]
          vmovdqu16.s %xmm17, %xmm27 {%k2}

// CHECK: vmovdqu16.s %xmm17, %xmm27 {%k2} {z}
// CHECK:  encoding: [0x62,0x81,0xff,0x8a,0x7f,0xcb]
          vmovdqu16.s %xmm17, %xmm27 {%k2} {z}

// CHECK: vmovdqu16.s %ymm29, %ymm27
// CHECK:  encoding: [0x62,0x01,0xff,0x28,0x7f,0xeb]
          vmovdqu16.s %ymm29, %ymm27

// CHECK: vmovdqu16.s %ymm29, %ymm27 {%k6}
// CHECK:  encoding: [0x62,0x01,0xff,0x2e,0x7f,0xeb]
          vmovdqu16.s %ymm29, %ymm27 {%k6}

// CHECK: vmovdqu16.s %ymm29, %ymm27 {%k6} {z}
// CHECK:  encoding: [0x62,0x01,0xff,0xae,0x7f,0xeb]
          vmovdqu16.s %ymm29, %ymm27 {%k6} {z}

// CHECK: vmovdqu16.s %ymm29, %ymm29
// CHECK:  encoding: [0x62,0x01,0xff,0x28,0x7f,0xed]
          vmovdqu16.s %ymm29, %ymm29

// CHECK: vmovdqu16.s %ymm29, %ymm29 {%k1}
// CHECK:  encoding: [0x62,0x01,0xff,0x29,0x7f,0xed]
          vmovdqu16.s %ymm29, %ymm29 {%k1}

// CHECK: vmovdqu16.s %ymm29, %ymm29 {%k1} {z}
// CHECK:  encoding: [0x62,0x01,0xff,0xa9,0x7f,0xed]
          vmovdqu16.s %ymm29, %ymm29 {%k1} {z}

// CHECK: vmovdqu16.s %xmm26, %xmm24
// CHECK:  encoding: [0x62,0x01,0xff,0x08,0x7f,0xd0]
          vmovdqu16.s %xmm26, %xmm24

// CHECK: vmovdqu16.s %xmm26, %xmm24 {%k5}
// CHECK:  encoding: [0x62,0x01,0xff,0x0d,0x7f,0xd0]
          vmovdqu16.s %xmm26, %xmm24 {%k5}

// CHECK: vmovdqu16.s %xmm26, %xmm24 {%k5} {z}
// CHECK:  encoding: [0x62,0x01,0xff,0x8d,0x7f,0xd0]
          vmovdqu16.s %xmm26, %xmm24 {%k5} {z}

// CHECK: vmovdqu16.s %xmm20, %xmm23
// CHECK:  encoding: [0x62,0xa1,0xff,0x08,0x7f,0xe7]
          vmovdqu16.s %xmm20, %xmm23

// CHECK: vmovdqu16.s %xmm20, %xmm23 {%k1}
// CHECK:  encoding: [0x62,0xa1,0xff,0x09,0x7f,0xe7]
          vmovdqu16.s %xmm20, %xmm23 {%k1}

// CHECK: vmovdqu16.s %xmm20, %xmm23 {%k1} {z}
// CHECK:  encoding: [0x62,0xa1,0xff,0x89,0x7f,0xe7]
          vmovdqu16.s %xmm20, %xmm23 {%k1} {z}

// CHECK: vmovdqu16.s %ymm23, %ymm28
// CHECK:  encoding: [0x62,0x81,0xff,0x28,0x7f,0xfc]
          vmovdqu16.s %ymm23, %ymm28

// CHECK: vmovdqu16.s %ymm23, %ymm28 {%k4}
// CHECK:  encoding: [0x62,0x81,0xff,0x2c,0x7f,0xfc]
          vmovdqu16.s %ymm23, %ymm28 {%k4}

// CHECK: vmovdqu16.s %ymm23, %ymm28 {%k4} {z}
// CHECK:  encoding: [0x62,0x81,0xff,0xac,0x7f,0xfc]
          vmovdqu16.s %ymm23, %ymm28 {%k4} {z}

// CHECK: vmovdqu16.s %ymm24, %ymm26
// CHECK:  encoding: [0x62,0x01,0xff,0x28,0x7f,0xc2]
          vmovdqu16.s %ymm24, %ymm26

// CHECK: vmovdqu16.s %ymm24, %ymm26 {%k2}
// CHECK:  encoding: [0x62,0x01,0xff,0x2a,0x7f,0xc2]
          vmovdqu16.s %ymm24, %ymm26 {%k2}

// CHECK: vmovdqu16.s %ymm24, %ymm26 {%k2} {z}
// CHECK:  encoding: [0x62,0x01,0xff,0xaa,0x7f,0xc2]
          vmovdqu16.s %ymm24, %ymm26 {%k2} {z}

// CHECK: vmovdqu8.s %xmm22, %xmm18
// CHECK:  encoding: [0x62,0xa1,0x7f,0x08,0x7f,0xf2]
          vmovdqu8.s %xmm22, %xmm18

// CHECK: vmovdqu8.s %xmm22, %xmm18 {%k1}
// CHECK:  encoding: [0x62,0xa1,0x7f,0x09,0x7f,0xf2]
          vmovdqu8.s %xmm22, %xmm18 {%k1}

// CHECK: vmovdqu8.s %xmm22, %xmm18 {%k1} {z}
// CHECK:  encoding: [0x62,0xa1,0x7f,0x89,0x7f,0xf2]
          vmovdqu8.s %xmm22, %xmm18 {%k1} {z}

// CHECK: vmovdqu8.s %xmm19, %xmm28
// CHECK:  encoding: [0x62,0x81,0x7f,0x08,0x7f,0xdc]
          vmovdqu8.s %xmm19, %xmm28

// CHECK: vmovdqu8.s %xmm19, %xmm28 {%k1}
// CHECK:  encoding: [0x62,0x81,0x7f,0x09,0x7f,0xdc]
          vmovdqu8.s %xmm19, %xmm28 {%k1}

// CHECK: vmovdqu8.s %xmm19, %xmm28 {%k1} {z}
// CHECK:  encoding: [0x62,0x81,0x7f,0x89,0x7f,0xdc]
          vmovdqu8.s %xmm19, %xmm28 {%k1} {z}

// CHECK: vmovdqu8.s %ymm19, %ymm28
// CHECK:  encoding: [0x62,0x81,0x7f,0x28,0x7f,0xdc]
          vmovdqu8.s %ymm19, %ymm28

// CHECK: vmovdqu8.s %ymm19, %ymm28 {%k3}
// CHECK:  encoding: [0x62,0x81,0x7f,0x2b,0x7f,0xdc]
          vmovdqu8.s %ymm19, %ymm28 {%k3}

// CHECK: vmovdqu8.s %ymm19, %ymm28 {%k3} {z}
// CHECK:  encoding: [0x62,0x81,0x7f,0xab,0x7f,0xdc]
          vmovdqu8.s %ymm19, %ymm28 {%k3} {z}

// CHECK: vmovdqu8.s %ymm17, %ymm19
// CHECK:  encoding: [0x62,0xa1,0x7f,0x28,0x7f,0xcb]
          vmovdqu8.s %ymm17, %ymm19

// CHECK: vmovdqu8.s %ymm17, %ymm19 {%k2}
// CHECK:  encoding: [0x62,0xa1,0x7f,0x2a,0x7f,0xcb]
          vmovdqu8.s %ymm17, %ymm19 {%k2}

// CHECK: vmovdqu8.s %ymm17, %ymm19 {%k2} {z}
// CHECK:  encoding: [0x62,0xa1,0x7f,0xaa,0x7f,0xcb]
          vmovdqu8.s %ymm17, %ymm19 {%k2} {z}

// CHECK: vmovdqu8.s %xmm17, %xmm24
// CHECK:  encoding: [0x62,0x81,0x7f,0x08,0x7f,0xc8]
          vmovdqu8.s %xmm17, %xmm24

// CHECK: vmovdqu8.s %xmm17, %xmm24 {%k3}
// CHECK:  encoding: [0x62,0x81,0x7f,0x0b,0x7f,0xc8]
          vmovdqu8.s %xmm17, %xmm24 {%k3}

// CHECK: vmovdqu8.s %xmm17, %xmm24 {%k3} {z}
// CHECK:  encoding: [0x62,0x81,0x7f,0x8b,0x7f,0xc8]
          vmovdqu8.s %xmm17, %xmm24 {%k3} {z}

// CHECK: vmovdqu8.s %xmm27, %xmm23
// CHECK:  encoding: [0x62,0x21,0x7f,0x08,0x7f,0xdf]
          vmovdqu8.s %xmm27, %xmm23

// CHECK: vmovdqu8.s %xmm27, %xmm23 {%k2}
// CHECK:  encoding: [0x62,0x21,0x7f,0x0a,0x7f,0xdf]
          vmovdqu8.s %xmm27, %xmm23 {%k2}

// CHECK: vmovdqu8.s %xmm27, %xmm23 {%k2} {z}
// CHECK:  encoding: [0x62,0x21,0x7f,0x8a,0x7f,0xdf]
          vmovdqu8.s %xmm27, %xmm23 {%k2} {z}

// CHECK: vmovdqu8.s %ymm21, %ymm17
// CHECK:  encoding: [0x62,0xa1,0x7f,0x28,0x7f,0xe9]
          vmovdqu8.s %ymm21, %ymm17

// CHECK: vmovdqu8.s %ymm21, %ymm17 {%k1}
// CHECK:  encoding: [0x62,0xa1,0x7f,0x29,0x7f,0xe9]
          vmovdqu8.s %ymm21, %ymm17 {%k1}

// CHECK: vmovdqu8.s %ymm21, %ymm17 {%k1} {z}
// CHECK:  encoding: [0x62,0xa1,0x7f,0xa9,0x7f,0xe9]
          vmovdqu8.s %ymm21, %ymm17 {%k1} {z}

// CHECK: vmovdqu8.s %ymm19, %ymm17
// CHECK:  encoding: [0x62,0xa1,0x7f,0x28,0x7f,0xd9]
          vmovdqu8.s %ymm19, %ymm17

// CHECK: vmovdqu8.s %ymm19, %ymm17 {%k6}
// CHECK:  encoding: [0x62,0xa1,0x7f,0x2e,0x7f,0xd9]
          vmovdqu8.s %ymm19, %ymm17 {%k6}

// CHECK: vmovdqu8.s %ymm19, %ymm17 {%k6} {z}
// CHECK:  encoding: [0x62,0xa1,0x7f,0xae,0x7f,0xd9]
          vmovdqu8.s %ymm19, %ymm17 {%k6} {z}

