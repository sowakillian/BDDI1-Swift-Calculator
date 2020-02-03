//
//  CalculatriceTests.swift
//  CalculatriceTests
//
//  Created by SOWA KILLIAN on 03/02/2020.
//  Copyright © 2020 SOWA KILLIAN. All rights reserved.
//

import XCTest
@testable import Calculatrice

class CalculatriceTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testOffset() {
        let brain = CalcBrain()
        let res1 = brain.applyOffset(original: nil, newValue: 2, offset: 10)
        XCTAssert(res1 == 2)
        let res2 = brain.applyOffset(original: 1, newValue: 2, offset: 10)
        XCTAssert(res2 == 12)
        let res3 = brain.applyOffset(original: 1, newValue: 2, offset: 10)
        XCTAssert(res2 == 112)
    }
    
    func testStorage() {
        var brain = CalcBrain()
        brain.a = 5.0
        brain.b = 2.0
        
        brain.clear()
        XCTAssert(brain.a == nil)
        XCTAssert(brain.b == nil)
    }
    
    func testCalcLogic() {
        var brain = CalcBrain()
        brain.addValue(x: 9)
        brain.addValue(x: 2)
        XCTAssert(brain.a == 92)
        brain.setOperator(type: .plus)
        XCTAssert(brain.type == .plus)
        brain.addValue(x: 8)
        XCTAssert(brain.b == 8)
        let res = brain.execute()
        XCTAssert(res == 100)
    }
    
    func testBrainDisplay() {
        var brain = CalcBrain()
        brain.addValue(x: 2)
        brain.addValue(x: 2)
        XCTAssert(brain.stringRepresentation() == "22")
        brain.setOperator(type: .divide)
        XCTAssert(brain.stringRepresentation() == "22/")
        brain.addValue(x: 2)
        XCTAssert(brain.stringRepresentation() == "22/2")
        brain.addValue(x: 2)
        XCTAssert(brain.stringRepresentation() == "22/22")
        let res = brain.execute()
        XCTAssert(res == 1.0)
        
//        XCTAssert(brain.a == 92)
//        brain.setOperator(type: .plus)
//        XCTAssert(brain.type == .plus)
//        brain.addValue(x: 8)
//        XCTAssert(brain.b == 8)
//        let res = brain.execute()
//        XCTAssert(res == 100)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
