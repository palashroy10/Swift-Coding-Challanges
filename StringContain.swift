//
//  StringContain.swift
//  InterviewStudy
//
//  Created by Palash Roy on 30/01/22.
//

import Foundation

//write contain method without using contains()
func doesStringContains(string1: String, string2: String) -> Bool {
    let count2: Int = string2.count
    let count1: Int = string1.count
    var res: Bool = false
    let chars2 = string2.compactMap({$0})
    if count2 > count1 {
        return false
    } else {
        var k:Int = 0
        for i in string1 {
            if k < count2 {
                let j = chars2[k]
                if i == j {
                    print("i = \(i) && j = \(j)")
                    res =  true
                    k += 1
                    continue
                } else {
                    k = 0
                    let j = chars2[k]
                    print("i = \(i) && j = \(j)")
                    if i == j {
                        k += 1
                        res =  true
                        continue
                    } else {
                        res = false
                    }
                }
            } else {
                //res = false
                break
            }
        }
        print(k)
        if k != count2 {
            res = false
        }
    }

    return res
}

//print(doesStringContains(string1: "Hello", string2: "Helo"))

//contain without contain()
//func doesStringContains(string1: String, string2: String) -> Bool {
//    let z = string2.range(of: string1)
//    if z != nil{
//        return true
//    }
//    return false
//}
//print(doesStringContains(string1: "He", string2: "Hello"))
