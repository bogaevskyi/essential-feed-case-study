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
        
        XCTAssertEqual(app.cells.count, 22)
        XCTAssertEqual(app.cells.firstMatch.images.count, 1)
    }
}
