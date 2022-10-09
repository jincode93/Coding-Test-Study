import Foundation

func solution(_ before:String, _ after:String) -> Int {
    
    var beforArray: [Character] = []
    var afterArray: [Character] = []
    
    for i in before {
        beforArray += [i]
    }
    
    for i in after {
        afterArray += [i]
    }
    
    beforArray.sort()
    afterArray.sort()
    
    if beforArray == afterArray {
        return 1
    } else {
        return 0
    }
}