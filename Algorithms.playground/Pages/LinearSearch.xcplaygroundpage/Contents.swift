// LinearSearch - O(n)
func linearSearch<T: Comparable>(_ array: [T], value: T) -> Int? {
  for (index, obj) in array.enumerated() where obj == value {
    return index
  }
  return nil
}

// func linearSearch<T: Equatable>(_ a: [T], _ key: T) -> Int? {
//     for i in 0 ..< a.count where a[i] == key {
        
//             return i
        
//     }
//     return nil
// }

let array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
let abcArray = ["a", "b", "c", "d", "e", "f", "g", "h", "i"]
let index = linearSearch(abcArray, value: "a")
if let index = index {
  print(index)
}
