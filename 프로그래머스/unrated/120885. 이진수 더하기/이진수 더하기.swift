import Foundation

func solution(_ bin1:String, _ bin2:String) -> String {
    
    var a: Int = Int(bin1, radix: 2)!
    var b: Int = Int(bin2, radix: 2)!
    var result: String = String(a + b, radix: 2)
    
    if bin1 == "1" && bin2 == "1" {
        result = "10"
    }
    
    return result
}