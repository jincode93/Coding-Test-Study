import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }

var x: Int = 0

for j in n {
    x = j
}

for i in 1...x {
    var result: String = ""
    for _ in 1...i {
        result += "*"
    }
    print(result)
}