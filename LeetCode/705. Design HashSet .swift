//
//  705. Design HashSet .swift
//  
//
//  Created by ejsong on 2023/05/30.
//

import Foundation

class MyHashSet {
    var result = Set<Int>()

    init() {

    }
    
    func add(_ key: Int) {
        result.insert(key)
    }
    
    func remove(_ key: Int) {
        result.remove(key)
    }
    
    func contains(_ key: Int) -> Bool {
        return result.contains(key)
    }
}
