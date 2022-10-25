import Foundation

func solution(_ score:[[Int]]) -> [Int] {
    
    var resultArray: [Double] = []
    var a: Double = 0
    var count: Int = 1
    var result: [Int] = []
    
    for i in score {
        for j in i {
            a += Double(j)
        }
        a /= 2
        resultArray += [a]
        a = 0
    }
    
    var sortArray: [Double] = resultArray.sorted(by: >)
    
    for i in resultArray {
        for j in sortArray {
            if i < j {
                count += 1
            } else if i == j {
                result += [count]
                break
            }
        }
        count = 1
    }
    
    return result
}