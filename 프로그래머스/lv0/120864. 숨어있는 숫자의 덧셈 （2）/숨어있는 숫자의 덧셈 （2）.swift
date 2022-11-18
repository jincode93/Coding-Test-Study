import Foundation

func solution(_ my_string:String) -> Int {
    var arr: [Int] = my_string.map { Int(String($0)) ?? 10 }
    var a: Int = 0
    var result: [Int] = [0]
    
    for i in arr {
        if i == 10 {
            result.append(a)
            a = 0
        }
        
        if i != 10 && a == 0 {
            a = i
        } else if i != 10 && a != 0 {
            a *= 10
            a += i
        }
    }
    
    if a != 0 {
        result.append(a)
    }
    
    return result.reduce(0, +)
}