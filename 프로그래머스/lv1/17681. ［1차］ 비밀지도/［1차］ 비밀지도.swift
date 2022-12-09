func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    var reArr1: [[String]] = arr1.map{String($0, radix: 2) }.map { a in a.map{ String($0) } }
    
    var reArr2: [[String]] = arr2.map{String($0, radix: 2) }.map { a in a.map{ String($0) } }

    for i in 0..<reArr1.count {
        while reArr1[i].count < n {
            reArr1[i].insert("0", at: 0)
        }
        
        while reArr2[i].count < n {
            reArr2[i].insert("0", at: 0)
        }
    }
    
    for i in 0..<n {
        var str: String = ""
        for j in 0..<n {
            if reArr1[i][j] == "1" || reArr2[i][j] == "1" {
                str += "#"
            } else {
                str += " "
            }
        }
        answer.append(str)
    }
    
    return answer
}