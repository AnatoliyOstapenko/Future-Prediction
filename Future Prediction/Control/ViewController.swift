//
//  ViewController.swift
//  Future Prediction
//
//  Created by MacBook on 11.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    // QuestionBrain structure is initialized
    var questionBrain = QuestionBrain()
    
    
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var topButton: UIButton!
    @IBOutlet weak var bottomButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pressedButton(_ sender: UIButton) {
        
        // transfered from button answer options
        // unwrapping userAnswer  with guard statement
        guard let userAnswer = sender.currentTitle else {
            return
        }
        
        
    }
    
}

