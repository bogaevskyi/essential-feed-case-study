//
//  FeedImageDataStore.swift
//  EssentialFeediOS
//
//  Created by Andrew Bogaevskyi on 24.07.2022.
//

import Foundation

public protocol FeedImageDataStore {
    func insert(_ data: Data, for url: URL) throws
    func retrieve(dataForURL url: URL) throws -> Data?
}
