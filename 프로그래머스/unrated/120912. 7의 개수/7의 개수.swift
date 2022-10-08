import Foundation

func solution(_ array:[Int]) -> Int {
    
    var result: Int = 0
    
    for i in array {
        var a: String = String(i)
        for j in a {
            if j == "7" {
                result += 1
            }
        }
    }
    
    return result
}