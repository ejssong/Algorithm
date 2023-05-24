//
//  49. Group Anagrams.swift
//  
//
//  Created by ejsong on 2023/05/24.
//

import Foundation

func groupAnagrams(_ strs: [String]) -> [[String]] {
    var dict = [String: [String]]()
    
    for str in strs {
        let sortedStr = String(str.sorted())
        dict[sortedStr, default: []].append(str)
    }
    
    return Array(dict.values)
}

