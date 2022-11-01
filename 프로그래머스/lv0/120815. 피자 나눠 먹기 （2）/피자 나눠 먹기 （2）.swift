import Foundation

func solution(_ n:Int) -> Int {
    
    func gcd(_ a: Int, _ b: Int) -> Int {
        if b == 0 {
            return a
        } else {
            return gcd(b, a%b)
        }
    }
    
    func lcm(_ a: Int, _ b: Int) -> Int {
        return a * b / gcd(a, b)
    }
    
    return lcm(n, 6) / 6
}