import Foundation

func solution(_ my_string:String) -> Int {
    
    var stringArray: [String] = my_string.map { String($0) }
    var intArray: [Int] = stringArray.compactMap { str in Int(str) }
    var result: Int = intArray.reduce(0) { $0 + $1 }
    
    return result
}