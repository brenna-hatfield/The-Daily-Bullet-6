//
//  HomeViewController.swift
//  The Daily Bullet 6
//
//  Created by Brenna Cardona on 12/10/17.
//  Copyright © 2017 Brenna Cardona. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var sideMenuConstraint: NSLayoutConstraint!
    var sideMenuOpen = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(toggleSideMenu), name: NSNotification.Name("ToggleSideMenu"), object: nil)
    }
    
    
    //This is allowing the menu to open and close
    
    @objc func toggleSideMenu() {
        if sideMenuOpen {
            sideMenuOpen = false
            sideMenuConstraint.constant = -240
            
        } else {
            
            sideMenuOpen = true
            sideMenuConstraint.constant = 0
            
        }
        
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }

}
