import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var sum: Int = 0
    var count: Int = 0
    let sortD: [Int] = d.sorted()
    
    if budget > d.reduce(0,+) {
        return d.count
    } else {
        while sum < budget {
            sum += sortD[count]
            count += 1
        }

        if sum > budget {
            count -= 1
        }

        return count
    }
}