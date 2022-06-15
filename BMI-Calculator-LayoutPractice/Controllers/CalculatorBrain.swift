//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by 米谷裕輝 on 2022/06/15.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var bmi: Float?
    
    func getBMIValue() -> String{
        let bmiTo1DecimaPlace = String(format: "%.1f", bmi ?? 0.0)
        return bmiTo1DecimaPlace
    }
    
    mutating func calculateBMI(weight: Float, height: Float){
        bmi = weight / pow(height, 2)
    }
}
