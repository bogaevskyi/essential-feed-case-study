//
//  FeedImageDataCache.swift
//  EssentialFeed
//
//  Created by Andrew Bogaevskyi on 26.07.2022.
//

import Foundation

public protocol FeedImageDataCache {
    func save(_ data: Data, for url: URL) throws
}
