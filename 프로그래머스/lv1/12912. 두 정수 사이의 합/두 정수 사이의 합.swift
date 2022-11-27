func solution(_ a:Int, _ b:Int) -> Int64 {
    var max: Int = a > b ? a : b
    var min: Int = a > b ? b : a
    var result: Int64 = 0
    
    for i in min...max {
        result += Int64(i)
    }
    
    return result
}