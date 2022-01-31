//
//  RemoveDuplicateChars.swift
//  InterviewStudy
//
//  Created by Palash Roy on 31/01/22.
//

import Foundation

// remove duplicate chars from string

func removeDuplicateChars(_ str: String) {
    let str = "Bookeeper"
    let newChar = str.reduce("" , {
        if $0.contains($1) {
            return "\($0)"
        } else {
          return "\($0)\($1)"
        }
    })

    print(str.replacingOccurrences(of: " ", with: ""))      //  "bokepr"
    print(newChar) //  "bokepr"
}
//
//    //another Approach
//

func approach2(_ str: String) {
    var set = Set<Character>()
    let squeezed = str.filter{ set.insert($0).inserted }
    print(set)
    print(squeezed)
}
    
