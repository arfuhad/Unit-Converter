//
//  Unit_ConverterTests.swift
//  Unit ConverterTests
//
//  Created by Abdur Rahman on 8/8/20.
//  Copyright © 2020 Abdur Rahman. All rights reserved.
//

import XCTest

class Unit_ConverterTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testLengthText() {
        XCTAssert(Converter.getLength(ConvertingAmount: 2, ConvertingType: "mile") == 3.21868)
        XCTAssert(Converter.getLength(ConvertingAmount: 2, ConvertingType: "km") == 1.242742)
    }
    
    func testWeightText() {
        XCTAssert(Converter.getWeight(ConvertingAmount: 2, ConvertingType: "pounds") == 0.907184)
        XCTAssert(Converter.getWeight(ConvertingAmount: 2, ConvertingType: "kg") == 4.40924)
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    

}
