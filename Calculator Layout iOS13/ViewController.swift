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
  }
  
  @IBAction func numButtonPressed(_ sender: UIButton) {
    
    
    
    if let numValue = sender.currentTitle {
      
      if isFinishedTypingNumber {
        displayLabel.text = numValue
        isFinishedTypingNumber = false
      } else {
        displayLabel.text = displayLabel.text! + numValue
      }
      
      
    }
  }
  


}

