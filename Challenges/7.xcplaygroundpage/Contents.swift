// “Write a function that returns a string with any consecutive spaces replaced with a single space.” 

import Foundation
import Darwin

func deleteSpaces(in string: String) -> String {
    return string.replacingOccurrences(of: "[\\s]+", with: " ", options: .regularExpression, range: nil)
}

let newString = deleteSpaces(in: "Hello      Worllllld     and      ")
print(newString)


// solution from other

func removeExtraSpaces(input: String) -> String {
    var space = false
    var returnValue = ""
    
    for letter in input {
        if letter == "l" {
            if space { continue }
            space = true
        } else {
            space = false
        }
        
        returnValue.append(letter)
    }
    return returnValue
}

let otherString = removeExtraSpaces(input: "Hello      Worllllld     and      ")


