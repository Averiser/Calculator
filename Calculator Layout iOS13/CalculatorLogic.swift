//
//  CalculatorLogic.swift
//  Calculator Layout iOS13
//
//  Created by MyMacBook on 29.11.2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic {
  
  private var number: Double?
  
  private var intermediateCalculation: (n1: Double, calcMethod: String)?
  
  mutating func setNumber(_ number: Double) {
    self.number = number
  }
  
 mutating func calculate(symbol: String) -> Double? {
  
    if let n = number {
      if symbol == "+/-" {
         return n * -1 // displayValue = displayValue * -1 or displayValue *= -1
      } else if symbol == "%" {
         return n * 0.01 // displayValue = displayValue / 100
      } else if symbol == "AC" {
         return 0 // displayLabel.text = "0"
      } else if symbol == "+" {
        intermediateCalculation = (n1: n, calcMethod: symbol)
      } else if symbol == "=" {
        performTwoNumCalculation(n2: n)
      }
    }
    return nil
    
  }
  
  private func performTwoNumCalculation(n2: Double) -> Double {
    
  }

}
