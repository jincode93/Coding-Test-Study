import Foundation

func solution(_ strings:[String], _ n:Int) -> [String] {
    
    var dic: [Int:String] = [:]
    var sortedStr: [String] = strings.sorted()
    
    for i in 0..<sortedStr.count {
        dic[i] = sortedStr[i]
    }
    
    print(dic)
    
    var strs: [String] = []
    
    for i in sortedStr {
        for j in 0..<i.count {
            let a: [String] = i.map{ String($0) }
            
            if j == n {
                strs.append(String(a[j]))
            }
        }
    }
    
    var arr: [[String]] = []
    
    for i in 0..<strs.count {
        arr.append([String(i), strs[i]])
    }
    
    let sortedIndex: [Int] = arr.sorted{ $0[1] < $1[1] }.map{ Int($0[0])! }
    var result: [String] = []
    
    for i in sortedIndex {
        result.append(dic[i]!)
    }
    
    return result
}