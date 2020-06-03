//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightValueLabel: UILabel!
    @IBOutlet weak var weightValueLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onHeightChanged(_ sender: UISlider) {
        heightValueLabel.text = String(format: "%0.2fm", sender.value)
    }
    
    @IBAction func onWeightChanged(_ sender: UISlider) {
        weightValueLabel.text = String(format: "%dKg", Int(sender.value))
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        
        
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let height = heightSlider.value
            let weight = weightSlider.value
            
            let bmi = weight / pow(height, 2)
            
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.bmiValue = String(format: "%0.2f", bmi)
        }
    }
}

