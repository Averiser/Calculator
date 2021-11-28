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
  
  var isFinishedTypingNumber: Bool = true
  
  
  @IBAction func calcButtonPressed(_ sender: UIButton) {
    // What happens when a non-number button is pressed
    
    isFinishedTypingNumber = true
    
    guard let number = Double(displayLabel.text!) else {
      fatalError("Cannot convert display label text to a Double.")
    }
    
    if let calcMethod = sender.currentTitle {
      if calcMethod == "+/-" {
        displayLabel.text = String(number * -1)
      } else if calcMethod == "%" {
        displayLabel.text = String(number / 100)
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
          
          guard let currentDisplayValue = Double(displayLabel.text!) else {
            fatalError("Cannot convert display label text to a Double!")
          }
          
          let isInt = floor(currentDisplayValue) == currentDisplayValue
          
          if !isInt {
            return
          }
        }
        
        displayLabel.text = displayLabel.text! + numValue
      }
      
      
    }
  }
  


}

