//
//  TwoOperandOperation.swift
//  Calculatrice
//
//  Created by SOWA KILLIAN on 03/02/2020.
//  Copyright © 2020 SOWA KILLIAN. All rights reserved.
//

import Foundation

protocol TwoOperandOperation:CalcStorage, Calculus, Displayable, OffsetAble {
    mutating func addValue(x:Double)
    mutating func setOperator(type:OperatorType)
    func canExecuteCalculus() -> Bool
}

extension TwoOperandOperation {
    
    func canExecuteCalculus() -> Bool {
        return a != nil && b != nil && type != nil
    }
    
    mutating func setOperator(type: OperatorType) {
        self.type = type
    }
    
    mutating func addValue(x:Double) {
        if let opType = self.type {
            self.b = self.applyOffset(original: self.b, newValue: x, offset: 10)
        } else {
            self.a = self.applyOffset(original: self.a, newValue: x, offset: 10)
        }
    }

}
