import Foundation

func solution(_ n:Int) -> [Int] {
    
    var a: Int = n
    var b: Int = 2
    var result: [Int] = []
    
    while a != 1 {
        if a % b == 0 {
            if !result.contains(b) {
                result += [b]
            }
            a /= b
        } else {
            b += 1
        }
    }
    
    return result
}