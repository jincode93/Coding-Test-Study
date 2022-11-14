import Foundation

func solution(_ my_string:String) -> Int {
    
    var arr: [String] = my_string.components(separatedBy: " ")
    var a: String = ""
    
    while arr.count > 1 {
        if arr[1] == "+" {
            a = String((Int(arr[0]) ?? 0) + (Int(arr[2]) ?? 0))
        } else {
            a = String((Int(arr[0]) ?? 0) - (Int(arr[2]) ?? 0))
        }
        
        arr.removeFirst()
        arr.removeFirst()
        arr.removeFirst()
        
        arr.insert(a, at: 0)
    }
    
    return Int(arr[0]) ?? 0
}