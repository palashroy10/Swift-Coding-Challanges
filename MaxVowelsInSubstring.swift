//
//  MaxVowelsInSubstring.swift
//  test
//
//  Created by Palash Roy on 8/4/24.
//


//Sliding window problem

import Foundation

func maxVowels(_ s: String, _ k: Int) -> Int {
    let ary = Array(s)
    var i = k
    let setVowles = Set(["a", "e", "i", "o", "u"])
    var maxcount: Int = 0
    for j in 0..<k {
        maxcount += setVowles.contains(String(ary[j])) ? 1 : 0
    }
    var lastcount = maxcount
    while i < ary.count {
        var tempCount = lastcount - (setVowles.contains(String(ary[i-k])) ? 1 : 0)
        var newcount = tempCount + (setVowles.contains(String(ary[i])) ? 1 : 0)
        lastcount = newcount
        maxcount = maxcount > newcount ? maxcount : newcount
        i += 1
    }
    return maxcount
}
