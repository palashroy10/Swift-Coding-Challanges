//
//  GroupAnagram.swift
//  test
//
//  Created by Palash Roy on 8/2/24.
//

import Foundation
/*
 
 Given an array of strings strs, group the anagrams together. You can return the answer in any order.

 An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

  

 Example 1:

 Input: strs = ["eat","tea","tan","ate","nat","bat"]
 Output: [["bat"],["nat","tan"],["ate","eat","tea"]]
 Example 2:

 Input: strs = [""]
 Output: [[""]]
 Example 3:

 Input: strs = ["a"]
 Output: [["a"]]
 */
// This one is O(N^2) but takes more time
func groupAnagrams(_ strs: [String]) -> [[String]] {
    var midDict: [[Character: Int]: [String]] = [:]
    for str in strs{
        var dict1: [Character:Int] = [:]
        for char in str {
            dict1[char, default: 0] += 1
        }
        midDict[dict1, default: []].append(str)
    }
    return Array(midDict.values)
    
}
// this one is O(N^2logN) but its is faster as per leetcode execution time
func groupAnagrams2(_ strs: [String]) -> [[String]] {
       var midDict: [String: [String]] = [:]
        for str in strs{
            let str1 = String(str.lowercased().sorted())
            midDict[str1, default: []].append(str)
        }
        return Array(midDict.values)
    }

//print(groupAnagrams(["eat","tea","tan","ate","nat","bat"]))
