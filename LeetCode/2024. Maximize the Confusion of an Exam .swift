//
//  2024. Maximize the Confusion of an Exam .swift
//  
//
//  Created by ejsong on 2023/07/07.
//

import Foundation

func maxConsecutiveAnswers(_ answerKey: String, _ k: Int) -> Int {
    var value = Array(answerKey)
    var left = 0, result = 0
    var count = (t: 0, f: 0)
    
    for i in 0..<value.count {
        if value[i] == "T" {
            count.t += 1
        }else{
            count.f += 1
        }
        
        while min(count.f, count.t) > k {
            if value[left] == "T" {
                count.t -= 1
            }else {
                count.f -= 1
            }
            left += 1
        }
        result = max(result, result - left + 1)
    }
    
    return result
}
