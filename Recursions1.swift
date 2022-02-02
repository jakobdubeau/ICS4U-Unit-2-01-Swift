/*
* The log program takes log length and gives you the amount of logs that can fit in a truck.
*
* @author Jakob
* @version 1.0
* @since 2020-11-22
*/

import Foundation

enum MyError: Error {
    case invalidInteger(String)
}

func reverse(text: String) -> String {
    // Variables.
    var returnValue: String = ""

    if text.count == 0 {
        returnValue = text
    } else {
        let range = text.index(after: text.startIndex)..<text.endIndex
        returnValue = reverse(text: String(text[range]))
            + String(text[text.startIndex])
    }

    return returnValue

}

var text: String

// Inputs
print("Please enter some string to be reversed: ")
let textInput: String = readLine()!

let reversedText: String = (reverse(text: textInput))

print("The reversed string is: " + reversedText)

print("\nDone.")
