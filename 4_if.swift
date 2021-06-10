/* If
   1. if-else if-else
   2. optional binding: if let
   3. implicitly unwrapped optionals
*/

print("hello if")

var a = 3
if (a == 1)
{
  print("a equals to one")
}
else if (a == 2)
{
  print("a equals to two")
}
else
{
  print("unknown value of a")
}

// optional binding
// https://stackoverflow.com/questions/25828301/how-is-swift-if-let-evaluated
var c:Int? = nil
if let b = c
{
  print(b)
}
else
{
  print("null")
}

// implicitly unwrapped optionals
// https://www.informit.com/articles/article.aspx?p=2469047
var d:Int! = 12
var e:Int = d
print(e)
d = nil
print(d ?? "nil")
// if we have var d:Int = 12 (without !), then we cannot make d = nil