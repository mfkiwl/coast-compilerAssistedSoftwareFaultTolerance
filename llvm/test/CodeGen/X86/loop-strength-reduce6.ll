; RUN: llc < %s -march=x86-64 | not grep inc

define fastcc i32 @decodeMP3(i32 %isize, i32* %done) nounwind {
entry:
	br label %cond_true189

cond_true189:		; preds = %entry
	ret i32 0

cond_next191:		; preds = %entry
	br label %cond_false.i9

cond_false.i9:		; preds = %cond_next191
	ret i32 0

cond_next37.i:		; preds = %cond_next191
	br label %cond_true44.i

cond_true44.i:		; preds = %cond_next37.i
	br label %bb414.preheader.i

cond_true11.i.i:		; preds = %cond_true44.i
	ret i32 0

cond_false50.i:		; preds = %cond_next37.i
	ret i32 0

bb414.preheader.i:		; preds = %cond_true44.i
	br label %do_layer3.exit

bb.i18:		; preds = %bb414.preheader.i
	br label %cond_true79.i

cond_true79.i:		; preds = %bb.i18
	ret i32 0

bb331.i:		; preds = %bb358.i, %cond_true.i149.i
	br label %cond_false.i151.i

cond_true.i149.i:		; preds = %bb331.i
	br label %bb331.i

cond_false.i151.i:		; preds = %bb331.i
	ret i32 0

bb163.i.i:		; preds = %bb178.preheader.i.i, %bb163.i.i
	%rawout2.451.rec.i.i = phi i64 [ 0, %bb178.preheader.i.i ], [ %indvar.next260.i, %bb163.i.i ]		; <i64> [#uses=2]
	%i.052.i.i = trunc i64 %rawout2.451.rec.i.i to i32		; <i32> [#uses=1]
	%tmp165.i144.i = shl i32 %i.052.i.i, 5		; <i32> [#uses=1]
	%tmp165169.i.i = sext i32 %tmp165.i144.i to i64		; <i64> [#uses=0]
	%indvar.next260.i = add i64 %rawout2.451.rec.i.i, 1		; <i64> [#uses=2]
	%exitcond261.i = icmp eq i64 %indvar.next260.i, 18		; <i1> [#uses=1]
	br i1 %exitcond261.i, label %bb178.preheader.i.i, label %bb163.i.i

bb178.preheader.i.i:		; preds = %bb163.i.i, %cond_true.i149.i
	br label %bb163.i.i

bb358.i:		; preds = %bb.i18
	br label %bb406.i

bb406.i:		; preds = %bb358.i
	ret i32 0

do_layer3.exit:		; preds = %bb414.preheader.i
	ret i32 0
}
