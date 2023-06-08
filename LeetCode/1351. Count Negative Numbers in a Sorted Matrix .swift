//
//  1351. Count Negative Numbers in a Sorted Matrix .swift
//  
//
//  Created by ejsong on 2023/06/08.
//

import Foundation

func countNegatives(_ grid: [[Int]]) -> Int {
    var result: Int = 0
    
    for i in grid {
        for j in i where j < 0 {
            result += 1
        }
    }
    
    return result
}
