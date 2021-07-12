//
//  ViewController.swift
//  Future Prediction
//
//  Created by MacBook on 11.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    //initialized QuestionBrain struct from Model
    var questionBrain = QuestionBrain()
    
    
    
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var topButton: UIButton!
    @IBOutlet weak var bottomButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    @IBAction func pressedButton(_ sender: UIButton) {
        
        // transfered from button answer options
        // unwrapping userAnswer  with guard statement
        guard let userAnswer = sender.currentTitle else {
            return
        }
        // trigger checkAnswer func from QuesttionBrain struct in Model
        // transfer user anwer from pressed buton to QuesttionBrain struct in Model
        questionBrain.checkAnswer(answer: userAnswer)
        
        // trigger updateUI func block
        updateUI()
        
        
    }
    func updateUI() {
        // transfer a next question from QuestionBrain to Label
        topLabel.text = questionBrain.getQuestion()
        
        // transfer next answer options from QuestionBrain to buttons
        topButton.setTitle(questionBrain.getChoiceOne(), for: .normal)
        bottomButton.setTitle(questionBrain.getChoiceTwo(), for: .normal)
    }
    
}

