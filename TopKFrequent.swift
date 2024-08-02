//
//  TopKFrequent.swift
//  test
//
//  Created by Palash Roy on 8/2/24.
//

import Foundation

/*Given an array of strings words and an integer k, return the k most frequent strings.

Return the answer sorted by the frequency from highest to lowest. Sort the words with the same frequency by their lexicographical order.

 

Example 1:

Input: words = ["i","love","leetcode","i","love","coding"], k = 2
Output: ["i","love"]
Explanation: "i" and "love" are the two most frequent words.
Note that "i" comes before "love" due to a lower alphabetical order.
Example 2:

Input: words = ["the","day","is","sunny","the","the","the","sunny","is","is"], k = 4
Output: ["the","is","sunny","day"]
Explanation: "the", "is", "sunny" and "day" are the four most frequent words, with the number of occurrence being 4, 3, 2 and 1 respectively.
*/

func topKFrequent(_ words: [String], _ k: Int) -> [String] {
    var dict: [String : Int] = [:]
    for word in words {
        dict[word, default: 0] += 1
    }
    
    let sorted: [(key: String, value: Int)] = dict.sorted{
        if $0.value == $1.value {
            return $0.key < $1.key
        } else {
            return $0.value > $1.value
        }
        
    }
    print(sorted)
    var res:[String] =  sorted.map{ ele in
        return ele.key
    }
    res = Array(res[0..<k])
    return res
}

//print(topKFrequent(["hello", "me", "love", "hello", "love", "i"], 3))
