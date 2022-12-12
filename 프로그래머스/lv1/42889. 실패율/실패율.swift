import Foundation

func solution(_ N:Int, _ stages:[Int]) -> Any {
    var sortStage: [Int] = stages.sorted()
    var resultArr: [(Int, Double)] = []
    var count2: Int = sortStage.count

    for i in 1...N {
        if sortStage.contains(i) {
            var count1: Int = 0
            var a: Int = sortStage.firstIndex(of: i)!

            for j in a..<sortStage.count {
                if sortStage[j] == i {
                    count1 += 1
                } else { break }
            }
            
            resultArr.append((i, Double(count1) / Double(count2)))
            
            count2 -= count1
        } else {
            resultArr.append((i,0))
        }
    }
    
    return resultArr.sorted{ $0.1 > $1.1 }.map{ $0.0 }
}