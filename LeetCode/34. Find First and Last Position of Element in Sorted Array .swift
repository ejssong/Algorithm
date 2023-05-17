//
//  34. Find First and Last Position of Element in Sorted Array .swift
//  
//
//  Created by ejsong on 2023/05/17.
//

import Foundation

func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
    var result : [Int] = [-1, -1]

    for (i, j) in nums.enumerated() where j == target{
        if result[0] < 0 {
            result[0] = i
        }
        
        result[0] = min(i, result[0])
        result[1] = max(i, result[1])
    }
    
    return result
}
