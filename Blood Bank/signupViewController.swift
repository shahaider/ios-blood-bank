//
//  signupViewController.swift
//  Blood Bank
//
//  Created by Syed Shahrukh Haider on 19/04/2017.
//  Copyright © 2017 Syed Shahrukh Haider. All rights reserved.
//

import UIKit

class signupViewController: UIViewController {

    
    @IBOutlet weak var userSignUp: UITextField!
    
    @IBOutlet weak var pwSignUp: UITextField!
    
    @IBOutlet weak var answerSignUp: UITextField!
    
    @IBOutlet weak var nameSignUp: UITextField!
    
    @IBOutlet weak var ageSignUp: UITextField!
    
    @IBOutlet weak var bloodSignUp: UITextField!
    
    @IBOutlet weak var donorSignUp: UITextField!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//       signup()
    }

  
    
    
    @IBAction func submitSignUp(_ sender: Any) {
        print(userSignUp.text!)
        signup()
        print(record.last)
        dismiss(animated: true, completion: nil)
    }

    func signup(){
        
        let signupEntry = form(user: userSignUp.text!, pwd: pwSignUp.text!, answer: answerSignUp.text!, name: nameSignUp.text!, age: ageSignUp.text!, bloodType: bloodSignUp.text!, donor: donorSignUp.text!)
        
        record.append(signupEntry)
        
       
    
    }

}
