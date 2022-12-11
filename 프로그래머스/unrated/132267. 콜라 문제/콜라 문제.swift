import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    
    var totalCoke : Int = 0
    var bottle: Int = n
    var addCoke: Int = 0
    
    while bottle >= a {
        addCoke = (bottle / a) * b // 추가로 받은 콜라
        bottle = bottle % a + addCoke // 남은 빈병 + 추가로 받은 콜라를 다 마신 빈병
        totalCoke += addCoke
    }
    
    return totalCoke
}