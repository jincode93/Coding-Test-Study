import Foundation

func solution(_ slice:Int, _ n:Int) -> Int {
    
    var result: Float = Float(n) / Float(slice)
    
    result = ceil(result)
    
    return Int(result)
}