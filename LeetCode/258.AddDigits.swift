//
//  258.AddDigits.swift
//  
//
//  Created by ejsong on 2023/04/26.
//
/*
 Link : https://leetcode.com/problems/add-digits/
 */
import Foundation

func addDigits(_ num: Int) -> Int {
    var value : String = "\(num)"
    var result = num
    
    while result >=  10 {
        result = value.compactMap{ $0.wholeNumberValue }.reduce(0, +)
        value = String(result)
    }
    
    return result
}
