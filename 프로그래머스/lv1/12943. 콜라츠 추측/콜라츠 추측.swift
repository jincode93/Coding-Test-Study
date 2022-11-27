func solution(_ num:Int) -> Int {
    var a: Int = num
    var count: Int = 0
    
    while a != 1 {
        if a % 2 == 0 {
            a /= 2
        } else {
            a *= 3
            a += 1
        }
        
        count += 1
        
        if count == 500 {
            count = -1
            a = 1
        }
    } 
    
    return count
}