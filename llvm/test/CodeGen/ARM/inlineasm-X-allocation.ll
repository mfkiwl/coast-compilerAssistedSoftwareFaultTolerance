; RUN: llc -mtriple=armv7-none-eabi -mattr=-neon,-vfpv2 %s -o - | FileCheck %s  -check-prefix=novfp
; RUN: llc -mtriple=armv7-none-eabi -mattr=+neon %s -float-abi=hard -o - | FileCheck %s -check-prefix=vfp

; vfp-LABEL: f1
; vfp-CHECK: vadd.f32 s0, s0, s0

; In the novfp case, the compiler is forced to assign a core register.
; Although this register class can't be used with the vadd.f32 instruction,
; the compiler behaved as expected since it is allowed to emit anything.

; novfp-LABEL: f1
; novfp-CHECK: vadd.f32 r0, r0, r0

; This can be generated by a function such as:
;  void f1(float f) {asm volatile ("add.f32 $0, $0, $0" : : "X" (f));}

define arm_aapcs_vfpcc void @f1(float %f) {
entry:
  call void asm sideeffect "vadd.f32 $0, $0, $0", "X" (float %f) nounwind
  ret void
}
