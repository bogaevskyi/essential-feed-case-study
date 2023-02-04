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
    private let feedLoader: () -> AnyPublisher<[FeedImage], Error>
    private var cancellable: Cancellable?
    var presenter: LoadResourcePresenter<[FeedImage], FeedViewAdapter>?
	
    init(feedLoader: @escaping () -> AnyPublisher<[FeedImage], Error>) {
		self.feedLoader = feedLoader
	}
	
	func didRequestFeedRefresh() {
        presenter?.didStartLoading()
        
        cancellable = feedLoader()
            .dispatchOnMainQueue()
            .sink { [weak self] completion in
                switch completion {
                case .finished:
                    break
                    
                case .failure(let error):
                    self?.presenter?.didFinishLoading(with: error)
                }
            } receiveValue: { [weak self] feed in
                self?.presenter?.didFinishLoading(with: feed)
            }
    }
}
