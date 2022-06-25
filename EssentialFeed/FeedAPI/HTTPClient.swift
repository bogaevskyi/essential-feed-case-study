//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Andrey Bogaevsky on 04.01.2022.
//

import Foundation

public enum HTTPCliendResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    /// The completion handler can be invoked in any thread.
    /// Clients are responsible to dispatch to appropriate thread, if needed.
    func get(from url: URL, completion: @escaping (HTTPCliendResult) -> Void)
}
