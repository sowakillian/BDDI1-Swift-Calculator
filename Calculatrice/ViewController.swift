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

    @IBAction func valueButtonClicked(_ sender: UIButton) {
        
        if let txt = sender.titleLabel?.text,
            let value = Double(txt) {
            
            value 
        }
    }
    
    @IBAction func operationButtonClicked(_ sender: UIButton) {
        print(sender.titleLabel?.text)
    }
    
    @IBAction func resultButtonClicked(_ sender: UIButton) {
        print(sender.titleLabel?.text)
    }
    
    @IBAction func clearButtonClicked(_ sender: UIButton) {
        print(sender.titleLabel?.text)
    }
    
    
    
}

