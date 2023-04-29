//
//  1046.LastStoneWeight.swift
//  
//
//  Created by ejsong on 2023/04/24.
//
/*
Link : https://leetcode.com/problems/last-stone-weight/description/
 */
import Foundation

func lastStoneWeight(_ stones: [Int]) -> Int {
    var newArray = stones
    
    while newArray.count != 1 , !newArray.isEmpty{
        compare()
    }
    
    func compare() {
        let firstHeavyStone = newArray.max() ?? 0
        var secondHeavyStone = 0
        
        newArray.remove(at: newArray.firstIndex(of: firstHeavyStone) ?? 0)
        
        for i in newArray {
            if i > secondHeavyStone, i <= firstHeavyStone {
                secondHeavyStone = i
            }
        }
        
        newArray.remove(at: newArray.firstIndex(of: secondHeavyStone) ?? 0)
        
        if firstHeavyStone != secondHeavyStone {
            newArray.append(firstHeavyStone - secondHeavyStone)
        }
    }
    
    return newArray.first ?? 0
}

