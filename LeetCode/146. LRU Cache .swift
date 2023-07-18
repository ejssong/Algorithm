//
//  146. LRU Cache .swift
//  
//
//  Created by Eunjin Song on 2023/07/18.
//

import Foundation

class Node {
    var key: Int, value: Int
    var prev: Node?, next: Node?
    init(key: Int, value: Int) {
        self.key = key
        self.value = value
    }
}

class LRUCache {
    var cap = Int()
    var cacheList = [Int: Node]()
    let left = Node(key: 0, value: 0)
    let right = Node(key: 0, value: 0)

    init(_ capacity: Int) {
        cap = capacity
        (left.next, right.prev) = (right, left)
    }
    
    func get(_ key: Int) -> Int {
        if let node = cacheList[key] {
            remove(node)
            insert(node)
        }
        return cacheList[key]?.value ?? -1
    }
    
    func put(_ key: Int, _ value: Int) {
       if let node = cacheList[key] {
            remove(node)
        }
        cacheList[key] = Node(key: key, value: value)
        insert(cacheList[key]!)
        if cacheList.count > cap {
            let least = left.next!
            remove(least)
            cacheList[least.key] = nil
        }
    }

    func remove( _ node: Node) {
        (node.prev!.next, node.next!.prev) = (node.next, node.prev)
    }

    func insert( _ node: Node) {
        let prev = right.prev!
        (prev.next, right.prev) = (node, node)
        (node.next, node.prev ) = (right, prev)
    }
}

/**
 * Your LRUCache object will be instantiated and called as such:
 * let obj = LRUCache(capacity)
 * let ret_1: Int = obj.get(key)
 * obj.put(key, value)
 */
