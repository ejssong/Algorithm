//
//  2215.FindtheDifferenceofTwoArrays.swift
//  
//
//  Created by ejsong on 2023/05/03.
//

import Foundation
/**
 LINK :: https://leetcode.com/problems/find-the-difference-of-two-arrays/description/
 */
func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {

    var newNum1 : [Int] = [], newNum2 : [Int] = []
    
    for i in nums1 where !nums2.contains(i) && !newNum1.contains(i){
        newNum1.append(i)
    }
    for j in nums2 where !nums1.contains(j) && !newNum2.contains(j){
        newNum2.append(j)
    }
    
    return [newNum1, newNum2]
}
