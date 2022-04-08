//
//  SearchScreenTest.swift
//  NewsUITests
//
//  Created by Aysegul karimis on 3/25/22.
//  Copyright © 2022 Алексей Воронов. All rights reserved.
//

import Foundation
import XCTest

class SearchScreenTests: BaseTest {
    let overviewScreen = OverviewScreen()
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test_SearchScreenText() {
        
        XCTAssertTrue(
            overviewScreen
                .tapSearchButtonNav()
                .checkSearchScreenText()
        )
        
    }
    func test_SearchBarExists() {
        XCTAssertTrue(
            overviewScreen
                .tapSearchButtonNav()
                .checkSearchBar()
        )
    }
    
}
