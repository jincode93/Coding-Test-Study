import Foundation

func solution(_ n:Int) -> Int {
    
    var a: Int = n
    
    var sum: Int = 0
    
    while !(a == 0) {
        sum += a % 10
        a /= 10
    }
    
    return sum
}