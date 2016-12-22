//
//  ViewController.swift
//  ToDo
//
//  Created by Keertika Gupta on 21/12/16.
//  Copyright © 2016 Keertika Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource , UITableViewDelegate
{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

   
    @IBOutlet weak var table: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
    let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        return cell
    }
   
    @IBAction func addButton(_ sender: Any)
    
    { let destinationVC = self.storyboard?.instantiateViewController(withIdentifier: "addTaskViewController") as! addTaskViewController
        showDetailViewController(destinationVC, sender: nil)
    }

    
}

