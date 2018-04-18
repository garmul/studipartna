//
//  LoginViewController.swift
//  StudiPartna
//
//  Created by Gary Mullings on 4/12/18.
//  Copyright © 2018 Gary Mullings. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var passWord: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        userName.text = "gsmullings@gmail.com"
        passWord.text = "kratos@1234"
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func login(_ sender: Any) {
       
        Auth.auth().signIn(withEmail: userName.text!, password: passWord.text!) { (user, error) in
            if error == nil {
                 print("Success")
                 self.performSegue(withIdentifier: "gotoMain", sender: self)
            }
            else {
                print(error!)
               
            }
        }
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
