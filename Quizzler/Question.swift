//
//  Question.swift
//  Quizzler
//
//  Created by Neal Goyal on 2/2/18.
//

import Foundation

class Question {
    
    let questionText : String
    let answer : Bool
    
    init(ques : String, correctAns : Bool) {
        questionText = ques
        answer = correctAns
    }
}
