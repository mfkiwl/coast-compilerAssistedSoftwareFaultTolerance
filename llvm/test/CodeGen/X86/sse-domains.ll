; RUN: llc < %s -mcpu=nehalem | FileCheck %s
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.7"

; CHECK: f
;
; This function contains load / store / and operations that all can execute in
; any domain.  The only domain-specific operation is the %add = shl... operation
; which is <4 x i32>.
;
; The paddd instruction can only influence the other operations through the loop
; back-edge. Check that everything is still moved into the integer domain.

define void @f(<4 x i32>* nocapture %p, i32 %n) nounwind uwtable ssp {
entry:
  br label %while.body

; Materialize a zeroinitializer and a constant-pool load in the integer domain.
; The order is not important.
; CHECK: pxor
; CHECK: movdqa

; The instructions in the loop must all be integer domain as well.
; CHECK: while.body
; CHECK: pand
; CHECK: movdqa
; CHECK: movdqa
; Finally, the controlling integer-only instruction.
; CHECK: paddd
while.body:
  %p.addr.04 = phi <4 x i32>* [ %incdec.ptr, %while.body ], [ %p, %entry ]
  %n.addr.03 = phi i32 [ %dec, %while.body ], [ %n, %entry ]
  %x.02 = phi <4 x i32> [ %add, %while.body ], [ zeroinitializer, %entry ]
  %dec = add nsw i32 %n.addr.03, -1
  %and = and <4 x i32> %x.02, <i32 127, i32 127, i32 127, i32 127>
  %incdec.ptr = getelementptr inbounds <4 x i32>, <4 x i32>* %p.addr.04, i64 1
  store <4 x i32> %and, <4 x i32>* %p.addr.04, align 16
  %0 = load <4 x i32>, <4 x i32>* %incdec.ptr, align 16
  %add = shl <4 x i32> %0, <i32 1, i32 1, i32 1, i32 1>
  %tobool = icmp eq i32 %dec, 0
  br i1 %tobool, label %while.end, label %while.body

while.end:
  ret void
}
