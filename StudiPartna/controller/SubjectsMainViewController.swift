//
//  QuestionsMainViewController.swift
//  StudiPartna
//
//  Created by Gary Mullings on 4/16/18.
//  Copyright © 2018 Gary Mullings. All rights reserved.
//

import UIKit

class SubjectsMainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource,UISearchBarDelegate {
  
    
    let subjectsModel = Subject()
    
    var theSubjects : [String]?
    
    var selectedSubject = ""

    @IBOutlet weak var searchText: UISearchBar!
    @IBOutlet weak var subjectsTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.theSubjects = subjectsModel.subjects
        
        subjectsTableView.delegate   = self
        subjectsTableView.dataSource = self
        
        searchText.showsCancelButton = true
        searchText.delegate          = self
        
         // Do any additional setup after loading the view.
    }

    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
        let filtered = try theSubjects?.filter({ (string) -> Bool in
           return string.localizedCaseInsensitiveContains((self.searchText?.text)!)
        })
        
        self.theSubjects = filtered
        subjectsTableView.reloadData()
  }

    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.text = nil
        
        self.theSubjects = subjectsModel.subjects
        subjectsTableView.reloadData()
        
       print("cancel")
    }
    
    
    
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (theSubjects?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "subjects", for: indexPath)
        
        cell.textLabel?.text = self.theSubjects?[indexPath.row]
        cell.detailTextLabel?.text = self.theSubjects?[indexPath.row]
  
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedSubject = (self.theSubjects?[indexPath.row])!
        performSegue(withIdentifier: "gotoQuestions", sender: self)
        
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let VC = segue.destination as? QuestionsViewController {
            VC.subject = selectedSubject
        }
    }
   

}
