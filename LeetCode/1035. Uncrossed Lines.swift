//
//  1035. Uncrossed Lines.swift
//  
//
//  Created by ejsong on 2023/05/11.
//

import Foundation

func maxUncrossedLines(_ nums1: [Int], _ nums2: [Int]) -> Int {
    let n1 = nums1.count
    let n2 = nums2.count
    var dp = Array(repeating: Array(repeating: 0, count: n2+1), count: n1+1)
    for i in 1...n1 {
        for j in 1...n2 {
            if nums1[i-1] == nums2[j-1] {
                dp[i][j] = dp[i-1][j-1] + 1
            } else {
                dp[i][j] = max(dp[i-1][j], dp[i][j-1])
            }
        }
    }
    return dp[n1][n2]
}
