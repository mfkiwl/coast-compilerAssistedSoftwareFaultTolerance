; RUN: llc < %s
; PR8582

define void @uint82() nounwind {
entry:
  %tmp3 = select i1 undef, i960 4872657003430991806293355221650511486142000513558154090491761976385142772940676648094983476628187266917101386048750715027104076737938178423519545241493072038894065019132638919037781494702597609951702322267198307200588774905587225212622510286498675097141625012190497682454879271766334636032, i960 0
  br i1 undef, label %for.body25.for.body25_crit_edge, label %if.end

for.body25.for.body25_crit_edge:                  ; preds = %entry
  %ins = or i960 %tmp3, undef
  ret void

if.end:                                           ; preds = %entry
  ret void
}
