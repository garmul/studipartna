//
//  CreateQuestionViewController.swift
//  StudiPartna
//
//  Created by Gary Mullings on 4/13/18.
//  Copyright © 2018 Gary Mullings. All rights reserved.
//

import UIKit
import Firebase

class CreateQuestionViewController: UIViewController {

    @IBOutlet weak var question: UITextView!
    @IBOutlet weak var answerA: UITextField!
    @IBOutlet weak var answerB: UITextField!
    @IBOutlet weak var answerC: UITextField!
    @IBOutlet weak var answerD: UITextField!
    @IBOutlet weak var correctAnswer: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addQuestion(_ sender: UIButton) {
        let questionRecord = ["question" : question.text,
                              "answerA"  : answerA.text,
                              "answerB"  : answerB.text,
                              "answerC"  : answerC.text,
                              "answerD"  : answerD.text,
                              "correctAnswer" : correctAnswer.text,
                              "user" : Auth.auth().currentUser?.email
                            ]
       let database =  Database.database().reference().child("Questions")
       
       database.childByAutoId().setValue(questionRecord)
            
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
