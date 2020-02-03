//
//  CalcBrain.swift
//  Calculatrice
//
//  Created by SOWA KILLIAN on 03/02/2020.
//  Copyright © 2020 SOWA KILLIAN. All rights reserved.
//

import Foundation

class CalcBrain: TwoOperandOperation {
    var a: Double?
    
    var b: Double?
    
    var type: OperatorType?
    
    func execute() -> Double? {
        guard self.canExecuteCalculus() else {
            return nil
        }
        
        switch self.type! {
        case .plus: return a! + b!
        case .minus: return a! - b!
        case .divide: return a! / b!
        case .time: return a! * b!
        }
        
    }
    
    func stringRepresentation() -> String {
        var str = ""
        
        if let a = self.a {
            str += "\(Int(a))"
        }
        
        if let type = self.type {
            str += "\(type.rawValue)"
        }
        
        if let b = self.b {
            str += "\(Int(b))"
        }
        
        return str
    }
    
   func clear() {
       self.type = nil
        self.a = nil
        self.b = nil
    }
    
    
}
