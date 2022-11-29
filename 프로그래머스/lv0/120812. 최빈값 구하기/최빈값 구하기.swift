import Foundation

func solution(_ array:[Int]) -> Int {
    var dict = [Int:Int]()
    array.forEach { dict.keys.contains($0) ? (dict[$0]! += 1) : (dict[$0] = 1) }
    let ans = dict.filter { $1 == dict.values.max() }
    return ans.count == 1 ? (ans.first?.key)! : -1
}