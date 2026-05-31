import UIKit

// MARK: - Solution

func reverseWords(_ s: String) -> String {
    s.split(separator: " ").reversed().joined(separator: " ")
}

// MARK: - Examples

let s1 = "the sky is blue"
print(reverseWords(s1))
// "blue is sky the"

let s2 = "  hello world  "
print(reverseWords(s2))
// "world hello"

let s3 = "a good   example"
print(reverseWords(s3))
// "example good a"
