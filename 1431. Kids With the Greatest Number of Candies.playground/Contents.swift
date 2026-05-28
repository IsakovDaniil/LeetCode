import UIKit

// MARK: - Solution

func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
    var result: [Bool] = []
    guard let max = candies.max() else { return [] }

    for candy in candies {
        if candy + extraCandies >= max {
            result.append(true)
        } else {
            result.append(false)
        }
    }
    return result
}

// MARK: - Examples

let candies1 = [2,3,5,1,3]
let extra1 = 3
print(kidsWithCandies(candies1, extra1))
// [true, true, true, false, true]

let candies2 = [4,2,1,1,2]
let extra2 = 1
print(kidsWithCandies(candies2, extra2))
// [true, false, false, false, false]

let candies3 = [12,1,12]
let extra3 = 10
print(kidsWithCandies(candies3, extra3))
// [true, false, true]
