import UIKit

func isPalindrome(_ s: String) -> Bool {
    if s.isEmpty { return true }
    
    let cleaned = s.lowercased().filter { $0.isLetter || $0.isNumber }
    
    return cleaned == String(cleaned.reversed())
    
}
