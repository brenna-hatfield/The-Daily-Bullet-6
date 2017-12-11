//
//  FutureLogViewController.swift
//  The Daily Bullet 6
//
//  Created by Brenna Cardona on 12/10/17.
//  Copyright © 2017 Brenna Cardona. All rights reserved.
//

import UIKit

class FutureLogViewController: UIViewController {
    @IBOutlet weak var futureLogTextView: UITextView!
    
    @IBAction func btnFutureSave(_ sender: Any) {
        let defaults: UserDefaults = UserDefaults.standard
        defaults.set(self.futureLogTextView.text, forKey: "future")
        defaults.synchronize()
        clear()
    }
    
    func clear()
    {
        futureLogTextView.resignFirstResponder()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //This code lets the information in the viewer to save because we're storing it in User Defaults so when we exit the program and start it back up, the same text will appear.
        
        let defaults: UserDefaults = UserDefaults.standard
        if defaults.string(forKey: "future") != nil{
            futureLogTextView.text = defaults.string(forKey: "future")
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnFutureEdit(_ sender: Any) {
        
        //This allows the text thats coming from the index edit view controller to show up in the view controller
        
        let futureLogView = self.storyboard?.instantiateViewController(withIdentifier: "EditFutureLogViewController") as! EditFutureLogViewController
        
        futureLogView.opener = self
        futureLogView.futurePreviewModeText = futureLogTextView.text
        
        let futureLogViewNav = UINavigationController(rootViewController: futureLogView)
        
        self.present(futureLogViewNav, animated: true, completion: nil)
        
        
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
