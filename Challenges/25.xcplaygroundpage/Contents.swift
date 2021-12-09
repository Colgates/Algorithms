//“Write a function that returns the square root of a positive integer, rounded down to the nearest integer, without using sqrt().”

import Foundation

func challenge25b(input: Int) -> Int {
    guard input != 1 else { return 1 }
    
    var lowerBound = 0
    var upperBound = 1 + input / 2
    
    while lowerBound + 1 < upperBound {
        let middle = lowerBound + ((upperBound - lowerBound) / 2)
        let middleSquared = middle * middle
        
        if middleSquared == input {
            return middle
        } else if middleSquared < input {
            lowerBound = middle
        } else {
            upperBound = middle
        }
    }
    
    return lowerBound
}


func challenge25c(input: Int) -> Int {
//    return Int(floor(pow(Double(input), 0.5)))

//    let doubleInput = Double(input)
//    let powx = pow(doubleInput, 0.5)
//    let floorx = floor(powx)
//    let ceiling = ceil(powx)
//    let rounded = powx.rounded(.down)
    
    return pow(Double(input), 0.5).rounded(.down)
}

challenge25c(input: 15)
