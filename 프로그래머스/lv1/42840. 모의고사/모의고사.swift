import Foundation

func solution(_ answers:[Int]) -> [Int] {
    
    var answer1: [Int] = [1,2,3,4,5]
    var answer2: [Int] = [2,1,2,3,2,4,2,5]
    var answer3: [Int] = [3,3,1,1,2,2,4,4,5,5]
    var count1: Int = 0
    var count2: Int = 0
    var count3: Int = 0
    var max: Int = 0
    var result: [Int] = []
    
    for i in 0..<answers.count {
        if answers[i] == answer1[i%5] {
            count1 += 1
        }
        
        if answers[i] == answer2[i%8] {
            count2 += 1
        }
        
        if answers[i] == answer3[i%10] {
            count3 += 1
        }
    }
    
    if count1 > count2 {
        if count1 > count3 {
            result = [1]
        } else if count1 < count3 {
            result = [3]
        } else {
            result = [1, 3]
        }
    } else if count1 < count2 {
        if count2 > count3 {
            result = [2]
        } else if count2 < count3 {
            result = [3]
        } else {
            result = [2, 3]
        }
    } else {
        if count1 == count3 {
            result = [1,2,3]
        } else if count1 < count3 {
            result = [3]
        } else {
            result = [1, 2]
        }
    }
    
    return result
}