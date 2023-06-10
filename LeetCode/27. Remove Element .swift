//
//  27. Remove Element .swift
//  
//
//  Created by Eunjin Song on 2023/06/10.
//

import Foundation

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    nums = nums.filter { $0 != val }
    return nums.count
}
