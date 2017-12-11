//
//  DailyLogViewController.swift
//  The Daily Bullet 6
//
//  Created by Brenna Cardona on 12/10/17.
//  Copyright © 2017 Brenna Cardona. All rights reserved.
//

import UIKit

class DailyLogViewController: UIViewController {
    @IBOutlet weak var dailyLogTextView: UITextView!
    
    @IBOutlet weak var dailyLogScrollView: UIScrollView!
    
    @IBAction func btnSaveDaily(_ sender: Any) {
        
        //This code lets the information in the viewer to save because we're storing it in User Defaults so when we exit the program and start it back up, the same text will appear.
        let defaults: UserDefaults = UserDefaults.standard
        defaults.set(self.dailyLogTextView.text, forKey: "daily")
        defaults.synchronize()
        clear()
    }
    
    func clear()
    {
        dailyLogTextView.resignFirstResponder()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults: UserDefaults = UserDefaults.standard
        if defaults.string(forKey: "daily") != nil{
            dailyLogTextView.text = defaults.string(forKey: "daily")
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnEditDaily(_ sender: Any) {
        
        let dailyEditMode = self.storyboard?.instantiateViewController(withIdentifier: "EditDailyLogViewController") as! EditDailyLogViewController
        
        dailyEditMode.opener = self
        dailyEditMode.dailyPreviewModeText = dailyLogTextView.text
        
        let dailyEditModeNav = UINavigationController(rootViewController: dailyEditMode)
        
        self.present(dailyEditModeNav, animated: true, completion: nil)
        

        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
