//
//  FeedPresenterTests.swift
//  EssentialFeedTests
//
//  Created by Andrew Bogaevskyi on 21.07.2022.
//

import XCTest

final class FeedPresenter {
    init(view: Any) {
        
    }
}

final class FeedPresenterTests: XCTestCase {
    
    func test_init_doesNotSendMessagesToView() {
        let view = ViewSpy()
        
        _ = FeedPresenter(view: view)
        
        XCTAssertTrue(view.messages.isEmpty)
    }
    
    // MARK: Helpers
    
    private class ViewSpy {
        let messages = [Any]()
    }
}
