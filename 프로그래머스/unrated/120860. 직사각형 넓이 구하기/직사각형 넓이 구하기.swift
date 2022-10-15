import Foundation

func solution(_ dots:[[Int]]) -> Int {
    
    var x: Int = 0
    var y: Int = 0
    
    for i in 1...3 {
        if !(dots[0][0] == dots[i][0]) {
            x = dots[0][0] - dots[i][0]
        }
        if !(dots[0][1] == dots[i][1]) {
            y = dots[0][1] - dots[i][1]
        }
    }
    
    if x < 0 {
        x *= -1
    }
    
    if y < 0 {
        y *= -1
    }
    
    return x * y
}