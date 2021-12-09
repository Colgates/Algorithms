//“Write a function that accepts a String as its only parameter, and returns true if the string reads the same when reversed, ignoring case.”

import Foundation

func checkString(string: String) -> Bool {
    let lowerCased = string.lowercased()
    //delete spaces
    lowerCased.trimmingCharacters(in: .whitespaces)
    return String(lowerCased.reversed()) == lowerCased
}

checkString(string: "tenete")
