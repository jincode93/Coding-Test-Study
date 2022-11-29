import Foundation

func solution(_ s:String) -> Int {
    var arr: [String] = s.components(separatedBy: " ")
    var result: [Int] = []
    
    for i in arr {
        if i != "Z" {
            result.append(Int(i)!)
        } else {
            result.removeLast()
        }
    }
    
    return result.reduce(0, +)
}