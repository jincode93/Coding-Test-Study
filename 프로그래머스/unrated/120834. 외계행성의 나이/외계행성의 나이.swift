import Foundation

func solution(_ age:Int) -> String {
    
    var result: String = ""
    var ageNum: Int = age
    var index: Int = 0
    var ageArray: [String] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    
    while ageNum > 0 {
        index = ageNum % 10
        result = ageArray[index] + result
        ageNum /= 10
    }
    
    return result
}