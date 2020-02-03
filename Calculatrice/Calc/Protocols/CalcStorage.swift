//
//  CalcStorage.swift
//  Calculatrice
//
//  Created by SOWA KILLIAN on 03/02/2020.
//  Copyright © 2020 SOWA KILLIAN. All rights reserved.
//

import Foundation

protocol CalcStorage {
    var a:Double? { get set }
    var b:Double? { get set }
    mutating func clear()
}

extension CalcStorage {
    mutating func clear() {
        self.a = nil
        self.b = nil
    }
}
