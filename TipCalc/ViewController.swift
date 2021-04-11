//
//  ViewController.swift
//  TipCalc
//
//  Created by Angel Li on 8/5/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit


class ViewController: UIViewController{

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentLabel: UILabel!
    @IBOutlet weak var tipPercentSlider: UISlider!
    @IBOutlet weak var partySizeControl: UISegmentedControl!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var billTotalLabel: UILabel!
    @IBOutlet weak var billSplitLabel: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        billAmountTextField.becomeFirstResponder()
    }

    
    
    @IBAction func onTap(_ sender: Any) {
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercent = Int(tipPercentSlider.value) 
        
        tipPercentLabel.text = String(format: "%d%%", tipPercent)
        let tipPercentage = Float(tipPercent) / 100
        
        let tip = Float(bill) * tipPercentage
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        let totalBill = Float(bill) + tip
        billTotalLabel.text = String(format: "$%.2f", totalBill)
        
        let partySize = [1,2,3,4,5,6,7,8,9,10]
        let totalSplitBill = totalBill / Float(partySize[partySizeControl.selectedSegmentIndex])
        
        billSplitLabel.text = String(format: "$%.2f", totalSplitBill)

        
    }
    
    
    

}



