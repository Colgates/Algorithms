//“Write a function that accepts positive minimum and maximum integers, and returns a random number between those two bounds, inclusive.”

import Foundation

func randomNumberInRange(min: Int, max: Int) -> Int {
    let range = Array(min...max)
    return range.randomElement() ?? 0
}

func randomNumberInRange2(min: Int, max: Int) -> Int {
    return Int.random(in: min...max)
}

randomNumberInRange2(min: 8, max: 10)
