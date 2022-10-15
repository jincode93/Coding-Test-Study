import Foundation

func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {
    
    var result: [Int] = [0, 0]
    let x: Int = board[0] / 2
    let y: Int = board[1] / 2
    
    for i in keyinput {
        switch i {
            case "left":
                result[0] -= 1
            case "right":
                result[0] += 1
            case "up":
                result[1] += 1
            case "down":
                result[1] -= 1
            default:
                return [0]
        }
        
        if result[0] > x {
            result[0] = x
        } else if result[0] < -x {
            result[0] = -x
        }
        
        if result[1] > y {
            result[1] = y
        } else if result[1] < -y {
            result[1] = -y
        }
        
    }
    
    return result
}