//
//  Question.swift
//  Future Prediction
//
//  Created by MacBook on 12.07.2021.
//

import Foundation

struct Question {
    
    let story: String
    let choiceOne: String
    let choiceTwo: String
    
    init(story: String, choiceOne: String, choiceTwo: String) {
        self.story = story
        self.choiceOne = choiceOne
        self.choiceTwo = choiceTwo
    }
}
