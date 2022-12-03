import Foundation

func solution(_ n:Int) -> Int {
    
    if n == 1 || n == 2 {
        return n
    } else {
    var a: Int = n
    var arr: [Int] = []
    
    while a > 1 {
        arr.append(a % 3)
        a /= 3
        if a == 1 {
            arr.append(1)
        }
    }
    
    arr = arr.reversed()
    
    for i in 0..<arr.count {
        var b: Int = 1
        if i != 0 {
            for _ in 1...i {
                b *= 3
            }
        }
        
        arr[i] *= b
    }
    
    return arr.reduce(0, +)
    }
}