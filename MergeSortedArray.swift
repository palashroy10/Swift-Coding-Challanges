//
//  MergeSortedArray.swift
//  test
//
//  Created by Palash Roy on 7/21/24.
//

import Foundation

func mergeSortedArray(arr1: [Int], arr2: [Int]) {
    var finalArr: [Int] = arr1 + arr2
    finalArr = finalArr.sorted()
    print(finalArr)
}

func mergeSortedArray2(arr1: [Int], arr2: [Int]) {
    var finalArr: [Int] = []
    var i = 0, j = 0
    while i < arr1.count || j < arr2.count {
        var val = 0
        
        if i < arr1.count &&  j < arr2.count {
            if arr1[i] < arr2[j] {
                val = arr1[i]
                i += 1
            } else {
                val = arr2[j]
                j += 1
            }
        } else if i < arr1.count {
            val = arr1[i]
            i += 1
        } else if j < arr2.count {
            val = arr2[j]
            j += 1
        }
        finalArr.append(val)
    }
    print(finalArr)
}

