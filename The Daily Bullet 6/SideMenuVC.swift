//
//  SideMenuVCTableViewController.swift
//  The Daily Bullet 6
//
//  Created by Brenna Cardona on 12/10/17.
//  Copyright © 2017 Brenna Cardona. All rights reserved.
//

import UIKit

class SideMenuVC: UITableViewController {

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print(indexPath.row)
        
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
        
        
        
    }

}
