//
//  FeedUIIntegrationTests+Localization.swift
//  Essential AppTests
//
//  Created by Andrew Bogaevskyi on 09.08.2022.
//

import Foundation
import XCTest
import EssentialFeed

extension FeedUIIntegrationTests {
    private class DummyView: ResourceView {
        func display(_ viewModel: Any) {}
    }
    
    var loadError: String {
        LoadResourcePresenter<Any, DummyView>.loadError
    }
    
    var feedTitle: String {
        FeedPresenter.title
    }
}
