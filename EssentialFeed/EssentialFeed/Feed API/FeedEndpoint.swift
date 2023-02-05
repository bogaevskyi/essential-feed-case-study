//
//  FeedEndpoint.swift
//  EssentialFeed
//
//  Created by Andrew Bogaevskyi on 05.02.2023.
//

import Foundation

public enum FeedEndpoint {
    case get
    
    public func url(baseURL: URL) -> URL {
        switch self {
        case .get:
            return baseURL.appendingPathComponent("/v1/feed")
        }
    }
}
