; RUN: llc < %s -asm-verbose=false -disable-wasm-fallthrough-return-opt -verify-machineinstrs | FileCheck %s
; RUN: llc < %s -asm-verbose=false -disable-wasm-fallthrough-return-opt -verify-machineinstrs -fast-isel | FileCheck %s

; ModuleID = 'test/dot_s/indirect-import.c'
source_filename = "test/dot_s/indirect-import.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32:64-S128"
target triple = "wasm32"

%struct.big = type { float, double, i32 }

; Function Attrs: nounwind
; CHECK: bar:
define hidden i32 @bar() #0 {
entry:
  %fd = alloca float (double)*, align 4
  %vj = alloca void (i64)*, align 4
  %v = alloca void ()*, align 4
  %ijidf = alloca i32 (i64, i32, double, float)*, align 4
  %vs = alloca void (%struct.big*)*, align 4
  %s = alloca void (%struct.big*)*, align 4

; CHECK: i32.const       {{.+}}=, extern_fd@FUNCTION
  store float (double)* @extern_fd, float (double)** %fd, align 4
; CHECK: i32.const       {{.+}}=, extern_vj@FUNCTION
  store void (i64)* @extern_vj, void (i64)** %vj, align 4
  %0 = load void (i64)*, void (i64)** %vj, align 4
  call void %0(i64 1)

; CHECK: i32.const       {{.+}}=, extern_v@FUNCTION
  store void ()* @extern_v, void ()** %v, align 4
  %1 = load void ()*, void ()** %v, align 4
  call void %1()

; CHECK: i32.const       {{.+}}=, extern_ijidf@FUNCTION
  store i32 (i64, i32, double, float)* @extern_ijidf, i32 (i64, i32, double, float)** %ijidf, align 4
  %2 = load i32 (i64, i32, double, float)*, i32 (i64, i32, double, float)** %ijidf, align 4
  %call = call i32 %2(i64 1, i32 2, double 3.000000e+00, float 4.000000e+00)

; CHECK: i32.const       {{.+}}=, extern_struct@FUNCTION
  store void (%struct.big*)* @extern_struct, void (%struct.big*)** %vs, align 4

; CHECK: i32.const       {{.+}}=, extern_sret@FUNCTION
  store void (%struct.big*)* @extern_sret, void (%struct.big*)** %s, align 4
  %3 = load float (double)*, float (double)** %fd, align 4
  %4 = ptrtoint float (double)* %3 to i32
  ret i32 %4
}

declare float @extern_fd(double) #1

declare void @extern_vj(i64) #1

declare void @extern_v() #1

declare i32 @extern_ijidf(i64, i32, double, float) #1

declare void @extern_struct(%struct.big* byval align 8) #1

declare void @extern_sret(%struct.big* sret) #1

declare i128 @extern_i128ret(i64) #1

attributes #0 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }


; CHECK: .functype       extern_fd, f32, f64
; CHECK: .functype       extern_vj, void, i64
; CHECK: .functype       extern_v, void
; CHECK: .functype       extern_ijidf, i32, i64, i32, f64, f32
; CHECK: .functype       extern_struct, void, i32
; CHECK: .functype       extern_sret, void, i32
; CHECK: .functype       extern_i128ret, void, i32, i64
