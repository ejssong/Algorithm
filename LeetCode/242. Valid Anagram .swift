//
//  242. Valid Anagram .swift
//  
//
//  Created by Eunjin Song on 2023/06/29.
//

import Foundation

func isAnagram(_ s: String, _ t: String) -> Bool {
    return s.sorted() == t.sorted()
}
