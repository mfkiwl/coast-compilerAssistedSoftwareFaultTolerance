; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s -fast-isel -mtriple=x86_64-unknown-unknown -mattr=+tbm | FileCheck %s --check-prefix=X64

; NOTE: This should use IR equivalent to what is generated by clang/test/CodeGen/tbm-builtins.c

define i64 @test__bextri_u64(i64 %a0) {
; X64-LABEL: test__bextri_u64:
; X64:       # BB#0:
; X64-NEXT:    bextr $1, %rdi, %rax
; X64-NEXT:    retq
  %1 = call i64 @llvm.x86.tbm.bextri.u64(i64 %a0, i64 1)
  ret i64 %1
}

define i64 @test__blcfill_u64(i64 %a0) {
; X64-LABEL: test__blcfill_u64:
; X64:       # BB#0:
; X64-NEXT:    leaq 1(%rdi), %rax
; X64-NEXT:    andq %rdi, %rax
; X64-NEXT:    retq
  %1 = add i64 %a0, 1
  %2 = and i64 %a0, %1
  ret i64 %2
}

define i64 @test__blci_u64(i64 %a0) {
; X64-LABEL: test__blci_u64:
; X64:       # BB#0:
; X64-NEXT:    leaq 1(%rdi), %rax
; X64-NEXT:    xorq $-1, %rax
; X64-NEXT:    orq %rdi, %rax
; X64-NEXT:    retq
  %1 = add i64 %a0, 1
  %2 = xor i64 %1, -1
  %3 = or i64 %a0, %2
  ret i64 %3
}

define i64 @test__blcic_u64(i64 %a0) {
; X64-LABEL: test__blcic_u64:
; X64:       # BB#0:
; X64-NEXT:    movq %rdi, %rax
; X64-NEXT:    xorq $-1, %rax
; X64-NEXT:    addq $1, %rdi
; X64-NEXT:    andq %rax, %rdi
; X64-NEXT:    movq %rdi, %rax
; X64-NEXT:    retq
  %1 = xor i64 %a0, -1
  %2 = add i64 %a0, 1
  %3 = and i64 %1, %2
  ret i64 %3
}

define i64 @test__blcmsk_u64(i64 %a0) {
; X64-LABEL: test__blcmsk_u64:
; X64:       # BB#0:
; X64-NEXT:    leaq 1(%rdi), %rax
; X64-NEXT:    xorq %rdi, %rax
; X64-NEXT:    retq
  %1 = add i64 %a0, 1
  %2 = xor i64 %a0, %1
  ret i64 %2
}

define i64 @test__blcs_u64(i64 %a0) {
; X64-LABEL: test__blcs_u64:
; X64:       # BB#0:
; X64-NEXT:    leaq 1(%rdi), %rax
; X64-NEXT:    orq %rdi, %rax
; X64-NEXT:    retq
  %1 = add i64 %a0, 1
  %2 = or i64 %a0, %1
  ret i64 %2
}

define i64 @test__blsfill_u64(i64 %a0) {
; X64-LABEL: test__blsfill_u64:
; X64:       # BB#0:
; X64-NEXT:    movq %rdi, %rax
; X64-NEXT:    subq $1, %rax
; X64-NEXT:    orq %rdi, %rax
; X64-NEXT:    retq
  %1 = sub i64 %a0, 1
  %2 = or i64 %a0, %1
  ret i64 %2
}

define i64 @test__blsic_u64(i64 %a0) {
; X64-LABEL: test__blsic_u64:
; X64:       # BB#0:
; X64-NEXT:    movq %rdi, %rax
; X64-NEXT:    xorq $-1, %rax
; X64-NEXT:    subq $1, %rdi
; X64-NEXT:    orq %rax, %rdi
; X64-NEXT:    movq %rdi, %rax
; X64-NEXT:    retq
  %1 = xor i64 %a0, -1
  %2 = sub i64 %a0, 1
  %3 = or i64 %1, %2
  ret i64 %3
}

define i64 @test__t1mskc_u64(i64 %a0) {
; X64-LABEL: test__t1mskc_u64:
; X64:       # BB#0:
; X64-NEXT:    movq %rdi, %rax
; X64-NEXT:    xorq $-1, %rax
; X64-NEXT:    addq $1, %rdi
; X64-NEXT:    orq %rax, %rdi
; X64-NEXT:    movq %rdi, %rax
; X64-NEXT:    retq
  %1 = xor i64 %a0, -1
  %2 = add i64 %a0, 1
  %3 = or i64 %1, %2
  ret i64 %3
}

define i64 @test__tzmsk_u64(i64 %a0) {
; X64-LABEL: test__tzmsk_u64:
; X64:       # BB#0:
; X64-NEXT:    movq %rdi, %rax
; X64-NEXT:    xorq $-1, %rax
; X64-NEXT:    subq $1, %rdi
; X64-NEXT:    andq %rax, %rdi
; X64-NEXT:    movq %rdi, %rax
; X64-NEXT:    retq
  %1 = xor i64 %a0, -1
  %2 = sub i64 %a0, 1
  %3 = and i64 %1, %2
  ret i64 %3
}

declare i64 @llvm.x86.tbm.bextri.u64(i64, i64)
