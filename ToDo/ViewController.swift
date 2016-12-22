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
    var items : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    override func viewDidAppear(_ animated: Bool)
    {
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        if let tempItems = itemsObject as? [String]
        {
            items = tempItems
            
        }
        print (items)
        table.reloadData()

    }
    @IBOutlet weak var table: UITableView!
   internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
    let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        
        cell.textLabel?.text = items[indexPath.row]
        
        return cell
    }
   
    @IBAction func addButton(_ sender: Any)
    
    { let destinationVC = self.storyboard?.instantiateViewController(withIdentifier: "addTaskViewController") as! addTaskViewController
        showDetailViewController(destinationVC, sender: nil)
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            items.remove(at: indexPath.row)
        }
        table.reloadData()
        UserDefaults.standard.set(items, forKey: "items")
    }
}

