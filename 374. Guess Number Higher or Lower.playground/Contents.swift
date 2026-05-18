import UIKit


// Симулируем API LeetCode
nonisolated(unsafe) var pick = 6

func guess(_ num: Int) -> Int {
    if num == pick {
        return 0
    } else if num > pick {
        return -1
    } else {
        return 1
    }
}


// Решение
func guessNumber(_ n: Int) -> Int {
    var low = 1
    var high = n
    
    while low <= n {
        let mid = low + (high - low) / 2
        let result = guess(mid)
        
        if result == 0 {
            return mid
        } else if result < 1 {
            low = mid + 1
        } else {
            high = mid - 1
        }
    }
    return -1 // заглушка
}

pick = 6
print(guessNumber(10))
