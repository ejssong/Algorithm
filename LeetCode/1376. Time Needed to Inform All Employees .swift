//
//  1376. Time Needed to Inform All Employees .swift
//  
//
//  Created by Eunjin Song on 2023/06/03.
//

import Foundation

func numOfMinutes(_ n: Int, _ headID: Int, _ manager: [Int], _ informTime: [Int]) -> Int {
    var min = informTime[headID]
    var graph = [Int: [Int]]()
    
    for i in 0..<n {
        graph[manager[i], default: []].append(i)
    }
    
    func bfs(_ start: Int, _ time: Int) {
        var queue = [(start: start, time: time)]
        
        while !queue.isEmpty {
            let first = queue.removeFirst()
            for i in graph[first.start] ?? [] {
                let time = first.time + informTime[i]
                queue.append((start: i, time: time))
                min = max(min, time)
            }
        }
    }
    
    bfs(headID, min)
    
    return min
}
