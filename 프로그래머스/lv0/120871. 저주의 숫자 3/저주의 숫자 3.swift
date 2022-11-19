import Foundation

func solution(_ n:Int) -> Int {
    
    var a: [Int] = (1...300).filter { ($0 % 3 != 0) && !String($0).map { String($0) }.contains("3") }
    
    return a[n-1]
}