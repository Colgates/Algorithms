//“Write a function that accepts a filename on disk, then prints its last N lines in reverse order, all on a single line separated by commas.”

import Foundation

func challenge27(lineCount: Int) {

    let path = Bundle.main.path(forResource: "File", ofType: "txt")!
    
    do {
        let input = try String(contentsOfFile: path, encoding: .utf8)
        
        var lines = input.components(separatedBy: "\n")
        lines.removeLast()
        
        guard lines.count > 0 else { return }

        lines.reverse()

        var output = [String]()

        for i in 0 ..< min(lines.count, lineCount) {
            output.append(lines[i])
        }

        print(output.joined(separator: ", "))
        
    } catch {
        print(error)
    }
}

challenge27(lineCount: 2)
