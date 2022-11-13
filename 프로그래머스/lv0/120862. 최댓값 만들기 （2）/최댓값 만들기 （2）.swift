import Foundation

func solution(_ numbers:[Int]) -> Int {
    
    var sortNum: [Int] = numbers.sorted()
    var a: Int = sortNum[0] * sortNum[1]
    var count: Int = sortNum.count - 1
    var b: Int = sortNum[count] * sortNum[count-1]
    
    return a > b ? a : b
}