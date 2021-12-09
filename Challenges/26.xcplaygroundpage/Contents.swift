// “Create a function that subtracts one positive integer from another, without using -.”

import Foundation

func challenge26c(subtract: Int, from: Int) -> Int {
    
    let number = ~subtract + 1
    
    return from + (~subtract + 1)
}

challenge26c(subtract: 10, from: 20)
