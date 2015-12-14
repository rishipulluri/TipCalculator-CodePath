//
//  SettingsViewController.swift
//  TipCal
//
//  Created by SARITHA PULLURI on 12/6/15.
//  Copyright © 2015 Rishi PULLURI. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var percentageoutlet: UISegmentedControl!

  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(animated: Bool) {
        
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        let defaults = NSUserDefaults.standardUserDefaults()
        let percentIndex = defaults.integerForKey("%")
        percentageoutlet.selectedSegmentIndex = percentIndex
        
        
    }
    @IBAction func percentageDefault(sender: AnyObject) {
       
        let defaults = NSUserDefaults.standardUserDefaults()
         let percentage = percentageoutlet.selectedSegmentIndex
        defaults.setInteger(percentage, forKey: "%")
        defaults.synchronize()

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
