//
//  35. Search Insert Position.swift
//  
//
//  Created by Eunjin Song on 2023/05/07.
//
/*
 LINK : https://leetcode.com/problems/search-insert-position/description/
 */

import Foundation

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    var index = 0
    
    for (i, j) in nums.enumerated() {
        if j == target {
            return index
        }else if j < target {
            index = i + 1
        }
    }
    
    return index
}
