//
//  GeneralCategory.swift
//  NewsUITests
//
//  Created by Aysegul karimis on 4/22/22.
//  Copyright © 2022 Алексей Воронов. All rights reserved.
//

import Foundation
import XCTest
class GeneralCategoryScreen {
let app = XCUIApplication()
    
lazy var generalCategoryText = app.staticTexts["General"]


func checkGeneralCategoryText () -> Bool{
    return generalCategoryText.waitForExistence(timeout: 10)
}
}
