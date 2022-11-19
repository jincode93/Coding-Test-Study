import Foundation

func solution(_ chicken:Int) -> Int {
    
    var coupon = chicken
    var service = 0
    var serviceCoupon = 0
    
    while coupon >= 10 {
        service += coupon / 10
        serviceCoupon = coupon / 10
        coupon %= 10
        coupon += serviceCoupon
    }
    
    return service
}