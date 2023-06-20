//
//  2090. K Radius Subarray Averages .swift
//  
//
//  Created by ejsong on 2023/06/20.
//

import Foundation

func getAverages(_ nums: [Int], _ k: Int) -> [Int] {
    var result = Array(repeating: -1, count: nums.count)
    var element = k*2+1
    var sum = 0
    
    for (i,j) in nums.enumerated() {
        sum += j
        
        if i >= element {
            sum -= nums[i - element]
        }
        if i >= element-1 {
            result[i-k] = sum/element
        }
    }
    
    return result
}
