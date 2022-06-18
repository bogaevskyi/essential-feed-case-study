//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Andrew Bogaevskyi on 18.06.2022.
//

import Foundation

func anyNSError() -> NSError {
    NSError(domain: "any error", code: 1)
}

func anyURL() -> URL {
    URL(string: "http://any-url.com")!
}
