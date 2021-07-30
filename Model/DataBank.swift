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
            Option(text: "Não", range: RangeModel(min: 12, max: 36), certain: 100, generationsIncluded: [.generationZ,.generationY])
        ], id: 1),
        Question(question: "O que você acha da série Harry Potter?", options: [
            Option(text: "Nunca ouvi falar", range: RangeModel(min: 45, max: 100), certain: 40, generationsIncluded: [.silentGeneration,.babyBoomer,.generationX]),
            Option(text: "Gosto da franquia", range: RangeModel(min: 12, max: 55), certain: 10, generationsIncluded: [.generationZ,.generationY,.generationX]),
            Option(text: "Não gosto", range: RangeModel(min: 20, max: 100), certain: 100, generationsIncluded: [.generationX,.generationY,.babyBoomer,.silentGeneration])
        ], id: 2),
        Question(question: "Você escuta K-Pop ou conhece?", options: [
            Option(text: "Amooo!", range: RangeModel(min: 12, max: 25), certain: 80, generationsIncluded: [.generationZ,.generationY]),
            Option(text: "Prefiro outros estilos", range: RangeModel(min: 12, max: 100), certain: 10, generationsIncluded: [.generationZ,.generationY,.generationX,.babyBoomer,.silentGeneration]),
            Option(text: "Nunca ouvi falar", range: RangeModel(min: 30, max: 100), certain: 100, generationsIncluded: [.generationX,.generationY,.babyBoomer,.silentGeneration])
        ], id: 3),
        Question(question: "Você usa TikTok?", options: [
            Option(text: "Sim", range: RangeModel(min: 12, max: 25), certain: 80, generationsIncluded: [.generationZ,.generationX]),
            Option(text: "Não", range: RangeModel(min: 16, max: 100), certain: 80, generationsIncluded: [.generationZ,.generationY,.generationX,.babyBoomer,.silentGeneration])
        ], id: 4),
        Question(question: "Que horas você costuma dormir?", options: [
            Option(text: "Antes das 20:00", range: RangeModel(min: 60, max: 100), certain: 70, generationsIncluded: [.babyBoomer,.silentGeneration]),
            Option(text: "De madrugada", range: RangeModel(min: 16, max: 30), certain: 50, generationsIncluded: [.generationZ,.generationY]),
            Option(text: "Nem cedo nem tarde", range: RangeModel(min: 16, max: 60), certain: 60, generationsIncluded: [.generationZ,.generationY,.generationX,.babyBoomer]),
        ], id: 5),
        Question(question: "Consome bebidas alcoólicas?", options: [
            Option(text: "Pau tora", range: RangeModel(min: 15, max: 28), certain: 80, generationsIncluded: [.generationZ,.generationY]),
            Option(text: "Já passei dessa idade", range: RangeModel(min: 35, max: 80), certain: 60, generationsIncluded: [.generationY,.generationX,.babyBoomer,.silentGeneration]),
            Option(text: "Eventualmente", range: RangeModel(min: 16, max: 80), certain: 20, generationsIncluded: [.generationZ,.generationY,.generationX,.babyBoomer]),
        ], id: 6),
        Question(question: "Consome bebidas alcoólicas?", options: [
            Option(text: "Pau tora", range: RangeModel(min: 15, max: 28), certain: 80, generationsIncluded: [.generationZ,.generationY]),
            Option(text: "Já passei dessa idade", range: RangeModel(min: 35, max: 80), certain: 60, generationsIncluded: [.generationY,.generationX,.babyBoomer,.silentGeneration]),
            Option(text: "Eventualmente", range: RangeModel(min: 16, max: 80), certain: 20, generationsIncluded: [.generationZ,.generationY,.generationX,.babyBoomer]),
        ], id: 7),
        Question(question: "Consome bebidas alcoólicas?", options: [
            Option(text: "Pau tora", range: RangeModel(min: 15, max: 28), certain: 80, generationsIncluded: [.generationZ,.generationY]),
            Option(text: "Já passei dessa idade", range: RangeModel(min: 35, max: 80), certain: 60, generationsIncluded: [.generationY,.generationX,.babyBoomer,.silentGeneration]),
            Option(text: "Eventualmente", range: RangeModel(min: 16, max: 80), certain: 20, generationsIncluded: [.generationZ,.generationY,.generationX,.babyBoomer]),
        ], id: 7),
        Question(question: "Consome bebidas alcoólicas?", options: [
            Option(text: "Pau tora", range: RangeModel(min: 15, max: 28), certain: 80, generationsIncluded: [.generationZ,.generationY]),
            Option(text: "Já passei dessa idade", range: RangeModel(min: 35, max: 80), certain: 60, generationsIncluded: [.generationY,.generationX,.babyBoomer,.silentGeneration]),
            Option(text: "Eventualmente", range: RangeModel(min: 16, max: 80), certain: 20, generationsIncluded: [.generationZ,.generationY,.generationX,.babyBoomer]),
        ], id: 7),
        Question(question: "Consome bebidas alcoólicas?", options: [
            Option(text: "Pau tora", range: RangeModel(min: 15, max: 28), certain: 80, generationsIncluded: [.generationZ,.generationY]),
            Option(text: "Já passei dessa idade", range: RangeModel(min: 35, max: 80), certain: 60, generationsIncluded: [.generationY,.generationX,.babyBoomer,.silentGeneration]),
            Option(text: "Eventualmente", range: RangeModel(min: 16, max: 80), certain: 20, generationsIncluded: [.generationZ,.generationY,.generationX,.babyBoomer]),
        ], id: 7),
        Question(question: "Consome bebidas alcoólicas?", options: [
            Option(text: "Pau tora", range: RangeModel(min: 15, max: 28), certain: 80, generationsIncluded: [.generationZ,.generationY]),
            Option(text: "Já passei dessa idade", range: RangeModel(min: 35, max: 80), certain: 60, generationsIncluded: [.generationY,.generationX,.babyBoomer,.silentGeneration]),
            Option(text: "Eventualmente", range: RangeModel(min: 16, max: 80), certain: 20, generationsIncluded: [.generationZ,.generationY,.generationX,.babyBoomer]),
        ], id: 7),
        Question(question: "Consome bebidas alcoólicas?", options: [
            Option(text: "Pau tora", range: RangeModel(min: 15, max: 28), certain: 80, generationsIncluded: [.generationZ,.generationY]),
            Option(text: "Já passei dessa idade", range: RangeModel(min: 35, max: 80), certain: 60, generationsIncluded: [.generationY,.generationX,.babyBoomer,.silentGeneration]),
            Option(text: "Eventualmente", range: RangeModel(min: 16, max: 80), certain: 20, generationsIncluded: [.generationZ,.generationY,.generationX,.babyBoomer]),
        ], id: 7),
    ]
    
    func getQuestions() -> [Question] {
        return questionData.shuffled()
    }
}
