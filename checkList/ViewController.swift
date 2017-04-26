//
//  ViewController.swift
//  checkList
//
//  Created by Upadhyay, Priyanka on 4/26/17.
//  Copyright © 2017 Upadhyay, Priyanka. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    
    let foods = ["tomato", "apple", "cheese", "milk", "potato"]
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foods.count
    }
    override func tableView(_ _tableView: UITableView, cellForRowAt indexPath: IndexPath)-> UITableViewCell
    {
    
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = foods[indexPath.row]
        return cell
    }
    
    
    //to check
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        if tableView.cellForRow(at: indexPath)?.accessoryType == UITableViewCellAccessoryType.checkmark
        {
            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.none
        }
        else
        {
            tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.checkmark
        }
    }
    
    

        
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

