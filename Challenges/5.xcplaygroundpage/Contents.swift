// “Write a function that accepts a string, and returns how many times a specific character appears, taking case into account.” 

import Foundation

// first solution
func checkString(string: String, char: Character) -> Int {
    
    var count = 0
    
    for letter in string {
        if letter == char {
            count += 1
        }
    }
    return count
}

checkString(string: "Hello, Swift", char: "l")

// second solution
func checkString2(string: String, char: Character) -> Int {
    return string.reduce(0) {
        $1 == char ? $0 + 1 : $0
    }
}

checkString2(string: "Hello, Swift", char: " ")
