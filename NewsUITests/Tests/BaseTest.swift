//
//  NewsUITests.swift
//  NewsUITests
//
//  Created by Aysegul karimis on 2/18/22.
//  Copyright © 2022 Алексей Воронов. All rights reserved.
//

import XCTest

class BaseTest: XCTestCase {
    let app = XCUIApplication()
   
    override func setUp() {
        continueAfterFailure = false
        app.launch()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    

}
