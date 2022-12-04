import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    
    var result: [Int] = []
    
    for i in 0..<numbers.count {
        for j in 0..<numbers.count {
            if i != j {
                result.append(numbers[i] + numbers[j])
            }
        }
    }
    
    return Array(Set(result)).sorted()
}