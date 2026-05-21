import UIKit

func mySqrt(_ x: Int) -> Int {
    var low = 0
    var high = x
    var result = 0
    
    while low <= high {
        let mid = low + (high - low) / 2
        let square = mid * mid
        
        if square == x {
            return mid
        } else if square > x {
            high = mid - 1
        } else {
            result = mid
            low = mid + 1
        }
    }
    return result
}

