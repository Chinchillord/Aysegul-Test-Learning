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
                                            StubMapping.stubFor(requestMethod: .ANY, urlMatchCondition: .urlPathEqualTo, url: "/top-headlines").withQueryParam("country", matchCondition: .equalTo, value: "US")
                .willReturn(
                    ResponseDefinition()
                        .withLocalJsonBodyFile("top_headlines", in: Bundle(for: type(of: self)))
            )
            )
        } catch {
            XCTFail()
        }
        do {
            try WiremockClient.postMapping(stubMapping:
                                            StubMapping.stubFor(requestMethod: .ANY, urlMatchCondition: .urlPathEqualTo, url: "/top-headlines").withQueryParam("country", matchCondition: .equalTo, value: "US").withQueryParam("category", matchCondition: .equalTo, value: "business")
                .willReturn(
                    ResponseDefinition()
                        .withLocalJsonBodyFile("business_category", in: Bundle(for: type(of: self)))
            )
            )
        } catch {
            XCTFail()
        }
        do {
            try WiremockClient.postMapping(stubMapping:
                                            StubMapping.stubFor(requestMethod: .ANY, urlMatchCondition: .urlPathEqualTo, url: "/top-headlines").withQueryParam("country", matchCondition: .equalTo, value: "US").withQueryParam("category", matchCondition: .equalTo, value: "entertainment")
                .willReturn(
                    ResponseDefinition()
                        .withLocalJsonBodyFile("entertainment_category", in: Bundle(for: type(of: self)))
            )
            )
        } catch {
            XCTFail()
        }
        do {
            try WiremockClient.postMapping(stubMapping:
                                            StubMapping.stubFor(requestMethod: .ANY, urlMatchCondition: .urlPathEqualTo, url: "/top-headlines").withQueryParam("country", matchCondition: .equalTo, value: "US").withQueryParam("category", matchCondition: .equalTo, value: "general")
                .willReturn(
                    ResponseDefinition()
                        .withLocalJsonBodyFile("general_category", in: Bundle(for: type(of: self)))
            )
            )
        } catch {
            XCTFail()
        }
        do {
            try WiremockClient.postMapping(stubMapping:
                                            StubMapping.stubFor(requestMethod: .ANY, urlMatchCondition: .urlPathEqualTo, url: "/sources").withQueryParam("country", matchCondition: .equalTo, value: "US").withQueryParam("language", matchCondition: .equalTo, value: "en")
                .willReturn(
                    ResponseDefinition()
                        .withLocalJsonBodyFile("sources", in: Bundle(for: type(of: self)))
            )
            )
        } catch {
            XCTFail()
        }
        do {
            try WiremockClient.postMapping(stubMapping:
                                            StubMapping.stubFor(requestMethod: .ANY, urlMatchCondition: .urlPathEqualTo, url: "/everything").withQueryParam("sources", matchCondition: .equalTo, value: "abc-news").withQueryParam("language", matchCondition: .equalTo, value: "en")
                .willReturn(
                    ResponseDefinition()
                        .withLocalJsonBodyFile("everything_abc", in: Bundle(for: type(of: self)))
            )
            )
        } catch {
            XCTFail()
        }
        do {
            try WiremockClient.postMapping(stubMapping:
                                            StubMapping.stubFor(requestMethod: .ANY, urlMatchCondition: .urlPathEqualTo, url: "/everything").withQueryParam("language", matchCondition: .equalTo, value: "en").withQueryParam("sources", matchCondition: .equalTo, value: "ars-technica")
                .willReturn(
                    ResponseDefinition()
                        .withLocalJsonBodyFile("everything_ars_technica", in: Bundle(for: type(of: self)))
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
