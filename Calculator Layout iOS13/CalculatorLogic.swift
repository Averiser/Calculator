//
//  CalculatorLogic.swift
//  Calculator Layout iOS13
//
//  Created by MyMacBook on 29.11.2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic {
  
  var number: Double
  
  init(number: Double) {
    self.number = number
  }
  
  func calculate(symbol: String) -> Double? { 
  
      if symbol == "+/-" {
         return number * -1 // displayValue = displayValue * -1 or displayValue *= -1
      } else if symbol == "%" {
         return number * 0.01 // displayValue = displayValue / 100
      } else if symbol == "AC" {
         return 0 // displayLabel.text = "0"
      }
    return nil
    
  }

}
