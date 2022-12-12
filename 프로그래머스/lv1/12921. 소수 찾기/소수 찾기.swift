func solution(_ n:Int) -> Int {
    var arr: [Bool] = Array.init(repeating: false, count: n+1)
    var count: Int = 0
    

    for i in 2...n {
        if !arr[i] {
            count += 1
            
            for j in 1...n/i {
                arr[j*i] = true
            }
        }
    }
    
    return count
}