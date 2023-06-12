//
//  228. Summary Ranges .swift
//  
//
//  Created by ejsong on 2023/06/12.
//

import Foundation

func summaryRanges(_ nums: [Int]) -> [String] {
    var result = [String]()
    var current = "", i = 0
    
    while i < nums.count {
        var value = nums[i]
        current = "\(value)"
        var last = ""
        
        while i < nums.count && nums.contains(value + 1) {
            value = value + 1
            last = "\(value)"
            i += 1
        }
        
        if !last.isEmpty {
            current.append("->" + last)
        }
        
        result.append(current)
        i += 1
        
    }
    
    return result
}
