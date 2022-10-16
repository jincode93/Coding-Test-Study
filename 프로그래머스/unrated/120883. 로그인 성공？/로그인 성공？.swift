import Foundation

func solution(_ id_pw:[String], _ db:[[String]]) -> String {
    
    var id: String = id_pw[0]
    var pw: String = id_pw[1]
    var result: String = ""
    
    for i in db {
        if i[0] == id && i[1] == pw {
            result = "login"
            break
        } else if i[0] == id {
            result = "wrong pw"
            break
        } else {
            result = "fail"
        }
    }
    
    return result
}