//
//  15. 3Sum .swift
//  
//
//  Created by ejsong on 2023/05/18.
//

import Foundation

func threeSum(_ nums: [Int]) -> [[Int]] {
    var newNums = nums.sorted()
    var result = Set<[Int]>()
    
    for i in 0..<newNums.count  {
        var j = i + 1
        var k = newNums.count - 1
        while j < k {
            let sum = newNums[i] + newNums[j] + newNums[k]
            if sum == 0 {
                result.insert([newNums[i], newNums[j], newNums[k]])
                j += 1
                k -= 1
            }else if sum < 0 {
                j += 1
            }else {
                k -= 1
            }
        }
    }
    
    return Array(result)
}

