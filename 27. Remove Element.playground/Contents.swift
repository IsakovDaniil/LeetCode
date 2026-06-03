import UIKit

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    var write = 0
    
    for num in nums {
        if num != val {
            nums[write] = num
            write += 1
        }
    }
    return write
}
