//
//  삼총ㅇ사.swift
//  
//
//  Created by Eunjin Song on 2023/04/15.
//

import Foundation
//삼총사
func solution(_ number:[Int]) -> Int {
    var result = 0
    
    for i in 0..<number.count {
        for j in (i + 1)..<number.count {
            for k in (j + 1)..<number.count {
                if number[i] + number[j] + number[k] == 0 { result += 1 }
            }
        }
    }
    
    return result
}
