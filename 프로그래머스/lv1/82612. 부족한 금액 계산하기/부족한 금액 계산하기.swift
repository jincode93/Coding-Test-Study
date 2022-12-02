import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var a = (1...count).map{ $0 * price }.reduce(0, +)
    
    return a < money ? Int64(0) : Int64(a - money)
}