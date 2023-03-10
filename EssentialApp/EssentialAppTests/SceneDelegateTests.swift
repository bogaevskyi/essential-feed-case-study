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
        let window = UIWindowSpy()
        let sut = SceneDelegate()
        sut.window = window
        
        sut.configureWindow()
        
        XCTAssertEqual(window.makeKeyAndVisibleCallCount, 1, "Expected to make window key and visible")
    }

    func test_configureWindow_configuresRootViewController() {
        let sut = SceneDelegate()
        sut.window = UIWindowSpy()

        sut.configureWindow()
        
        let root = sut.window?.rootViewController
        let rootNavigation = root as? UINavigationController
        let topController = rootNavigation?.topViewController
        
        XCTAssertNotNil(rootNavigation)
        XCTAssertTrue(topController is ListViewController, "Expected a feed controller as top view controller, got \(String(describing: topController)) instead")
    }
    
    // MARK: Helpers
    
    private class UIWindowSpy: UIWindow {
        var makeKeyAndVisibleCallCount = 0
        
        override func makeKeyAndVisible() {
            makeKeyAndVisibleCallCount = 1
        }
    }
}
