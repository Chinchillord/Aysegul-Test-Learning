//
//  GeneralCategory.swift
//  NewsUITests
//
//  Created by Aysegul karimis on 4/22/22.
//  Copyright © 2022 Алексей Воронов. All rights reserved.
//

import Foundation
import XCTest

class GeneralCategoryScreenTests : BaseTest {
    var overviewScreen = OverviewScreen()
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    func test_GeneralCategoryScreenText() {
        XCTAssertTrue(
            overviewScreen //overview screen
                .tapGeneralCategoryButton()// business category screen
                .checkGeneralCategoryText() // boolean (true)
        )
    }
    
}
