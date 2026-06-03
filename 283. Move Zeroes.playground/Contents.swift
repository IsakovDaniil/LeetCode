import UIKit

// MARK: - Solution

func moveZeroes(_ nums: inout [Int]) {
    var write = 0

    for num in nums {
        if num != 0 {
            nums[write] = num
            write += 1
        }
    }

    while write < nums.count {
        nums[write] = 0
        write += 1
    }
}

// MARK: - Examples

var nums1 = [0, 1, 0, 3, 12]
moveZeroes(&nums1)
print(nums1)
// [1, 3, 12, 0, 0]

var nums2 = [0]
moveZeroes(&nums2)
print(nums2)
// [0]

var nums3 = [1, 0, 0, 3, 0]
moveZeroes(&nums3)
print(nums3)
// [1, 3, 0, 0, 0]
