import Foundation

func solution(_ lines:[[Int]]) -> Int {
    
    let x: [Int] = lines.flatMap{ $0 }
    let a: Set<Int> = Set(x[0]...x[1])
    let b: Set<Int> = Set(x[2]...x[3])
    let c: Set<Int> = Set(x[4]...x[5])
    
    let abSet: Set<Int> = a.intersection(b)
    let bcSet: Set<Int> = b.intersection(c)
    let acSet: Set<Int> = a.intersection(c)
    
    let abcSet: Set<Int> = abSet.union(bcSet).union(acSet)
    
    if abSet.count > 1 && bcSet.count > 1 && acSet.count > 1 {
        return abcSet.count - 1
    } else {
        var x: Int = abSet.count > 0 ? abSet.count - 1 : 0
        var y: Int = bcSet.count > 0 ? bcSet.count - 1 : 0
        var z: Int = acSet.count > 0 ? acSet.count - 1 : 0
        return x + y + z
    }
}