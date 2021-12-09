// “Write your own version of the contains() method on String that ignores letter case, and without using the existing contains() method.”

import Foundation

var string = "Hello, Swift"
string.contains("Swift")

extension String {
    func customContains(_ string: String) -> Bool {
        return self.lowercased().contains(string.lowercased())
    }
}

string.customContains("Swift")
