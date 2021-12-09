// “Write a function that accepts a String as its only parameter, and returns true if the string has only unique letters, taking letter case into account.”

import Foundation

// first
func checkString(string: String) -> Bool {
    var checkedSymbols: [Character] = []
    
    for char in string {
        if checkedSymbols.contains(char) {
           return false
        }
        checkedSymbols.append(char)
    }
    return true
}

checkString(string: "world")


// second

func checkString2(string: String) -> Bool {
    return Set(string).count == string.count
}

checkString2(string: "world the")
