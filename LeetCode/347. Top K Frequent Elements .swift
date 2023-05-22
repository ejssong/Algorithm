//
//  946.Validate Stack Sequences.swift
//  
//
//  Created by ejsong on 2023/05/22.
//

import Foundation

func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    var result = Set<Int>()
    var dic : [Int: Int] = [:]
    for i in nums {
        // if let value = dic.filter{$0.key == i}.first?.value {
        //     dic.updateValue(value + 1, forKey: i)
        // }else {
        //     dic.updateValue(1, forKey: i)
        // }
        
        dic[i, default: 0] += 1
    }
    let sort = dic.sorted { (first, second) in
        return first.value > second.value
    }
    for i in 0..<k {
        result.insert(sort[i].key)
    }
    
    return Array(result)
}
