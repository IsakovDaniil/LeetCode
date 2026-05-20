import UIKit

let numbers = [-1,0,3,5,9,12]
let target = 9

func search(_ nums: [Int], _ target: Int) -> Int {
    var low = 0
    var high = nums.count - 1
    
    while low <= high {
        let mid = (low + high) / 2
        let guess = nums[mid]
        
        if guess == target {
            return mid
        } else if guess > target {
            high = mid - 1
        } else {
            low = mid + 1
        }
    }
    return -1
}

print(search(numbers, target))
