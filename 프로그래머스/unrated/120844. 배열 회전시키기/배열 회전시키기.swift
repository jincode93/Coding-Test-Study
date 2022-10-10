import Foundation

func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    
    var result: [Int] = numbers
    
    if direction == "right" {
        var a: Int = 0
        a = numbers[numbers.count - 1]
        result.removeLast()
        result.insert(a, at: 0)
    } else {
        var b: Int = 0
        b = numbers[0]
        result.removeFirst()
        result.insert(b, at: numbers.count - 1)
    }
    
    return result
}