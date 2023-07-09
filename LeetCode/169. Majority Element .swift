//
//  169. Majority Element .swift
//  
//
//  Created by Eunjin Song on 2023/07/09.
//

import Foundation

func majorityElement(_ nums: [Int]) -> Int {
    return nums.sorted(by:<)[nums.count / 2]
}
