// “Create a function that accepts positive two integers, and raises the first to the power of the second.”

import Foundation
import Darwin

func challenge18(number: Int, power: Int) -> Int {
    guard number > 0 && power > 0 else { return 0 }
    
    var returnValue = 1

    for i in 1...power {
        returnValue *= number
    }
    
    return returnValue
}

challenge18(number: 1, power: 3)


// recursive solution

func challenge18b(number: Int, power: Int) -> Int {
    guard number > 0, power > 0 else { return 0 }
    if power == 1 { return number }

    return number * challenge18b(number: number, power: power - 1)
}

challenge18b(number: 2, power: 2)
