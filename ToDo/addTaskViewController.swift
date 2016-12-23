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
    
    
    @IBOutlet weak var dateTextField: UITextField!
    
    var items:[String] = []
    @IBOutlet weak var addTaskTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        addTaskTextField.underlined()
    }

    func textFieldDidBeginEditing(_ textField: UITextField) {
        let datePicker = UIDatePicker()
        dateTextField.inputView = datePicker
        datePicker.datePickerMode = UIDatePickerMode.date
               datePicker.addTarget(self, action: #selector(datePickerChanged(sender:)), for: .valueChanged)
        
    }
    func datePickerChanged(sender: UIDatePicker)
    {dateTextField.text = ""
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        dateTextField.text = formatter.string(from: sender.date)
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        addTaskTextField.resignFirstResponder()
        dateTextField.resignFirstResponder()
        return true
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
        addTaskTextField.text = " "

    }
    
         @IBAction func backButton(_ sender: UIBarButtonItem)
    {
        self.dismiss(animated: false, completion: nil)
    }

    
    
}
