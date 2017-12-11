//
//  EditFutureLogViewController.swift
//  The Daily Bullet 6
//
//  Created by Brenna Cardona on 12/10/17.
//  Copyright © 2017 Brenna Cardona. All rights reserved.
//

import UIKit

class EditFutureLogViewController: UIViewController {
    
    weak var opener:FutureLogViewController?
    
    var futurePreviewModeText:String?
    
    @IBOutlet weak var editFutureLogTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        editFutureLogTextView.text = futurePreviewModeText
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnFutureDone(_ sender: Any) {
        
        //This is combining with the code in the view controller to allow the text to appear on the other viewer.
        opener!.futureLogTextView.text = editFutureLogTextView.text
        
        self.dismiss(animated: true, completion: nil)    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
