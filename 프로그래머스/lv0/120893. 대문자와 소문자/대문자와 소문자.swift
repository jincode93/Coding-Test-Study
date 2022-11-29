import Foundation

func solution(_ my_string:String) -> String {
    
    var myArray: [String] = my_string.map{ String($0) }
    let upperArray: [String] = my_string.uppercased().map{ String($0) }
    var result: [Character] = []
    
    for i in 0...(myArray.count-1) {
        if myArray[i] == upperArray[i] {
            result += myArray[i].lowercased()
        } else {
            result += myArray[i].uppercased()
        }
    }
    
    return result.map{ String($0) }.joined(separator: "")
}