//“Write a function that accepts two strings, and returns true if they are identical in length but have no more than three different letters, taking case and string order into account.”

import Foundation

func checkTheDifferences(first: String, second: String) -> Bool {
    
    guard first.count == second.count else { return false }
    
    let firstArray = Array(first).sorted()
    let secondArray = Array(second).sorted()
    
    var differences = 0
    
    for (index, letter) in firstArray.enumerated() {
        if secondArray[index] != letter {
            differences += 1
            if differences > 3 {
                return false
            }
        }
    }
    return true
}

checkTheDifferences(first: "Hello Hello", second: "lHeff lHffl")
