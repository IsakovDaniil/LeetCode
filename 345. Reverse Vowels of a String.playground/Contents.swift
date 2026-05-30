import UIKit

var greeting = "Hello, playground"


func reverseVowels(_ s: String) -> String {
    let vowels: Set<Character> =  ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    var arr = Array(s)
    var left = 0
    var right = arr.count - 1
    
    while left < right {
        while left < right && !vowels.contains(arr[left]) {
            left += 1
        }
        
        while left < right && !vowels.contains(arr[right]) {
            right -= 1
        }
        arr.swapAt(left, right)
        left += 1
        right -= 1
    }
    return String(arr)
}
