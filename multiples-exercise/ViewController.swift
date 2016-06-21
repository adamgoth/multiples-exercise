//
//  ViewController.swift
//  multiples-exercise
//
//  Created by Adam Goth on 6/17/16.
//  Copyright © 2016 Adam Goth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Properties
    var addNumber: Int = 0
    var currentTotal: Int = 0
    var previousTotal: Int = 0
    
    //Outlets
    @IBOutlet weak var multiplesText: UIImageView!
    @IBOutlet weak var textInput: UITextField!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var numberText: UILabel!
    @IBOutlet weak var addButton: UIButton!
    
    //Actions
    @IBAction func hitPlayButton(sender: UIButton) {
        if textInput.text != nil && textInput.text != "" {
            textInput.hidden = true
            playButton.hidden = true
            addButton.hidden = false
            numberText.hidden = false
            
            addNumber = Int(textInput.text!)!
        }
    }
    
    
    @IBAction func pressAdd(sender: UIButton) {
        previousTotal = currentTotal
        currentTotal = addNumber + previousTotal
        
        if currentTotal < 100 {
        numberText.text = "\(previousTotal) + \(addNumber) = \(previousTotal + addNumber)"
        } else {
            textInput.hidden = false
            playButton.hidden = false
            addButton.hidden = true
            numberText.hidden = true
            
            textInput.text = ""
        }
    }
}

