//
//  FeedImageDataLoader.swift
//  EssentialFeediOS
//
//  Created by Andrew Bogaevskyi on 07.07.2022.
//

import Foundation

public protocol FeedImageDataLoader {
    func loadImageData(from url: URL) throws -> Data
}
