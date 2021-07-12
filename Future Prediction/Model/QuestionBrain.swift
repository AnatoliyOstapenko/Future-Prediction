//
//  QuestionBrain.swift
//  Future Prediction
//
//  Created by MacBook on 12.07.2021.
//

import Foundation

struct QuestionBrain {
    
    var questionNumber = 0
    var n = 2
    
    
    let question = [
        Question(story: """
Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide-brimmed hat and soulless eyes opens the passenger door for you and says: '"Need a ride, boy?".
""", choiceOne: "I'll hop in. Thanks for the help!", choiceTwo: "Well, I don't have many options. Better ask him if he's a murderer"),
        Question(story: """
        He nods slowly, unphased by the question.
        """, choiceOne: "At least he's honest. I'll climb in.", choiceTwo: "Wait, I know how to change a tire."),
        Question(story: """
You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier.
""", choiceOne: "I love Elton John! Hand him the cassette tape.", choiceTwo: "It’s him or me. Take the knife and stab him."),
        Question(story: """
        What? Such a cop-out! Did you know accidental traffic accidents are the second leading cause of
         accidental death for most adult age groups?
        """, choiceOne: "The", choiceTwo: "End"),
        Question(story: """
        As you smash through the guardrail and careen towards the jagged rocks below you reflect
         on the dubious wisdom of stabbing someone while they are driving a car you are in.
        """, choiceOne: "The", choiceTwo: "End"),
        Question(story: """
        You bond with the murderer while crooning verses of "Can you feel the love tonight". He
         drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply:
         "Try the pier."
        """, choiceOne: "The", choiceTwo: "End")
    ]
    
    // set func to check user answer from View with answer in Model
    mutating func checkAnswer(answer userAnswer: String) {
        if userAnswer == question[questionNumber].choiceOne {
            questionNumber += n
            n += 1
            
        } else if userAnswer == question[questionNumber].choiceTwo {
            questionNumber += questionNumber
        }
    }
    // get a story from array above
    func getQuestion() -> String {
        return question[questionNumber].story
    }
    // get a choice one from array above
    func getChoiceOne () -> String {
        return question[questionNumber].choiceOne
    }
    // get a choice two from array above
    func getChoiceTwo() -> String {
        return question[questionNumber].choiceTwo
    }
    
    
}
