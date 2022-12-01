import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    return (0..<a.count).map { a[$0] * b[$0] }.reduce(0, +)
}