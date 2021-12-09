// “Write a function that accepts a string and returns true if it contains only numbers, i.e. the digits 0 through 9.”

import Foundation

func isOnlyNumbers(input: String) -> Bool {

    let components = Array(input)
    let ints = components.compactMap { Int(String($0)) }
    
    return input.count == ints.count
}

isOnlyNumbers(input: "9223372036854775808")

//func challenge23d(input: String) -> Bool {
//    return input.rangeOfCharacter(from: CharacterSet(charactersIn: "0123456789").inverted) == nil
//}

func challenge23d(input: String) -> Bool {
    return input.rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) == nil
}

//challenge23d(input: "we")
