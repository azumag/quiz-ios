//
//  QuizTests.swift
//  QuizTests
//
//  Created by 東垣外翔 on 2016/08/11.
//  Copyright © 2016年 Nu Wai Thu. All rights reserved.
//

import XCTest

class QuizTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let addr = Adder()
        let num = addr.add(1, b: 4)
        
        XCTAssertEqual(num, 5);
        
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
