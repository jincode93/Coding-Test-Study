import Foundation

func solution(_ num:Int, _ k:Int) -> Int {
    return String(num).map{ Int(String($0))! }.contains(k) ? String(num).map{ Int(String($0))! }.firstIndex(of: k)! + 1 : -1
}