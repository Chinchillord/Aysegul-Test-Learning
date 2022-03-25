//
//  SearchScreen.swift
//  NewsUITests
//
//  Created by Aysegul karimis on 3/25/22.
//  Copyright © 2022 Алексей Воронов. All rights reserved.
//

import Foundation
import XCTest

class SearchScreen : BaseScreen {
   
    
    lazy var searchScreenText = app.staticTexts["Search"]
    
    func checkSearchScreenText () -> Bool {
        return searchScreenText.waitForExistence(timeout: 5)
    }
}

