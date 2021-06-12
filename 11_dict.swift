/* Dictionary
   1. declaration
   2. operations
   3. optinals binding
   4. filter
   5. traverse
*/

print("hello dictionary")

// declaration
var a: Dictionary<String, String> = ["a":"Apple", "i":"IBM", "g":"Google", "m":"Microsoft"]
var b: [Int:Character] = [1:"A", 2:"B", 3:"C"]
var c = ["a":"A", "b":"B", "c":"C"]
var empty = [Int:String]()
print(a)
print(b)
print(type(of: c))
print(empty)

// operations
print(a["m"] ?? "unknown")
a["a"] = "Alibaba"
a.updateValue("Intel", forKey: "i")
a.updateValue("ByteDance", forKey: "b")
a.removeValue(forKey: "g")
print(a)

// optinals binding
if let value = a["s"] {
  print(value)
}
else {
  print("none")
}

// filter
let aNew = a.filter({(key, value) -> Bool in 
  if key != "i" {
    return false
  }
  return true
})
print(aNew)

//traverse
for (_, value) in a {
  print("Company | " + value)
}