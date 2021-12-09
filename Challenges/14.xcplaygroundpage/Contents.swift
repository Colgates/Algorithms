// “Write a function that prints all possible permutations of a given input string.”

import Foundation

func challenge14(string: String, current: String = "") {
    let length = string.count
    let strArray = Array(string)

    if (length == 0) {
        // there's nothing left to re-arrange; print the result
        print(current)
        print("******")
    } else {
        print(current)

        // loop through every character
        for i in 0 ..< length {
            // get the letters before me
            let left = String(strArray[0 ..< i])

            // get the letters after me
            let right = String(strArray[i+1 ..< length])

            // put those two together and carry on
            challenge14(string: left + right, current: current + String(strArray[i]))
        }
    }
}

challenge14(string: "abc")
