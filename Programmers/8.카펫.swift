//
//  8.카펫.swift
//  
//
//  Created by Eunjin Song on 2023/04/30.
//
/*
 LINK : https://school.programmers.co.kr/learn/courses/30/lessons/42842
 */
import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    var sum = brown + yellow
    var result : [Int] = []

    for width in 1...sum {
        let height = sum / width
        if (width - 2) * (height - 2) == yellow {
            result = [width, height]
        }
    }
    
    return result
}
