// RUN: %clang_cc1 -fsyntax-only -fblocks -Woverriding-method-mismatch -Wno-nullability-declspec %s -verify

__attribute__((objc_root_class))
@interface NSFoo
- (void)methodTakingIntPtr:(_Nonnull int *)ptr;
- (_Nonnull int *)methodReturningIntPtr;
@end

// Nullability applies to all pointer types.
typedef NSFoo * _Nonnull nonnull_NSFoo_ptr;
typedef id _Nonnull nonnull_id;
typedef SEL _Nonnull nonnull_SEL;

// Nullability can move into Objective-C pointer types.
typedef _Nonnull NSFoo * nonnull_NSFoo_ptr_2;

// Conflicts from nullability moving into Objective-C pointer type.
typedef _Nonnull NSFoo * _Nullable conflict_NSFoo_ptr_2; // expected-error{{'_Nonnull' cannot be applied to non-pointer type 'NSFoo'}}

void testBlocksPrinting(NSFoo * _Nullable (^bp)(int)) {
  int *ip = bp; // expected-error{{'NSFoo * _Nullable (^)(int)'}}
}

// Check returning nil from a _Nonnull-returning method.
@implementation NSFoo
- (void)methodTakingIntPtr:(_Nonnull int *)ptr { }
- (_Nonnull int *)methodReturningIntPtr {
  return 0; // no warning
}
@end

// Context-sensitive keywords and property attributes for nullability.
__attribute__((objc_root_class))
@interface NSBar
- (nonnull NSFoo *)methodWithFoo:(nonnull NSFoo *)foo;

- (nonnull NSFoo **)invalidMethod1; // expected-error{{nullability keyword 'nonnull' cannot be applied to multi-level pointer type 'NSFoo **'}}
// expected-note@-1{{use nullability type specifier '_Nonnull' to affect the innermost pointer type of 'NSFoo **'}}
- (nonnull NSFoo * _Nullable)conflictingMethod1; // expected-error{{nullability specifier '_Nullable' conflicts with existing specifier '_Nonnull'}}
- (nonnull NSFoo * _Nonnull)redundantMethod1; // expected-warning{{duplicate nullability specifier '_Nonnull'}}

@property(nonnull,retain) NSFoo *property1;
@property(nullable,assign) NSFoo ** invalidProperty1; // expected-error{{nullability keyword 'nullable' cannot be applied to multi-level pointer type 'NSFoo **'}}
// expected-note@-1{{use nullability type specifier '_Nullable' to affect the innermost pointer type of 'NSFoo **'}}
@property(null_unspecified,retain) NSFoo * _Nullable conflictingProperty1; // expected-error{{nullability specifier '_Nullable' conflicts with existing specifier '_Null_unspecified'}}
@property(retain,nonnull) NSFoo * _Nonnull redundantProperty1; // expected-warning{{duplicate nullability specifier '_Nonnull'}}

@property(null_unspecified,retain,nullable) NSFoo *conflictingProperty3; // expected-error{{nullability specifier 'nullable' conflicts with existing specifier 'null_unspecified'}}
@property(nullable,retain,nullable) NSFoo *redundantProperty3; // expected-warning{{duplicate nullability specifier 'nullable'}}
@end

@interface NSBar ()
@property(nonnull,retain) NSFoo *property2;
@property(nullable,assign) NSFoo ** invalidProperty2; // expected-error{{nullability keyword 'nullable' cannot be applied to multi-level pointer type 'NSFoo **'}}
// expected-note@-1{{use nullability type specifier '_Nullable' to affect the innermost pointer type of 'NSFoo **'}}
@property(null_unspecified,retain) NSFoo * _Nullable conflictingProperty2; // expected-error{{nullability specifier '_Nullable' conflicts with existing specifier '_Null_unspecified'}}
@property(retain,nonnull) NSFoo * _Nonnull redundantProperty2; // expected-warning{{duplicate nullability specifier '_Nonnull'}}
@end

