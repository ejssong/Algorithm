//
//  1572. Matrix Diagonal Sum.swift
//  
//
//  Created by ejsong on 2023/05/08.
//

import Foundation

func diagonalSum(_ mat: [[Int]]) -> Int {
    var result = 0, num = mat.count
    
    for i in 0..<num {
        result += mat[i][i]
        result += mat[i][num-i-1]
    }
    return num % 2 == 0 ? result : result - mat[num/2][num/2]
}
