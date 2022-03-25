//
//  SourcesScreenTests.swift
//  NewsUITests
//
//  Created by Aysegul karimis on 3/18/22.
//  Copyright © 2022 Алексей Воронов. All rights reserved.
//

import Foundation
import XCTest

class SourcesScreenTests: BaseTest {
    var sourcesScreen = SourcesScreen()
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test_SourcesScreenText () {
        let overviewScreen = OverviewScreen()
        XCTAssertTrue(
            overviewScreen
            .tapListButtonNav()
            .checkSourcesText()
        )
    }
    }
    

