//
//  10.명예의 전당 (1).swift
//  
//
//  Created by Eunjin Song on 2023/07/02.
//

import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var result: [Int] = []
    var bestArray: [Int] = [] //명예의 전당
    
    for i in score {
        bestArray.append(i)
        bestArray.sort(){ $0 > $1}
        
        if bestArray.count > k{
            bestArray.removeLast()
        }
        result.append(bestArray.last!)
    }
    
    return result
}
