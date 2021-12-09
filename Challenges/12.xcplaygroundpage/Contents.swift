// “Write a function that accepts a string of words with a similar prefix, separated by spaces, and returns the longest substring that prefixes all words.” 

import Foundation

func longestPrefix(text: String) -> String {
    
    let components = text.lowercased().components(separatedBy: " ")
    guard let first = components.first else { return "" }
    var currentPrefix = ""
    var longestPrefix = ""
    
    for letter in first {
        currentPrefix.append(letter)
        
        for word in components {
            if !word.hasPrefix(currentPrefix) {
                return longestPrefix
            }
        }
        longestPrefix = currentPrefix
    }
    
    return longestPrefix
}

longestPrefix(text: "Swift switch swill swilm")
//longestPrefix(text: "hello hell help helicopter")
