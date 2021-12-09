// “Write a function that accepts two String parameters, and returns true if they contain the same characters in any order taking into account letter case.”

import Foundation

// first solution
func checkStrings(firstString: String, secondString: String) -> Bool {
    var checkString = secondString
    for letter in firstString {
        if let index = checkString.firstIndex(of: letter) {
            checkString.remove(at: index)
        } else {
            return false
        }
    }
    return checkString.count == 0
}

checkStrings(firstString: "a1 b1", secondString: "b2 a1")

// second solution

func checkStrings2(firstString: String, secondString: String) -> Bool {
    return firstString.sorted() == secondString.sorted()
}

checkStrings2(firstString: "a1 b1", secondString: "b1 a1")

