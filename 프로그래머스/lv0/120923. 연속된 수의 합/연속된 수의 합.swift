import Foundation

func solution(_ num:Int, _ total:Int) -> [Int] {
    var a: Int = total / num
    var b: Int = num / 2
    
    if total % num == 0 {
        return Array(a-b...a+b)
    } else {
        return Array(a-b+1...a+b)
    }
}