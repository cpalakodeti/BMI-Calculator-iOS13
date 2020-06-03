//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Charithardha Palakodeti on 6/2/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit
class SecondViewController: UIViewController {
    var bmiValue:String?
    
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        valueLabel.text = bmiValue
    }
    
    @IBAction func onRecalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
