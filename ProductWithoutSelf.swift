//
//  ProductWithoutSelf.swift
//  InterviewStudy
//
//  Created by Palash Roy on 01/02/22.
//

import Foundation

/// An array given as [1,2,3,4] the product will be shown as [24,12,8,6] without using division and in O(n)
/// Here the product is avoiding the i'th value in multiplication

func solution(array: [Int]) -> [Int] {
    var res = [Int]()
    var leftSide = Array(repeating: 1, count: array.count)
    var rightSide = Array(repeating: 1, count: array.count)
    // calculate left side of i
    var dict = [Int:Int]()
    for i in 1...array.count-1{
            leftSide[i] = array[i-1] * leftSide[i-1]
    }
    // calculate rightside of the i
    for i in (0...array.count-2).reversed(){
            rightSide[i] = array[i+1] * rightSide[i+1]
    }
    // multiplying left and right
    for i in (0...array.count-1) {
        res.append(leftSide[i] * rightSide[i])
    }
    print(res)
    return res
}
