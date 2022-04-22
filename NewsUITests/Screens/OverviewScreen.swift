//
//  OverviewScreen.swift
//  NewsUITests
//
//  Created by Aysegul karimis on 2/25/22.
//  Copyright © 2022 Алексей Воронов. All rights reserved.
//

import Foundation
import XCTest

/*
 TabBar, 0x7f9a162246e0, {{0.0, 761.0}, {390.0, 83.0}}, label: 'Tab Bar'
   Button, 0x7f9a162247f0, {{2.0, 762.0}, {74.0, 48.0}}, label: 'Globe', Selected
   Button, 0x7f9a16224900, {{80.0, 762.0}, {74.0, 48.0}}, label: 'List'
   Button, 0x7f9a16224a10, {{158.0, 762.0}, {74.0, 48.0}}, label: 'Search'
   Button, 0x7f9a1621eb90, {{236.0, 762.0}, {74.0, 48.0}}, label: 'Love'
   Button, 0x7f9a1621eca0, {{314.0, 762.0}, {74.0, 48.0}}, label: 'Partly Cloudy'
 */

class OverviewScreen : HasNavBar {
   
    
    lazy var overviewText = app.staticTexts["Overview"]
    lazy  var businessCategoryButton = app.buttons["Business"]
    lazy var entertainmentCategoryButton = app.buttons["Entertainment"]
    lazy var generalCategoryButton = app.buttons["General"]
    
    func checkOverviewText () -> Bool {
        return overviewText.waitForExistence(timeout: 10)
    }
    
    func tapBusinessCategoryButton () -> BusinessCategoryScreen {
        businessCategoryButton.tap()
        sleep(10)
        return BusinessCategoryScreen()
    }
    func tapEntertainmentCategoryButton () -> EntertainmentCategoryScreen {
        entertainmentCategoryButton.tap()
        sleep(10)
        return EntertainmentCategoryScreen()
    }
    
    func tapGeneralCategoryButton () -> GeneralCategoryScreen {
        generalCategoryButton.tap()
        sleep(10)
        return GeneralCategoryScreen()
    }
    
    
}

 

