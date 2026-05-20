import UIKit

func isPerfectSquare(_ num: Int) -> Bool {
    var low = 1
    var high = num
    
    while low <= high {
        let mid = low + (high - low) / 2
        let square = mid * mid
        
        if square == num {
            return true
        } else if square > num {
            high = mid - 1
        } else {
            low = mid + 1
        }
    }
    return false
}
