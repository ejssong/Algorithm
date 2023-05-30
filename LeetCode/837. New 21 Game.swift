//
//  837. New 21 Game.swift
//  
//
//  Created by Eunjin Song on 2023/05/25.
//

import Foundation

func new21Game(_ n: Int, _ k: Int, _ maxPts: Int) -> Double {
    if k == 0 || n >= k + maxPts { return 1.0 }
    
    var dp = [Double](repeating: 0, count: n + 1 )
    dp[0] = 1.0
    var sum = 1.0, res = 0.0
    let maxPtsd = Double(maxPts)
    
    for i in 1...n {
        dp[i] = sum / maxPtsd
        i < k ? (sum += dp[i]) : (res += dp[i])
        i - maxPts >= 0 ? (sum -= dp[i - maxPts]) : ()
    }
    
    return res
}
