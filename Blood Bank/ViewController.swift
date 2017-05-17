//
//  loginViewController.swift
//  Blood Bank
//
//  Created by Syed Shahrukh Haider on 19/04/2017.
//  Copyright © 2017 Syed Shahrukh Haider. All rights reserved.
//

import UIKit

//protocol bloodBankDelegate{
//
//   
//    func username(userD : String)
//
//}


class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var user: UITextField!
    @IBOutlet weak var password: UITextField!
  
 
    @IBOutlet weak var statusLabel: UILabel!
  
// create delegate
//    let vcDelegate : bloodBankDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        user.delegate = self
        password.delegate = self
        

    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        statusLabel.text = ""
      user.clearsOnBeginEditing = true
        password.text = ""
        
    }

    @IBAction func loginButton(_ sender: Any) {
        
       let checkUser = user.text!
       
       let checkPassword = password.text!
        
        for i in record{
        
            if checkUser == i.user {
                
                if checkPassword == i.pwd{
                
                performSegue(withIdentifier: "donorSegue", sender: nil)
                
                    // sent userID detail
//                 vcDelegate?.username(userD: i.user)
                }
            
            }
            else{
            statusLabel.text = "Access Denied"
            }
        }
        

    }

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//     
//        let controller = segue.destination as! donorViewController
//        controller.userDetail = user.text!
//       
//    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        user.resignFirstResponder()
        password.resignFirstResponder()
        
        return true
    }
}

