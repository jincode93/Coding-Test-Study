import Foundation

func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
    
    var a: String = ""
    var b: String = String(k)
    var stringArray: [Character] = []
    var result: Int = 0
    
    for i in i...j {
        a = String(i)
        stringArray = Array(a)
        for j in stringArray {
            if j == Character(b) {
                result += 1
            }
        }
    }
    
    return result
}