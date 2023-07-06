//
//  137.Single Number.swift
//  
//
//  Created by ejsong on 2023/07/04.
//

import Foundation

func singleNumber(_ nums: [Int]) -> Int {
    var result = [Int:Int]()
    
    for i in nums {
        result[i, default: 0] += 1
    }
    
    for (key, value) in result {
        if value == 1 {
            return key
        }
    }
    return 0
}
