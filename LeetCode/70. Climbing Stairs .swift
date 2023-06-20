//
//  70. Climbing Stairs .swift
//  
//
//  Created by Eunjin Song on 2023/06/18.
//

import Foundation


func climbStairs(_ n: Int) -> Int {
    if n == 0 || n == 1 { return 1 }
    
    var first = 1, second = 1, third = 0
    
    for _ in 2...n {
        third = first + second
        first = second
        second = third
    }
    
    return second
}
