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

    
    private func setUpWiremockMapping(urlPath: String, queryParameter: String, queryParameterValue: String, fileName: String) {
        do {
            try WiremockClient.postMapping(stubMapping:
                                            StubMapping.stubFor(requestMethod: .ANY, urlMatchCondition: .urlPathEqualTo, url: urlPath).withQueryParam(queryParameter, matchCondition: .equalTo, value: queryParameterValue)
                .willReturn(
                    ResponseDefinition()
                        .withLocalJsonBodyFile(fileName, in: Bundle(for: type(of: self)))
                )
            )
        } catch {
            XCTFail()
        }
    }
    
    private func setUpWiremockMapping(urlPath: String, queryParameterOne: String, queryParameterOneValue: String, queryParameterTwo: String, queryParameterTwoValue: String, fileName: String) {
        do {
            try WiremockClient.postMapping(stubMapping:
                                            StubMapping.stubFor(requestMethod: .ANY, urlMatchCondition: .urlPathEqualTo, url: urlPath).withQueryParam(queryParameterOne, matchCondition: .equalTo, value: queryParameterOneValue).withQueryParam(queryParameterTwo, matchCondition: .equalTo, value: queryParameterTwoValue)
                .willReturn(
                    ResponseDefinition()
                        .withLocalJsonBodyFile(fileName, in: Bundle(for: type(of: self)))
                )
            )
        } catch {
            XCTFail()
        }
    }
    
    override func setUp() {
        continueAfterFailure = false
        setUpWiremockMapping(urlPath: "/top-headlines", queryParameter: "country", queryParameterValue: "US", fileName: "top_headlines")
        setUpWiremockMapping(urlPath: "/top-headlines", queryParameterOne: "country", queryParameterOneValue: "US", queryParameterTwo: "category", queryParameterTwoValue: "business", fileName: "business_category")
        setUpWiremockMapping(urlPath: "/top-headlines", queryParameterOne: "country", queryParameterOneValue: "US", queryParameterTwo: "category", queryParameterTwoValue: "entertainment", fileName: "entertainment_category")
        setUpWiremockMapping(urlPath: "/top-headlines", queryParameterOne: "country", queryParameterOneValue: "US", queryParameterTwo: "category", queryParameterTwoValue: "general", fileName: "general_category")
        setUpWiremockMapping(urlPath: "/sources", queryParameterOne: "country", queryParameterOneValue: "US", queryParameterTwo: "language", queryParameterTwoValue: "en", fileName: "sources")
        setUpWiremockMapping(urlPath: "/everything", queryParameterOne: "sources", queryParameterOneValue: "abc-news", queryParameterTwo: "language", queryParameterTwoValue: "en", fileName: "everything_abc")
        setUpWiremockMapping(urlPath: "/everything", queryParameterOne: "language", queryParameterOneValue: "en", queryParameterTwo: "sources", queryParameterTwoValue: "ars-technica", fileName: "everything_ars_technica")
        
        app.launch()
        addUIInterruptionMonitor(withDescription: "System Dialog") {
                    (alert) -> Bool in

                    let allowLocation = alert.buttons["Allow While Using App"]
                    if allowLocation.waitForExistence(timeout: 10) {
                        allowLocation.tap()
                    }

                    return true
                }
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    
}
