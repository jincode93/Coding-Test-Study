func solution(_ s:String) -> String {
    
    var arr: [String] = s.map{ String($0) }
    var count: Int = 0
    
    if arr[0] != " " {
        arr[0] = arr[0].uppercased()
        count = 2
    }
    
    for i in 1..<arr.count {
        
        if arr[i] == " " {
            count = 0
        } else {
            if arr[i-1] == " " {
                arr[i] = arr[i].uppercased()
                count = 2
            } else {
                if count % 2 == 1 {
                    arr[i] = arr[i].uppercased()
                    count += 1
                } else {
                    arr[i] = arr[i].lowercased()
                    count += 1
                }
            }
        }
    }
    
    return arr.joined(separator: "")
}