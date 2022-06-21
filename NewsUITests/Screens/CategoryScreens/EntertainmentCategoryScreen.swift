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
    lazy var entertainmentCategoryWWEHeadliner = app.staticTexts["Police: WWE Hall of Famer involved in fatal car crash in Florida - WSB Atlanta"]
    lazy var entertainmentCategorySourceText = app.staticTexts["WSB Atlanta"]
    
    lazy var entertainmentCategoryCNNHeadliner = app.staticTexts["'Everything Everywhere All at Once' is the mind-bending metaverse movie you didn't know you needed - CNN"]
    lazy var entertainmentCategorySourceText2 = app.staticTexts["CNN"]
    
    /// StaticText, 0x7fd94a919780, {{48.0, 302.7}, {85.3, 18.0}}, label: 'WSB Atlanta'
    //StaticText, 0x7fd94a919890, {{48.0, 320.7}, {283.0, 64.3}}, label: 'Police: WWE Hall of Famer involved in fatal car crash in Florida - WSB Atlanta'
    
    //StaticText, 0x7f7ac3813140, {{48.0, 518.5}, {224.0, 108.5}}, label: ''Everything Everywhere All at Once' is the mind-bending metaverse movie you didn't know you needed - CNN'
    
    func checkEntertainmentCategoryText () -> Bool{
        return entertainmentCategoryText.waitForExistence(timeout: 10)
    }
    func checkEntertainmentCategoryWWEHeadlinerText () -> Bool {
        return entertainmentCategoryWWEHeadliner.waitForExistence(timeout: 5)
    }
    func checkEntertainmentCategorySourceText () -> Bool {
        return entertainmentCategorySourceText.waitForExistence(timeout: 5)
    }
    func checkEntertainmentCategoryCNNHeadlinerText () -> Bool {
        return entertainmentCategoryCNNHeadliner.waitForExistence(timeout: 5)
    }
    func checkEntertainmentCategorySourceText2 () -> Bool {
        return entertainmentCategorySourceText2.waitForExistence(timeout: 5)
    }
}
