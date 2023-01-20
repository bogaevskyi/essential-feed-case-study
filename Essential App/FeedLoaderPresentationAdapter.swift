//
//  FeedLoaderPresentationAdapter.swift
//  Essential App
//
//  Created by Andrew Bogaevskyi on 09.08.2022.
//

import EssentialFeed
import EssentialFeediOS
import Combine

final class FeedLoaderPresentationAdapter: FeedViewControllerDelegate {
    private let feedLoader: () -> FeedLoader.Publisher
    private var cancellable: Cancellable?
	var presenter: FeedPresenter?
	
    init(feedLoader: @escaping () -> FeedLoader.Publisher) {
		self.feedLoader = feedLoader
	}
	
	func didRequestFeedRefresh() {
		presenter?.didStartLoadingFeed()
		
        cancellable = feedLoader().sink { [weak self] completion in
            switch completion {
            case .finished:
                break

            case .failure(let error):
                self?.presenter?.didFinishLoadingFeed(with: error)
            }
        } receiveValue: { [weak self] feed in
            self?.presenter?.didFinishLoadingFeed(with: feed)
        }
	}
}
