//
//  191. Number of 1 Bits .swift
//  
//
//  Created by Eunjin Song on 2023/07/15.
//

import Foundation

func hammingWeight(_ n: Int) -> Int {
    var count = 0, num = n
    
    for _ in 0..<32 {
        if num & 1 == 1 {
            count += 1
        }
        num >>= 1
    }
    
    return count
}
