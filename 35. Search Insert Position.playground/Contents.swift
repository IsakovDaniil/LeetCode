import UIKit

let nums = [1,3,5,6]
let target = 7

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    var low = 0
    var high = nums.count - 1
    
    while low <= high {
        let mid = (low + high) / 2
        let guess = nums[mid]
        
        if guess == target {
            return mid
        } else if guess < target {
            low = mid + 1
        } else {
            high = mid - 1
        }
    }
    return low
}

print(searchInsert(nums, target))
