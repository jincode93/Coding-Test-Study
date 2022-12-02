import Foundation

func solution(_ left:Int, _ right:Int) -> Int {

    var result: [Int] = []
    
    for i in left...right {
        
        var a: [Int] = []
        
        for j in 1...i {
            if i % j == 0 {
                a.append(j)
            }
        }
        
        if a.count % 2 == 0 {
            result.append(i)
        } else {
            result.append(-i)
        }
    }
    
    return result.reduce(0, +)
}