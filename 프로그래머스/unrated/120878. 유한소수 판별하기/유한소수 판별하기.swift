import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    
    var x: Int = a
    var y: Int = b
    var min: Int = 0
    var count: Int = 2
    var result: Int = 0
    
    if x > y {
        min = y
    } else {
        min = x
    }
    
    while count <= min {
        if x % count == 0 && y % count == 0 {
            x /= count
            y /= count
            count = 2
        } else {
            count += 1
        }
    }
    
    while y > 1 {
        if y % 2 == 0 {
            y /= 2
        } else if y % 5 == 0 {
            y /= 5
        } else {
            y = 0
            result = 2
        }
    }
    
    if y == 1 {
        result = 1
    }
    
    return result
}