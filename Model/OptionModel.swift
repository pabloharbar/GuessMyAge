//
//  OptionModel.swift
//  GuessMyAge
//
//  Created by Pablo Penas on 29/07/21.
//

class Option {
    let text: String
    let range: RangeModel
    let certain: Int
    let generationsIncluded: [generations]
    
    init(text: String, range: RangeModel, certain: Int, generationsIncluded: [generations]) {
        self.text = text
        self.range = range
        self.certain = certain
        self.generationsIncluded = generationsIncluded
    }
}
