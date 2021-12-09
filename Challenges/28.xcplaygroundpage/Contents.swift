// “Write a logging function that accepts accepts a path to a log file on disk as well as a new log message. Your function should open the log file (or create it if it does not already exist), then append the new message to the log along with the current time and date.”

import Foundation
import PlaygroundSupport

let fileURL = playgroundSharedDataDirectory.appendingPathComponent("File.txt")

var fileContents: String?

do {
    fileContents = try String(contentsOf: fileURL)
} catch {
    print("Error reading contents: \(error)")
}
