//
//  ViewController.swift
//  Calculatrice
//
//  Created by SOWA KILLIAN on 03/02/2020.
//  Copyright © 2020 SOWA KILLIAN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    var brain = CalcBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func updateLabelWithString(result: String) {
        resultLabel.text = result
    }

    @IBAction func valueButtonClicked(_ sender: UIButton) {
        if let txt = sender.titleLabel?.text,
            let value = Double(txt) {
            brain.addValue(x: value)
            print(value)
            updateLabelWithString(result: brain.stringRepresentation())
        }
    }
    
    @IBAction func operationButtonClicked(_ sender: UIButton) {
       if let txt = sender.titleLabel?.text,
        let op = OperatorType(rawValue: txt) {
            brain.setOperator(type: op)
        }
    }
    
    @IBAction func resultButtonClicked(_ sender: UIButton) {
        if let result = brain.execute() {
            resultLabel.text = "\(result)"
            brain.clear()
        }
    }
    
    @IBAction func clearButtonClicked(_ sender: UIButton) {
        brain.clear()
        self.resultLabel.text = ""
    }
    
    
    
}

