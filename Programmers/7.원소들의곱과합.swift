//
//  7.원소들의곱과합.swift
//  
//
//  Created by Eunjin Song on 2023/04/23.
//
/**
link : https://school.programmers.co.kr/learn/courses/30/lessons/181929
 */
import Foundation

func solution(_ num_list:[Int]) -> Int {

    var first = num_list.reduce(1, *)
    var second = num_list.reduce(0, +)
    second = second * second

    return first > second ? 0 : 1
}
