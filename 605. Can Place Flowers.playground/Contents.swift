import UIKit

// MARK: - Solution

func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
    var flowerbed = flowerbed
    var count = 0

    for i in 0..<flowerbed.count {
        let isEmpty    = flowerbed[i] == 0
        let leftEmpty  = i == 0 || flowerbed[i - 1] == 0
        let rightEmpty = i == flowerbed.count - 1 || flowerbed[i + 1] == 0

        if isEmpty && leftEmpty && rightEmpty {
            flowerbed[i] = 1
            count += 1
        }
    }
    return count >= n
}

// MARK: - Examples

let flowerbed1 = [1, 0, 0, 0, 1]
let n1 = 1
print(canPlaceFlowers(flowerbed1, n1))
// true

let flowerbed2 = [1, 0, 0, 0, 1]
let n2 = 2
print(canPlaceFlowers(flowerbed2, n2))
// false

let flowerbed3 = [0, 0, 1, 0, 0]
let n3 = 1
print(canPlaceFlowers(flowerbed3, n3))
// true
