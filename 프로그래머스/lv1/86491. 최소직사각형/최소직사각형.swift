import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    
    var size: [[Int]] = sizes
    
    for i in 0..<size.count {
        size[i] = size[i].sorted() 
    }
    
    var result: [Int] = size.flatMap{ $0 }
    var width: Int = 0
    var height: Int = 0
    
    for i in 0..<result.count {
        if i % 2 == 0 {
            if result[i] > width {
                width = result[i]
            }
        } else {
            if result[i] > height {
                height = result[i]
            }
        }
    }
    
    return width * height
}