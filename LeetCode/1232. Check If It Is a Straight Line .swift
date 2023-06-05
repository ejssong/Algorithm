//
//  1232. Check If It Is a Straight Line .swift
//  
//
//  Created by ejsong on 2023/06/05.
//

import Foundation

func checkStraightLine(_ coordinates: [[Int]]) -> Bool {
    let dx = coordinates[0][0]-coordinates[1][0]
    let dy = coordinates[0][1]-coordinates[1][1]
    
    for i in 2..<coordinates.count {
        if dx * (coordinates[0][1]-coordinates[i][1]) != dy * (coordinates[0][0]-coordinates[i][0]) {
            return false
        }
    }
    
    return true
}

