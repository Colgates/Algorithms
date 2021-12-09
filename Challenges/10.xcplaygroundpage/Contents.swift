//“Given a string in English, return a tuple containing the number of vowels and consonants.”

import Foundation

func numberOfVowelsAndConsonants(text: String) -> (vowels: Int, consonants: Int) {
    let vowels = "aeiou"
    let consonants = "bcdfghjklmnpqrstvwxyz"
    
    var vowelsCount = 0
    var consonantsCount = 0
    
    for letter in text.lowercased() {
        if vowels.contains(letter) {
            vowelsCount += 1
        } else if consonants.contains(letter) {
            consonantsCount += 1
        }
    }
    return (vowelsCount, consonantsCount)
}

//numberOfVowelsAndConsonants(text: "The quick brown fox jumps over the lazy dog!")
numberOfVowelsAndConsonants(text: "Hello")

func soundsCount2(_ str: String) -> (vowels: Int, consonants: Int) {
    let vowels: Set<Character> = Set(["a", "e", "i", "o", "u"])
    let consonants: Set<Character> = Set(["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "z"])
    let lowerString = str.lowercased()

    return (
        vowels: lowerString.filter{ vowels.contains($0) }.count,
        consonants: lowerString.filter{ consonants.contains($0) }.count
    )
}

soundsCount2("The quick brown fox jumps over the lazy dog!")
//soundsCount2("Hello")

