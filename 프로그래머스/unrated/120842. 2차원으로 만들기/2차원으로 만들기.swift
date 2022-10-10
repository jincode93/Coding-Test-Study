import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [[Int]] {
    
    var result: [[Int]] = []
    var a: [Int] = []
    
    for i in num_list {
        a += [i]
        if a.count == n {
            result += [a]
            a = []
        }
    }
    
    return result
}