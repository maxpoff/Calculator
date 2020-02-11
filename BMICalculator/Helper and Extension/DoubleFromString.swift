//
//  DoubleFromString.swift
//  BMICalculator
//
//  Created by Maxwell Poffenbarger on 2/10/20.
//  Copyright © 2020 Maxwell Poffenbarger. All rights reserved.
//

import Foundation

extension String {
    var doubleValue: Double {
        return Double(self) ?? 0
    }
}
