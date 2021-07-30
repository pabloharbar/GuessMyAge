//
//  GuessModel.swift
//  GuessMyAge
//
//  Created by Pablo Penas on 29/07/21.
//

import Foundation

class Guess {
    var generations: [Generation]
    
    var ageCertain: [Int] = []
    
    init(generations: [Generation]) {
        self.generations = generations
        for _ in 1...100 {
            ageCertain.append(0)
        }
    }
    
    func updateGuessCertain() {
        
    }
}
