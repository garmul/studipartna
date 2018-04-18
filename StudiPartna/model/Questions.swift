//
//  Questions.swift
//  StudiPartna
//
//  Created by Gary Mullings on 3/31/18.
//  Copyright © 2018 Gary Mullings. All rights reserved.
//

import Foundation
import Firebase

class Questions {
    var questions :  [String : [Question]]?

    init() {
       
        loadquestions()
    }
    
 private func loadquestions(){
    

     questions = [ SubjectsEnum.English.rawValue : [
                      Question( question: "What is a Proper Noun?",
                                answers:[ Answer(answer: "It names anything",isCorrect: false),
                                Answer(answer: "It names a specific thing", isCorrect: true),
                                Answer(answer: "It tells what the subject is doing", isCorrect: false ),
                                Answer(answer: "It connects two sentences", isCorrect: false)]
                                ),
                      Question( question: "What is a Common Noun?",
                                answers:[ Answer(answer: "It names anything",isCorrect: false),
                                          Answer(answer: "It names a specific thing", isCorrect: true),
                                          Answer(answer: "It tells what the subject is doing", isCorrect: false ),
                                          Answer(answer: "It connects two sentences", isCorrect: false)]
                                ),
                        Question( question: "What is an Abstract Noun?",
                                  answers:[ Answer(answer: "It names anything",isCorrect: false),
                                            Answer(answer: "It names a specific thing", isCorrect: true),
                                            Answer(answer: "It tells what the subject is doing", isCorrect: false ),
                                            Answer(answer: "It is an idea ", isCorrect: false)]
                        )
      
                      ],
                             SubjectsEnum.History.rawValue : [
                                Question( question: "Who was Christopher Columbus?",
                                          answers:[ Answer(answer: "He was a Carpenter that made houses",isCorrect: false),
                                                    Answer(answer: "He rediscovered the new world and exploited it", isCorrect: true),
                                                    Answer(answer: "He was a musician", isCorrect: false ),
                                                    Answer(answer: "He was an inventory", isCorrect: false)]
                                ),
                                Question( question: "What was the purpose of the Boston Tea Part?",
                                          answers:[ Answer(answer: "It names anything",isCorrect: false),
                                                    Answer(answer: "It names a specific thing", isCorrect: true),
                                                    Answer(answer: "It tells what the subject is doing", isCorrect: false ),
                                                    Answer(answer: "It connects two sentences", isCorrect: false)]
                                ),
                                Question( question: "When did man first discovered fire?",
                                          answers:[ Answer(answer: "It names anything",isCorrect: false),
                                                    Answer(answer: "It names a specific thing", isCorrect: true),
                                                    Answer(answer: "It tells what the subject is doing", isCorrect: false ),
                                                    Answer(answer: "It is an idea ", isCorrect: false)]
                                )
                                
                              ],
                             SubjectsEnum.Mathematics.rawValue : [
                                Question( question: "What is the hypotenuse?",
                                          answers:[ Answer(answer: "This is a hypothetical concept in mathematics",isCorrect: false),
                                                    Answer(answer: "The longest side of a right triangle, opposite the right angle", isCorrect: true),
                                                    Answer(answer: "The Shortest side of a right triangle, opposite the right angle", isCorrect: false ),
                                                    Answer(answer: "It does not exists in mathematics", isCorrect: false)]
                                ),
                                Question(question: "What is pi?",
                                         answers:[ Answer(answer: "This is a hypothetical concept in mathematics",isCorrect: false),
                                                   Answer(answer: "The longest side of a right triangle, opposite the right angle", isCorrect: true),
                                                   Answer(answer: "The Shortest side of a right triangle, opposite the right angle", isCorrect: false ),
                                                   Answer(answer: "It does not exists in mathematics", isCorrect: false)]
                                ),
                                Question( question: "What is pythagorean theorem ?",
                                          answers:[ Answer(answer: "This is a hypothetical concept in mathematics",isCorrect: false),
                                                    Answer(answer: "The longest side of a right triangle, opposite the right angle", isCorrect: true),
                                                    Answer(answer: "The Shortest side of a right triangle, opposite the right angle", isCorrect: false ),
                                                    Answer(answer: "It does not exists in mathematics", isCorrect: false)]
                                )
                                
                              ]
                             
                             ]
        
    


  

    
//
//    question = Question(subject: .Biology,
//                        question: "What is  DNA?",
//                        answers:[ Answer(answer: "It is the elements that make up life",isCorrect: false),
//                                  Answer(answer: "It discribes how life functions", isCorrect: false),
//                                  Answer(answer: "It is how humans classify living things", isCorrect: false ),
//                                  Answer(answer: "It is the instructions that discribes how lifeforms are constructed", isCorrect: true)]
//    )
//    questions.append(question)
//



//    questionRecord = QuestionRecord(subject: .MachineLearning, question: "You are given a train data set having 1000 columns and 1 million rows. The data set is based on a classification problem. Your manager has asked you to reduce the dimension of this data so that model computation time can be reduced. Your machine has memory constraints. What would you do? (You are free to make practical assumptions.)", answerA: Answer(answer: "Processing a high dimensional data on a limited memory machine is a strenuous task, your interviewer would be fully aware of that. Following are the methods you can use to tackle such situation:",isCorrect: false), answerB: Answer(answer: "It discribes how life functions", isCorrect: false) , answerC: Answer(answer: "It is how humans classify living things", isCorrect: false ) , answerD: Answer(answer: "It is the instructions that discribes how lifeforms are constructed", isCorrect: true))
//
//    questions.append(questionRecord)
//
//    questionRecord = QuestionRecord(subject: .History, question: "Is rotation necessary in PCA? If yes, Why? What will happen if you don’t rotate the components?", answerA: Answer(answer: "Yes, rotation (orthogonal) is necessary because it maximizes the difference between variance captured by the component. This makes the components easier to interpret. Not to forget, that’s the motive of doing PCA where, we aim to select fewer components (than features) which can explain the maximum variance in the data set. By doing rotation, the relative location of the components doesn’t change, it only changes the actual coordinates of the points",isCorrect: false), answerB: Answer(answer: "He was an inventory", isCorrect: false) , answerC: Answer(answer: "He rediscovered the new world and exploited it", isCorrect: true ) , answerD: Answer(answer: "He was a musician", isCorrect: false))
//
//    questions.append(questionRecord)
   
  
 

    
    
    
    }

}
