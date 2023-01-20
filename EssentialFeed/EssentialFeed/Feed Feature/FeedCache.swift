//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Andrew Bogaevskyi on 26.07.2022.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>

    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}
