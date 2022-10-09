import Foundation

func solution(_ hp:Int) -> Int {
    
    var result: Int = 0
    var a: Int = hp
    
    result = a / 5
    
    a = a % 5
    
    result += a / 3
    
    a = a % 3
    
    result += a
    
    return result
}