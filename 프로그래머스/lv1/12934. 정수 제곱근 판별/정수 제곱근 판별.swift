import Foundation

func solution(_ n: Int64) -> Int64 {
    return sqrt(Double(n)) - floor(sqrt(Double(n))) != 0 ? -1 : Int64(pow(sqrt(Double(n)) + 1, 2))
}