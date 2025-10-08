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
    
    private let pokemon = ["","","","","","",""]
    
    init() {
        question = pokemon.randomElement()!
    }
    
    mutating func next() {
        // how culd we prevent repeats
        question = pokemon.randomElement()!
        
        //how could we handle runing out of questions
    }
    
    mutating func isValid(_ input: String) -> Bool{
        let isCorect = question == input.lowercased()
        if isCorect {score += 1}
        
            total += 1
        
        return isCorect
    }
}
