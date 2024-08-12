//
//  MoveZeroes.swift
//  test
//
//  Created by Palash Roy on 8/7/24.
//

import Foundation

func moveZeroes(_ nums: inout [Int]) {
    var pointerA = 0
    var pointerB = 0
    
    while pointerA < nums.count {
        if nums[pointerA] != 0 {
            let temp = nums[pointerA]
            nums[pointerA] = nums[pointerB]
            nums[pointerB] = temp
            pointerB += 1
        }
        pointerA += 1
    }
    print(nums)
}

func isSubsequence(_ s: String, _ t: String) -> Bool {
    var pA = 0
    var pB = 0
    let sAry = Array(s)
    let tAry = Array(t)
    var flag = false
    while pA < s.count && pB < t.count {
        if sAry[pA] == tAry[pB] {
            pA += 1
            flag = true
        }
        pB += 1
    }
    return pA == s.count ? flag : false
}

//([3,1,3,4,3], 6)
func maxOperations(_ nums: [Int], _ k: Int) -> Int {
    var count = 0
    var dict: [Int : [Int]] = [:]
    for  i in 0..<nums.count {
        let diff = k - nums[i]
        if var val:[Int] = dict[nums[i]] {
            count += 1
            val.removeLast()
            if val.isEmpty {
                dict.removeValue(forKey: nums[i])
            } else {
                dict[nums[i]] = val
            }
        } else {
            if var val: [Int] = dict[diff] {
                val.append(i)
                dict[diff] = val
            } else {
                dict[diff] = [i]
            }
        }
    }
    return count
}

func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
    var a: [Character] = []
    var b: [Character] = []
    if text1.count > text2.count {
        a = Array(text1)
        b = Array(text2)
    } else {
        a = Array(text2)
        b = Array(text1)
    }
    var i = 0
    var j = 0
    var count = 0
    
    var x = Array(repeating: 1, count: 5)
    while i < a.count && j < b.count {
        print(a[i])
        print(b[j])
        print("-----")
            if a[i] == b[j] {
                i += 1
                j += 1
                count += 1
            } else if i < j {
                i += 1;
            } else {
                j += 1
            }
        }
    return count
}

