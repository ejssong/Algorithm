//
//  435. Non-overlapping Intervals .swift
//  
//
//  Created by ejsong on 2023/07/19.
//

import Foundation

func eraseOverlapIntervals(_ intervals: [[Int]]) -> Int {
    var sorted = intervals.sorted(by: { $0[1] < $1[1] })
    var overlapCnt = 0
    var next = 0
    for i in sorted {
        let x = i[0]
        let y = i[1]
        if x >= next {
            next = y
        }else {
            overlapCnt += 1
        }
    }
    return overlapCnt
}
