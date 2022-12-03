func solution(_ arr:[Int]) -> [Int] {
//     var min: Int = 100000
//     var index: Int = 0
//     var result: [Int] = arr
    
//     if arr.count < 2 {
//         return [-1]
//     } else {
//         for i in 0..<arr.count {
//             if arr[i] < min {
//                 min = arr[i]
//                 index = i
//             }
//         }
        
//         result.remove(at: index)
        
//         return result
//     }
    let min: Int = arr.min() ?? 0
    let resultArray: [Int] = arr.filter{ $0 != min }
    return resultArray == [] ? [-1] : resultArray
}