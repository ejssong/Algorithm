//
//  155. Min Stack .swift
//  
//
//  Created by ejsong on 2023/05/19.
//

import Foundation

class MinStack {
    private var stack : [Int]
    private var minStack : [Int]
    
    init() {
        stack = [Int]()
        minStack = [Int]()
    }
    
    func push(_ val: Int) {
        stack.append(val)
        var minValue = val
        if let lastE = minStack.last {
            minValue = min(lastE, val)
        }
         minStack.append(minValue)
    }
    
    func pop() {
        stack.popLast()
        minStack.popLast()
    }
    
    func top() -> Int {
        stack.last ?? 0
    }
    
    func getMin() -> Int {
        minStack.last ?? 0
    }
}
