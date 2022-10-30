import Foundation

func solution(_ quiz:[String]) -> [String] {
    
    var x: [String] = []
    var y: Int = 0
    var result: [String] = []
    
    for i in quiz {
        x = i.components(separatedBy: " ")
        if x[1] == "+" {
            y = (Int(x[0]) ?? 0) + (Int(x[2]) ?? 0)
            if y == Int(x[4]) {
                result += ["O"]
            } else {
                result += ["X"]
            }
        } else {
            y = (Int(x[0]) ?? 0) - (Int(x[2]) ?? 0)
            if y == Int(x[4]) {
                result += ["O"]
            } else {
                result += ["X"]
            }
        }
    }
    
    return result
}