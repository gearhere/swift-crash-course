/* Function
   1. definition
   2. parameter:
      formal parameter, actual parameter label
   3. assert
   4. guard
   5. inout
   6. function types
   7. closure expression (anonymous function)
   8. function type as parameter type of a function
   9. function as return value
*/

print("hello function")

func test1(str:String) -> String {
  return str
}

func test2() -> Void {
}

func test3(name:String...) {
  for item in name {
    print(item)
  }
}

print(test1(str: "hello"))
test2()
test3(name: "a", "b")

// parameter
func test4(outname inname: String) {
  print(inname)
}

func test5(_ inname: String) {
  print(inname)
}

test4(outname: "Actual parameter label")
test5("Skip the label")

// assert
// Asserts in Swift and Why You Should Be Using Them - https://medium.com/@alecoconnor/asserts-in-swift-and-why-you-should-be-using-them-6a7c96eaec10
func test6(_ num: Int) {
  if num < 10 {
    assert(false, "stop")
  }
  print(num)
}
test6(11)

// guard
func test7(_ num:Int) {
  guard num > 10 else {
    print(num)
    return
  }
  print("num > 10")
}
test7(7)
test7(15)

func test8(_ param: Int) {
  if param > 10 {
    print("num > 10")
  } else {
    print(param)
  }
}
test8(15)

// guard optinals binding
func test9(_ param: String?) {
  guard let value = param else {
    print("null")
    return
  }
  print(value)
}
var a:String? = "guard optionals binding"
test9(a)

// inout
func testInout(param: inout Int) {
  param = param * 2
  print(param)
}

var num = 10
print("before \(num)")
testInout(param: &num)
print("after \(num)")

func times2(_ param: Int) -> Int{
  let value =  param * 2
  return value
}
print("before \(num)")
num = times2(num)
print("after \(num)")

// function types
// define a constant or variable to be of a function type and assign an appropriate function to that value
func addTwoInts(_ a: Int, _ b: Int) -> Int {
  return a + b
}

var mathFunc: (Int, Int) -> Int = addTwoInts

print(addTwoInts(1, 2))
print(mathFunc(1, 5))

// using anonymous function with function type
var anonymousFunc: () -> Void = {
  () -> Void in
  print("anonymous function")
}
anonymousFunc()

// function type as parameter type of a function
func funcType(_ param: () -> Void) {
  param()
}
funcType(anonymousFunc)

// function as return value
// example1
func returnFunc1() -> (String) -> Void {
  return {
    (_ param:String) -> Void in
    print(param)
  }
}
returnFunc1()("lol")

// example2
func play1(value: Int) -> Int {
  return value * value
}
func play2(value: Int) -> Int {
  return value + value
}
func returnFunc2(_ param: Bool) -> (Int) -> Int {
  return param ? play1 : play2
}
print(returnFunc2(true)(3))

// simplify anonymous function
var simple = {
  print("a")
}
func simple2(param:() -> Void) {
  param()
}
simple2{print("a very simple function")}

func simple3(param: (Int, Int) -> Int) {
  print(param(1, 2))
}
simple3(param: {
  (item1, item2) -> Int in
  return item1 + item2
})
// using $0 as item1 and $1 as item2
simple3(param: {return $0 + $1})
simple3(param: {$0 + $1})