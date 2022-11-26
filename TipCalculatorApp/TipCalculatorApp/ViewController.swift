//
//  ViewController.swift
//  TipCalculatorApp
//
//  Created by Bandenawaz Bagwan on 23/11/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var discountSegment: UISegmentedControl!
    @IBOutlet weak var billTextField: UITextField!
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func cliclEvent(_ sender: Any) {
        
        print("Tapped")
    }
    @IBAction func calculatetip(_ sender: Any) {
        //tipLabel.text = "₹10.00"
        //totalLabel.text = "₹110.00"
        
        
        //you shd calculate the tip with 20% bill amount and display it on the total with bill amount
        
        //lets create an array for discount
        let discPer = [0.18, 0.20, 0.25]
        let bill = Double(billTextField.text!) ?? 0
        
        //20%
        let tip = bill * discPer[discountSegment.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "₹%.2f", tip)
        totalLabel.text = String(format: "₹%.2f", total)
        
    }
    
    
    
}

