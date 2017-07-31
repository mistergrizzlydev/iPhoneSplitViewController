//
//  DetailViewController.swift
//  SplitViewTest
//
//  Created by Utheim Sverdrup, Ulrik on 13.07.2017.
//  Copyright © 2017 Utheim Sverdrup, Ulrik. All rights reserved.
//

import UIKit

class DetailViewController: UITableViewController {
    var color: UIColor = UIColor.cyan
    let reuseIdentifier = "favoriteCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = color
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier)
        
        cell?.textLabel?.text = "Favorite number \(indexPath.row+1)"
        
        return cell!
    }
}
