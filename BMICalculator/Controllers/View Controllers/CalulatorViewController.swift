//
//  CalulatorViewController.swift
//  BMICalculator
//
//  Created by Maxwell Poffenbarger on 2/10/20.
//  Copyright © 2020 Maxwell Poffenbarger. All rights reserved.
//

import UIKit

class CalulatorViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var transactionTotalTextField: UITextField!
    @IBOutlet weak var tipPercentTextField: UITextField!
    @IBOutlet weak var tipAmountTextLabel: UILabel!
    
    //MARK: - Actions
    @IBAction func calculateTipButtonTapped(_ sender: Any) {
        
        guard let transactionTotal = transactionTotalTextField.text?.doubleValue,
            let tipPercent = tipPercentTextField.text?.doubleValue else {return}
        
        tipAmountTextLabel.text = "Tip Amount: \(calculateTip(total: transactionTotal, tipPercent: tipPercent))"
    }
    
    @IBAction func fifteenPercentTipButtonTapped(_ sender: Any) {
        guard let transactionTotal = transactionTotalTextField.text?.doubleValue else {return}
        
        tipAmountTextLabel.text = "Tip Amount: \(calculateTip(total: transactionTotal, tipPercent: 15.00))"
        tipPercentTextField.text = "15.00"
    }
    
    @IBAction func eighteenPercentButtonTapped(_ sender: Any) {
        guard let transactionTotal = transactionTotalTextField.text?.doubleValue else {return}
        
        tipAmountTextLabel.text = "Tip Amount: \(calculateTip(total: transactionTotal, tipPercent: 18.00))"
        tipPercentTextField.text = "18.00"

    }
    
    @IBAction func twentyPercentButtonTapped(_ sender: Any) {
        guard let transactionTotal = transactionTotalTextField.text?.doubleValue else {return}
        
        tipAmountTextLabel.text = "Tip Amount: \(calculateTip(total: transactionTotal, tipPercent: 20.00))"
        tipPercentTextField.text = "20.00"

    }
    
    //MARK: - Class Methods
    func calculateTip(total: Double, tipPercent: Double) -> Double {
        
        let tipPercentAsDecimal = tipPercent / 100
        
        let tipAmount = total * tipPercentAsDecimal
        
        let formattedTipAmount = (tipAmount*100).rounded()/100
        
        print(tipAmount)
        print(formattedTipAmount)
        return formattedTipAmount
    }
}//End of class
