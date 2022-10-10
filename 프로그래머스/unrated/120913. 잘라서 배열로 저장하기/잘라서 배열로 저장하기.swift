import Foundation

func solution(_ my_str:String, _ n:Int) -> [String] {
    
    var a: [Character] = []
    var result: [String] = []
    var count: Int = 0
    
    for i in my_str {
        a += [i]
        count += 1
        if a.count == n || count == my_str.count {
            result += [String(a)]
            a = []
        }
    }
    
    return result
}