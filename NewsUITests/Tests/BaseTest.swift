//
//  NewsUITests.swift
//  NewsUITests
//
//  Created by Aysegul karimis on 2/18/22.
//  Copyright © 2022 Алексей Воронов. All rights reserved.
//

import XCTest
import WiremockClient

class BaseTest: XCTestCase {
    let app = XCUIApplication()
   
    override func setUp() {
        continueAfterFailure = false
        do {
            try WiremockClient.postMapping(stubMapping:
            StubMapping.stubFor(requestMethod: .ANY, urlMatchCondition: .urlEqualTo, url: "http://localhost:8080/top-headlines?country=US")
                .willReturn(
                    ResponseDefinition()
                        .withLocalJsonBodyFile("top_headlines.json", in: Bundle(for: type(of: self)))
            )
            )
        } catch {
            XCTFail()
        }
        app.launch()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    

}
