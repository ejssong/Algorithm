//
//  1603. Design Parking System .swift
//  
//
//  Created by Eunjin Song on 2023/05/29.
//

import Foundation

class ParkingSystem {
    private var result : [Int:Int] = [:]

    init(_ big: Int, _ medium: Int, _ small: Int) {
        [big, medium, small].enumerated().forEach {
            result[$0 + 1] = $1
        }
    }
    
    func addCar(_ carType: Int) -> Bool {
        result[carType, default:1] -= 1
        return (result[carType] ?? 0) >= 0
    }
}
