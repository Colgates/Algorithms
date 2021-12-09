// QuickSort
func quickSort(_ array: [Int]) -> [Int] {
    guard array.count > 1 else {
        return array
    }

    let pivot = array[array.count / 2]
    let less = array.filter { $0 < pivot }
    let equal = array.filter { $0 == pivot }
    let greater = array.filter { $0 > pivot }
    return quickSort(less) + equal + quickSort(greater)
}

let testArray = [4,5,2,5,7,8,7,2]
let sorted = quickSort(testArray)
print(sorted)


func quickSort<T: Comparable>(_ array: [T]) -> [T] {
    guard array.count > 1 else {
        return array
    }

    let pivot = array[array.count / 2]
    let less = array.filter { $0 < pivot }
    let equal = array.filter { $0 == pivot }
    let greater = array.filter { $0 > pivot }
    return quickSort(less) + equal + quickSort(greater)
}

let testArray2 = [a,f,h,s,h,r,c,h,s]
let sorted2 = quickSort(testArray2)
print(sorted2)
