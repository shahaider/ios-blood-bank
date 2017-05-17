//
//  database.swift
//  Blood Bank
//
//  Created by Syed Shahrukh Haider on 19/04/2017.
//  Copyright © 2017 Syed Shahrukh Haider. All rights reserved.
//

import Foundation




struct form{
    
    var user: String
    var pwd: String
    var answer: String
    var name: String
    var age: String
    var bloodType : String
    var donor : String
    
}

var record = [form(user: "shahaider", pwd: "qwerty",answer: "ssuet", name: "ShahRukh", age: "34", bloodType: "O+", donor: "yes"),
              form(user: "ahmed", pwd: "asdfgh",answer: "bss", name: "Ahmed khan", age: "24", bloodType: "O-", donor: "no"),
              form(user: "faisal", pwd: "asdfgh",answer: "kisian", name: "Faisal Sajjad", age: "35", bloodType: "AB+", donor: "no"),
              form(user: "sami", pwd: "12345",answer: "tcs", name: "Sami Alam", age: "30", bloodType: "O+", donor: "yes"),
              form(user: "azeem", pwd: "zxcvbnm",answer: "aes", name: "Azeem Malik", age: "18", bloodType: "AB-", donor: "yes"),
              form(user: "faizan", pwd: "67890",answer: "Peter", name: "Faizan Siddiqui", age: "45", bloodType: "B+", donor: "no")
            ]
    

