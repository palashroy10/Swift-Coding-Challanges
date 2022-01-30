//
//  Palindrome.swift
//  InterviewStudy
//
//  Created by Palash Roy on 30/01/22.
//

import Foundation
/// Check if a word or sentence is palindrome

////Palindrome of String
func checkPalindrome(_ somestring: String) -> Bool {
    if String(somestring.reversed()) == somestring {
        return true
    } else {
        return false
    }
}

//print(checkPalindrome("able was i ere i saw elba"))
