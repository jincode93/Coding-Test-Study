import Foundation

func solution(_ n:Int) -> Int {
    
    var result: Int = 1
    var a: Int = 1
    
    while a < n {
        a = 1
        result += 1
        for i in 1...result {
            a *= i
        }
        if a > n {
            result -= 1
        }
    }
    
    return result
}