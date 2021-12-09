// “Create a function that accepts an unsigned 8-bit integer and returns its binary reverse, padded so that it holds precisely eight binary digits.”

import Foundation

func challenge22a(number: Int) -> UInt {
    let binaryNumber = String(number, radix: 2, uppercase: false)
    let paddingAmount = 8 - binaryNumber.count
    let paddedBinary = String(repeating: "0", count: paddingAmount) + binaryNumber
    let reversedBinary = String(paddedBinary.reversed())
    return UInt(reversedBinary, radix: 2) ?? 0
}

let result = challenge22a(number: 32)
print(result)
