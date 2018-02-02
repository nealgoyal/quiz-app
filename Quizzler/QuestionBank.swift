//
//  QuestionBank.swift
//  Quizzler
//
//  Created by Neal Goyal on 2/2/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class QuestionBank {
    
    var list = [Question]()
    
    init() {
        // Creating a quiz item and appending it to the list
        let item = Question(ques: "Valentine\'s day is banned in Saudi Arabia.", correctAns: true)
        
        // Add the Question to the list of questions
        list.append(item)
        
        // skipping one step and just creating the quiz item inside the append function
        list.append(Question(ques: "A slug\'s blood is green.", correctAns: true))
        
        list.append(Question(ques: "Approximately one quarter of human bones are in the feet.", correctAns: true))
        
        list.append(Question(ques: "The total surface area of two human lungs is approximately 70 square metres.", correctAns: true))
        
        list.append(Question(ques: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", correctAns: true))
        
        list.append(Question(ques: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", correctAns: false))
        
        list.append(Question(ques: "It is illegal to pee in the Ocean in Portugal.", correctAns: true))
        
        list.append(Question(ques: "You can lead a cow down stairs but not up stairs.", correctAns: false))
        
        list.append(Question(ques: "Google was originally called \"Backrub\".", correctAns: true))
        
        list.append(Question(ques: "Buzz Aldrin\'s mother\'s maiden name was \"Moon\".", correctAns: true))
        
        list.append(Question(ques: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", correctAns: false))
        
        list.append(Question(ques: "No piece of square dry paper can be folded in half more than 7 times.", correctAns: false))
        
        list.append(Question(ques: "Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.", correctAns: true))

    }
    
}
