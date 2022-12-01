func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    return arr.filter{ $0 % divisor == 0 }.count >= 1 ? arr.filter{ $0 % divisor == 0 }.sorted() : [-1]
}