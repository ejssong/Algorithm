//
//  2352. Equal Row and Column Pairs .swift
//  
//
//  Created by ejsong on 2023/06/13.
//

import Foundation

func equalPairs(_ grid: [[Int]]) -> Int {
    var columns = [[Int]]()

    var result = 0
    
    for index in 0..<grid.count {
        var column = [Int]()
        for row in grid {
            column.append(row[index])
        }
        columns.append(column)
    }
    
    for i in 0..<grid.count {
        for j in 0..<columns.count where grid[i] == columns[j] {
            result += 1
        }
    }
    
    return result
}
