//
//  1491.AverageSalaryExcludingtheMinimumandMaximumSalary.swift
//  
//
//  Created by Eunjin Song on 2023/05/01.
//

/*
 LINK : https://leetcode.com/problems/average-salary-excluding-the-minimum-and-maximum-salary/description/
 */
import Foundation

func average(_ salary: [Int]) -> Double {

    guard let min = salary.min(),
          let max = salary.max() else { return 0 }

    return Double(salary.reduce(0, +) - (min + max)) / Double(salary.count - 2)
    
}
