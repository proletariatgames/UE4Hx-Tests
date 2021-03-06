#pragma once

#include "GameFramework/GameMode.h"
#include "TemplatesDef.generated.h"

UCLASS()
class HAXEUNITTESTS_API UTemplatesDef : public UObject
{
  GENERATED_BODY()

public:
  static int someStaticInt;

  template<class T>
  static int getSomeStaticInt() {
    return T::someStaticInt;
  }

  template<class T>
  static T *copyNew(T withType) {
    T *ret = new T();
    *ret = withType;
    return ret;
  }
};

template<class A>
class HAXEUNITTESTS_API FTemplatedClass1 {
  public:
    A value;
    A get() {
      return this->value;
    }

    void set(A val) {
      this->value = val;
    }

    FTemplatedClass1(A val) : value(val) {}
};

template<class A, class B>
class HAXEUNITTESTS_API FTemplatedClass2 {
  public:
    FTemplatedClass1<A> createWithA(A value) {
      return FTemplatedClass1<A>(value);
    }

    FTemplatedClass1<B> createWithB(B value) {
      return FTemplatedClass1<B>(value);
    }

    FTemplatedClass1<FTemplatedClass1<A>> createRec(A value) {
      return FTemplatedClass1<FTemplatedClass1<A>>(FTemplatedClass1<A>(value));
    }
};

// check to see if TypeParams are also included when not used by generic methods
class HAXEUNITTESTS_API FNonTemplatedClass1 {
  public:
    FTemplatedClass1<FNonTemplatedClass1 *> obj;

    FNonTemplatedClass1() : obj(FTemplatedClass1<FNonTemplatedClass1 *>(nullptr)) {}
};
