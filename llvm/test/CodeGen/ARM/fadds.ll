; RUN: llc -mtriple=arm-eabi -mattr=+vfp2 %s -o - \
; RUN:  | FileCheck %s -check-prefix=VFP2

; RUN: llc -mtriple=arm-eabi -mattr=+neon %s -o - \
; RUN:  | FileCheck %s -check-prefix=NFP0

; RUN: llc -mtriple=arm-eabi -mcpu=cortex-a8 %s -o - \
; RUN:  | FileCheck %s -check-prefix=CORTEXA8

; RUN: llc -mtriple=arm-eabi -mcpu=cortex-a8 --enable-unsafe-fp-math %s -o - \
; RUN:  | FileCheck %s -check-prefix=CORTEXA8U

; RUN: llc -mtriple=arm-darwin -mcpu=cortex-a8 %s -o - \
; RUN:  | FileCheck %s -check-prefix=CORTEXA8U

; RUN: llc -mtriple=arm-eabi -mcpu=cortex-a9 %s -o - \
; RUN:  | FileCheck %s -check-prefix=CORTEXA9

define float @test(float %a, float %b) {
entry:
	%0 = fadd float %a, %b
	ret float %0
}

; VFP2-LABEL: test:
; VFP2: 	vadd.f32	s

; NFP1-LABEL: test:
; NFP1: 	vadd.f32	d
; NFP0-LABEL: test:
; NFP0: 	vadd.f32	s

; CORTEXA8-LABEL: test:
; CORTEXA8: 	vadd.f32	s
; CORTEXA8U-LABEL: test:
; CORTEXA8U: 	vadd.f32	d
; CORTEXA9-LABEL: test:
; CORTEXA9: 	vadd.f32	s
