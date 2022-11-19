import Foundation

func solution(_ spell:[String], _ dic:[String]) -> Int {
    
    var result: Int = 0
    
    for i in dic {
        var a: [String] = i.map { String($0) }
        var count: Int = 0
        
        for j in spell {
            if a.contains(j) {
                count += 1
            }
        }
        
        if spell.count == count {
            result = 1
        }
    }
    
    return result == 1 ? 1 : 2
}