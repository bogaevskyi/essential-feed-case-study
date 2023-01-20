//
//  FeedLoaderStub.swift
//  Essential AppTests
//
//  Created by Andrew Bogaevskyi on 26.07.2022.
//

import Foundation
import EssentialFeed

class FeedLoaderStub: FeedLoader {
    private let result: FeedLoader.Result
    
    init(result: FeedLoader.Result) {
        self.result = result
    }

    func load(completion: @escaping (FeedLoader.Result) -> Void) {
        completion(result)
    }
} 
