//
//  donorTableViewCell.swift
//  Blood Bank
//
//  Created by Syed Shahrukh Haider on 20/04/2017.
//  Copyright © 2017 Syed Shahrukh Haider. All rights reserved.
//

import UIKit

class donorTableViewCell: UITableViewCell {

    
   
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var actasLabel: UILabel!
    @IBOutlet weak var bloodgroupLabel: UILabel!
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
