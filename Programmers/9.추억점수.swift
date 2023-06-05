//
//  9.추억점수.swift
//  
//
//  Created by Eunjin Song on 2023/06/04.
//

import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var result = Array(repeating: 0, count: photo.count)
    
    for (k , i) in photo.enumerated() {
        for j in i {
            if let index = name.firstIndex(of: j) {
               result[k] +=  yearning[index]
            }
        }
    }
    return result
}
