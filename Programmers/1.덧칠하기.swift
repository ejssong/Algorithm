//
//  1.덧칠하기.swift
//  
//
//  Created by ejsong on 2023/04/12.
//

import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var answer: Int = 0

    guard let min = section.min() else { return 0 }
    
    section.reduce(min) {
        if $0 + m - 1 < $1 {
            answer += 1
            return answer
        }
        return $0
    }
    return answer + 1
}


func solution1(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var newSection = section
    var endPoint = 0 //마지막 위치
    var result = 0
    
    while !newSection.isEmpty {
        let currentPoint = newSection.removeFirst()
        
        if endPoint > currentPoint {
            continue
        }else {
            //마지막 위치는 현재 위치 + 롤링 할 수 있는 영역 - 1
            endPoint = currentPoint + m - 1
            result += 1
        }
    }
    return result
}

print(solution1(8, 4, [2,3,6]))
