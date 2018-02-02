//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    let allQuestions = QuestionBank()
    var pickedAns = false
    var questionNum = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstQ = allQuestions.list[0]
        questionLabel.text = firstQ.questionText
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        
        if sender.tag == 1 {
            pickedAns = true
        } else {
            pickedAns = false
        }
        
        checkAnswer()
        questionNum += 1
        nextQuestion()
    }
    
    
    func updateUI() {
      
    }
    

    func nextQuestion() {
        if questionNum <= 12 {
            questionLabel.text = allQuestions.list[questionNum].questionText
        } else {
            let alert = UIAlertController(title: "Awesome", message: "You finished all the questions! Want to start over?", preferredStyle: .alert)
            let restart = UIAlertAction(title: "Restart", style: .default, handler:
            { (UIAlertAction) in
                self.startOver()
            })
            
            alert.addAction(restart)
            present(alert, animated: true, completion: nil)
        }
    }
    
    
    func checkAnswer() {
        
        let correctA = allQuestions.list[questionNum].answer
        
        if correctA == pickedAns {
            print("You got it! Correct Answer: \(correctA)")
        } else {
            print("Incorrect! Wrong Answer: \(correctA)")
        }
        
    }
    
    
    func startOver() {
        questionNum = 0
        nextQuestion()
    }
    

    
}