void test_accepts_nonnull_null_pointer_literal(NSFoo *foo, _Nonnull NSBar *bar) {
  [foo methodTakingIntPtr: 0]; // expected-warning{{null passed to a callee that requires a non-null argument}}
  [bar methodWithFoo: 0]; // expected-warning{{null passed to a callee that requires a non-null argument}}
  bar.property1 = 0; // expected-warning{{null passed to a callee that requires a non-null argument}}
  bar.property2 = 0; // expected-warning{{null passed to a callee that requires a non-null argument}}
  [bar setProperty1: 0]; // expected-warning{{null passed to a callee that requires a non-null argument}}
  [bar setProperty2: 0]; // expected-warning{{null passed to a callee that requires a non-null argument}}
  int *ptr = bar.property1; // expected-warning{{incompatible pointer types initializing 'int *' with an expression of type 'NSFoo * _Nonnull'}}
}

// Check returning nil from a nonnull-returning method.
@implementation NSBar
- (nonnull NSFoo *)methodWithFoo:(nonnull NSFoo *)foo {
  return 0; // no warning
}

- (NSFoo **)invalidMethod1 { 
  return 0; 
}

- (NSFoo *)conflictingMethod1 { 
  return 0; // no warning
}
- (NSFoo *)redundantMethod1 {
  int *ip = 0;
  return ip; // expected-warning{{result type 'NSFoo * _Nonnull'}}
}
@end

__attribute__((objc_root_class))
@interface NSMerge
- (nonnull NSFoo *)methodA:(nonnull NSFoo*)foo;
- (nonnull NSFoo *)methodB:(nonnull NSFoo*)foo;
- (NSFoo *)methodC:(NSFoo*)foo;
@end

@implementation NSMerge
- (NSFoo *)methodA:(NSFoo*)foo {
  int *ptr = foo; // expected-warning{{incompatible pointer types initializing 'int *' with an expression of type 'NSFoo * _Nonnull'}}
  return ptr; // expected-warning{{result type 'NSFoo * _Nonnull'}}
}

- (nullable NSFoo *)methodB:(null_unspecified NSFoo*)foo { // expected-error{{nullability specifier 'nullable' conflicts with existing specifier 'nonnull'}} \
  // expected-error{{nullability specifier 'null_unspecified' conflicts with existing specifier 'nonnull'}}
  return 0;
}

- (nonnull NSFoo *)methodC:(nullable NSFoo*)foo {
  int *ip = 0;
  return ip; // expected-warning{{result type 'NSFoo * _Nonnull'}}
}
@end

// Checking merging of nullability when sending a message.
@interface NSMergeReceiver
- (id)returnsNone;
- (nonnull id)returnsNonNull;
- (nullable id)returnsNullable;
- (null_unspecified id)returnsNullUnspecified;
@end

void test_receiver_merge(NSMergeReceiver *none,
                         _Nonnull NSMergeReceiver *nonnull,
                         _Nullable NSMergeReceiver *nullable,
                         _Null_unspecified NSMergeReceiver *null_unspecified) {
  int *ptr;

  ptr = [nullable returnsNullable]; // expected-warning{{'id _Nullable'}}
  ptr = [nullable returnsNullUnspecified]; // expected-warning{{'id _Nullable'}}
  ptr = [nullable returnsNonNull]; // expected-warning{{'id _Nullable'}}
  ptr = [nullable returnsNone]; // expected-warning{{'id _Nullable'}}

  ptr = [null_unspecified returnsNullable]; // expected-warning{{'id _Nullable'}}
  ptr = [null_unspecified returnsNullUnspecified]; // expected-warning{{'id _Null_unspecified'}}
  ptr = [null_unspecified returnsNonNull]; // expected-warning{{'id _Null_unspecified'}}
  ptr = [null_unspecified returnsNone]; // expected-warning{{'id'}}

  ptr = [nonnull returnsNullable]; // expected-warning{{'id _Nullable'}}
  ptr = [nonnull returnsNullUnspecified]; // expected-warning{{'id _Null_unspecified'}}
  ptr = [nonnull returnsNonNull]; // expected-warning{{'id _Nonnull'}}
  ptr = [nonnull returnsNone]; // expected-warning{{'id'}}

  ptr = [none returnsNullable]; // expected-warning{{'id _Nullable'}}
  ptr = [none returnsNullUnspecified]; // expected-warning{{'id'}}
  ptr = [none returnsNonNull]; // expected-warning{{'id'}}
  ptr = [none returnsNone]; // expected-warning{{'id'}}
  
}

