//
//  FeedViewModel.swift
//  EssentialFeediOS
//
//  Created by Andrew Bogaevskyi on 07.07.2022.
//

import EssentialFeed

final class FeedViewModel {
    private let feedLoader: FeedLoader

    init(feedLoader: FeedLoader) {
        self.feedLoader = feedLoader
    }
    
    var onChange: ((FeedViewModel) -> Void)?
    var onFeedLoad: (([FeedImage]) -> Void)?
    
    private(set) var isLoading = false {
        didSet { onChange?(self) }
    }

    func loadFeed() {
        isLoading = true
        
        feedLoader.load { [weak self] result in
            if let feed = try? result.get() {
                self?.onFeedLoad?(feed)
            }
            self?.isLoading = false
        }
    }
}
