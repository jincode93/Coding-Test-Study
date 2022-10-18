import Foundation

func solution(_ sides:[Int]) -> Int {
    
    let sidesSort: [Int] = sides.sorted()
    
    return sidesSort[0] + (sidesSort[0] - 1)
}