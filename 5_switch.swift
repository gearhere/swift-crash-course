/* Switch
   1. switch case
   2. fallthrough
   3. where
*/

print("hello switch")

var a:Int = 20
switch a {
case 10:
  print("a equals to ten")
case 3, 20, 100:
  print("a equals to twenty")
  fallthrough
case 50...51:
  print("sth must be executed after matching 3, 20, 100")
default:
  print("no case matched")
}

var values = (10, 5)
switch values {
case let (name1, name2) where name1 < name2:
  print("name1 = \(name1)")
case let (10, name2) where 10 > name2:
  print("name1 = \(name2)")
default:
  print("no case matched")
}