/* While loop
   1. while
   2. repeat while
*/

var flag = true
var a = 0
while flag {
  print("a + 1 = \(a+1)")
  a += 1
  if a == 3 {
    flag = false
  }
}

/* repeat while actually is the same as
   do...while in other programming languages
*/
print("a = \(a)")
repeat {
  a += 1
  print("Now a = \(a)")
}
while a < 3