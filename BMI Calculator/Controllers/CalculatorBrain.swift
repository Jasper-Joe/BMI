//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Jinglun Zhou on 2020/12/26.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit
class CalculatorBrain {
//    var height:Float
//    var weight:Float
//    init(height:Float, weight:Float) {
//        self.height = height
//        self.weight = weight
//    }
    var bmi:BMI?
    
    func calculateBMI(height:Float, weight:Float) {
        let bmiValue = weight / (height * height)
        if(bmiValue < 18.5) {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color:#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if(bmiValue <= 24.9) {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))
        }
        
    }
    
    func getBMI() -> String {
        // if bmi is not nit return bmi, 0.0 otherwise
        return String(format:"%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    
    
    
}
