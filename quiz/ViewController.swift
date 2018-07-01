//
//  ViewController.swift
//  quiz
//
//  Created by Yoshua Elmaryono on 30/06/18.
//  Copyright © 2018 Yoshua Elmaryono. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        questionLabel.text = quizzes[currentQuizIndex].question
    }

    //MARK: Outlets
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!

    //MARK: Actions
    @IBAction func showAnswer(_ sender: UIButton) {
        answerLabel.text = quizzes[currentQuizIndex].answer
    }
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuizIndex += 1
        currentQuizIndex %= quizzes.count
        answerLabel.text = "???"
        questionLabel.text = quizzes[currentQuizIndex].question
    }
    
    //MARK: Model
    typealias Question = String
    typealias Answer = String
    typealias Quiz = (question: Question, answer: Answer)
    typealias Quizzes = [Quiz]
    
    let quizzes: Quizzes = [
        ("Water?","H20"),
        ("Oxygen?","02"),
        ("Ozone?", "O3"),
    ]
    var currentQuizIndex = 0
}

