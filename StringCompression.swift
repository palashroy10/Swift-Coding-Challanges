//
//  StringCompression.swift
//  test
//
//  Created by Palash Roy on 7/2/23.
//

import Foundation

func stringCompression(str: String) -> String {
    if str.count < 2 {
        return str
    }
    var finalStr: String = ""
    var lastChar: Character?
    var val = 1
    for c in str {
        if lastChar == c {
           val += 1
        } else if let char = lastChar {
            finalStr += "\(char)\(val)"
            val = 1
        }
        lastChar = c
    }
    if let char = lastChar, val>0 {
        finalStr += "\(char)\(val)"
    }
    return finalStr
}
