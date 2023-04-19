//
//  1372.LongestZigZag.swift
//  
//
//  Created by ejsong on 2023/04/19.
//
/**
 Link : https://leetcode.com/problems/longest-zigzag-path-in-a-binary-tree/description/
 */

import Foundation

func longestZigZag(_ root: TreeNode?) -> Int {
    var result = 0
    dfs(root?.left, false, 0) //left, depth = 0
    dfs(root?.right, true, 0) //right, depth = 0
    
    func dfs(_ root: TreeNode?, _ direction: Bool, _ depth: Int) {
        
        if root == nil {
            result = max(result, depth)
            return
        }
        
        dfs(root?.left, false, direction ? depth + 1 : 0)
        dfs(root?.right, true, direction ? 0 : depth + 1)
    }
    
    return result
}
