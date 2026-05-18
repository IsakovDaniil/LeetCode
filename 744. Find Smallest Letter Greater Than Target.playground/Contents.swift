import UIKit

let letters: [Character] = ["c","f","j"]
let target: Character = "a"

func nextGreatestLetter(_ letters: [Character], _ target: Character) -> Character {
    var low = 0
    var high = letters.count
    
    while low < high {
        let mid = low + (high - low) / 2
        
        if letters[mid] > target {
            high = mid
        } else {
            low = mid + 1
        }
    }
    return letters[low % letters.count]
}


print(nextGreatestLetter(letters, target))
