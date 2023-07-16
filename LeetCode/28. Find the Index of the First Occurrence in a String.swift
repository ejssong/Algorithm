//
//  28. Find the Index of the First Occurrence in a String.swift
//  
//
//  Created by ejsong on 2023/07/16.
//

import Foundation

func strStr(_ haystack: String, _ needle: String) -> Int {
    if needle.isEmpty { return 0 }
    if let range = haystack.range(of: needle) {
        return range.lowerBound.encodedOffset
    }
    
    return -1
}
