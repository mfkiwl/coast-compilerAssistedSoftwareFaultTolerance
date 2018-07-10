; RUN: llvm-dis < %s.bc | FileCheck %s
; RUN: verify-uselistorder < %s.bc

; local-linkage-default-visibility.3.4.ll.bc was generated by passing this file
; to llvm-as-3.4.  The test checks that LLVM upgrades visibility of symbols
; with local linkage to default visibility.

@default.internal.var = internal global i32 0
; CHECK: @default.internal.var = internal global i32 0

@hidden.internal.var = internal hidden global i32 0
; CHECK: @hidden.internal.var = internal global i32 0

@protected.internal.var = internal protected global i32 0
; CHECK: @protected.internal.var = internal global i32 0

@default.private.var = private global i32 0
; CHECK: @default.private.var = private global i32 0

@hidden.private.var = private hidden global i32 0
; CHECK: @hidden.private.var = private global i32 0

@protected.private.var = private protected global i32 0
; CHECK: @protected.private.var = private global i32 0

@global = global i32 0

@default.internal.alias = alias internal i32, internal i32* @global
; CHECK: @default.internal.alias = internal alias i32, i32* @global

@hidden.internal.alias = hidden alias internal i32, internal i32* @global
; CHECK: @hidden.internal.alias = internal alias i32, i32* @global

@protected.internal.alias = protected alias internal i32, internal i32* @global
; CHECK: @protected.internal.alias = internal alias i32, i32* @global

@default.private.alias = alias private i32, private i32* @global
; CHECK: @default.private.alias = private alias i32, i32* @global

@hidden.private.alias = hidden alias private i32, private i32* @global
; CHECK: @hidden.private.alias = private alias i32, i32* @global

@protected.private.alias = protected alias private i32, private i32* @global
; CHECK: @protected.private.alias = private alias i32, i32* @global

define internal void @default.internal() {
; CHECK: define internal void @default.internal
entry:
  ret void
}

define internal hidden void @hidden.internal() {
; CHECK: define internal void @hidden.internal
entry:
  ret void
}

define internal protected void @protected.internal() {
; CHECK: define internal void @protected.internal
entry:
  ret void
}

define private void @default.private() {
; CHECK: define private void @default.private
entry:
  ret void
}

define private hidden void @hidden.private() {
; CHECK: define private void @hidden.private
entry:
  ret void
}

define private protected void @protected.private() {
; CHECK: define private void @protected.private
entry:
  ret void
}
