//
//  QuestionBank.swift
//  GuessMyAge
//
//  Created by Pablo Penas on 29/07/21.
//

import UIKit

class DataBank {
    static var shared = DataBank()
    

    let generationData = [
        Generation(generation: .generationZ, title: "Geração Z", description: "A geração Z é composta por pessoas nascidas a partir de 2000, é fortemente conectada com o mundo externo", color: UIColor(named: "babyColor")!, range: RangeModel(min: 0, max: 21)),
        Generation(generation: .generationY, title: "Geração Y", description: "A geração Y é composta por pessoas nascidas entre 2000 e 1980, são a maior parte das pessoas que compõe a sociedade hoje", color: UIColor(named: "teenColor")!, range: RangeModel(min: 21, max: 41)),
        Generation(generation: .generationX, title: "Geração X", description: "A geração X é composta por pessoas nascidas entre 1980 e 1965.", color: UIColor(named: "adultColor")!, range: RangeModel(min: 41, max: 56)),
        Generation(generation: .babyBoomer, title: "Baby Boomer", description: "A geração Baby Boomer é composta por pessoas nascidas entre 1965 e 1946.", color: UIColor(named: "elderColor")!, range: RangeModel(min: 56, max: 71)),
        Generation(generation: .silentGeneration, title: "Geração Silenciosa", description: "A geração silenciosa é composta por pessoas nascidas entre 1946 e 1925.", color: UIColor(named: "elderColor")!, range: RangeModel(min: 71, max: 100))
    ]
    
    var questionData = [
        Question(question: "Já viveu algum período de ditadura militar?", options: [
            Option(text: "Sim", range: RangeModel(min: 35, max: 100), certain: 100, generationsIncluded: [.silentGeneration,.babyBoomer,.generationX, .generationY]),
            Option(text: "Não", range: RangeModel(min: 0, max: 36), certain: 100, generationsIncluded: [.generationZ,.generationY])
        ], id: 1),
        Question(question: "Já viveu algum período de ditadura militar2?", options: [
            Option(text: "Sim2", range: RangeModel(min: 35, max: 100), certain: 100, generationsIncluded: [.silentGeneration,.babyBoomer,.generationX, .generationY]),
            Option(text: "Não2", range: RangeModel(min: 0, max: 36), certain: 100, generationsIncluded: [.generationZ,.generationY])
        ], id: 2),
    ]
    
    func getQuestions() -> [Question] {
        return questionData.shuffled()
    }
}
