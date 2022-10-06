import Foundation

func solution(_ my_string:String) -> String {
    
    var myArray: [Character] = []
    let upperString: String = my_string.uppercased()
    var upperArray: [Character] = []
    var resultArray: [Character] = []
    var result: String = ""
    
    for i in my_string {
        myArray += [i]
    }
    
    for i in upperString {
        upperArray += [i]
    }
    
    for i in 0...(myArray.count-1) {
        if myArray[i] == upperArray[i] {
            resultArray += myArray[i].lowercased()
        } else {
            resultArray += myArray[i].uppercased()
        }
    }
    
    for i in resultArray {
        result += String(i)
    }
    
    
    return result
}