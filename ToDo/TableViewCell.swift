//
//  TableViewCell.swift
//  ToDo
//
//  Created by Keertika Gupta on 23/12/16.
//  Copyright © 2016 Keertika Gupta. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell
{
   var toggleState = 1
    
    @IBOutlet weak var checkbox: UIButton!
    
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBAction func checkboxTapped(_ sender: Any)
    {
        if toggleState == 1
        {
            checkbox.setBackgroundImage(UIImage(named:"blueBox.png"), for: UIControlState.normal)
            toggleState = 2
        }
            
        else
        {
            checkbox.setBackgroundImage(UIImage(named: "bluecheckbox.png"), for: UIControlState.normal)
            toggleState = 1
        }

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
