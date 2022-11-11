import Foundation

func solution(_ emergency:[Int]) -> [Int] {
    
    var emerArray: [Int] = emergency.sorted(by: >)
    var resultDic: [Int:Int] = [:]
    var a: Int = 1
    var result: [Int] = []
    
    for i in emerArray {
        resultDic[i] = a
        a += 1
    }
    
    for i in emergency {
        result.append(resultDic[i] ?? 0)
    }
    
    return result
}