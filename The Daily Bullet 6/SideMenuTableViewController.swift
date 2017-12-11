//
//  SideMenuTableViewController.swift
//  The Daily Bullet 6
//
//  Created by Brenna Cardona on 12/10/17.
//  Copyright © 2017 Brenna Cardona. All rights reserved.
//

import UIKit

class SideMenuTableViewController: UITableViewController {
    
    //This code allows the menu that pops in from the right to go to each viewer by segues. We're using the notification center to allow the communication between them. 

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print(indexPath.row)
        
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
        
        switch indexPath.row{
        case 0: NotificationCenter.default.post(name: NSNotification.Name("ShowIndex"), object: nil)
        case 1: NotificationCenter.default.post(name: NSNotification.Name("ShowFutureLog"), object: nil)
        case 2: NotificationCenter.default.post(name: NSNotification.Name("ShowDailyLog"), object: nil)
        default: break
            
        }
    }
}
