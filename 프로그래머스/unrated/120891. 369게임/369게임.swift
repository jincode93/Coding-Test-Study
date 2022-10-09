import Foundation

func solution(_ order:Int) -> Int {
    
    var result: Int = 0
    var a: Int = order
    var b: Int = 0
    
    while a > 0 {
        b = a % 10
        if !(b == 0) {
            if b % 3 == 0 {
                result += 1
            }
        }
        a /= 10
    }
    
    return result
}