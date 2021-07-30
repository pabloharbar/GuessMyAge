//
//  RangeModel.swift
//  GuessMyAge
//
//  Created by Pablo Penas on 29/07/21.
//

import Foundation

class RangeModel {
    var min: Int
    var max: Int
    var range: [Int]
    
    init(min: Int, max: Int) {
        self.max = max
        self.min = min
        self.range = Array(min...max)
    }
}
