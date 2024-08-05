//
//  MaxVowelsInSubstring.swift
//  test
//
//  Created by Palash Roy on 8/4/24.
//


//Sliding window problem

import Foundation

/*
 
 Given a string s and an integer k, return the maximum number of vowel letters in any substring of s with length k.

 Vowel letters in English are 'a', 'e', 'i', 'o', and 'u'.

  

 Example 1:

 Input: s = "abciiidef", k = 3
 Output: 3
 Explanation: The substring "iii" contains 3 vowel letters.
 Example 2:

 Input: s = "aeiou", k = 2
 Output: 2
 Explanation: Any substring of length 2 contains 2 vowels.
 Example 3:

 Input: s = "leetcode", k = 3
 Output: 2
 Explanation: "lee", "eet" and "ode" contain 2 vowels.
 */

func maxVowels(_ s: String, _ k: Int) -> Int {
    let ary = Array(s)
    var i = k
    let setVowles = Set(["a", "e", "i", "o", "u"])
    var maxcount: Int = 0
    for j in ary[0..<k] {
        maxcount += setVowles.contains(String(j)) ? 1 : 0
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
