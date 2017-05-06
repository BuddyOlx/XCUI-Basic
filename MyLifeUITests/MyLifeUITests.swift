
//
//  MyLifeUITests.swift
//  MyLifeUITests
//
//  Created by Buddy Arifin on 5/4/17.
//  Copyright © 2017 Apple Inc. All rights reserved.
//

import XCTest

struct landingPage {
     static let title = "titleDesc"
}

class MyLifeUITests: XCTestCase {
        
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
        
        XCUIApplication().terminate()
        super.tearDown()
    }
    
    func testAllOptionsDisplayed() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
    
        XCTAssertTrue(app.staticTexts.matching(identifier: landingPage.title).count > 0, "Not Have size")
    }
    
    func testSliders() {
        
        let app = XCUIApplication()
        
        app.staticTexts["Byte"].tap()
        
        XCTAssertTrue(app.sliders.element.exists, "Sliders not found")
        
        app.sliders.element.swipeLeft()
        
        XCTAssertTrue(app.sliders.element.value as! String == "19%", "Positions Sliders not same")
        
    }
    
}
