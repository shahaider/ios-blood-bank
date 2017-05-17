//
//  forgetpasswordViewController.swift
//  Blood Bank
//
//  Created by Syed Shahrukh Haider on 19/04/2017.
//  Copyright © 2017 Syed Shahrukh Haider. All rights reserved.
//

import UIKit

class forgetpasswordViewController: UIViewController {
    @IBOutlet weak var userForget: UITextField!
    @IBOutlet weak var answerForget: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

 
    @IBAction func submitForget(_ sender: Any) {
        
        let username = userForget.text!
        let enterAnswer = answerForget.text!
        
        
        
        for i in record{
        
            if username == i.user{
            
                if enterAnswer == i.answer{
               let alert = UIAlertController(title: "Forget Password", message: i.pwd, preferredStyle: .alert)
                    
                    alert.addAction(.init(title: "DONE", style: .default, handler: { (action) in
                        self.dismiss(animated: true, completion: nil)
                        
                    }))
                    present(alert, animated: true, completion: nil)
                }
                else{
                    let alert = UIAlertController(title: "Forget Password", message: "SORRY DATA NOT AVAILABLE", preferredStyle: .alert)
                    
                    alert.addAction(.init(title: "DONE", style: .default, handler: { (action) in
                        self.dismiss(animated: true, completion: nil)
                        
                    }))
                    present(alert, animated: true, completion: nil)
                
                }
                
            }
        
        }
        
    }
    
    

}
