//
//  ViewController.swift
//  The Daily Bullet 6
//
//  Created by Brenna Cardona on 12/10/17.
//  Copyright © 2017 Brenna Cardona. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var indexTextView: UITextView!
    
    @IBOutlet weak var indexScrollView: UIScrollView!
    
    
    @IBAction func indexSaveBtn(_ sender: Any) {
        
        let defaults: UserDefaults = UserDefaults.standard
        defaults.set(self.indexTextView.text, forKey: "index")
        defaults.synchronize()
        clear()
        
    }
    
    func clear()
    {
        indexTextView.resignFirstResponder()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //This code lets the information in the indexTextView save because we're storing it in User Defaults so when we exit the program and start it back up, the same text will appear.
        
        let defaults: UserDefaults = UserDefaults.standard
        if defaults.string(forKey: "index") != nil{
            indexTextView.text = defaults.string(forKey: "index")
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func indexEditBtn(_ sender: Any) {
        
        //This allows the text thats coming from the index edit view controller to show up in the view controller
        
        let indexEditView = self.storyboard?.instantiateViewController(withIdentifier: "IndexEditViewController") as! IndexEditViewController
        
        indexEditView.opener = self
        indexEditView.previewModeText = indexTextView.text
        
        let indexEditViewNav = UINavigationController(rootViewController: indexEditView)
        
        self.present(indexEditViewNav, animated: true, completion: nil)
        
        
        
    }
    
}

