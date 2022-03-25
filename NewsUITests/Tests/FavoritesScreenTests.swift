//
//  LoveScreenTests.swift
//  NewsUITests
//
//  Created by Aysegul karimis on 3/18/22.
//  Copyright © 2022 Алексей Воронов. All rights reserved.
//

import Foundation
import XCTest

class FavoritesScreenTests: BaseTest {
    var favoritesScreen = FavoritesScreen()
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    func test_FavoritesScreenText () {
        let overviewScreen = OverviewScreen()
        XCTAssertTrue(
            overviewScreen
                .tapFavoritesButtonNav()
                .checkFavoritesScreenText()
        )
        
    }
    
}
