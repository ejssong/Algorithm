//
//  1502. Can Make Arithmetic Progression From Sequence.swift
//  
//
//  Created by Eunjin Song on 2023/06/06.
//

import Foundation

func canMakeArithmeticProgression(_ arr: [Int]) -> Bool {
    let sorted = arr.sorted()
    let diff = sorted[1] - sorted[0]
    
    for i in 1..<arr.count {
        if sorted[i] - sorted[i - 1] != diff { return false }
    }
    return true
}
