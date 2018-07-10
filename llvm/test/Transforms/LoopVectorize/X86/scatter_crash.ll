; NOTE: Assertions have been autogenerated by utils/update_test_checks.py
; RUN: opt < %s -loop-vectorize -S | FileCheck %s
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; This test checks vector GEP before scatter.
; The code bellow crashed due to destroyed SSA while incorrect vectorization of
; the GEP.

@d = global [10 x [10 x i32]] zeroinitializer, align 16
@c = external global i32, align 4
@a = external global i32, align 4
@b = external global i64, align 8

; Function Attrs: norecurse nounwind ssp uwtable
define void @_Z3fn1v() #0 {
; CHECK-LABEL: @_Z3fn1v(
; CHECK:       vector.body:
; CHECK-NEXT:    [[INDEX:%.*]] = phi i64 [ 0, %vector.ph ], [ [[INDEX:%.*]].next, %vector.body ]
; CHECK-NEXT:    [[VEC_IND:%.*]] = phi <16 x i64> [ 
; CHECK-NEXT:    [[VEC_IND3:%.*]] = phi <16 x i64> [ 
; CHECK-NEXT:    [[STEP_ADD:%.*]] = add <16 x i64> [[VEC_IND]], <i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32>
; CHECK-NEXT:    [[STEP_ADD4:%.*]] = add <16 x i64> [[VEC_IND3]], <i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32, i64 32>
; CHECK-NEXT:    [[TMP10:%.*]] = sub nsw <16 x i64> <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>, [[VEC_IND]]
; CHECK-NEXT:    [[TMP11:%.*]] = extractelement <16 x i64> [[VEC_IND]], i32 0
; CHECK-NEXT:    [[TMP12:%.*]] = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @d, i64 0, i64 [[TMP11]]
; CHECK-NEXT:    [[TMP13:%.*]] = insertelement <16 x [10 x i32]*> undef, [10 x i32]* [[TMP12]], i32 0
; CHECK-NEXT:    [[TMP14:%.*]] = extractelement <16 x i64> [[VEC_IND]], i32 1
; CHECK-NEXT:    [[TMP15:%.*]] = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @d, i64 0, i64 [[TMP14]]
; CHECK-NEXT:    [[TMP16:%.*]] = insertelement <16 x [10 x i32]*> [[TMP13]], [10 x i32]* [[TMP15]], i32 1
; CHECK-NEXT:    [[TMP17:%.*]] = extractelement <16 x i64> [[VEC_IND]], i32 2
; CHECK-NEXT:    [[TMP18:%.*]] = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @d, i64 0, i64 [[TMP17]]
; CHECK-NEXT:    [[TMP19:%.*]] = insertelement <16 x [10 x i32]*> [[TMP16]], [10 x i32]* [[TMP18]], i32 2
; CHECK-NEXT:    [[TMP20:%.*]] = extractelement <16 x i64> [[VEC_IND]], i32 3
; CHECK-NEXT:    [[TMP21:%.*]] = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @d, i64 0, i64 [[TMP20]]
; CHECK-NEXT:    [[TMP22:%.*]] = insertelement <16 x [10 x i32]*> [[TMP19]], [10 x i32]* [[TMP21]], i32 3
; CHECK-NEXT:    [[TMP23:%.*]] = extractelement <16 x i64> [[VEC_IND]], i32 4
; CHECK-NEXT:    [[TMP24:%.*]] = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @d, i64 0, i64 [[TMP23]]
; CHECK-NEXT:    [[TMP25:%.*]] = insertelement <16 x [10 x i32]*> [[TMP22]], [10 x i32]* [[TMP24]], i32 4
; CHECK-NEXT:    [[TMP26:%.*]] = extractelement <16 x i64> [[VEC_IND]], i32 5
; CHECK-NEXT:    [[TMP27:%.*]] = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @d, i64 0, i64 [[TMP26]]
; CHECK-NEXT:    [[TMP28:%.*]] = insertelement <16 x [10 x i32]*> [[TMP25]], [10 x i32]* [[TMP27]], i32 5
; CHECK-NEXT:    [[TMP29:%.*]] = extractelement <16 x i64> [[VEC_IND]], i32 6
; CHECK-NEXT:    [[TMP30:%.*]] = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @d, i64 0, i64 [[TMP29]]
; CHECK-NEXT:    [[TMP31:%.*]] = insertelement <16 x [10 x i32]*> [[TMP28]], [10 x i32]* [[TMP30]], i32 6
; CHECK-NEXT:    [[TMP32:%.*]] = extractelement <16 x i64> [[VEC_IND]], i32 7
; CHECK-NEXT:    [[TMP33:%.*]] = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @d, i64 0, i64 [[TMP32]]
; CHECK-NEXT:    [[TMP34:%.*]] = insertelement <16 x [10 x i32]*> [[TMP31]], [10 x i32]* [[TMP33]], i32 7
; CHECK-NEXT:    [[TMP35:%.*]] = extractelement <16 x i64> [[VEC_IND]], i32 8
; CHECK-NEXT:    [[TMP36:%.*]] = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @d, i64 0, i64 [[TMP35]]
; CHECK-NEXT:    [[TMP37:%.*]] = insertelement <16 x [10 x i32]*> [[TMP34]], [10 x i32]* [[TMP36]], i32 8
; CHECK-NEXT:    [[TMP38:%.*]] = extractelement <16 x i64> [[VEC_IND]], i32 9
; CHECK-NEXT:    [[TMP39:%.*]] = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @d, i64 0, i64 [[TMP38]]
; CHECK-NEXT:    [[TMP40:%.*]] = insertelement <16 x [10 x i32]*> [[TMP37]], [10 x i32]* [[TMP39]], i32 9
; CHECK-NEXT:    [[TMP41:%.*]] = extractelement <16 x i64> [[VEC_IND]], i32 10
; CHECK-NEXT:    [[TMP42:%.*]] = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @d, i64 0, i64 [[TMP41]]
; CHECK-NEXT:    [[TMP43:%.*]] = insertelement <16 x [10 x i32]*> [[TMP40]], [10 x i32]* [[TMP42]], i32 10
; CHECK-NEXT:    [[TMP44:%.*]] = extractelement <16 x i64> [[VEC_IND]], i32 11
; CHECK-NEXT:    [[TMP45:%.*]] = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @d, i64 0, i64 [[TMP44]]
; CHECK-NEXT:    [[TMP46:%.*]] = insertelement <16 x [10 x i32]*> [[TMP43]], [10 x i32]* [[TMP45]], i32 11
; CHECK-NEXT:    [[TMP47:%.*]] = extractelement <16 x i64> [[VEC_IND]], i32 12
; CHECK-NEXT:    [[TMP48:%.*]] = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @d, i64 0, i64 [[TMP47]]
; CHECK-NEXT:    [[TMP49:%.*]] = insertelement <16 x [10 x i32]*> [[TMP46]], [10 x i32]* [[TMP48]], i32 12
; CHECK-NEXT:    [[TMP50:%.*]] = extractelement <16 x i64> [[VEC_IND]], i32 13
; CHECK-NEXT:    [[TMP51:%.*]] = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @d, i64 0, i64 [[TMP50]]
; CHECK-NEXT:    [[TMP52:%.*]] = insertelement <16 x [10 x i32]*> [[TMP49]], [10 x i32]* [[TMP51]], i32 13
; CHECK-NEXT:    [[TMP53:%.*]] = extractelement <16 x i64> [[VEC_IND]], i32 14
; CHECK-NEXT:    [[TMP54:%.*]] = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @d, i64 0, i64 [[TMP53]]
; CHECK-NEXT:    [[TMP55:%.*]] = insertelement <16 x [10 x i32]*> [[TMP52]], [10 x i32]* [[TMP54]], i32 14
; CHECK-NEXT:    [[TMP56:%.*]] = extractelement <16 x i64> [[VEC_IND]], i32 15
; CHECK-NEXT:    [[TMP57:%.*]] = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @d, i64 0, i64 [[TMP56]]
; CHECK-NEXT:    [[TMP58:%.*]] = insertelement <16 x [10 x i32]*> [[TMP55]], [10 x i32]* [[TMP57]], i32 15
; CHECK-NEXT:    [[TMP59:%.*]] = add nsw <16 x i64> [[TMP10]], [[VEC_IND3]]
; CHECK-NEXT:    [[TMP60:%.*]] = extractelement <16 x [10 x i32]*> [[TMP58]], i32 0
; CHECK-NEXT:    [[TMP61:%.*]] = extractelement <16 x i64> [[TMP59]], i32 0
; CHECK-NEXT:    [[TMP62:%.*]] = getelementptr inbounds [10 x i32], [10 x i32]* [[TMP60]], i64 [[TMP61]], i64 0
; CHECK-NEXT:    [[TMP63:%.*]] = insertelement <16 x i32*> undef, i32* [[TMP62]], i32 0
; CHECK-NEXT:    [[TMP64:%.*]] = extractelement <16 x [10 x i32]*> [[TMP58]], i32 1
; CHECK-NEXT:    [[TMP65:%.*]] = extractelement <16 x i64> [[TMP59]], i32 1
; CHECK-NEXT:    [[TMP66:%.*]] = getelementptr inbounds [10 x i32], [10 x i32]* [[TMP64]], i64 [[TMP65]], i64 0
; CHECK-NEXT:    [[TMP67:%.*]] = insertelement <16 x i32*> [[TMP63]], i32* [[TMP66]], i32 1
; CHECK-NEXT:    [[TMP68:%.*]] = extractelement <16 x [10 x i32]*> [[TMP58]], i32 2
; CHECK-NEXT:    [[TMP69:%.*]] = extractelement <16 x i64> [[TMP59]], i32 2
; CHECK-NEXT:    [[TMP70:%.*]] = getelementptr inbounds [10 x i32], [10 x i32]* [[TMP68]], i64 [[TMP69]], i64 0
; CHECK-NEXT:    [[TMP71:%.*]] = insertelement <16 x i32*> [[TMP67]], i32* [[TMP70]], i32 2
; CHECK-NEXT:    [[TMP72:%.*]] = extractelement <16 x [10 x i32]*> [[TMP58]], i32 3
; CHECK-NEXT:    [[TMP73:%.*]] = extractelement <16 x i64> [[TMP59]], i32 3
; CHECK-NEXT:    [[TMP74:%.*]] = getelementptr inbounds [10 x i32], [10 x i32]* [[TMP72]], i64 [[TMP73]], i64 0
; CHECK-NEXT:    [[TMP75:%.*]] = insertelement <16 x i32*> [[TMP71]], i32* [[TMP74]], i32 3
; CHECK-NEXT:    [[TMP76:%.*]] = extractelement <16 x [10 x i32]*> [[TMP58]], i32 4
; CHECK-NEXT:    [[TMP77:%.*]] = extractelement <16 x i64> [[TMP59]], i32 4
; CHECK-NEXT:    [[TMP78:%.*]] = getelementptr inbounds [10 x i32], [10 x i32]* [[TMP76]], i64 [[TMP77]], i64 0
; CHECK-NEXT:    [[TMP79:%.*]] = insertelement <16 x i32*> [[TMP75]], i32* [[TMP78]], i32 4
; CHECK-NEXT:    [[TMP80:%.*]] = extractelement <16 x [10 x i32]*> [[TMP58]], i32 5
; CHECK-NEXT:    [[TMP81:%.*]] = extractelement <16 x i64> [[TMP59]], i32 5
; CHECK-NEXT:    [[TMP82:%.*]] = getelementptr inbounds [10 x i32], [10 x i32]* [[TMP80]], i64 [[TMP81]], i64 0
; CHECK-NEXT:    [[TMP83:%.*]] = insertelement <16 x i32*> [[TMP79]], i32* [[TMP82]], i32 5
; CHECK-NEXT:    [[TMP84:%.*]] = extractelement <16 x [10 x i32]*> [[TMP58]], i32 6
; CHECK-NEXT:    [[TMP85:%.*]] = extractelement <16 x i64> [[TMP59]], i32 6
; CHECK-NEXT:    [[TMP86:%.*]] = getelementptr inbounds [10 x i32], [10 x i32]* [[TMP84]], i64 [[TMP85]], i64 0
; CHECK-NEXT:    [[TMP87:%.*]] = insertelement <16 x i32*> [[TMP83]], i32* [[TMP86]], i32 6
; CHECK-NEXT:    [[TMP88:%.*]] = extractelement <16 x [10 x i32]*> [[TMP58]], i32 7
; CHECK-NEXT:    [[TMP89:%.*]] = extractelement <16 x i64> [[TMP59]], i32 7
; CHECK-NEXT:    [[TMP90:%.*]] = getelementptr inbounds [10 x i32], [10 x i32]* [[TMP88]], i64 [[TMP89]], i64 0
; CHECK-NEXT:    [[TMP91:%.*]] = insertelement <16 x i32*> [[TMP87]], i32* [[TMP90]], i32 7
; CHECK-NEXT:    [[TMP92:%.*]] = extractelement <16 x [10 x i32]*> [[TMP58]], i32 8
; CHECK-NEXT:    [[TMP93:%.*]] = extractelement <16 x i64> [[TMP59]], i32 8
; CHECK-NEXT:    [[TMP94:%.*]] = getelementptr inbounds [10 x i32], [10 x i32]* [[TMP92]], i64 [[TMP93]], i64 0
; CHECK-NEXT:    [[TMP95:%.*]] = insertelement <16 x i32*> [[TMP91]], i32* [[TMP94]], i32 8
; CHECK-NEXT:    [[TMP96:%.*]] = extractelement <16 x [10 x i32]*> [[TMP58]], i32 9
; CHECK-NEXT:    [[TMP97:%.*]] = extractelement <16 x i64> [[TMP59]], i32 9
; CHECK-NEXT:    [[TMP98:%.*]] = getelementptr inbounds [10 x i32], [10 x i32]* [[TMP96]], i64 [[TMP97]], i64 0
; CHECK-NEXT:    [[TMP99:%.*]] = insertelement <16 x i32*> [[TMP95]], i32* [[TMP98]], i32 9
; CHECK-NEXT:    [[TMP100:%.*]] = extractelement <16 x [10 x i32]*> [[TMP58]], i32 10
; CHECK-NEXT:    [[TMP101:%.*]] = extractelement <16 x i64> [[TMP59]], i32 10
; CHECK-NEXT:    [[TMP102:%.*]] = getelementptr inbounds [10 x i32], [10 x i32]* [[TMP100]], i64 [[TMP101]], i64 0
; CHECK-NEXT:    [[TMP103:%.*]] = insertelement <16 x i32*> [[TMP99]], i32* [[TMP102]], i32 10
; CHECK-NEXT:    [[TMP104:%.*]] = extractelement <16 x [10 x i32]*> [[TMP58]], i32 11
; CHECK-NEXT:    [[TMP105:%.*]] = extractelement <16 x i64> [[TMP59]], i32 11
; CHECK-NEXT:    [[TMP106:%.*]] = getelementptr inbounds [10 x i32], [10 x i32]* [[TMP104]], i64 [[TMP105]], i64 0
; CHECK-NEXT:    [[TMP107:%.*]] = insertelement <16 x i32*> [[TMP103]], i32* [[TMP106]], i32 11
; CHECK-NEXT:    [[TMP108:%.*]] = extractelement <16 x [10 x i32]*> [[TMP58]], i32 12
; CHECK-NEXT:    [[TMP109:%.*]] = extractelement <16 x i64> [[TMP59]], i32 12
; CHECK-NEXT:    [[TMP110:%.*]] = getelementptr inbounds [10 x i32], [10 x i32]* [[TMP108]], i64 [[TMP109]], i64 0
; CHECK-NEXT:    [[TMP111:%.*]] = insertelement <16 x i32*> [[TMP107]], i32* [[TMP110]], i32 12
; CHECK-NEXT:    [[TMP112:%.*]] = extractelement <16 x [10 x i32]*> [[TMP58]], i32 13
; CHECK-NEXT:    [[TMP113:%.*]] = extractelement <16 x i64> [[TMP59]], i32 13
; CHECK-NEXT:    [[TMP114:%.*]] = getelementptr inbounds [10 x i32], [10 x i32]* [[TMP112]], i64 [[TMP113]], i64 0
; CHECK-NEXT:    [[TMP115:%.*]] = insertelement <16 x i32*> [[TMP111]], i32* [[TMP114]], i32 13
; CHECK-NEXT:    [[TMP116:%.*]] = extractelement <16 x [10 x i32]*> [[TMP58]], i32 14
; CHECK-NEXT:    [[TMP117:%.*]] = extractelement <16 x i64> [[TMP59]], i32 14
; CHECK-NEXT:    [[TMP118:%.*]] = getelementptr inbounds [10 x i32], [10 x i32]* [[TMP116]], i64 [[TMP117]], i64 0
; CHECK-NEXT:    [[TMP119:%.*]] = insertelement <16 x i32*> [[TMP115]], i32* [[TMP118]], i32 14
; CHECK-NEXT:    [[TMP120:%.*]] = extractelement <16 x [10 x i32]*> [[TMP58]], i32 15
; CHECK-NEXT:    [[TMP121:%.*]] = extractelement <16 x i64> [[TMP59]], i32 15
; CHECK-NEXT:    [[TMP122:%.*]] = getelementptr inbounds [10 x i32], [10 x i32]* [[TMP120]], i64 [[TMP121]], i64 0
; CHECK-NEXT:    [[TMP123:%.*]] = insertelement <16 x i32*> [[TMP119]], i32* [[TMP122]], i32 15
; CHECK-NEXT:    [[VECTORGEP:%.*]] = getelementptr inbounds [10 x i32], <16 x [10 x i32]*> [[TMP58]], <16 x i64> [[TMP59]], i64 0
; CHECK-NEXT:    call void @llvm.masked.scatter.v16i32(<16 x i32> <i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>, <16 x i32*> [[VECTORGEP]], i32 16, <16 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>)
entry:
  %0 = load i32, i32* @c, align 4
  %cmp34 = icmp sgt i32 %0, 8
  br i1 %cmp34, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %1 = load i32, i32* @a, align 4
  %tobool = icmp eq i32 %1, 0
  %2 = load i64, i64* @b, align 8
  %mul = mul i64 %2, 4063299859190
  %tobool6 = icmp eq i64 %mul, 0
  %3 = sext i32 %0 to i64
  br i1 %tobool, label %for.body.us.preheader, label %for.body.preheader

for.body.preheader:                               ; preds = %for.body.lr.ph
  br label %for.body

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %for.cond.cleanup4.us-lcssa.us.us
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %for.cond.cleanup4.us-lcssa.us.us ], [ 8, %for.body.us.preheader ]
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %for.cond.cleanup4.us-lcssa.us.us ], [ 0, %for.body.us.preheader ]
  %4 = sub nsw i64 8, %indvars.iv78
  %add.ptr.us = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @d, i64 0, i64 %indvars.iv78
  %5 = add nsw i64 %4, %indvars.iv70
  %arraydecay.us.us.us = getelementptr inbounds [10 x i32], [10 x i32]* %add.ptr.us, i64 %5, i64 0
  br i1 %tobool6, label %for.body5.us.us.us.preheader, label %for.body5.us.us48.preheader

for.body5.us.us48.preheader:                      ; preds = %for.body.us
  store i32 8, i32* %arraydecay.us.us.us, align 16
  %indvars.iv.next66 = or i64 %indvars.iv70, 1
  %6 = add nsw i64 %4, %indvars.iv.next66
  %arraydecay.us.us55.1 = getelementptr inbounds [10 x i32], [10 x i32]* %add.ptr.us, i64 %6, i64 0
  store i32 8, i32* %arraydecay.us.us55.1, align 8
  br label %for.cond.cleanup4.us-lcssa.us.us

for.body5.us.us.us.preheader:                     ; preds = %for.body.us
  store i32 7, i32* %arraydecay.us.us.us, align 16
  %indvars.iv.next73 = or i64 %indvars.iv70, 1
  %7 = add nsw i64 %4, %indvars.iv.next73
  %arraydecay.us.us.us.1 = getelementptr inbounds [10 x i32], [10 x i32]* %add.ptr.us, i64 %7, i64 0
  store i32 7, i32* %arraydecay.us.us.us.1, align 8
  br label %for.cond.cleanup4.us-lcssa.us.us

for.cond.cleanup4.us-lcssa.us.us:                 ; preds = %for.body5.us.us48.preheader, %for.body5.us.us.us.preheader
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 2
  %cmp.us = icmp slt i64 %indvars.iv.next79, %3
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 2
  br i1 %cmp.us, label %for.body.us, label %for.cond.cleanup.loopexit

for.cond.cleanup.loopexit:                        ; preds = %for.cond.cleanup4.us-lcssa.us.us
  br label %for.cond.cleanup

for.cond.cleanup.loopexit99:                      ; preds = %for.body
  br label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit99, %for.cond.cleanup.loopexit, %entry
  ret void

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %for.body ], [ 8, %for.body.preheader ]
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %for.body ], [ 0, %for.body.preheader ]
  %8 = sub nsw i64 8, %indvars.iv95
  %add.ptr = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @d, i64 0, i64 %indvars.iv95
  %9 = add nsw i64 %8, %indvars.iv87
  %arraydecay.us31 = getelementptr inbounds [10 x i32], [10 x i32]* %add.ptr, i64 %9, i64 0
  store i32 8, i32* %arraydecay.us31, align 16
  %indvars.iv.next90 = or i64 %indvars.iv87, 1
  %10 = add nsw i64 %8, %indvars.iv.next90
  %arraydecay.us31.1 = getelementptr inbounds [10 x i32], [10 x i32]* %add.ptr, i64 %10, i64 0
  store i32 8, i32* %arraydecay.us31.1, align 8
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 2
  %cmp = icmp slt i64 %indvars.iv.next96, %3
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 2
  br i1 %cmp, label %for.body, label %for.cond.cleanup.loopexit99
}

attributes #0 = { norecurse nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="knl" "target-features"="+adx,+aes,+avx,+avx2,+avx512cd,+avx512er,+avx512f,+avx512pf,+bmi,+bmi2,+cx16,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prefetchwt1,+rdrnd,+rdseed,+rtm,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
