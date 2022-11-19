import Foundation

func solution(_ spell:[String], _ dic:[String]) -> Int {
    return dic.map { String( $0.sorted()) }.contains(spell.sorted().joined()) ? 1 : 2
}