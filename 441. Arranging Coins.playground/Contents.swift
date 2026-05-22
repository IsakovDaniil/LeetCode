import UIKit

let coins = 3

func arrangeCoins(_ n: Int) -> Int {
    var low = 1
    var high = n
    var k = 0
    
    while low <= high {
        let mid = low + (high - low) / 2
        let sum = mid * (mid + 1) / 2
        
        if sum > n {
            high = mid - 1
        } else {
            low = mid + 1
            k = mid
        }
    }
    return k
}

print(arrangeCoins(3))
