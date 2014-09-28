//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Patrick V on 9/27/14.
//  Copyright (c) 2014 Nemexis, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dogYearsTextField: UITextField!
    
    @IBOutlet weak var convertedDogYearsLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertedDogYearsButtonPressed(sender: UIButton) {
        let dogYearsFormTextField = dogYearsTextField.text.toInt()!
        
        let conversionConstant = 7
        convertedDogYearsLabel.hidden = false
        convertedDogYearsLabel.text = "\(dogYearsFormTextField + conversionConstant)" + " in Dog Years"
        dogYearsTextField.resignFirstResponder()
    }

}

