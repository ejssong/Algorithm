//
//  1721. Swapping Nodes in a Linked List.swift
//  
//
//  Created by Eunjin Song on 2023/05/15.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
 
class Solution {
    func swapNodes(_ head: ListNode?, _ k: Int) -> ListNode? {
        var current = head
        for _ in 0..<k - 1 {
            current = current?.next
        }

        var begin = current
        var end = head
        while current?.next != nil {
            current = current?.next
            end = end?.next
        }
        
        let temp = begin!.val
        begin?.val = end!.val
        end?.val = temp

        return head
    }
}
