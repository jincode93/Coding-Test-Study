import Foundation

func solution(_ letter:String) -> String {
    var morseArray: [String] = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
    var azArray: [String] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    
    var letterArray: [String] = letter.components(separatedBy: " ")
    
    var resultArray: [String] = []
    
    for i in letterArray {
        var count: Int = morseArray.count - 1
        for j in 0...count {
            if i == morseArray[j] {
                resultArray += [azArray[j]]
            }
        }
    }
    
    return resultArray.joined(separator: "")
}