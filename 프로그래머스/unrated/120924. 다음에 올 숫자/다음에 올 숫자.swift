import Foundation

func solution(_ common:[Int]) -> Int {
    
    var a: Int = common[1] - common[0]
    var b: Int = common[2] - common[1]
    var indexNum: Int = common.count - 1
    var result: Int = 0
    
    if a == b {
        result = common[indexNum] + a
    } else {
        result = common[indexNum] * b
    }
    
    return result
}