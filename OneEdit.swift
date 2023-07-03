//
//  OneEdit.swift
//  test
//
//  Created by Palash Roy on 7/2/23.
//

import Foundation

func checkOneEdit(str1: String, str2: String) {
    var i = 0
    let max = max(str1.count, str2.count)
    var k = 0
    while i < max {
        let char1 = i < str1.count ? Array(str1)[i] : str1.last
        let char2 = i < str2.count ? Array(str2)[i] : str2.last
        if char1 != char2 {
            k += 1
        }
        i += 1
    }
    if k > 1 {
        print("Multiple edits")
    } else {
        print("One Edit")
    }
}
