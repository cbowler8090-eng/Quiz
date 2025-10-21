//
//  QuizVM.swift
//  Quiz
//
//  Created by Camden Bowler on 10/8/25.
//

import Observation

@Observable
class QuizVM {

    private var quiz = Quiz()
    
    var quote: String { quiz.question + "1"}
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
//    func endQuiz() {
//        if score == 10 {
//            quiz.awnserd -= awnserd
//            quiz.score -= score
//            next()
//        } else{next()}
//    }
    func reset() {
        quiz.resetAwnserd()
        quiz.resetScore()
        input = ""
        quiz.next()
    }
    func next() {
        input = ""
        quiz.next()
    }
    private(set) var easymode = false
    
    func difficulty() -> String {
        if easymode == true {
            return "Hard mode"
        } else {
            return "Easy mode"
        }
    }
    
    func changeDifficulty(){
        if easymode == false {
            easymode = true
        }else {
            easymode = false        }
    }
}
