//
//  14. Longest Common Prefix.swift
//  
//
//  Created by Eunjin Song on 2023/05/06.
//

import Foundation

func longestCommonPrefix(_ strs: [String]) -> String {
    guard var first = strs.first else { return "" }
    
    for i in strs {
        while !i.starts(with: first) {
            first.removeLast()
        }
    }
    
    return first
}
