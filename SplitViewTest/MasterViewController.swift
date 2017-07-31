//
//  MasterViewController.swift
//  SplitViewTest
//
//  Created by Utheim Sverdrup, Ulrik on 13.07.2017.
//  Copyright © 2017 Utheim Sverdrup, Ulrik. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {
    
    let reuseIdentifier = "customCell"
    let colors: [UIColor] = [.red, .blue, .green, .magenta, .purple]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier)
        
        cell?.textLabel?.text = "Message \(indexPath.row+1)"
        cell?.textLabel?.textColor = colors[indexPath.row]
        
        cell?.detailTextLabel?.text = "Blablabla"
        cell?.detailTextLabel?.textColor = UIColor.lightGray
        
        return cell!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationController = segue.destination as? UINavigationController else {
            return
        }
        
        guard let controller = navigationController.viewControllers.first as? DetailViewController else {
            return
        }
        
        guard let indexPath = self.tableView.indexPathForSelectedRow else {
            return
        }
        
        controller.color = colors[indexPath.row]
    }
}
