//
//  Calculus.swift
//  Calculatrice
//
//  Created by SOWA KILLIAN on 03/02/2020.
//  Copyright © 2020 SOWA KILLIAN. All rights reserved.
//

import Foundation

enum OperatorType:String {
    case plus = "+", time = "*", divide = "/", minus = "-"
}

protocol Calculus {
    var type:OperatorType?{ get set }
    func execute() -> Double?
}
