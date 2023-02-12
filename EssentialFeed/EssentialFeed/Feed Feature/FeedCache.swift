//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Andrew Bogaevskyi on 26.07.2022.
//

import Foundation

public protocol FeedCache {
    func save(_ feed: [FeedImage]) throws
}
