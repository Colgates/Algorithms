//“Write a function that accepts a string as its input, and returns the same string just with duplicate letters removed.”

import Foundation

func trimString(string: String) -> String {
    var used: [Character] = []
    
    for letter in string {
        if !used.contains(letter) {
            used.append(letter)
        }
    }
    return String(used)
}

trimString(string: "Hello")
