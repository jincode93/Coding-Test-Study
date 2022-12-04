import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result: [Int] = []
    
    for i in commands {
        var arr: [Int] = []
        for j in 0..<array.count {
            if j >= i[0]-1 && j <= i[1]-1 {
                arr.append(array[j])
            }
        }
        arr.sort()
        
        result.append(arr[i[2]-1])
    }
    
    return result
}