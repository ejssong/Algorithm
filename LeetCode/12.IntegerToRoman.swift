//
//  12.IntegerToRoman.swift
//  
//
//  Created by Eunjin Song on 2023/04/29.
//

import Foundation

/*
 LINK : https://leetcode.com/problems/integer-to-roman/description/
 */

func intToRoman(_ num: Int) -> String {
    var array = [1000: "M", 900 : "CM", 500: "D",
                 400 : "CD", 100 : "C",
                 90: "XC", 50: "L", 40 : "XL", 10 : "X",
                 9 : "IX", 5 : "V", 4: "IV", 1 : "I"]
    
    var result = ""
    var newNum = num
    let value = array.sorted{ $0.0 > $1.0 }
    var index = 0
    
    while newNum > 0 {
        if newNum >= value[index].key {
            result.append(value[index].value)
            newNum -= value[index].key
        }else {
            index += 1
        }
    }
    
    return result
}



