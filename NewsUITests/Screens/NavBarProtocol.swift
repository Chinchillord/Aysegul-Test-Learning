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
    var app: XCUIApplication {get set}
    
    var overViewButtonNav: XCUIElement {get set}
    var searchButtonNav : XCUIElement {get set}
    var listButtonNav : XCUIElement {get set}
    var favoritesButtonNav : XCUIElement {get set}
    
    func tapOverviewButtonNav() -> OverviewScreen
    func tapSearchButtonNav() -> SearchScreen
    func tapListButtonNav() -> SourcesScreen
    func tapFavoritesButtonNav() -> FavoritesScreen
}
