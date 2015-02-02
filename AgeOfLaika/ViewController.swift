//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Yung Dai on 2015-01-29.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogYearsLabel: UILabel!
    
    @IBOutlet weak var humanYearsTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYearsButtonPressed(sender: UIButton) {
        let stringFromTextField = humanYearsTextField.text
        let optionalIntfromTextField = stringFromTextField.toInt()
        let doubleFromOptional = Double(optionalIntfromTextField!)

        
// updated and completed challenge for Age of Laika with Control Flow
        
        if doubleFromOptional <= 2 {
            dogYearsLabel.hidden = false
            dogYearsLabel.text = "\(doubleFromOptional * 10.5)" + " Dog Years"
            humanYearsTextField.resignFirstResponder()
                    }
        else if doubleFromOptional > 2 {
            dogYearsLabel.hidden = false
            dogYearsLabel.text = "\(((doubleFromOptional - 2) * 7) + 21)" + " Dog Years"
            humanYearsTextField.resignFirstResponder()
        }

    }

}

