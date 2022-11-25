func solution(_ x:Int, _ n:Int) -> [Int64] {
    
    var result: [Int] = []
    var a: Int = 1
    
    while result.count != n {
        result.append(a * x)
        a += 1
    }
    
    return result.map{ Int64($0) }
}