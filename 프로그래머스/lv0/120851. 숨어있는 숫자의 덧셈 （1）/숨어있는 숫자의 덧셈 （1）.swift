import Foundation

func solution(_ my_string:String) -> Int {
    
    return my_string.map { String($0) }.compactMap { str in Int(str) }.reduce(0,+)
}