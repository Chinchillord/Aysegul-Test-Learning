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
    lazy var generalCategorySourceText = app.staticTexts["The Detroit News"]
    lazy var generalCategoryDetroitNewsHeadliner = app.staticTexts["Jurors reach partial verdict in Whitmer kidnap plot case - Detroit News"]
    
    //  StaticText, 0x7f82d3910b40, {{48.0, 270.5}, {119.0, 18.0}}, label: 'The Detroit News'
// StaticText, 0x7f82d270d100, {{48.0, 288.5}, {224.0, 64.5}}, label: 'Jurors reach partial verdict in Whitmer kidnap plot case - Detroit News'


func checkGeneralCategoryText () -> Bool{
    return generalCategoryText.waitForExistence(timeout: 10)
}
    func checkGeneralCategorySourceText () -> Bool {
        return generalCategorySourceText.waitForExistence(timeout: 5)
    }
    func checkGeneralCategoryDetroitNewsHeadlinerText () -> Bool {
        return generalCategoryDetroitNewsHeadliner.waitForExistence(timeout: 5)
    }
}
