//
//  QuestionBrain.swift
//  Future Prediction
//
//  Created by MacBook on 12.07.2021.
//

import UIKit

struct QuestionBrain {
    
    var questionNumber = 0
    
    let question = [
        Question(story: """
Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide-brimmed hat and soulless eyes opens the passenger door for you and says: '"Need a ride, boy?".
""", choiceOne: "I'll hop in. Thanks for the help!", choiceTwo: "Well, I don't have many options. Better ask him if he's a murderer"),
        Question(story: """
        He nods slowly, unphased by the question.
        """, choiceOne: "At least he's honest. I'll climb in.", choiceTwo: "Wait, I know how to change a tire."),
        Question(story: """
As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and
 angrier by the minute. He asks you to open the glove box. Inside you find a bloody knife, two severed fingers, and
 a cassette tape of Elton John. He reaches for the glove box
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
    mutating func checkAnswer(answer currentAnswer: String) {
     
        // switch loop to toggle to specific question number depending on reply chosen
        switch currentAnswer {
        case "I'll hop in. Thanks for the help!":
            questionNumber = 2
        case "I love Elton John! Hand him the cassette tape.":
            questionNumber = 5
        case "Well, I don't have many options. Better ask him if he's a murderer":
            questionNumber = 1
        case "Wait, I know how to change a tire.":
            questionNumber = 3
        default:
            questionNumber = 0
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
