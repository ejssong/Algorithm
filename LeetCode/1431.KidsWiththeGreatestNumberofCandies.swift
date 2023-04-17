//
//  1431.Kids With theGreatestNumberofCandies.swift
//  
//
//  Created by ejsong on 2023/04/17.
//

import Foundation

func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
    var max = 0, list : [Bool] = []
    for i in candies where max < i {
        max = i
    }
    
    for j in candies {
        if j + extraCandies >= max {
            list.append(true)
        }else {
            list.append(false)
        }
    }
    
    return list
}

