import Foundation

func solution(_ my_string:String, _ letter:String) -> String {
    
    var result: String = ""
    
    for i in my_string {
        if !(String(i) == letter) {
            result += String(i)
        } 
    }
    
    return result
}