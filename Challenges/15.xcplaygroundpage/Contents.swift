//“Write a function that returns a string with each of its words reversed but in the original order, without using a loop.”

import Foundation

func reversedString(input: String) -> String {
    let string = input.components(separatedBy: " ")
    let reversed = string.compactMap { String($0.reversed()) }
    return reversed.joined(separator: " ")
}

reversedString(input: "Hello Swift")
