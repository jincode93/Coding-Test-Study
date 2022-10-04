import Foundation

func solution(_ my_string:String) -> String {
    
    var lowerString: String = my_string.lowercased()
    
    var characterArray: [Character] = []
    
    var result: String = ""
    
    for i in lowerString {
        characterArray += [i]
    }
    
    characterArray.sort()
    
    for i in characterArray {
        result += String(i)
    }
    
    return result
}