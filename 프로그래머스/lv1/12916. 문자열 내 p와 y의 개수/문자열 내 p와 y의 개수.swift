import Foundation

func solution(_ s:String) -> Bool
{
    var str: String = s.lowercased()
    
    // [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
    return str.map{ String($0) }.filter{ $0 == "p" }.count != str.map{ String($0) }.filter{ $0 == "y" }.count ? false : true
}