import UIKit

// MARK: - Solution

func productExceptSelf(_ nums: [Int]) -> [Int] {
    let n = nums.count
    var answer = [Int](repeating: 1, count: n)
    var left = 1
    var right = 1

    for i in 0..<n {
        answer[i] = left
        left = left * nums[i]
    }

    for i in (0..<n).reversed() {
        answer[i] = answer[i] * right
        right = right * nums[i]
    }

    return answer
}

// MARK: - Examples

let nums1 = [1, 2, 3, 4]
print(productExceptSelf(nums1))
// [24, 12, 8, 6]

let nums2 = [-1, 1, 0, -3, 3]
print(productExceptSelf(nums2))
// [0, 0, 9, 0, 0]
