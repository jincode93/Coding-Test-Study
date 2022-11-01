import Foundation

func solution(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {
    
    var result: [Int] = [(denum1 * num2) + (denum2 * num1), num1 * num2]
    
    func gcd(_ a: Int, _ b: Int) -> Int {
        if b == 0 {
            return a
        } else {
            return gcd(b, a%b)
        }
    }
    
    var gcdNum: Int = gcd(result[0], result[1])
    
    result[0] /= gcdNum
    result[1] /= gcdNum
    
    return result
}