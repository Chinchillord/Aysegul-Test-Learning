//
//  BusinessCategoryScreenTests.swift
//  NewsUITests
//
//  Created by Aysegul karimis on 3/1/22.
//  Copyright © 2022 Алексей Воронов. All rights reserved.
//

import Foundation
import XCTest

class BusinessCategoryScreenTests : BaseTest {
    var overviewScreen = OverviewScreen()
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    func test_BusinessCategoryScreenText() {
        XCTAssertTrue(
            overviewScreen //overview screen
                .tapBusinessCategoryButton() // business category screen
                .checkBusinessCategoryText() // boolean (true)
        )
    }
    
}
