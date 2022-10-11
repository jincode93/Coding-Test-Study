import Foundation

func solution(_ n:Int) -> Int {

    var result: Int = 0
    
    for i in 1...n {
        var count: Int = 0
        for j in 1...i {
            if i % j == 0 {
                count += 1
            }
        }
        if count > 2{
                result += 1
            }
    }
    
    return result
}