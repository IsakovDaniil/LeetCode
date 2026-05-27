import UIKit

func gcdOfStrings(_ str1: String, _ str2: String) -> String {
    // Проверка: если строки не "совместимы", общего делителя нет
    if str1 + str2 != str2 + str1 {
        return ""
    }
    
    // НОД длин строк
    let x = gcd(str1.count, str2.count)
    
    // Берём префикс длины НОД - это и есть ответ
    return String(str1.prefix(x))
}

// Евклидов алгоритм для НОД
func gcd(_ a: Int, _ b: Int) -> Int {
    b == 0 ? a : gcd(b, a % b)
}

// MARK: - Example

let str1 = "ABCABC"
let str2 = "ABC"

let result = gcdOfStrings(str1, str2)
print("Result:", result) // Output: "ABC"
