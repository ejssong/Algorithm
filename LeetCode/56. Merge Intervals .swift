//
//  56. Merge Intervals .swift
//  
//
//  Created by ejsong on 2023/06/30.
//

import Foundation

func merge(_ intervals: [[Int]]) -> [[Int]] {
    var sorted = intervals.sorted(by: {$0[0] < $1[0]})
    var answer = [sorted[0]]
    
    for i in sorted[1..<sorted.count] {
        let start = i[0], last = answer.last?[1] ?? 0
        if start > last {
            answer.append(i)
        }else{
            answer[answer.count - 1][1] = max(i[1], last)
        }
    }
    return answer
}
