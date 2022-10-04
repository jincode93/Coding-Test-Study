import Foundation

func solution(_ n:Int) -> Int {
    
    var a: Double = sqrt(Double(n)) - floor(sqrt(Double(n)))
    
    if a == 0 {
        return 1
    } else {
        return 2
    }
}