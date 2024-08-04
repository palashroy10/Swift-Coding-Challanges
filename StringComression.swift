//
//  StringComression.swift
//  test
//
//  Created by Palash Roy on 8/4/24.
//

import Foundation

func compress(_ chars: inout [Character]) -> Int {
    guard var lastChar = chars.first else { return 0 }
    var res: String = "\(lastChar)"
    var counter = 0
    for char in chars {
        if char == lastChar {
            counter += 1
        } else {
            if counter != 1 {
                res += "\(counter)"
            }
            counter = 1
            res.append(char)
        }
        lastChar = char
    }
    if counter != 1 {
        res += "\(counter)"
    }
    chars = Array(res)
    return res.count
}
