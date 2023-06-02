//
//  153. Find Minimum in Rotated Sorted Array .swift
//  
//
//  Created by ejsong on 2023/06/02.
//

import Foundation

func findMin(_ nums: [Int]) -> Int {
    var result : Int = nums[0]
    
    for i in nums where result > i {
        result = i
    }
    return result
}
