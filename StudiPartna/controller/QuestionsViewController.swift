
//  ViewController.swift
//  StudiPartna
//
//  Created by Gary Mullings on 3/31/18.
//  Copyright © 2018 Gary Mullings. All rights reserved.
//

import UIKit
import GameplayKit
import Firebase


class QuestionsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var subject : String? 
    
    let model = Questions()
    var currentQuestion = 0
    var correctAnswers = 0
    var tries = 0
    
    @IBOutlet weak var tableview: UITableView!
    @IBOutlet weak var score: UILabel!
    
    
    @IBOutlet weak var navBar: UINavigationBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.delegate = self
        tableview.dataSource = self
        
        //navBar.items?.popLast()
        for item in navBar.items! {
            print(item.title!)
        }
        navBar.items![0].title = subject //model.questions
       
        
        
        tableview.register(UINib(nibName: "AnswerTableViewCell", bundle: nil ), forCellReuseIdentifier: "mycell")
        tableview.rowHeight = UITableViewAutomaticDimension
        tableview.estimatedRowHeight = 120
    
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let celldata = tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath) as! AnswerTableViewCell
    
       
        
        if indexPath.section == 0 {
            celldata.dataString?.text = model.questions![subject!]?[currentQuestion].question
        
            celldata.accessoryType = UITableViewCellAccessoryType(rawValue: 2)!
            
        } else {
            celldata.dataString?.text = model.questions![subject!]?[currentQuestion].answers[indexPath.row].answer
         //   celldata.dataString?.text = model.questions[currentQuestion].answers[indexPath.row].answer
            
        }
        
        return celldata
        
    }
    
    
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        
        performSegue(withIdentifier: "gotoQuestionSummary", sender: self)
        
        print("Go to Next Segue")
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return CGFloat(10)
        } else {
            return CGFloat(15)
        }
        
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
            return (model.questions![subject!]?[currentQuestion].answers.count)!
        }
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        
        if indexPath.section != 0 {
            
            
            checkAnswer(indexPath: indexPath)
        } else {
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
    
    
    @IBAction func done(_ sender: UIBarButtonItem) {
        
//        do {
//            try Auth.auth().signOut()
              self.dismiss(animated: true, completion: nil)
//
//            
//        } catch  {
//            print("There was an error")
//        }
//
        
        
    }
    
    
    func checkAnswer(indexPath: IndexPath)  {
        let alert = UIAlertController(title: "Check Answer", message: "Are You sure", preferredStyle: .actionSheet)
        
        let actionOK = UIAlertAction(title: "OK", style: .default) { (action) in
            
            self.tries += 1
            
            if  self.model.questions![self.subject!]?[self.currentQuestion].answers[indexPath.row].isCorrect == true {

                self.correctAnswers += 1

            }

           
            
            
            if self.currentQuestion == (self.model.questions![self.subject!]?.count)! - 1 {
                self.score.text = "Score : \(self.correctAnswers ) / \(self.tries) -- no. of questions \(self.model.questions![self.subject!]!.count)"
                self.correctAnswers  = 0
                self.currentQuestion = 0
                self.tries = 0
               // self.score.text = "Score : 0"
            } else {

                self.score.text = "Score : \(self.correctAnswers ) / \(self.tries) -- no. of questions \(self.model.questions![self.subject!]!.count)"
                self.currentQuestion += 1
            }



//            self.navBar.items![0].title = self.model.questions[self.currentQuestion].subject.rawValue
         self.tableview.reloadData()
        }
        let actionCancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alert.addAction(actionOK)
        alert.addAction(actionCancel)
        
        present(alert, animated: true, completion: nil)
        
        
    }
    //MARK: - This is a test
}

