import Foundation

func solution(_ polynomial:String) -> String {
    
     var a: [String] = polynomial.components(separatedBy: " ").filter { $0.contains("x") }
    // 자연수
    var b: Int = polynomial.components(separatedBy: " ").compactMap { Int(String($0)) }.reduce(0, +)
    
    // x항
    var c: Int = 0
    var result: String = ""
    
    for i in a {
        if i == "x" {
            c += 1
        } else {
            var d: String = i.compactMap { Int(String($0)) }.map { String($0) }.joined()
            c += Int(d) ?? 0  
        }
    }
    
    if b == 0 && c == 0 {
        result = "0"
    } else if b == 0 && c != 0 {
        result = c == 1 ? "x" : "\(c)x"
    } else if b != 0 && c == 0 {
        result = "\(b)"
    } else if b != 0 && c != 0 {
        result = c == 1 ? "x + \(b)" : "\(c)x + \(b)"
    }
    
    return result
}