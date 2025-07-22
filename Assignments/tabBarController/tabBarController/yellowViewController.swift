//
//  yellowViewController.swift
//  tabBarController
//
//  Created by Student on 21/07/25.
//

import UIKit

class yellowViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarItem.badgeValue = "1"
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        tabBarItem.badgeValue = nil
    }


}
