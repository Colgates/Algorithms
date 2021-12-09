//“Given a string that contains both letters and numbers, write a function that pulls out all the numbers then returns their sum.”

import Foundation

func extractSumOfNumbersFromString(input: String) -> Int {
    let arrayOfInts = Array(input).compactMap { Int(String($0)) }
    return arrayOfInts.reduce(0, +)
}


//extractSumOfNumbersFromString(input: "h8ers")


// solution from book

func challenge24a(string: String) -> Int {
    var currentNumber = ""
    var sum = 0
    
    string.forEach { letter in
        let strLetter = String(letter)
        if Int(strLetter) != nil {
            currentNumber += strLetter
        } else {
            sum += Int(currentNumber) ?? 0
            currentNumber = ""
        }
    }
    
    
//    for letter in string {
//        let strLetter = String(letter)
//        if Int(strLetter) != nil {
//            currentNumber += strLetter
//        } else {
//            sum += Int(currentNumber) ?? 0
//            currentNumber = ""
//        }
//    }
    
    sum += Int(currentNumber) ?? 0
    return sum
}

//challenge24a(string: "h8ers")


func challenge24c(string: String) -> Int {
//    return string
//        .replacingOccurrences(of: "\\D+", with: "-", options: .regularExpression)
//        .split(separator: "-")
//        .reduce(0) { $0 + Int(String($1))! }
    // "\\D+" - means anything that isn't number
    
    return string
        .replacingOccurrences(of: "\\D+", with: "-", options: .regularExpression)
        .split(separator: "-")
        .compactMap { Int(String($0)) }
        .reduce(0, +)
}

challenge24c(string: "a10b20c30")
