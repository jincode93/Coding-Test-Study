import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
//     var result: [Int] = absolutes
    
//     for i in 0..<signs.count {
//         if !signs[i] {
//             result[i] *= -1
//         }
//     }
    
//     return result.reduce(0, +)
    
    return (0..<absolutes.count).map { signs[$0] ? absolutes[$0] : -absolutes[$0] }.reduce(0, +)
}