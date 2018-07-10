// RUN: %clang_cc1 -verify -fopenmp %s

void foo() {
}

bool foobool(int argc) {
  return argc;
}

struct S1; // expected-note 2 {{declared here}} expected-note 2 {{forward declaration of 'S1'}}
extern S1 a;
class S2 {
  mutable int a;

public:
  S2() : a(0) {}
};
const S2 b;
const S2 ba[5];
class S3 {
  int a;

public:
  S3() : a(0) {}
};
const S3 ca[5];
class S4 {
  int a;
  S4(); // expected-note {{implicitly declared private here}}

public:
  S4(int v) : a(v) {
#pragma omp single private(a) private(this->a)
    for (int k = 0; k < v; ++k)
      ++this->a;
  }
};
class S5 {
  int a;
  S5() : a(0) {} // expected-note {{implicitly declared private here}}

public:
  S5(int v) : a(v) {}
  S5 &operator=(S5 &s) {
#pragma omp single private(a) private(this->a) private(s.a) // expected-error {{expected variable name or data member of current class}}
    for (int k = 0; k < s.a; ++k)
      ++s.a;
    return *this;
  }
};

template <typename T>
class S6 {
public:
  T a;

  S6() : a(0) {}
  S6(T v) : a(v) {
#pragma omp single private(a) private(this->a)
    for (int k = 0; k < v; ++k)
      ++this->a;
  }
  S6 &operator=(S6 &s) {
#pragma omp single private(a) private(this->a) private(s.a) // expected-error {{expected variable name or data member of current class}}
    for (int k = 0; k < s.a; ++k)
      ++s.a;
    return *this;
  }
};

template <typename T>
class S7 : public T {
  T a;
  S7() : a(0) {}

public:
  S7(T v) : a(v) {
#pragma omp single private(a) private(this->a) private(T::a)
    for (int k = 0; k < a.a; ++k)
      ++this->a.a;
  }
  S7 &operator=(S7 &s) {
#pragma omp single private(a) private(this->a) private(s.a) private(s.T::a) // expected-error 2 {{expected variable name or data member of current class}}
    for (int k = 0; k < s.a.a; ++k)
      ++s.a.a;
    return *this;
  }
};

S3 h;
#pragma omp threadprivate(h) // expected-note 2 {{defined as threadprivate or thread local}}

template <class I, class C>
int foomain(I argc, C **argv) {
  I e(4);
  I g(5);
  int i;
  int &j = i;
#pragma omp single private // expected-error {{expected '(' after 'private'}}
  foo();
#pragma omp single private( // expected-error {{expected expression}} expected-error {{expected ')'}} expected-note {{to match this '('}}
  foo();
#pragma omp single private() // expected-error {{expected expression}}
  foo();
#pragma omp single private(argc // expected-error {{expected ')'}} expected-note {{to match this '('}}
  foo();
#pragma omp single private(argc, // expected-error {{expected expression}} expected-error {{expected ')'}} expected-note {{to match this '('}}
  foo();
#pragma omp single private(argc > 0 ? argv[1] : argv[2]) // expected-error {{expected variable name}}
  foo();
#pragma omp single private(argc)
  foo();
#pragma omp single private(S1) // expected-error {{'S1' does not refer to a value}}
  foo();
#pragma omp single private(a, b) // expected-error {{private variable with incomplete type 'S1'}}
  foo();
#pragma omp single private(argv[1]) // expected-error {{expected variable name}}
  foo();
#pragma omp single private(e, g)
  foo();
#pragma omp single private(h) // expected-error {{threadprivate or thread local variable cannot be private}}
  foo();
#pragma omp single shared(i) // expected-error {{unexpected OpenMP clause 'shared' in directive '#pragma omp single'}}
  foo();
#pragma omp parallel
  {
    int v = 0;
    int i;
#pragma omp single private(i)
    foo();
    v += i;
  }
#pragma omp parallel shared(i)
#pragma omp parallel private(i)
#pragma omp single private(j)
  foo();
#pragma omp single private(i)
  foo();
  return 0;
}

namespace A {
double x;
#pragma omp threadprivate(x) // expected-note {{defined as threadprivate or thread local}}
}
namespace B {
using A::x;
}

int main(int argc, char **argv) {
  S4 e(4);
  S5 g(5);
  S6<float> s6(0.0) , s6_0(1.0);
  S7<S6<float> > s7(0.0) , s7_0(1.0);
  int i;
  int &j = i;
#pragma omp single private // expected-error {{expected '(' after 'private'}}
  foo();
#pragma omp single private( // expected-error {{expected expression}} expected-error {{expected ')'}} expected-note {{to match this '('}}
  foo();
#pragma omp single private() // expected-error {{expected expression}}
  foo();
#pragma omp single private(argc // expected-error {{expected ')'}} expected-note {{to match this '('}}
  foo();
#pragma omp single private(argc, // expected-error {{expected expression}} expected-error {{expected ')'}} expected-note {{to match this '('}}
  foo();
#pragma omp single private(argc > 0 ? argv[1] : argv[2]) // expected-error {{expected variable name}}
  foo();
#pragma omp single private(argc)
  foo();
#pragma omp single private(S1) // expected-error {{'S1' does not refer to a value}}
  foo();
#pragma omp single private(a, b) // expected-error {{private variable with incomplete type 'S1'}}
  foo();
#pragma omp single private(argv[1]) // expected-error {{expected variable name}}
  foo();
#pragma omp single private(e, g) // expected-error {{calling a private constructor of class 'S4'}} expected-error {{calling a private constructor of class 'S5'}}
  foo();
#pragma omp single private(h, B::x) // expected-error 2 {{threadprivate or thread local variable cannot be private}}
  foo();
#pragma omp single shared(i) // expected-error {{unexpected OpenMP clause 'shared' in directive '#pragma omp single'}}
  foo();
#pragma omp parallel
  {
    int i;
#pragma omp single private(i)
    foo();
  }
#pragma omp parallel shared(i)
#pragma omp parallel private(i)
#pragma omp single private(j)
  foo();
#pragma omp single private(i)
  foo();
  static int m;
#pragma omp single private(m) // OK
  foo();

  s6 = s6_0; // expected-note {{in instantiation of member function 'S6<float>::operator=' requested here}}
  s7 = s7_0; // expected-note {{in instantiation of member function 'S7<S6<float> >::operator=' requested here}}
  return foomain(argc, argv); // expected-note {{in instantiation of function template specialization 'foomain<int, char>' requested here}}
}

