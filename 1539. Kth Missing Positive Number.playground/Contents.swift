import UIKit

func findKthPositive(_ arr: [Int], _ k: Int) -> Int {
    var low = 0
    var high = arr.count - 1
    
    while low <= high {
        let mid = low + (high - low) / 2
        let missing = arr[mid] - (mid  + 1)
        
        if missing >= k {
            high = mid - 1
        } else {
            low = mid + 1
        }
    }
    return low + k
}

print(findKthPositive([2,3,4,7,11], 5))
