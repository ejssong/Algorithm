//
//  1254.NumberOfClosedIslands.swift
//  
//
//  Created by ejsong on 2023/04/14.
//

/**
 Link :: https://leetcode.com/problems/number-of-closed-islands/description/
 */
import UIKit

func closedIsland(_ grid: [[Int]]) -> Int {
    var gridArray = grid
    var row = grid.count, col = grid[0].count
    var result = 0
    
    for i in 0..<row {
        for j in 0..<col {
            if gridArray[i][j] == 0 {
                let isClosedIsland = dfs(i,j)
                if !isClosedIsland { result += 1}
            }
        }
    }
    
    func dfs(_ i: Int, _ j: Int) -> Bool {
        guard i >= 0, j >= 0, j < col, i < row, gridArray[i][j] == 0 else { return false }
        
        gridArray[i][j] = 1
        let isEdge = i == 0 || j == 0 || i == row - 1 || j == col - 1
        let down   = dfs(i+1 , j)
        let right  = dfs(i, j+1)
        let top    = dfs(i-1, j)
        let bottom = dfs(i, j-1)
        return isEdge || down || right || top || bottom
    }
    
    return result
}
