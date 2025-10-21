//
//  Quiz.swift
//  Quiz
//
//  Created by Camden Bowler on 10/8/25.
//

struct Quiz {
    
    private(set) var score = 0
    private(set) var total = 0
    private(set) var question: String
    
    private let animatronics = ["music man","foxy","deedee","scraptrap","funtime foxy","mr.hippo","rockstar freddy","puppet","baby","ballora","nightmare","nightmare freddy","lolbit","henry","phone guy","michael","old man consequences","mangle","fredbear plush","golden freddy"]
    
    init() {
        question = animatronics.randomElement()!
    }
    mutating func next() {
        question = animatronics.randomElement()!
    }
//    mutating func newGame() {
//            total -= total
//            score -= score
//    }
    mutating func resetAwnserd() {
        total -= total
    }
    mutating func resetScore() {
        score -= score
    }
    mutating func isValid(_ input: String) -> Bool{
        let isCorect = question == input.lowercased()
        if isCorect {score += 1}
        
            total += 1
        
        return isCorect
    }
}
