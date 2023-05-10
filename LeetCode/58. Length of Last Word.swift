//
//  58. Length of Last Word.swift
//  
//
//  Created by Eunjin Song on 2023/05/10.
//
/*
 Link : https://leetcode.com/problems/length-of-last-word/description/
 */
import Foundation

func lengthOfLastWord(_ s: String) -> Int {
    var v = s.split(separator: " ")
    return v.last?.count ?? 0
}
