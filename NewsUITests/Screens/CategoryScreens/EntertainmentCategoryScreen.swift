//
//  EntertainmentCategoryScreen.swift
//  NewsUITests
//
//  Created by Aysegul karimis on 4/22/22.
//  Copyright © 2022 Алексей Воронов. All rights reserved.
//

import Foundation
import XCTest
class EntertainmentCategoryScreen {
let app = XCUIApplication()
    
 lazy var entertainmentCategoryText = app.staticTexts["Entertainment"]


func checkEntertainmentCategoryText () -> Bool{
    return entertainmentCategoryText.waitForExistence(timeout: 10)
}
}
