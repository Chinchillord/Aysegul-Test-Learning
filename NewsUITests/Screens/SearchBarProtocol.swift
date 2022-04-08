//
//  SearchBarProtocal.swift
//  NewsUITests
//
//  Created by Aysegul karimis on 3/28/22.
//  Copyright © 2022 Алексей Воронов. All rights reserved.
//

import Foundation

import XCTest

protocol HasSearchBar {
}

extension HasSearchBar {
    var app : XCUIApplication {
        XCUIApplication()
    }
    var searchBar : XCUIElement {
        app.searchFields["Search"]
    }
    func checkSearchBar () -> Bool {
        return searchBar.waitForExistence(timeout: 5)
    }
    
}

