//
//  88. Merge Sorted Array.swift
//  
//
//  Created by Eunjin Song on 2023/06/21.
//

import Foundation

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    nums1 = (nums1[..<m]+nums2).sorted()
}
