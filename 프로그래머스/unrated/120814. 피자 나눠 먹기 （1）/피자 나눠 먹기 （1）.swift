import Foundation

func solution(_ n:Int) -> Int {
    
    var a: Float = Float(n)
    
    a /= 7.00
    
    return Int(ceil(a))
}