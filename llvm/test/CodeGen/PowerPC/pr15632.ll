; RUN: llc -mcpu=pwr7 -O0 < %s | FileCheck %s

target datalayout = "E-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v128:128:128-n32:64"
target triple = "powerpc64-unknown-linux-gnu"

declare void @other(ppc_fp128 %tmp70)

define void @bug() {
entry:
  %tmp70 = frem ppc_fp128 0xM00000000000000000000000000000000, undef
  call void @other(ppc_fp128 %tmp70)
  unreachable
}

; CHECK: bl fmodl
