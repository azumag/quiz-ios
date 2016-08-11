//
//  QuizUITests.swift
//  QuizUITests
//
//  Created by 東垣外翔 on 2016/08/10.
//  Copyright © 2016年 Nu Wai Thu. All rights reserved.
//

import XCTest

class QuizUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func newTest(){
        
        let app = XCUIApplication()
        app.buttons["Start"].tap()
        
        let tablesQuery = app.tables
        let itStaticText = tablesQuery.staticTexts["IT"]
        itStaticText.tap()
        itStaticText.tap()
        app.otherElements.containingType(.NavigationBar, identifier:"Quiz.QuizTableView").childrenMatchingType(.Other).element.childrenMatchingType(.Other).element.childrenMatchingType(.Table).element.tap()
        tablesQuery.staticTexts["Which is collect command to create new branch?,git rebase,git merge,git checkout -b ,git branch"].tap()
        app.buttons["RoR"].tap()
        
    }
    
    
    func testExample() {
        
        
        let app = XCUIApplication()
        app.buttons["Start"].tap()
        
        let notExists = NSPredicate(format: "exists == false")
        expectationForPredicate(notExists, evaluatedWithObject: app.buttons["Start"], handler: nil)
        
        waitForExpectationsWithTimeout(10, handler: nil)
        
        
//        let japanStaticText = app.tables.staticTexts["Japan"]
//        japanStaticText.tap()
//        japanStaticText.tap()
//        japanStaticText.tap()
//        japanStaticText.tap()
        //        japanStaticText.tap()
        
        
        
        
    }
    
    func testQuiz() {
        
        let app = XCUIApplication()
        app.buttons["Start"].tap()
        
        let notExists = NSPredicate(format: "exists == false")
        expectationForPredicate(notExists, evaluatedWithObject: app.buttons["Start"], handler: nil)
        
        
        waitForExpectationsWithTimeout(10, handler: nil)
        
        
        app.otherElements.containingType(.NavigationBar, identifier:"Quiz.CategoryTableView").childrenMatchingType(.Other).element.childrenMatchingType(.Other).element.childrenMatchingType(.Table).element.tap()
        
        let tablesQuery = app.tables
                tablesQuery.staticTexts["Which language is used to build twitter now?,Ruby on Rails,Java,Cobol,Fortran"].tap()
        
        XCTAssert(app.buttons["RoR"].exists);
        
    }
    
}
