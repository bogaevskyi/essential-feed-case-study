//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Andrii Bohaievskyi on 22.08.2021.
//

import Foundation

public typealias LoadFeedResult = Result<[FeedImage], Error>

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
