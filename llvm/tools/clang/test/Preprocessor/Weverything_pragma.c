// RUN: %clang_cc1 -Weverything   -fsyntax-only -verify %s

// Test that the pragma overrides command line option -Weverythings,

// a diagnostic with DefaultIgnore. This is part of a group 'unused-macro'
// but -Weverything forces it
#define UNUSED_MACRO1 1 // expected-warning{{macro is not used}}

void foo() // expected-warning {{no previous prototype for function}}
{
 // A diagnostic without DefaultIgnore, and not part of a group.
 (void) L'ab'; // expected-warning {{extraneous characters in character constant ignored}}

#pragma clang diagnostic warning "-Weverything" // Should not change anyhting.
#define UNUSED_MACRO2 1 // expected-warning{{macro is not used}}
 (void) L'cd'; // expected-warning {{extraneous characters in character constant ignored}}

#pragma clang diagnostic ignored "-Weverything" // Ignore warnings now.
#define UNUSED_MACRO2 1 // no warning
 (void) L'ef'; // no warning here

#pragma clang diagnostic warning "-Weverything" // Revert back to warnings.
#define UNUSED_MACRO3 1 // expected-warning{{macro is not used}}
 (void) L'gh'; // expected-warning {{extraneous characters in character constant ignored}}

#pragma clang diagnostic error "-Weverything"  // Give errors now.
#define UNUSED_MACRO4 1 // expected-error{{macro is not used}}
 (void) L'ij'; // expected-error {{extraneous characters in character constant ignored}}
}
