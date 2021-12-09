// “Write a function that accepts a string as input, then returns how often each letter is repeated in a single run, taking case into account.”

import Foundation

func howManyTimes(input: String) -> String {
    var currentLetter: Character?
    var returnValue = ""
    var letterCounter = 0
    
    for letter in input {
        if letter == currentLetter {
            letterCounter += 1
        } else {
            if let current = currentLetter {
                returnValue.append("\(current)\(letterCounter)")
            }
            currentLetter = letter
            letterCounter = 1
        }
    }
    
    if let current = currentLetter {
        returnValue.append("\(current)\(letterCounter)")
    }
    
    return returnValue
}

howManyTimes(input: "aaabbbccc")


// alternative solution

func challenge13b(input: String) -> String {
    var returnValue = ""
    var letterCounter = 0
    var letterArray = Array(input)
    
    for i in 0 ..< letterArray.count {
        
        letterCounter += 1
        if i + 1 == letterArray.count
        
    }
    return returnValue
}
