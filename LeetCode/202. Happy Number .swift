//
//  202. Happy Number .swift
//  
//
//  Created by Eunjin Song on 2023/06/28.
//

import Foundation

func isHappy(_ n: Int) -> Bool {
    var visited = Set<Int>()
    var num = n
    
    while !visited.contains(num) {
        visited.insert(num)
        var sum = 0
        while num > 0 {
            sum += (num % 10) * (num % 10)
            num = num / 10
        }
        if sum == 1 {
            return true
        }
        num = sum
    }
    return false
}
