//
//  NavBarProtocol.swift
//  NewsUITests
//
//  Created by Aysegul karimis on 3/18/22.
//  Copyright © 2022 Алексей Воронов. All rights reserved.
//

import Foundation
import XCTest

protocol HasNavBar {
}

extension HasNavBar {
    
    var app : XCUIApplication {
        XCUIApplication()
    }
    
    
    var overViewButtonNav: XCUIElement {
        app.buttons["Globe"]
    }
    var searchButtonNav : XCUIElement {
        app.buttons["Search"]
    }
    var listButtonNav : XCUIElement {
        app.buttons["List"]
    }
    var favoritesButtonNav : XCUIElement {
        app.buttons["Love"]
    }
    
    func tapOverviewButtonNav() -> OverviewScreen  {
        searchButtonNav.tap()
        return OverviewScreen()
    }
    
    func tapSearchButtonNav() -> SearchScreen  {
        searchButtonNav.tap()
        return SearchScreen()
    }
    
    func tapListButtonNav() -> SourcesScreen {
        listButtonNav.tap()
        return SourcesScreen()
    }
    
    func tapFavoritesButtonNav() -> FavoritesScreen {
        favoritesButtonNav.tap()
        return FavoritesScreen()
    }
}
