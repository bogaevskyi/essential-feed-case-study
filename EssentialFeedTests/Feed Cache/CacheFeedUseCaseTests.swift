//
//  CacheFeedUseCaseTests.swift
//  EssentialFeedTests
//
//  Created by Andrew Bogaevskyi on 31.05.2022.
//

import XCTest

class LocalFeedLoader {
    init(store: FeedStore) {
    }
}

class FeedStore {
    var deleteCachedFeedCallCount = 0
}

class CacheFeedUseCaseTests: XCTestCase {
    func test_init_doesNotDeleteCacheUponCreation() {
        let store = FeedStore()
        _ = LocalFeedLoader(store: store)

        XCTAssertEqual(store.deleteCachedFeedCallCount, 0)
    }
}
