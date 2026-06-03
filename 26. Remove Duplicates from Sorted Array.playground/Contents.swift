import UIKit

func removeDuplicates(_ nums: inout [Int]) -> Int {
    if nums.isEmpty { return 0 }

    var write = 1

    for read in 1..<nums.count {
        if nums[read] != nums[write - 1] {
            nums[write] = nums[read]
            write += 1
        }
    }
    return write
}
