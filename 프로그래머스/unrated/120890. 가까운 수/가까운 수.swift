import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    
    var min: Int = 100
    var a: Int = 0
    var result: Int = 0
    
    for i in array {
        a = abs(i - n)
        if min > a {
            min = a
            result = i
        } else if min == a {
            if result > i {
                result = i
            }
        }
    }
    
    return result
}