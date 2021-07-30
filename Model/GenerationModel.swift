//
//  GenerationModel.swift
//  GuessMyAge
//
//  Created by Pablo Penas on 29/07/21.
//
import UIKit

enum generations {
    case generationZ
    case generationY
    case generationX
    case babyBoomer
    case silentGeneration
}


class Generation {
    let generation: generations
    
    let title: String
    let description: String
    let color: UIColor
    let range: RangeModel
    var certain: Int
    
    init(generation: generations,title: String, description: String, color: UIColor, range: RangeModel) {
        self.generation = generation
        self.title = title
        self.description = description
        self.color = color
        self.range = range
        certain = 100
    }
}
