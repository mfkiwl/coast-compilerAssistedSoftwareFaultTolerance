// RUN: %clang_cc1 -verify -fopenmp -ferror-limit 100 %s

void foo() {
}

bool foobool(int argc) {
  return argc;
}

struct S1; // expected-note {{declared here}}

template <class T, class S> // expected-note {{declared here}}
int tmain(T argc, S **argv) {
#pragma omp taskloop final // expected-error {{expected '(' after 'final'}}
  for (int i = 0; i < 10; ++i)
    foo();
#pragma omp taskloop final( // expected-error {{expected expression}} expected-error {{expected ')'}} expected-note {{to match this '('}}
  for (int i = 0; i < 10; ++i)
    foo();
#pragma omp taskloop final() // expected-error {{expected expression}}
  for (int i = 0; i < 10; ++i)
    foo();
#pragma omp taskloop final(argc // expected-error {{expected ')'}} expected-note {{to match this '('}}
  for (int i = 0; i < 10; ++i)
    foo();
#pragma omp taskloop final(argc)) // expected-warning {{extra tokens at the end of '#pragma omp taskloop' are ignored}}
  for (int i = 0; i < 10; ++i)
    foo();
#pragma omp taskloop final(argc > 0 ? argv[1] : argv[2])
  for (int i = 0; i < 10; ++i)
    foo();
#pragma omp taskloop final(foobool(argc)), final(true) // expected-error {{directive '#pragma omp taskloop' cannot contain more than one 'final' clause}}
  for (int i = 0; i < 10; ++i)
    foo();
#pragma omp taskloop final(S) // expected-error {{'S' does not refer to a value}}
  for (int i = 0; i < 10; ++i)
    foo();
#pragma omp taskloop final(argv[1] = 2) // expected-error {{expected ')'}} expected-note {{to match this '('}}
  for (int i = 0; i < 10; ++i)
    foo();
#pragma omp taskloop final(argc argc) // expected-error {{expected ')'}} expected-note {{to match this '('}}
  for (int i = 0; i < 10; ++i)
    foo();
#pragma omp taskloop final(argc)
  for (int i = 0; i < 10; ++i)
    foo();

  return 0;
}

int main(int argc, char **argv) {
#pragma omp taskloop final // expected-error {{expected '(' after 'final'}}
  for (int i = 0; i < 10; ++i)
    foo();
#pragma omp taskloop final( // expected-error {{expected expression}} expected-error {{expected ')'}} expected-note {{to match this '('}}
  for (int i = 0; i < 10; ++i)
    foo();
#pragma omp taskloop final() // expected-error {{expected expression}}
  for (int i = 0; i < 10; ++i)
    foo();
#pragma omp taskloop final(argc // expected-error {{expected ')'}} expected-note {{to match this '('}}
  for (int i = 0; i < 10; ++i)
    foo();
#pragma omp taskloop final(argc)) // expected-warning {{extra tokens at the end of '#pragma omp taskloop' are ignored}}
  for (int i = 0; i < 10; ++i)
    foo();
#pragma omp taskloop final(argc > 0 ? argv[1] : argv[2])
  for (int i = 0; i < 10; ++i)
    foo();
#pragma omp taskloop final(foobool(argc)), final(true) // expected-error {{directive '#pragma omp taskloop' cannot contain more than one 'final' clause}}
  for (int i = 0; i < 10; ++i)
    foo();
#pragma omp taskloop final(S1) // expected-error {{'S1' does not refer to a value}}
  for (int i = 0; i < 10; ++i)
    foo();
#pragma omp taskloop final(argv[1] = 2) // expected-error {{expected ')'}} expected-note {{to match this '('}}
  for (int i = 0; i < 10; ++i)
    foo();
#pragma omp taskloop final(argc argc) // expected-error {{expected ')'}} expected-note {{to match this '('}}
  for (int i = 0; i < 10; ++i)
    foo();
#pragma omp taskloop final(1 0) // expected-error {{expected ')'}} expected-note {{to match this '('}}
  for (int i = 0; i < 10; ++i)
    foo();
#pragma omp taskloop final(if (tmain(argc, argv) // expected-error {{expected expression}} expected-error {{expected ')'}} expected-note {{to match this '('}}
  for (int i = 0; i < 10; ++i)
    foo();

  return tmain(argc, argv);
}
