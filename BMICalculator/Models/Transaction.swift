//
//  Transaction.swift
//  BMICalculator
//
//  Created by Maxwell Poffenbarger on 2/10/20.
//  Copyright © 2020 Maxwell Poffenbarger. All rights reserved.
//

import Foundation

class Transaction {
    
    var total: Double
    var tipPercent: Double
    var tipAmount: Double
    
    init(total: Double, tipPercent: Double, tipAmount: Double) {
        self.total = total
        self.tipPercent = tipPercent
        self.tipAmount = tipAmount
    }
}//End of class
