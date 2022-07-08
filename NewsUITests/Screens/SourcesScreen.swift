//
//  SourcesScreen.swift
//  NewsUITests
//
//  Created by Aysegul karimis on 3/18/22.
//  Copyright © 2022 Алексей Воронов. All rights reserved.
//

import Foundation
import XCTest

class SourcesScreen : BaseScreen {  // class name starts Uppercase
    
    // lazy var = These variables are created using a function you specify only when that variable is first requested. If it’s never requested, the function is never run, so it does help save processing time.
    
    lazy var sourcesScreenText = app.staticTexts["Sources"]
    
    func checkSourcesText () -> Bool {
        sleep(10)
        return sourcesScreenText.waitForExistence(timeout: 5)
        
    }
    
    
    
    
    
    
    
}

