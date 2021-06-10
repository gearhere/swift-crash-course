print("hello tuple")
/*  Tuple
    1. specify the data type
    2. empty tuple
    3. index
    4. decomposition
*/

var a = (1, 2.2, "a", "hi", true)
print(type(of: a))
print(a)

// specify the data type
var b:(Int, String) = (1, "oh")
print(b)

// empty
var c:() = ()
print(c)

// index
var d = a
d.3 = "change"
print("a.3 is", a.3)
print("d.3 is", d.3)

var e = (name1:"hello", name2:a)
print(e.name2)
var f:(name1:String, name2:Int) = ("lol", 3)
print(type(of: f))

// decomposition
let (name1, name2) = ("swift", 24)
print(name1)
let (name3, _, name4) = ("name3", "ignore", "name4")
print(name3, name4)