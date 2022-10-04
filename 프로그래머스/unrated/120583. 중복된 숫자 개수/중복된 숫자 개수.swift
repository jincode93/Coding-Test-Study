import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    
    var result: Int = 0
    
    for i in array {
        if i == n {
            result += 1
        }
    }
    
    return result
}