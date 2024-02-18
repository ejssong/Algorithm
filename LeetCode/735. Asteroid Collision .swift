//
//  735. Asteroid Collision .swift
//  
//
//  Created by ejsong on 2023/07/20.
//

import Foundation

func asteroidCollision(_ asteroids: [Int]) -> [Int] {
    var result = [Int]()
    
    for i in asteroids {
        if i >= 0 {
            result.append(i)
        }else {
            while let last = result.last, last > 0 && last < abs(i) {
                result.popLast()
            }
            
            if result.isEmpty || result.last! < 0 {
                result.append(i)
            }else if result.last! + i == 0 {
                result.popLast()
            }
        }
    }
    return result
}
