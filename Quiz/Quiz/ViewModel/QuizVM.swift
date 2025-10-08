//
//  QuizVM.swift
//  Quiz
//
//  Created by Camden Bowler on 10/8/25.
//

import Observation

@Observable
class  QuizVM {
    
    private var quiz = Quiz()
    
    var question: String { quiz.question }
    var score: Int { quiz.score }
    var awnserd: Int { quiz.total }
    
    var input = ""
    
    var showResult = false
    private(set) var wasCorrect = false
    
    func guess() {
        wasCorrect = quiz.isValid(input)
        showResult = true
    }
    
    func next() {
        input = ""
        quiz.next()
    }
    
}
