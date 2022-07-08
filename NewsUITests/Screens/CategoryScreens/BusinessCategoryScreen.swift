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
    lazy var businessCategorySourceText = app.staticTexts["Fox Business"]
    lazy var businessCategoryFoxBusinessHeadliner = app.staticTexts["Alaska Airlines cutting flights through June due to lack of pilots - Fox Business"]
    
    // StaticText, 0x7fe021210380, {{48.0, 270.5}, {89.5, 18.0}}, label: 'Fox Business'
    //  StaticText, 0x7fe021210490, {{48.0, 288.5}, {220.5, 64.5}}, label: 'Alaska Airlines cutting flights through June due to lack of pilots - Fox Business'
    func checkBusinessCategoryText () -> Bool{
        return businessCategoryText.waitForExistence(timeout: 10)
    }
    func checkBusinessCategorySourceText () -> Bool {
        return businessCategorySourceText.waitForExistence(timeout: 5)
    }
    func checkBusinessCategoryFoxBusinessHeadliner () -> Bool {
        return businessCategorySourceText.waitForExistence(timeout: 5)
    }
    
}
