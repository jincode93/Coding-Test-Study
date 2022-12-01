func solution(_ n:Int) -> String {
    var num: Int = n
    var str: String = String(repeating: "수박", count: num/2)
    
    return num % 2 == 0 ? str : str + "수"
}