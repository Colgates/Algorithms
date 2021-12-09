// BubbleSort
func bubbleSort<T: Comparable>(_ input: [T]) -> [T] {
var array = input

for _ in 0..<array.count {
  for j in 1..<array.count {
    if array[j] < array[j-1] {
      let tmp = array[j-1]
      array[j-1] = array[j]
      array[j] = tmp
    }
  }
}
return array
}

let array = [4,2,3,1]
print(bubbleSort(array))
