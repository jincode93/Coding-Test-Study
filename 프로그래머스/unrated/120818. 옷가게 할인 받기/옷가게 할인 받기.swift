import Foundation

func solution(_ price:Int) -> Int {
    
    var result: Float = Float(price)
    
    if result >= 500000 {
        result *= 0.8
    } else if result >= 300000 && result < 500000 {
        result *= 0.9
    } else if result >= 100000 && result < 300000 {
        result *= 0.95
    }
    
    return Int(result)
}