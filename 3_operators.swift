/* Operators
  1. assignment operator
  2. arithmetic operators
  3. remainder operator
  4. unary plus/minus operator
  5. compound assignment operators
  6. comparison operators
  7. ternary conditional Operator
  8. nil coalescing operator
  9. range operators: a...b a..<b [..<2]
  10. logical operators: ! && ||
  11. bitwise operators
  12. overflow operators
  
  - precedence and associativity
  - operator methods
  - custom operators
  - result builders

*/

// unary
let three = 3
let minusThree = -three
let alsoThree = +three
print(three, minusThree, alsoThree)

// the nil-coalescing operator is shorthand for the code below
var a:Int?
var b = 2
print(a ?? b)
print(a != nil ? a! : b)