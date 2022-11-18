import Foundation

func solution(_ numbers:String) -> Int64 {
    
    var numArr: [String] = numbers.map { String($0) }
    var result: Int64 = 0
    
    while numArr.count > 0 {
        result *= 10
        
        var a = numArr[0]
        var b = numArr[1]
        
        if a == "z" {
            result += 0
            numArr.removeFirst(4)
        } else if a == "o" && b == "n" {
            result += 1
            numArr.removeFirst(3)
        } else if a == "t" && b == "w" {
            result += 2
            numArr.removeFirst(3)
        } else if a == "t" && b == "h" {
            result += 3
            numArr.removeFirst(5)
        } else if a == "f" && b == "o" {
            result += 4
            numArr.removeFirst(4)
        } else if a == "f" && b == "i" {
            result += 5
            numArr.removeFirst(4)
        } else if a == "s" && b == "i" {
            result += 6
            numArr.removeFirst(3)
        } else if a == "s" && b == "e" {
            result += 7
            numArr.removeFirst(5)
        } else if a == "e" {
            result += 8
            numArr.removeFirst(5)
        } else if a == "n" {
            result += 9
            numArr.removeFirst(4)
        }
    }
    
    return result
}