import Foundation

func solution(_ num:Int, _ k:Int) -> Int {
    
    let numString: String = String(num)
    var count: Int = 0
    var result: Int = 0
    
    for i in numString {
        count += 1
        if String(i) == String(k) {
            if result == -1 || result == 0 {
                result = count
            }
        }
        if result == 0 {
            result = -1
        }
    }
    
    return result
}