// “Create a function that accepts any positive integer and returns the next highest and next lowest number that has the same number of ones in its binary representation. If either number is not possible, return nil for it.”

import Foundation

func challenge21a(_ number: Int) -> (Int, Int) {
    let numberBinary = String(number, radix: 2, uppercase: false)
    let numberOnes = numberBinary.filter { $0 == "1" }.count
    
    var nextHighest = 0
    var nextLowest = 0
    
    for i in number + 1...Int.max {
        let currentBinary = String(i, radix: 2, uppercase: false)
        let currentOnes = currentBinary.filter { $0 == "1" }.count
        if currentOnes == numberOnes {
            nextHighest = i
            break
        }
    }
    
    for i in (0 ..< number).reversed() {
        let currentBinary = String(i, radix: 2, uppercase: false)
        let currentOnes = currentBinary.filter { $0 == "1" }.count
        if currentOnes == numberOnes {
            nextLowest = i
            break
        }
    }
    print(nextHighest, nextLowest)
    return (nextHighest, nextLowest)
}

//challenge21a(154)


//we can refactor code
func challenge21b(_ number: Int) -> (Int, Int) {
    
    func numberOfOnes(in number: Int) -> Int {
        let numberBinary = String(number, radix: 2, uppercase: false)
        return numberBinary.filter { $0 == "1" }.count
    }
    
    let numberOnes = numberOfOnes(in: number)
    
    var nextHighest = 0
    var nextLowest = 0
    
    for i in number + 1...Int.max {
        if numberOfOnes(in: i) == numberOnes {
            nextHighest = i
            break
        }
    }
    
    for i in (0 ..< number).reversed() {
        if numberOfOnes(in: i) == numberOnes {
            nextLowest = i
            break
        }
    }
    print(nextHighest, nextLowest)
    return (nextHighest, nextLowest)
}

challenge21b(28)
