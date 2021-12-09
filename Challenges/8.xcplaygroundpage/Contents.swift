//“Write a function that accepts two strings, and returns true if one string is rotation of the other, taking letter case into account.”

import Foundation

func checkRotatedString(input: String, rotatedString: String) -> Bool {
    guard input.count == rotatedString.count else { return false }
    let combined = input + input
    return combined.contains(rotatedString)
}

checkRotatedString(input: "Hello", rotatedString: "loHel")
