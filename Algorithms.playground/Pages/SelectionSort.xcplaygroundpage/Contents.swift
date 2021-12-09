// Selection Sort O(n^2)

func selectionSort<T: Comparable>(_ array: [T]) -> [T] {
    guard array.count > 1 else { return array }

    var output = array

    for primaryIndex in 0..<output.count {
        var minimum = primaryIndex
        var secondaryIndex = primaryIndex + 1

        while secondaryIndex < output.count {
            if output[minimum] > output[secondaryIndex] {
                minimum = secondaryIndex
            }
            secondaryIndex += 1
        }

        if primaryIndex != minimum {
          output.swapAt(primaryIndex, minimum)
        }
    }
    return output
}

var array = [ 10, -1, 3, 9, 2, 27, 8, 5, 1, 3, 0, 26 ]
print(selectionSort(array))
