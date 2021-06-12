/* Set
   1. declaration
   2. operations
*/

print("hello set")

// declaration
var a:Set = [1, 2, 1]
var b:Set<String> = ["a", "b"]
print(a)
print(b)
print(a.count)

// operations 
var setList:Set = ["hello", "apple", "Swift"]
setList.insert("Xcode")
setList.remove("hello")
print(setList)
print(setList.contains("hello"))

/* why elements in set must be immutable?

https://stackoverflow.com/questions/37335407/why-is-it-preferred-to-use-immutable-objects-as-elements-of-a-set

You'll have to remove the element from the set, and add a new element with that value updated. That's because sets use hashing to efficiently eliminate duplicates. If mutating the elements directly was allowed you'd break this model.
*/

let set1:Set = [1, 2, 3]
let set2:Set = [2, 3, 4]
let set3:Set = [2, 3, 1]
var setUnion = set1.union(set2)
print(setUnion)
print(set1.intersection(set2))
print(set1.symmetricDifference(set2))
print(set1.subtracting(set2))
print(set1 == set3)

// filter
var setNew = set1.filter({(item) -> Bool in
   if item == 1 || item == 2 {
      return false
   }
   return true
})
print(setNew)

// traverse
for item in setNew {
   print(item)
}