//
//  donorViewController.swift
//  Blood Bank
//
//  Created by Syed Shahrukh Haider on 20/04/2017.
//  Copyright © 2017 Syed Shahrukh Haider. All rights reserved.
//

import UIKit

class donorViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    

    @IBOutlet weak var RecordTable: UITableView!
    
    var userDetail:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        RecordTable.delegate = self
        RecordTable.dataSource = self
//        print(userDetail)

        
        // Do any additional setup after loading the view.
    }
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
    
    return record.count
    }
    

    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
    
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! donorTableViewCell
        
        cell.nameLabel.text = record[indexPath.row].name
        cell.ageLabel.text = record[indexPath.row].age
        cell.bloodgroupLabel.text = record[indexPath.row].bloodType
        cell.actasLabel.text = record[indexPath.row].donor
        
        
        
        return cell
    }
    
    @IBAction func signoutButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
   
//    func username(userD : String){
//    
//    userDetail = userD
//    
//    
//    }
    
}
