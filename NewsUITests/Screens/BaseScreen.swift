//
//  BaseScreen.swift
//  NewsUITests
//
//  Created by Aysegul karimis on 3/18/22.
//  Copyright © 2022 Алексей Воронов. All rights reserved.
//

import Foundation
import XCTest

class BaseScreen: HasNavBar {
    
    var app = XCUIApplication()
    
    lazy var overViewButtonNav = app.buttons["Globe"]
    lazy var searchButtonNav = app.buttons["Search"]
    lazy var listButtonNav = app.buttons["List"]
    lazy var favoritesButtonNav = app.buttons["Love"]
    
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
