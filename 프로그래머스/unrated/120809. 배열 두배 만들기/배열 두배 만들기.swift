import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    
    var result: [Int] = []
    
    for i in numbers {
        result += [i * 2]
    }
    
    return result 
}