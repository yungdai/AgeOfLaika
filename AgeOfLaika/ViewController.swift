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
        let intFromOptional = optionalIntfromTextField!
        dogYearsLabel.hidden = false
        dogYearsLabel.text = "\(intFromOptional * 7)" + " Dog Years"
        humanYearsTextField.resignFirstResponder()
    }

    @IBAction func convertToRealDogYearsButtonPressed(sender: UIButton) {
        let stringFromTextField = humanYearsTextField.text
        let doubleFromTextField = Double((stringFromTextField as NSString).doubleValue)
        
        var realDogYears:Double
        
        if doubleFromTextField > 2 {
            realDogYears = 21 + (doubleFromTextField - 2) * 7
        }
        else {
            realDogYears = doubleFromTextField * 10.5
        }
    
        dogYearsLabel.hidden = false
        dogYearsLabel.text = "\(realDogYears)" + " Real Dog Years"
        humanYearsTextField.resignFirstResponder()
    }
    

}

