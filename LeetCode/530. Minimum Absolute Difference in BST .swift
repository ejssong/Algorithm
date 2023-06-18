//
//  530. Minimum Absolute Difference in BST .swift
//  
//
//  Created by ejsong on 2023/06/14.
//

import Foundation


//Definition for a binary tree node.
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    var diff = Int.max
    var prev : Int? = nil
    
    func getMinimumDifference(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        getMinimumDifference(root.left)
        if let item = prev {
            diff = min(diff, abs(root.val - item))
        }
        prev = root.val
        getMinimumDifference(root.right)
        return diff
    }
}
