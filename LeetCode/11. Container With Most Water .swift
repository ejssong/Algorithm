//
//  11. Container With Most Water .swift
//  
//
//  Created by Eunjin Song on 2023/05/26.
//

import Foundation

func maxArea(_ height: [Int]) -> Int {
    var left = 0, right = height.count - 1
    var maxArea = 0
    
    while left < right {
        let area = ( right - left) * min(height[left], height[right])
        maxArea = max(area, maxArea)
        
        if height[left] < height[right] {
            left += 1
        }else {
            right -= 1
        }
    }
    return maxArea
}
