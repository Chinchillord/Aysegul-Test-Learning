//
//  BusinessCategoryScreen.swift
//  NewsUITests
//
//  Created by Aysegul karimis on 2/25/22.
//  Copyright © 2022 Алексей Воронов. All rights reserved.
//

import Foundation

import XCTest
class BusinessCategoryScreen {
let app = XCUIApplication()
    
lazy var businessCategoryText = app.staticTexts["Business"]


func checkBusinessCategoryText () -> Bool{
    return businessCategoryText.waitForExistence(timeout: 10)
}
}
