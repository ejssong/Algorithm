//
//  숫자문자열과영단어.swift
//  
//
//  Created by ejsong on 2023/04/21.
//

/**
  link : https://school.programmers.co.kr/learn/courses/30/lessons/81301
 */
import Foundation

func solution(_ t:String, _ p:String) -> Int {
    var result = 0, tCount = t.count, pCount = p.count
    var array = Array(t)
    
    for i in 0..<tCount {
        var value = 0
        var values = ""
        
        values.append(String(array[i]))
        
        if value == pCount - 1 {
            if values <= p { result += 1 }
        }else {
            for j in (i + 1)..<tCount {
                if value < pCount {
                    values.append(String(array[j]))
                    value += 1
                }
                
                if value == (pCount - 1), values <= p {
                    result += 1
                }
            }
        }
    }

    return result
}


