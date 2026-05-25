import UIKit

func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
    let left = searchLeft(nums, target)
    let right = searchRight(nums, target)
    
    return [left, right]
}

func searchLeft(_ nums: [Int], _ target: Int) -> Int {
    var low = 0
    var high = nums.count - 1
    var result = -1
    
    while low <= high {
        let mid = low + (high - low) / 2
        let guess = nums[mid]
        
        if guess == target {
            result = mid
            high = mid - 1
        } else if guess > target {
            high = mid - 1
        } else {
            low = mid + 1
        }
    }
    return result
}

func searchRight(_ nums: [Int], _ target: Int) -> Int {
    var low = 0
    var high = nums.count - 1
    var result = -1
    
    while low <= high {
        let mid = low + (high - low) / 2
        let guess = nums[mid]
        
        if guess == target {
            result = mid
            low = mid + 1
        } else if guess > target {
            high = mid - 1
        } else {
            low = mid + 1
        }
    }
    return result
}

print(searchRange([5,7,7,8,8,10], 8))
