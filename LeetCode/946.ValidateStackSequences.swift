//
//  946.ValidateStackSequences.swift
//  
//
//  Created by ejsong on 2023/04/13.
//

import Foundation

func validateStackSequences(_ pushed: [Int], _ popped: [Int]) -> Bool {
    var stack : [Int] = []
    var currentPoint = 0 //현재 검사 중인 위치
    
    for i in 0..<pushed.count {
        stack.append(pushed[i])
        
        if stack.last == popped[currentPoint] {
            stack.removeLast()
            currentPoint += 1
           
            for _ in currentPoint..<popped.count {
                if stack.last == popped[currentPoint] {
                    stack.removeLast()
                    currentPoint += 1
                }
            }
            
        }
    }
    
    return stack.isEmpty
}

//MARK: 풀이 개선
func validateStackSequences1(_ pushed: [Int], _ popped: [Int]) -> Bool {
    var stack : [Int] = []
    var currentPoint = 0
    
    for i in 0..<pushed.count {
        stack.append(pushed[i])
        
        while (!stack.isEmpty && stack.last == popped[currentPoint]) {
            stack.removeLast()
            currentPoint += 1
        }
    }
    return stack.isEmpty
}

