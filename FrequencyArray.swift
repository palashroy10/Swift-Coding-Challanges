//
//  FrequencyArray.swift
//  test
//
//  Created by Palash Roy on 8/1/24.
//

import Foundation

// Find unique frequency in an array, given [1,2,2,3,3,3,4,4,4] -> yes..as 1->1 times, 2 ->2time,3-> 3 times and 4 -> 4 times all occurences are unique, hence true.


func findUniqueFrequency(_ arr: [Int]) -> Bool {
    var freqDict: [Int : Int] = [:]
    
    for num in arr {
        if let val = freqDict[num] {
            freqDict[num] = val+1
        } else {
            freqDict[num] = 1
        }
    }
    
    if (freqDict.values).count == Set<Int>(freqDict.values).count {
        return true
    } else {
        return false
    }
}


