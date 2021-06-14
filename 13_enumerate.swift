/* Enumerate
   1. definition
   2. rawValue
   3. 
*/

print("hello enumerate")

enum TestEnum {
  // case A, B, C
  case A
  case B
  case C
}

enum TestEnum2: Int {
  // case A, B, C
  case A = 1
  case B = 2
  case C = 3
}

print(TestEnum.A)
print(TestEnum2.A)
print(TestEnum2.A.rawValue)

func play(_ param: TestEnum) {
  if param == TestEnum.A {
    print("It is A")
  } else if param == TestEnum.B {
    print("It is B")
  } else if param == TestEnum.C {
    print("It is C")
  }
}
play(TestEnum.A)