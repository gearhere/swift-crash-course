/* String
   1. index
   2. contain
   3. append & insert
   4. replace
   5. remove
   6. multi-line string

   Why is Swift's String API So Hard? - https://www.mikeash.com/pyblog/friday-qa-2015-11-06-why-is-swifts-string-api-so-hard.html
   为什么 Swift 中的 String API 如此难用？ - https://swift.gg/2016/01/25/friday-qa-2015-11-06-why-is-swifts-string-api-so-hard/
   Swift 的字符串为什么这么难用？ - https://kemchenj.github.io/2019-10-07/
*/

print("hello string")

var str = "abcde"
let size = str.count
print("size: \(size)")
print(str.startIndex)
print(str.endIndex)

print(str[str.startIndex]) // a
print(str[str.index(before: str.endIndex)]) // e
print(str[str.index(after: str.startIndex)]) // b
print(str[str.index(str.startIndex, offsetBy: 2)]) // c
print(str[str.index(str.endIndex, offsetBy: -3)]) // c
print(str.prefix(3)) // abc
print(str.prefix(upTo: str.index(str.startIndex, offsetBy: 3))) // abc

let index_c = str.firstIndex(of: "c")
var index_f = str.firstIndex(of: "f") ?? str.endIndex
// error: var index_f = str.firstIndex(of: "f") ?? -1
// print(str.firstIndex(of: "f") ?? -1)
print("index: ", index_c!)
print(str[str.startIndex...index_c!]) // abc

// contain
print(str.contains("c"))
print(str.contains(where: String.contains("al")))
print(str.hasPrefix("ab"))
print(str.hasSuffix("de"))
import Foundation // necessary for check containing substring instead of character
print(str.contains("abh"))

// append & insert
str.append("fgh")
print(str)
str.insert(contentsOf: "hello", at: str.index(str.startIndex, offsetBy: 2))
print(str)

let index1 = str.index(str.startIndex, offsetBy: 2)
let index2 = str.index(str.startIndex, offsetBy: 6)
let range = index1...index2
// replace by range
str.replaceSubrange(range, with: "123")
print(str)
// replace by content
var newStr = str.replacingOccurrences(of: "123", with: "666")
print(newStr)

// remove
str.removeSubrange(index1...str.index(str.startIndex, offsetBy: 4))
print(str)

// traversal
for character in str {
  print("character: \(character)")
}

for index in (0..<str.count).reversed() {
  print(str[str.index(str.startIndex, offsetBy: index)])
}

// multi-line string
var multiLine = """
                hello
                  multi-line
                      string
                    in
                Swift
                """
print(multiLine)


// How to print double quotes inside ""? - https://stackoverflow.com/a/52906872/14506599
print(#""hello*&%$^(*?|{}”""#)