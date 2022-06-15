//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by 米谷裕輝 on 2022/06/15.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    func getBMIValue() -> String{
        let bmiTo1DecimaPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimaPlace
    }
    
    mutating func calculateBMI(weight: Float, height: Float){
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: .blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: .green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: .red)
        }
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
}
