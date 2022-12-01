func solution(_ s:String) -> String {
    return s.count % 2 == 0 ? s.map { String($0) }[(s.count / 2 - 1)...(s.count / 2)].joined(separator: "") : String(s.map { String($0) }[s.count / 2])
}