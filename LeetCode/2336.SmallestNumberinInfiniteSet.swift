//
//  2336.SmallestNumberinInfiniteSet.swift
//  
//
//  Created by ejsong on 2023/04/25.
//

import Foundation

class SmallestInfiniteSet {
    private var resultArray = Set<Int>()
    private var num = 1

    init() {
        
    }
    
    func popSmallest() -> Int {
        for i in 1... where !resultArray.contains(i) {
            resultArray.insert(i)
            return i
        }
        return 0
    }
    
    func addBack(_ num: Int) {
        resultArray.remove(num)
    }
}

