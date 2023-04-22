//
//  6.달리기경주.swift
//  
//
//  Created by Eunjin Song on 2023/04/22.
//
/**
 링크 :  https://school.programmers.co.kr/learn/courses/30/lessons/178871
 */
import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    var player = players
    var newArray : [String : Int] = [:]
    
    for i in 0..<player.count {
        newArray[player[i]] = i
    }
    for i in 0..<callings.count {
        var curr = callings[i]
        
        if let index = newArray[curr] {
            let name = player[index - 1]
            player[index - 1] = curr
            player[index] = name
            newArray[curr]! -= 1
            newArray[player[index]]! += 1
        }
    }

    return player
}
