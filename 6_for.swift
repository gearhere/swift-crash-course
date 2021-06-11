/* For Loop
   1. range operators
   2. for in
   3. continue / break
*/

print("hello for loop")

// range operators
var a = 1...4+1
var b = 1..<4
print(a)
print(b)
print("type of a: \(type(of: a))")

let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
print("type of count: \(type(of: count))")
print("count - 1 = \(count-1)")

print(names[0...2+1])
// print(names[...2+1]) will reuslt error
print(names[...(2+1)])
print(names[...3])

// for in
for name in names[1..<count+0] {
  print("name: \(name)")
}

print("exclude the final one:")
for index in stride(from: -2, to: 2, by: 2).reversed()
{
  print(index)
}

print("include the final one:")
for index in stride(from: -2, through: 2, by: 2)
{
  if index == 0 {
    continue
  }
  print(index)
}

// is there any pass operator in Swift?