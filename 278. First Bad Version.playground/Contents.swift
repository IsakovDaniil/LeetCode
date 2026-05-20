import UIKit

// Это заглушка — в реальной задаче LeetCode эта функция уже есть
// Менять bad чтобы тестировать разные случаи
let bad = 4
func isBadVersion(_ version: Int) -> Bool {
    return version >= bad
}

// Решение
func firstBadVersion(_ n: Int) -> Int {
    var low = 1
    var high = n
    var result = 0
    
    while low <= high {
        let mid = low + (high - low) / 2
        
        if isBadVersion(mid) {
            result = mid
            high = mid - 1
        } else {
            low = mid + 1
        }
    }
    return result
}

// Тесты
print(firstBadVersion(5))  // 4
print(firstBadVersion(1))  // 1
print(firstBadVersion(10)) // ?
