import Foundation

func solution(_ numlist:[Int], _ n:Int) -> [Int] {
    
    var numlistArray: [[Int]] = numlist.map{ [(n - $0) > 0 ? (n - $0) : (n - $0) * -1, $0] }
    // var result: [Int] = []
    
    numlistArray.sort(by: { $0[0] == $1[0] ? $0[1] > $1[1] : $0[0] < $1[0] })
    
    // for i in numlistArray {
    //     result += [i[1]]
    // }
    
    return numlistArray.map { $0[1] }
}