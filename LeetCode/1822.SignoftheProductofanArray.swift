//
//  1822.SignoftheProductofanArray.swift
//  
//
//  Created by ejsong on 2023/05/02.
//
/**
 LINK : https://leetcode.com/problems/sign-of-the-product-of-an-array/description/
 */

import Foundation

func arraySign(_ nums: [Int]) -> Int {
    guard !nums.contains(0) else { return 0 }

    return nums.filter { $0 < 0 }.count == 0 ? 1 : -1
}
