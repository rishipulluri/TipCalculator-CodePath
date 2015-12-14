//
//  ViewController.swift
//  TipCal
//
//  Created by SARITHA PULLURI on 12/6/15.
//  Copyright © 2015 Rishi PULLURI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var billAmountfield: UITextField!
    @IBOutlet weak var twopersonLabel: UILabel!
    @IBOutlet weak var ThreePersonLabel: UILabel!
    @IBOutlet weak var fourpersonLabel: UILabel!
    @IBOutlet weak var twoPersonTip: UILabel!
    @IBOutlet weak var threePersonTip: UILabel!
    @IBOutlet weak var fourPersonTip: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        totalLabel.text = "$0.00"
        tipLabel.text = "0.00"
        twopersonLabel.text = "👫"
        ThreePersonLabel.text = "👪"
        fourpersonLabel.text = "👩‍👩‍👧‍👧"
        twoPersonTip.text = "$0.00"
        threePersonTip.text = "$0.00"
        fourPersonTip.text = "$0.00"
        


    }
 

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        let defaults = NSUserDefaults.standardUserDefaults()
        let percentIndex = defaults.integerForKey("%")
        tipControl.selectedSegmentIndex = percentIndex
        print("view will appear")
       // self.view.backgroundColor = UIColor.blueColor()
        

    }
    override func viewDidAppear(see: Bool) {
        super.viewDidAppear(see)
        print("view did appear")

    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")

    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")

    }
    @IBAction func onEditingChanged(sender: AnyObject) {
        let tipPercentages = [0.18, 0.20, 0.22]
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        let billAmount = NSString(string: billAmountfield.text!).doubleValue
        let tip = billAmount * tipPercentage
        let total = tip + billAmount
        tipLabel.text = "\(tip)"
        totalLabel.text = "\(total)"
        tipLabel.text = String(format: "$%.2f",  tip)
        totalLabel.text = String(format: "$%.2f",  total)
        twoPersonTip.text = String(format:"$%.2f", tip/2)
        threePersonTip.text = String(format:"$%.2f", tip/3)
        fourPersonTip.text = String(format:"$%.2f", tip/4)

    }
   
    

    @IBAction func onTap(sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    

}

