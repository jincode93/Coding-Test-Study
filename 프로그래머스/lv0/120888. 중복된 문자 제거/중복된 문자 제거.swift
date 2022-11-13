import Foundation

func solution(_ my_string:String) -> String {
    
    var arr: [String] = my_string.map { String($0) }
    var resultArray: [String] = []
    
    while arr.count > 0 {
        var a: String = arr.removeFirst()
        
        if !resultArray.contains(a) {
            resultArray.append(a)
        }
    }
    
    return resultArray.joined(separator: "")
}