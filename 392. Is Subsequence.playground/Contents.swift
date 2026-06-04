import UIKit

func isSubsequence(_ s: String, _ t: String) -> Bool {
    if s.isEmpty { return true }
    
    var sIndex = 0
    var tIndex = 0
    
    var arrS = Array(s)
    var arrT = Array(t)
    
    while sIndex < arrS.count && tIndex < arrT.count {
        if arrS[sIndex] == arrT[tIndex] {
            sIndex += 1
            tIndex += 1
        } else {
            tIndex += 1
        }
    }
    return sIndex == arrS.count

}
