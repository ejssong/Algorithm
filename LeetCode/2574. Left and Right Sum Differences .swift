//
//  2574. Left and Right Sum Differences .swift
//  
//
//  Created by Eunjin Song on 2023/06/27.
//

import Foundation

func leftRightDifference(_ nums: [Int]) -> [Int] {
    var left : [Int] = [0]
    var right : [Int] = [0]
    var answer = [Int]()
    
    for i in 0..<nums.count - 1 {
        left.append(left[i] + nums[i])
    }
    
    ((1..<nums.count).reversed()).forEach {
        right.insert(right[0] + nums[$0], at: 0)
    }

    for j in 0..<nums.count{
        answer.append(abs(left[j] - right[j]))
    }
    
    return answer
}
