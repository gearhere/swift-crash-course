/* Array
   1. initialize 
   2. CRUD
   3. sort
   4. filter
   5. compare
   6. traverse
*/

print("hello array")

var a = [1, 2, 3, 4]
var b:[String] = ["a", "bc", "dd"]
var c:Array<Float> = [1.1, 2.4, 5.0]
var array1 = [Int]()
var array2 = Array(repeating: -1, count: 3)

print(a)
print(b)
print(c)
print(array1)
print(array2)

// create
var array = ["hi", "morning"]
array += ["ios"]
array.append("android")
array.insert("harmonyOS", at: 2)
print(array)

// retrieve
print(b[0])
print(array.contains("hi"))

// update
b[0] = "op"
print(b[0])
array2.replaceSubrange((0..<array2.count), with: [7, 8, 9])
print(array2)

// remove
array.remove(at: 0)
print(array)

// sort
var arraySort = ["B", "D", "A", "C"]
// arraySort.sort(by: {(s1, s2) -> Bool in
//    if s1 > s2 {
//       return true
//    } else {
//       return false
//    }
// })
arraySort.sort(by: >)
print(arraySort)

// filter
var array3 = ["A", "B", "C"]
array3 = array3.filter({(item) -> Bool in
   if item != "C" {
      return true
   }
   else {
      return false
   }
})
print(array3)

// compare
var array4 = [1, 2, 3]
var array5 = [1, 2, 3]
print(array4 == array5)

// traverse
for item in array5[1...2] {
   print(item)
}

for index in 1..<array5.count {
   print(array5[index])
}