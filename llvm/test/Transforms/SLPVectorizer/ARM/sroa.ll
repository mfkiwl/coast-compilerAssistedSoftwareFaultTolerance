; RUN: opt -S -mcpu=swift -mtriple=thumbv7-apple-ios -basicaa -slp-vectorizer < %s | FileCheck %s

target datalayout = "e-p:32:32:32-i1:8:32-i8:8:32-i16:16:32-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:32:64-v128:32:128-a0:0:32-n32-S32"

%class.Complex = type { double, double }

; Code like this is the result of SROA. Make sure we don't vectorize this
; because the scalar version of the shl/or are handled by the
; backend and disappear, the vectorized code stays.

; CHECK-LABEL: SROAed
; CHECK-NOT: shl nuw <2 x i64>
; CHECK-NOT: or <2 x i64>

define void @SROAed(%class.Complex* noalias nocapture sret %agg.result, [4 x i32] %a.coerce, [4 x i32] %b.coerce) {
entry:
  %a.coerce.fca.0.extract = extractvalue [4 x i32] %a.coerce, 0
  %a.sroa.0.0.insert.ext = zext i32 %a.coerce.fca.0.extract to i64
  %a.coerce.fca.1.extract = extractvalue [4 x i32] %a.coerce, 1
  %a.sroa.0.4.insert.ext = zext i32 %a.coerce.fca.1.extract to i64
  %a.sroa.0.4.insert.shift = shl nuw i64 %a.sroa.0.4.insert.ext, 32
  %a.sroa.0.4.insert.insert = or i64 %a.sroa.0.4.insert.shift, %a.sroa.0.0.insert.ext
  %0 = bitcast i64 %a.sroa.0.4.insert.insert to double
  %a.coerce.fca.2.extract = extractvalue [4 x i32] %a.coerce, 2
  %a.sroa.3.8.insert.ext = zext i32 %a.coerce.fca.2.extract to i64
  %a.coerce.fca.3.extract = extractvalue [4 x i32] %a.coerce, 3
  %a.sroa.3.12.insert.ext = zext i32 %a.coerce.fca.3.extract to i64
  %a.sroa.3.12.insert.shift = shl nuw i64 %a.sroa.3.12.insert.ext, 32
  %a.sroa.3.12.insert.insert = or i64 %a.sroa.3.12.insert.shift, %a.sroa.3.8.insert.ext
  %1 = bitcast i64 %a.sroa.3.12.insert.insert to double
  %b.coerce.fca.0.extract = extractvalue [4 x i32] %b.coerce, 0
  %b.sroa.0.0.insert.ext = zext i32 %b.coerce.fca.0.extract to i64
  %b.coerce.fca.1.extract = extractvalue [4 x i32] %b.coerce, 1
  %b.sroa.0.4.insert.ext = zext i32 %b.coerce.fca.1.extract to i64
  %b.sroa.0.4.insert.shift = shl nuw i64 %b.sroa.0.4.insert.ext, 32
  %b.sroa.0.4.insert.insert = or i64 %b.sroa.0.4.insert.shift, %b.sroa.0.0.insert.ext
  %2 = bitcast i64 %b.sroa.0.4.insert.insert to double
  %b.coerce.fca.2.extract = extractvalue [4 x i32] %b.coerce, 2
  %b.sroa.3.8.insert.ext = zext i32 %b.coerce.fca.2.extract to i64
  %b.coerce.fca.3.extract = extractvalue [4 x i32] %b.coerce, 3
  %b.sroa.3.12.insert.ext = zext i32 %b.coerce.fca.3.extract to i64
  %b.sroa.3.12.insert.shift = shl nuw i64 %b.sroa.3.12.insert.ext, 32
  %b.sroa.3.12.insert.insert = or i64 %b.sroa.3.12.insert.shift, %b.sroa.3.8.insert.ext
  %3 = bitcast i64 %b.sroa.3.12.insert.insert to double
  %add = fadd double %0, %2
  %add3 = fadd double %1, %3
  %re.i.i = getelementptr inbounds %class.Complex, %class.Complex* %agg.result, i32 0, i32 0
  store double %add, double* %re.i.i, align 4
  %im.i.i = getelementptr inbounds %class.Complex, %class.Complex* %agg.result, i32 0, i32 1
  store double %add3, double* %im.i.i, align 4
  ret void
}
