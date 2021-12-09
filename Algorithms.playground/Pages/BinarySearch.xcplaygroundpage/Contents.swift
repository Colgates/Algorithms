// BinarySearch - O(log n)
func binarySearch(_ array: [Int], _ value: Int) -> Int? {
    
    guard !array.isEmpty else {
        return nil
    }
    
    if array.count == 1 {
        return array[0] == value ? 0 : nil
    }
    
    var left: Int = 0
    var right: Int = array.count - 1
    
    while left <= right {
        let middleIndex = (left + right) / 2
        let middleValue = array[middleIndex]
        
        if middleValue > value {
            right = middleIndex - 1
        } else if middleValue < value {
            left = middleIndex + 1
        } else {
            return middleIndex
        }
    }
    return nil
}

let array = [1,2,3,4,5,6,7,8,9,10]
let found = binarySearch(array, 10)
print(found)
