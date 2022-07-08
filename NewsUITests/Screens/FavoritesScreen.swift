//
//  LoveScreen.swift
//  NewsUITests
//
//  Created by Aysegul karimis on 3/18/22.
//  Copyright © 2022 Алексей Воронов. All rights reserved.
//

import Foundation
import XCTest

class FavoritesScreen : BaseScreen {
   
    
    lazy var favoritesScreenText = app.staticTexts["Favorites"]
    
    func checkFavoritesScreenText () -> Bool {
        return favoritesScreenText.waitForExistence(timeout: 5)
        
        }
}

