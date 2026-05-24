import UIKit

let grid = [
    [4,3,2,-1],
    [3,2,1,-1],
    [1,1,-1,-2],
    [-1,-1,-2,-3]
]


func countNegatives(_ grid: [[Int]]) -> Int {
    var count = 0
    
    for row in grid {
        var low = 0
        var high = row.count - 1
        var firstNeg = row.count
        
        while low <= high {
            let mid = low + (high - low) / 2
            let guess = row[mid]
            
            if guess < 0 {
                firstNeg = mid
                high = mid - 1
            } else {
                low = mid + 1
            }
        }
        count += row.count - firstNeg
    }
    return count 
}
