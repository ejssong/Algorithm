//
//  1493. Longest Subarray of 1's After Deleting One Element .swift
//  
//
//  Created by ejsong on 2023/07/05.
//

import Foundation

func longestSubarray(_ nums: [Int]) -> Int {
    var zero = 0
    var start = 0
    var result = 0
    
    for (i, j) in nums.enumerated() {
        if j == 0 { zero += 1 }
        while zero > 1 {
            if nums[start] == 0 {
                zero -= 1
            }
            start += 1
        }
        result = max(result, i - start)
    }
    return result
}
