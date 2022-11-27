func solution(_ phone_number:String) -> String {
    
    var count: Int = phone_number.count
    var result: [String] = Array(repeating: "*", count: count)
    var phone: [String] = phone_number.map{ String($0) }
    
    for i in (count - 4)...(count - 1) {
        result[i] = phone[i]
    }
    
    return result.joined(separator: "")
}