// instancetype
@protocol Initializable
- (instancetype)initWithBlah:(id)blah;
@end

__attribute__((objc_root_class))
@interface InitializableClass <Initializable>
- (nonnull instancetype)initWithBlah:(nonnull id)blah;
- (nullable instancetype)returnMe;
+ (nullable instancetype)returnInstanceOfMe;

- (nonnull instancetype _Nullable)initWithBlah2:(nonnull id)blah; // expected-error {{nullability specifier '_Nullable' conflicts with existing specifier '_Nonnull'}}
- (instancetype _Nullable)returnMe2;
+ (_Nonnull instancetype)returnInstanceOfMe2;
@end

void test_instancetype(InitializableClass * _Nonnull ic, id _Nonnull object) {
  int *ip = [ic returnMe]; // expected-warning{{incompatible pointer types initializing 'int *' with an expression of type 'InitializableClass * _Nullable'}}
  ip = [InitializableClass returnMe]; // expected-warning{{incompatible pointer types assigning to 'int *' from 'id _Nullable'}}
  ip = [InitializableClass returnInstanceOfMe]; // expected-warning{{incompatible pointer types assigning to 'int *' from 'InitializableClass * _Nullable'}}
  ip = [object returnMe]; // expected-warning{{incompatible pointer types assigning to 'int *' from 'id _Nullable'}}

  ip = [ic returnMe2]; // expected-warning{{incompatible pointer types assigning to 'int *' from 'InitializableClass * _Nullable'}}
  ip = [InitializableClass returnInstanceOfMe2]; // expected-warning{{incompatible pointer types assigning to 'int *' from 'InitializableClass * _Nonnull'}}
}

// Check null_resettable getters/setters.
__attribute__((objc_root_class))
@interface NSResettable
@property(null_resettable,retain) NSResettable *resettable1; // expected-note{{passing argument to parameter 'resettable1' here}}
@property(null_resettable,retain,nonatomic) NSResettable *resettable2;
@property(null_resettable,retain,nonatomic) NSResettable *resettable3;
@property(null_resettable,retain,nonatomic) NSResettable *resettable4;
@property(null_resettable,retain,nonatomic) NSResettable *resettable5;
@property(null_resettable,retain,nonatomic) NSResettable *resettable6;
@end

void test_null_resettable(NSResettable *r, int *ip) {
  [r setResettable1:ip]; // expected-warning{{incompatible pointer types sending 'int *' to parameter of type 'NSResettable * _Nullable'}}
  r.resettable1 = ip; // expected-warning{{incompatible pointer types assigning to 'NSResettable * _Nullable' from 'int *'}}
}

@implementation NSResettable // expected-warning{{synthesized setter 'setResettable4:' for null_resettable property 'resettable4' does not handle nil}}
- (NSResettable *)resettable1 {
  int *ip = 0;
  return ip; // expected-warning{{result type 'NSResettable * _Nonnull'}}
}

- (void)setResettable1:(NSResettable *)param {
}

@synthesize resettable2; // no warning; not synthesized
@synthesize resettable3; // expected-warning{{synthesized setter 'setResettable3:' for null_resettable property 'resettable3' does not handle nil}}

- (void)setResettable2:(NSResettable *)param {
}

@dynamic resettable5;

- (NSResettable *)resettable6 {
  return 0; // no warning
}
@end

// rdar://problem/19814852
@interface MultiProp
@property (nullable, copy) id a, b, c;
@property (nullable, copy) MultiProp *d, *(^e)(int);
@end

void testMultiProp(MultiProp *foo) {
  int *ip;
  ip = foo.a; // expected-warning{{from 'id _Nullable'}}
  ip = foo.d; // expected-warning{{from 'MultiProp * _Nullable'}}
  ip = foo.e; // expected-error{{incompatible type 'MultiProp *(^ _Nullable)(int)'}}
}

void testBlockLiterals() {
  (void)(^id(void) { return 0; });
  (void)(^id _Nullable (void) { return 0; });
  (void)(^ _Nullable id(void) { return 0; });

  int *x = (^ _Nullable id(void) { return 0; })(); // expected-warning{{incompatible pointer types initializing 'int *' with an expression of type 'id _Nullable'}}
}
