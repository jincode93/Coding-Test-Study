import Foundation

func solution(_ dots:[[Int]]) -> Int {

    var a: Bool = (Double(dots[0][1] - dots[1][1]) / Double(dots[0][0] - dots[1][0])) == (Double(dots[2][1] - dots[3][1]) / Double(dots[2][0] - dots[3][0]))
    var b: Bool = (Double(dots[0][1] - dots[2][1]) / Double(dots[0][0] - dots[2][0])) == (Double(dots[1][1] - dots[3][1]) / Double(dots[1][0] - dots[3][0]))
    var c: Bool = (Double(dots[0][1] - dots[3][1]) / Double(dots[0][0] - dots[3][0])) == (Double(dots[1][1] - dots[2][1]) / Double(dots[1][0] - dots[2][0]))
    
    if a == true || b == true || c == true {
        return 1
    } else {
        return 0
    }
}