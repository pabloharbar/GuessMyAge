//
//  QuestionModel.swift
//  GuessMyAge
//
//  Created by Pablo Penas on 29/07/21.
//

class Question {
    let question: String
    let options: [Option]
    let id: Int
    
    init(question: String, options: [Option], id: Int) {
        self.question = question
        self.options = options
        self.id = id
    }
}
