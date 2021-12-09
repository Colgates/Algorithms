// “Write a function that returns true if it is given a string that is an English pangram, ignoring letter case.” 

import Foundation

func isPangramm(text: String) -> Bool {
    let set = Set(text.lowercased())
    let letters = set.filter {
        $0 >= "a" && $0 <= "z"
    }
    return letters.count == 26
}

isPangramm(text: "The quick brown fox jumps over the lazy dog!")
//isPanagramm(text: "abcdefghijklmnopqrstuvwxyz")

//isPanagramm(text: "A string (or word) over Σ is any finite sequence of symbols from Σ. For example, if Σ = {0, 1}, then 01011 is a string over Σ. The length of a string s is the number of symbols in s (the length of the sequence) and can be any non-negative integer; it is often denoted as |s|.")
