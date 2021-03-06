//
//  SplitViewController.swift
//  SplitViewTest
//
//  Created by Utheim Sverdrup, Ulrik on 13.07.2017.
//  Copyright © 2017 Utheim Sverdrup, Ulrik. All rights reserved.
//

import UIKit

class SplitViewController: UISplitViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        self.preferredDisplayMode = .allVisible
        self.delegate = self
    }
}

extension SplitViewController: UISplitViewControllerDelegate {
    public func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController: UIViewController, onto primaryViewController: UIViewController) -> Bool {
        return true
    }
}
