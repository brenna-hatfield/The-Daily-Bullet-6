//
//  MenuBarViewController.swift
//  The Daily Bullet 6
//
//  Created by Brenna Cardona on 12/10/17.
//  Copyright © 2017 Brenna Cardona. All rights reserved.
//

import UIKit

class MenuBarViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // We're using this code here because it essentially makes up the menu bar and where we'll allow the links to take us when clicking on them. We're using the nofication center to send the communcations between the viewers. 
        
        NotificationCenter.default.addObserver(self, selector: #selector(showIndex), name: NSNotification.Name("ShowIndex"), object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(showFutureLog), name: NSNotification.Name("ShowFutureLog"), object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(showDailyLog), name: NSNotification.Name("ShowDailyLog"), object: nil)
        
        
    }
    
    
    @objc func showIndex() {
        performSegue(withIdentifier: "ShowIndex", sender: nil)
    }
    
    @objc func showFutureLog() {
        performSegue(withIdentifier: "ShowFutureLog", sender: nil)
    }
    
    @objc func showDailyLog() {
        performSegue(withIdentifier: "ShowDailyLog", sender: nil)
    }
    
    

    @IBAction func onMoreTapped() {
        print("Toggle Side Menu")
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
    }

}
