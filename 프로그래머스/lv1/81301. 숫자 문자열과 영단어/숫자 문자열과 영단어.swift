import Foundation

func solution(_ s:String) -> Int {
//     var arr: [String] = s.map{ String($0) }
//     var result: [String] = []

//     while arr.count > 0 {
//         if arr[0] == "z" {
//             arr.removeFirst(4)
//             result.append("0")
//         } else if arr[0] == "o" {
//             arr.removeFirst(3)
//             result.append("1")
//         } else if arr[0] == "t" {
//             if arr[1] == "w" {
//                 arr.removeFirst(3)
//                 result.append("2")
//             } else {
//                 arr.removeFirst(5)
//                 result.append("3")
//             }
//         } else if arr[0] == "f" {
//             if arr[1] == "o" {
//                 arr.removeFirst(4)
//                 result.append("4")
//             } else {
//                 arr.removeFirst(4)
//                 result.append("5")
//             }
//         } else if arr[0] == "s" {
//             if arr[1] == "i" {
//                 arr.removeFirst(3)
//                 result.append("6")
//             } else {
//                 arr.removeFirst(5)
//                 result.append("7")
//             }
//         } else if arr[0] == "e" {
//             arr.removeFirst(5)
//             result.append("8")
//         } else if arr[0] == "n" {
//             arr.removeFirst(4)
//             result.append("9")
//         } else {
//             result.append(arr[0])
//             arr.removeFirst()
//         }
//     }

//     return Int(result.joined(separator: ""))!
    
    let arr: [String] = ["zero","one","two","three","four","five","six","seven","eight","nine"]
    var str: String = s
    for i in 0..<arr.count {
        str = str.replacingOccurrences(of: arr[i], with: String(i))
    }
    return Int(str)!
}