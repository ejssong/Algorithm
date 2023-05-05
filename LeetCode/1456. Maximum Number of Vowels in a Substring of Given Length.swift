//
//  1456. Maximum Number of Vowels in a Substring of Given Length.swift
//  
//
//  Created by Eunjin Song on 2023/05/05.
//

import Foundation

func maxVowels(_ s: String, _ k: Int) -> Int {
    let vowels = Set<Character>(["a", "e", "i", "o", "u"])
    let s = Array(s)
    var current = 0, result = 0
    
    for i in 0..<s.count {
        current += vowels.contains(s[i]) ? 1 : 0
        if i >= k {
            print(i - k)
            current -= vowels.contains(s[i - k]) ? 1 : 0
        }
        result = max(result, current)
    }
    return result

}
