//
//  Entertainment_category.swift
//  NewsUITests
//
//  Created by Aysegul karimis on 4/22/22.
//  Copyright © 2022 Алексей Воронов. All rights reserved.
//

import Foundation
import XCTest

class EntertainmentCategoryScreenTests : BaseTest {
    var overviewScreen = OverviewScreen()
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    func test_EntertainmentCategoryScreenText() {
        XCTAssertTrue(
            overviewScreen //overview screen
                .tapEntertainmentCategoryButton()// business category screen
                .checkEntertainmentCategoryText() // boolean (true)
        )
    }
    
}
