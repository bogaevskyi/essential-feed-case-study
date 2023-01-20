//
//  EssentialAppUIAcceptanceTests.swift
//  EssentialAppUIAcceptanceTests
//
//  Created by Andrew Bogaevskyi on 26.07.2022.
//

import XCTest

class EssentialAppUIAcceptanceTests: XCTestCase {

    let device = XCUIDevice.shared
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        
        device.orientation = UIDeviceOrientation.portrait
    }
    
    func test_onLaunch_displaysRemoteFeedWhenCustomerHasConnectivity() {
        let app = XCUIApplication()

        app.launch()
        
        let feedCells = app.cells.matching(identifier: "feed-image-cell")
        XCTAssertEqual(feedCells.count, 22)
        
        let feedImage = app.images.matching(identifier: "feed-image-view").firstMatch
        XCTAssertTrue(feedImage.exists)
    }
}
