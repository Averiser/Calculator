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
      switch symbol  {
      case "+/-":
        return n * -1 // displayValue = displayValue * -1 or displayValue *= -1
      case "%":
         return n * 0.01 // displayValue = displayValue / 100
      case "AC":
         return 0 // displayLabel.text = "0"
      case "=":
        return performTwoNumCalculation(n2: n)
      default:  
        intermediateCalculation = (n1: n, calcMethod: symbol)
      }
    }
    return nil
    
  }
  
  private func performTwoNumCalculation(n2: Double) -> Double? {
    
    if let n1 = intermediateCalculation?.n1,
        let operation = intermediateCalculation?.calcMethod {
    
      switch operation {
      case "+":
       return n1 + n2
      case "-":
       return n1 - n2
      case "×":
        return n1 * n2
      case "÷":
        return n1 / n2
      default:
        fatalError("The operation passed in does not match any of the cases.")
      }
      
    }
    return nil
  }
  
  
}
