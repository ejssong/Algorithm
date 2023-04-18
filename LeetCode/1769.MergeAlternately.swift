//
//  1769.MergeAlternately.swift
//  
//
//  Created by ejsong on 2023/04/18.
//

import Foundation

func mergeAlternately(_ word1: String, _ word2: String) -> String {
    
    var results : [String] = []
    var array1 = Array(word1), array2 = Array(word2)
    
    for i in 0..<(array1.count + array2.count) {
        let value1 = array1.indices ~= i ? String(array1[i]) : ""
        let value2 = array2.indices ~= i ? String(array2[i]) : ""
        results.append(value1)
        results.append(value2)
    }
    
    return results.joined()
}
