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
    var initValues: [Int] = []
    
    init(generations: [Generation]) {
        self.generations = generations
        for i in 1...100 {
            initValues.append(i)
            ageCertain.append(100)
        }
    }
    
    func updateGuessCertain(option: Option) {
//        let updateValues = initValues.filter() { value in
//            !option.range.range.contains(value)
//        }
        let updateValues = initValues.filter({!option.range.range.contains($0)})
        for i in updateValues {
            self.ageCertain[i - 1] -= option.certain
        }
    }
    
    func updateGenerationCertain(option: Option) {
        let initGen = [generationsEnum.generationZ,generationsEnum.generationY,generationsEnum.generationX,generationsEnum.babyBoomer,generationsEnum.silentGeneration]
        let updateValues = initGen.filter({!option.generationsIncluded.contains($0)})
        for i in updateValues {
            switch i {
            case .generationZ:
                self.generations[0].certain -= option.certain
            case .generationY:
                self.generations[1].certain -= option.certain
            case .generationX:
                self.generations[2].certain -= option.certain
            case .babyBoomer:
                self.generations[3].certain -= option.certain
            case .silentGeneration:
                self.generations[4].certain -= option.certain
            }
        }
    }
    
    func collectResult() -> [Int] {
        var maxValue = self.generations[0].certain
        var maxGen = self.generations[0].generation
        for i in self.generations {
            if i.certain > maxValue {
                maxValue = i.certain
                maxGen = i.generation
            }
        }
        
        var searchRange: [Int] = []
        var generationCase = 0
        
        
        switch maxGen {
        case .generationZ:
            searchRange = Array(1...21)
            generationCase = 0
        case .generationY:
            searchRange = Array(21...41)
            generationCase = 1
        case .generationX:
            searchRange = Array(41...56)
            generationCase = 2
        case .babyBoomer:
            searchRange = Array(56...75)
            generationCase = 3
        case .silentGeneration:
            searchRange = Array(75...100)
            generationCase = 4
        }
        
        maxValue = self.ageCertain[searchRange[0] - 1]
        var ageResult = searchRange[0] - 1
        for i in searchRange {
            if ageCertain[i - 1] > maxValue {
                maxValue = ageCertain[i - 1]
                ageResult = i
            }
        }
        
        return [ageResult,generationCase]
    }
}
