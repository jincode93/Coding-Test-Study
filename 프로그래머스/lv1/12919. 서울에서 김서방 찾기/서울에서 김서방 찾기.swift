func solution(_ seoul:[String]) -> String {
    var result: String = ""
    
    if let a = seoul.firstIndex(of: "Kim") {
        result = "김서방은 \(a)에 있다"
    }
    
    return result
}