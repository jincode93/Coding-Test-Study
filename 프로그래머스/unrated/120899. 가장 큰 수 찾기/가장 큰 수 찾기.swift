import Foundation

func solution(_ array:[Int]) -> [Int] {
    
    var result: [Int] = []
    var max: Int = 0
    
    for i in 0...array.count-1 {
        if array[i] > max {
            max = array[i]
            result = [array[i],i]
        }
    }
    
    return result
}