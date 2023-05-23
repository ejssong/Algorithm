//
//  703. Kth Largest Element in a Stream .swift
//  
//
//  Created by ejsong on 2023/05/23.
//

import Foundation

class KthLargest {
    var result : [Int] = []
    var kth : Int = 0
    var currentNum : Int = 0
    
    init(_ k: Int, _ nums: [Int]) {
        result = nums
        kth = k
    }
    
    func add(_ val: Int) -> Int {
        result.append(val)
        result = result.sorted{ $0 > $1 }
       
        for (i, j) in result.enumerated() where i >= kth {
            currentNum = result[i - 1]
            return currentNum
        }
       
        return result[kth - 1]
    }
}

