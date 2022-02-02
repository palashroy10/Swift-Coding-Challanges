//
//  MaxSumofSubArray.swift
//  InterviewStudy
//
//  Created by Palash Roy on 01/02/22.
//

import Foundation

/// Here we need to find the subarray with max sum and it must be with atleast 1 element
/// if the array is [-2,2,5,-11,6] then the consecutive subarray with max sub will be [2,5] as its 7. others are[2] = 2, [-2,2] = 0 and [5,-11,6] = 0
///
/// Solution: Basically there are three types of solution
/// 1. a aontinuous array
/// 2. array with prev and current element
/// 3. only the element, i.e the biggest element

func sultionforMaxSum(array: [Int]) {
    var prevSum = array.first!
    var curSum = array.first!
    var contSum = array.first!
    var subArr = [array.first!]
    var final = [Int]()
    var isjump = false
    for i in 1...array.count-1 {
        curSum = array[i-1] + array[i]
        contSum = contSum + array[i]
        if contSum > curSum  && contSum > prevSum && contSum > array[i] {
            subArr.append(array[i])
            final = subArr
        }
        else if curSum > prevSum && curSum > array[i] {
            if isjump { // if one number is jumpled, and it was not contiguous anymore
                subArr.append(array[i-1]) // then add the prev one
                isjump = false
            }
            subArr.append(array[i])
            prevSum = curSum
            contSum = curSum
            final = subArr
        } else if curSum > prevSum && curSum < array[i] {
            subArr.removeAll()
            subArr.append(array[i])
            prevSum = array[i]
            final = subArr
            contSum = prevSum
        } else {
            contSum = 0
            subArr.removeAll()
            isjump = true
        }
    }
    print(final)
}

