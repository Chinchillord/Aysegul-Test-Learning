//
//  OverviewScreenTests.swift
//  NewsUITests
//
//  Created by Aysegul karimis on 2/25/22.
//  Copyright © 2022 Алексей Воронов. All rights reserved.
//

import Foundation
import XCTest

class OverviewScreenTests : BaseTest {
    
    var overviewScreen = OverviewScreen()
    
    func test_overViewScreenText () {
        XCTAssertTrue(overviewScreen.checkOverviewText())
    }
    
    func test_overviewScreenHeadline() {
        XCTAssertTrue(overviewScreen.checkOverviewHeadline())
    }
}
