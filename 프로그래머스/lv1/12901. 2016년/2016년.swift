func solution(_ a:Int, _ b:Int) -> String {
    
    let arr: [String] = ["THU","FRI","SAT","SUN","MON","TUE","WED"]
    let mon: [Int] = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30]
    var day = b
    
    if a > 1 {
        day += mon[0...a-2].reduce(0, +)
    }
    
    return arr[day%7]
}