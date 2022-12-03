import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
//     var sum: Int = 0
//     var count: Int = 0
//     let sortD: [Int] = d.sorted()
    
//     if budget > d.reduce(0,+) {
//         return d.count
//     } else {
//         while sum < budget {
//             sum += sortD[count]
//             count += 1
//         }

//         if sum > budget {
//             count -= 1
//         }

//         return count
//     }
    
    var sortD: [Int] = d.sorted()
    var count: Int = 0
    var bud: Int = budget
    
    while sortD.count > 0 {
        count += 1
        if sortD.count != 1 {
        bud -= sortD.removeFirst()
        } else {
            bud -= sortD[0]
            sortD = []
        }
        if bud < 0 {
            count -= 1
            break
        }
    }
    
    return count
}