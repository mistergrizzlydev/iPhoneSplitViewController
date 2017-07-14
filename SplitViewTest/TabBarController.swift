//
//  TabBarController.swift
//  SplitViewTest
//
//  Created by Utheim Sverdrup, Ulrik on 13.07.2017.
//  Copyright © 2017 Utheim Sverdrup, Ulrik. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    let tabbarTitles = ["Yellow","Red Split View"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTabbarItems()
    }
    
    func setTabbarItems() {
        let tabbarItems = tabBar.items!
        
        for (itemIndex, item) in tabbarItems.enumerated() {
            item.title = tabbarTitles[itemIndex]
        }
    }
}
