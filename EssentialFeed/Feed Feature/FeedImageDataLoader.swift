//
//  FeedImageDataLoader.swift
//  EssentialFeediOS
//
//  Created by Andrew Bogaevskyi on 07.07.2022.
//

import Foundation

public protocol FeedImageDataLoaderTask {
	func cancel()
}

public protocol FeedImageDataLoader {
	typealias Result = Swift.Result<Data, Error>
	
	func loadImageData(from url: URL, completion: @escaping (Result) -> Void) -> FeedImageDataLoaderTask
}
