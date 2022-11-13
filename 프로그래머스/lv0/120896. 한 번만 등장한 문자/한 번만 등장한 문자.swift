import Foundation

func solution(_ s:String) -> String {
    
    var arr: [String] = s.map { String($0) }
    var result: [String] = []
    
    for i in arr {
        var count: Int = 0
        
        for j in arr {
            if i == j {
                count += 1
            }
        }
        
        if count == 1 {
            result.append(i)
        }
    }
    
    result.sort()
    
    return result.joined(separator: "")
}