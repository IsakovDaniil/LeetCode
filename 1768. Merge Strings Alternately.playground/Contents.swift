import UIKit

let word1 = "abcd"
let word2 = "xcv"

func mergeAlternately(_ word1: String, _ word2: String) -> String {
    var counterOne = 0
    var counterTwo = 0
    var result = ""
    let arr1 = Array(word1)
    let arr2 = Array(word2)
    
    while counterOne < arr1.count || counterTwo < arr2.count {
        
        if counterOne < arr1.count {
            result.append(arr1[counterOne])
            counterOne += 1
        }
        
        if counterTwo < arr2.count {
            result.append(arr2[counterTwo])
            counterTwo += 1
        }
    }
    return result
}

print(mergeAlternately(word1, word2))
