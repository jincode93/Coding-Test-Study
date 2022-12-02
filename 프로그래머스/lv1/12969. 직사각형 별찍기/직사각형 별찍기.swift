import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

let x: String = String(repeating: "*", count: a)

for i in 1...b {
    print(x)
}