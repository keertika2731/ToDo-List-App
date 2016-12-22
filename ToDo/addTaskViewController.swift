//
//  addTaskViewController.swift
//  ToDo
//
//  Created by Keertika Gupta on 22/12/16.
//  Copyright © 2016 Keertika Gupta. All rights reserved.
//

import UIKit

class addTaskViewController: UIViewController , UITextFieldDelegate
{
    var items:[String] = []
    @IBOutlet weak var addTaskTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        addTaskTextField.underlined()
    }

    @IBAction func saveButton(_ sender: Any)
    {
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        if let tempItems = itemsObject as? [String]
        {
            items = tempItems
            items.append(addTaskTextField.text!)
   
        }
    
    else
    {
    items = [addTaskTextField.text!]
    }
       
        
        UserDefaults.standard.set(items, forKey: "items")
        addTaskTextField.text = " saved "

    }
    
         @IBAction func backButton(_ sender: UIBarButtonItem)
    {
        self.dismiss(animated: false, completion: nil)
    }

    
    
}
