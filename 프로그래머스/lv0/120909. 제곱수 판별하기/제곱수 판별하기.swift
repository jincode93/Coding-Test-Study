import Foundation

func solution(_ n:Int) -> Int {
    return sqrt(Double(n)) - floor(sqrt(Double(n))) == 0 ? 1 : 2
}