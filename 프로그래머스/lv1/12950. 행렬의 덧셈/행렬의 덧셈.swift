func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    
    var a: [Int] = arr1.flatMap{ $0 }
    var b: [Int] = arr2.flatMap{ $0 }
    var result: [[Int]] = []
    var x: [Int] = []
    
    for i in 0..<a.count {
        x.append(a[i] + b[i])
        
        if x.count == arr1[0].count {
            result.append(x)
            x = []
        }
    }
    
    return result
}