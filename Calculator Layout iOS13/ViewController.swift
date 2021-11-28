//
//  ViewController.swift
//  Calculator Layout iOS13
//
//  Created by Angela Yu on 01/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var displayLabel: UILabel!
  
  private var isFinishedTypingNumber: Bool = true
  
  private var displayValue: Double {
    
    get {
      guard let number = Double(displayLabel.text!) else {
        fatalError("Cannot convert display label text to a Double.")
      }
      return number
    }
    set {
      displayLabel.text = String(newValue)
    }
    
  }
  
  
  @IBAction func calcButtonPressed(_ sender: UIButton) {
    // What happens when a non-number button is pressed
    
    isFinishedTypingNumber = true
    
    if let calcMethod = sender.currentTitle {
      if calcMethod == "+/-" {
        displayValue = displayValue * -1 // or displayValue *= -1
      } else if calcMethod == "%" {
        displayValue = displayValue / 100
      } else if calcMethod == "AC" {
        displayLabel.text = "0"
      }
    }
  }
  
  @IBAction func numButtonPressed(_ sender: UIButton) {
    
    if let numValue = sender.currentTitle {
      
      if isFinishedTypingNumber {
        displayLabel.text = numValue
        isFinishedTypingNumber = false
      } else {
        
        if numValue == "." {
          
          let isInt = floor(displayValue) == displayValue
          
          if !isInt {
            return
          }
        }
        
        displayLabel.text = displayLabel.text! + numValue
      }
      
      
    }
  }
  


}

