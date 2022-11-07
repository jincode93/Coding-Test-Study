import Foundation

func solution(_ balls:Int, _ share:Int) -> Int {
    
    var a: Double = 1
    var b: Double = 1
    var c: Int = share + 1
    var d: Int = balls - share
    
    if balls == share {
        
        return 1
        
    } else {
        
        for i in c...balls {
        a *= Double(i)
        }
    
        for i in 1...d {
            b *= Double(i)
        }
    
        return Int(a / b)
    }
}