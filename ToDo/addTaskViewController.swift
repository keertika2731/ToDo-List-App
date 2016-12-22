//
//  addTaskViewController.swift
//  ToDo
//
//  Created by Keertika Gupta on 22/12/16.
//  Copyright © 2016 Keertika Gupta. All rights reserved.
//

import UIKit

class addTaskViewController: UIViewController {

    @IBOutlet weak var addTaskTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        addTaskTextField.underlined()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

       

}
