import Foundation

func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
    
    var result: Int = 0
    for n in i...j {
        result += String(n).map{ String($0) }.filter{ $0 == String(k) }.count
    }
    return result
}