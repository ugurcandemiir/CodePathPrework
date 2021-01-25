//
//  ViewController.swift
//  Prework
//
//  Created by Ugurcan Demir on 1/9/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
    }
    

    @IBAction func calculateTip(_ sender: Any) {
        
        
        // Get initial bill amount and calculate tips
        let bill = Double(billAmountTextField.text!) ?? 0
        //let split_bill = Int(billSplitAmountTextField.text!) ?? 0
        let tipPercentage = [0.15, 0.18, 0.20]
        
        //Calculate tip and total
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update the tip and total labels
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
   
        
    }
}

