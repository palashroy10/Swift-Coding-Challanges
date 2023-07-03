//
//  Test2.swift
//  test
//
//  Created by Palash Roy on 7/2/23.
//

import Foundation

/*
 Given a string write a function to check if the permutation of the string is a palindrome
 E.g: "taco cat" is a palindrome like "cato cat"
 */

func checkPalindromePermutation(str: String) {
    
    var strArr = Array(str)
    strArr.removeAll { $0 == " " }
    var dict: [Character: Int] = [:]
    for i in strArr {
        if let val = dict[i] {
            dict[i] = val + 1
        } else {
            dict[i] = 1
        }
    }
    var totalModVal = 0
    for val in dict.values  {
        totalModVal += val % 2
    }
    if totalModVal == 0 || totalModVal == 1 {
        print("palindrome")
    } else {
        print("Not palindrome")
    }
}
