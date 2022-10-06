import Foundation

func solution(_ n:Int, _ numlist:[Int]) -> [Int] {
    
    var result: [Int] = []
    
    for i in numlist {
        if i % n == 0 {
            result += [i]
        }
    }
    
    return result
}