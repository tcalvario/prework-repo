//  ViewController.swift
//  Tip Calculator
//
//  Created by Teodoro Calvario on 1/21/19.
//  Copyright © 2019 Teodoro Calvario. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    //ends keyboard typing when clicking on gesture recognizer
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        // Get the bill Amount
        
       let bill = Double(billField.text!) ?? 0
       
        // Calculate tip and Total
        let tipPercent = [0.1,0.18,0.2]
        
        let tip = bill * tipPercent[tipControl.selectedSegmentIndex]
        let total = bill + tip
       
        // Update tip total
        tipLabel.text = String(format: "$%.2f",tip)
        totalLabel.text = String(format: "$%.2f",total)
    }

}
