//
//  CountCharInString.swift
//  test
//
//  Created by Palash Roy on 7/17/24.
//

import Foundation

func updateStringCount(str: String) {
    var result = ""
    var arr: [Character] = []
    var dict: [Character: Int] = [:]
    var last = ""
    for i in str {
        if dict[i] == nil {
            dict[i] = 1
            arr.append(i)
        } else {
            dict[i] = dict[i]! + 1
        }
    }
    //print result
    for val in arr {
        guard let x = dict[val] else { break }
        result = "\(result)\(val)\(x)"
    }
    print(result)
}

updateStringCount(str: str)
