//
//  SceneDelegateTests.swift
//  Essential AppTests
//
//  Created by Andrew Bogaevskyi on 04.08.2022.
//

import XCTest
import EssentialFeediOS
@testable import EssentialApp 

class SceneDelegateTests: XCTestCase {

    func test_configureWindow_setsWindowAsKeyAndWisible() {
        let window = UIWindow()
        let sut = SceneDelegate()
        sut.window = window
        
        sut.configureWindow()
        
        //XCTAssertTrue(window.isKeyWindow)
        XCTAssertFalse(window.isHidden)
    }

    func test_configureWindow_configuresRootViewController() {
        let sut = SceneDelegate()
        sut.window = UIWindow()

        sut.configureWindow()
        
        let root = sut.window?.rootViewController
        let rootNavigation = root as? UINavigationController
        let topController = rootNavigation?.topViewController
        
        XCTAssertNotNil(rootNavigation)
        XCTAssertTrue(topController is FeedViewController)
    }
}
