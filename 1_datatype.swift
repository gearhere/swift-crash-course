print("hello data type")
/*  Data types
    1. note that data types must start with capital letters
    2. type inference
    3. check the type
    4. type alias
    5. type casting: Type()
    6. ?? syntax, similar to ternary if-else operator
    7. optionals
    8. force unwrapping
*/

// 1 - 3
var a:Int8 = 24
var b:Float = 1.2
var c = "hi"
var d:Int = 244
print(type(of: a))

// 4 - 6
typealias dog = Int
var e:dog = 3
print("The data type of e is", type(of: e))
print("The value of a is " + String(a))
print("Try to cast c:", Int(c) ?? 100)

// 7 - 8
var f:Int? = 100
var g:Int? = 10
f = nil
print(f ?? "f is nil")
print(g!)

// string concatenation
print("\(a)" + "\n" + "\(b)\n", c)


