import Foundation

func solution(_ strlist:[String]) -> [Int] {
    
    var result: [Int] = []
    
    for i in strlist {
        result += [i.count]
    }
    
    return result
}