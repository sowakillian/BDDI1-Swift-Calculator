//
//  OffsetAble.swift
//  Calculatrice
//
//  Created by SOWA KILLIAN on 03/02/2020.
//  Copyright © 2020 SOWA KILLIAN. All rights reserved.
//

import Foundation

protocol OffsetAble {
    func applyOffset(original:Double?, newValue:Double, offset:Double) -> Double
}

extension OffsetAble {
    func applyOffset(original: Double?, newValue: Double, offset:Double) -> Double {
        if let o = original {
            return o*offset+newValue
        } else {
            return newValue
        }
    }
}
