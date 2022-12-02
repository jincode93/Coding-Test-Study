func solution(_ s:String) -> Bool {
    return (s.count == 4 || s.count == 6) && (s.compactMap{ Int(String($0)) }.map { String($0) }.joined(separator: "") == s)
}