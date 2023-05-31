//
//  1396. Design Underground System .swift
//  
//
//  Created by ejsong on 2023/05/31.
//

import Foundation

class UndergroundSystem {
    private var cache = [Int: (String, Int)]()
    private var times = [String: [String: [Int]]]()
    
    func checkIn(_ id: Int, _ stationName: String, _ t: Int) {
        cache[id] = (stationName, t)
    }
    
    func checkOut(_ id: Int, _ stationName: String, _ t: Int) {
        if let checkIn = cache[id] {
            times[checkIn.0, default: [:]][stationName, default: []].append(t - checkIn.1)
        }
        cache[id] = nil
    }
    
    func getAverageTime(_ startStation: String, _ endStation: String) -> Double {
        let data = times[startStation]![endStation]!
        return Double(data.reduce(0, +)) / Double(data.count)
    }
}

