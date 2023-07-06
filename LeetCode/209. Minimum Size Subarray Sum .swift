//
//  209. Minimum Size Subarray Sum .swift
//  
//
//  Created by Eunjin Song on 2023/07/06.
//

import Foundation

func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
    var left = 0, right = 0, sum = 0
    var res = Int.max
    
    for i in 0..<nums.count {
        sum += nums[i]
        while sum >= target {
            res = min(res, i - left + 1)
            sum -= nums[left]
            left += 1
        }
    }
    return res == Int.max ? 0 : res
}
