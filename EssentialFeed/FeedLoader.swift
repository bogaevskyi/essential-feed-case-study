//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Andrii Bohaievskyi on 22.08.2021.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
