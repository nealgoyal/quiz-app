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
    var score : Int = 0
    
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
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "\(questionNum + 1)/13"
        progressBar.frame.size.width = ((view.frame.size.width) / 13) * CGFloat(questionNum)
    }
    

    func nextQuestion() {
        if questionNum <= 12 {
            questionLabel.text = allQuestions.list[questionNum].questionText
            updateUI()
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
            score += 1
        } else {
            print("Incorrect! Correct Answer: \(correctA)")
        }
        
    }
    
    
    func startOver() {
        questionNum = 0
        score = 0
        nextQuestion()
    }
    

    
}
