//
//  268. Missing Number .swift
//  
//
//  Created by Eunjin Song on 2023/07/08.
//

import Foundation

func missingNumber(_ nums: [Int]) -> Int {
    var newArray = nums.sorted()
    var maxNum = newArray.last!
    
    for i in 0..<maxNum {
        if !newArray.contains(i) {
            return i
        }
    }
    
    return nums.count
}
