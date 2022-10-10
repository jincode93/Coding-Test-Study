import Foundation

func solution(_ cipher:String, _ code:Int) -> String {
    
    var cipherArray: [Character] = []
    var indexArray: [Int] = []
    var result: String = ""
    
    for i in cipher {
        cipherArray += [i]
    }
    
    for i in 1...cipherArray.count {
        if (i % code) == 0 {
            indexArray += [i-1]
        } 
    }
    
    for i in indexArray {
        result += String(cipherArray[i])
    }
    
    return result
}