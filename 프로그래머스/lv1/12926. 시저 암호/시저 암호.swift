func solution(_ s:String, _ n:Int) -> String {

    // 아스키코드로 변환한 배열
    var a: [Int] = s.map{ Int(UnicodeScalar(String($0))!.value) }
    
    for i in 0..<a.count {
        if a[i] >= 65 && a[i] <= 90 {
            a[i] -= 65
            a[i] += n
            a[i] %= 26
            a[i] += 65
        } else if a[i] >= 97 {
            a[i] -= 97
            a[i] += n
            a[i] %= 26
            a[i] += 97
        }
    }
    
    var result: [String] = a.map{ String(UnicodeScalar($0)!) }
    
    return result.joined(separator: "")
}