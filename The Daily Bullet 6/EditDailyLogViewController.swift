//
//  EditDailyLogViewController.swift
//  The Daily Bullet 6
//
//  Created by Brenna Cardona on 12/10/17.
//  Copyright © 2017 Brenna Cardona. All rights reserved.
//

import UIKit

class EditDailyLogViewController: UIViewController {
    
    weak var opener: DailyLogViewController?
    var dailyPreviewModeText:String?

    @IBOutlet weak var editDailyText: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        editDailyText.text = dailyPreviewModeText
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnDailyDone(_ sender: Any) {
        
        // This is letting the text that we type into the edit daily mode text view show up in the daily view text view. By pressing done we're completing that action and the opener is connecting them.
        
        opener!.dailyLogTextView.text = editDailyText.text
        
        self.dismiss(animated: true, completion: nil)
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
