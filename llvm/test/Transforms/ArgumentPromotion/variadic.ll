; RUN: opt < %s -argpromotion -S | FileCheck %s

; Unused arguments from variadic functions cannot be eliminated as that changes
; their classiciation according to the SysV amd64 ABI. Clang and other frontends
; bake in the classification when they use things like byval, as in this test.

target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tt0 = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@t45 = internal global %struct.tt0 { i64 1335139741, i64 438042995 }, align 8

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** nocapture readnone %argv) #0 {
entry:
  tail call void (i8*, i8*, i8*, i8*, i8*, ...) @callee_t0f(i8* undef, i8* undef, i8* undef, i8* undef, i8* undef, %struct.tt0* byval align 8 @t45)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @callee_t0f(i8* nocapture readnone %tp13, i8* nocapture readnone %tp14, i8* nocapture readnone %tp15, i8* nocapture readnone %tp16, i8* nocapture readnone %tp17, ...) {
entry:
  ret void
}

; CHECK-LABEL: define internal void @callee_t0f(i8* nocapture readnone %tp13, i8* nocapture readnone %tp14, i8* nocapture readnone %tp15, i8* nocapture readnone %tp16, i8* nocapture readnone %tp17, ...)
