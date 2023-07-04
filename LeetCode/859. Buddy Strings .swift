//
//  859. Buddy Strings .swift
//  
//
//  Created by Eunjin Song on 2023/07/03.
//

import Foundation

func buddyStrings(_ s: String, _ goal: String) -> Bool {
    if s.count != goal.count { return false }
    let diff = s.indices.filter { s[$0] != goal[$0] }
    
    switch diff.count {
    case 2:
        return s[diff[0]] == goal[diff[1]] && s[diff[1]] == goal[diff[0]]
    case 0:
        var char: Set<Character> = []
        return s.contains { !char.insert($0).inserted }
    default:
        return false
    }
}
