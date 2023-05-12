//
//  2140. Solving Questions With Brainpower.swift
//  
//
//  Created by ejsong on 2023/05/12.
//

import Foundation

func mostPoints(_ questions: [[Int]]) -> Int {
    var dp = Array(repeating: 0, count: questions.count+1)
    
    for i in questions.indices.reversed() {
        let point = questions[i][0], brainpower = questions[i][1]
        var index = min(i + brainpower + 1 , questions.count)
        var currentPoint = point + dp[index]
        dp[i] = max(currentPoint, dp[i+1])
    }
    
    return dp[0]
}
