import Foundation

func solution(_ numbers:[Int]) -> Double {
    
    var sum: Int = 0
    
    for i in numbers {
        sum += i
    }
    
    return Double(sum) / Double(numbers.count)
}