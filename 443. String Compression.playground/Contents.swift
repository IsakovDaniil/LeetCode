import UIKit

func compress(_ chars: inout [Character]) -> Int {
    var currentChar: Character = chars[0]
    var count = 0
    var write = 0
    
    for i in 0..<chars.count {
        if chars[i] == currentChar {
            count += 1
        } else {
            chars[write] = currentChar
            write += 1
            
            if count > 1 {
                for digit in String(count) {
                    chars[write] = digit
                    write += 1
                }
            }
            
            currentChar = chars[i]
            count = 1
        }
    }
    
    chars[write] = currentChar
    write += 1
    
    if count > 1 {
        for digit in String(count) {
            chars[write] = digit
            write += 1
        }
    }
    
    return write
}
