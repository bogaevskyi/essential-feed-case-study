//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Andrey Bogaevsky on 04.01.2022.
//

import Foundation

public protocol HTTPClient {
    typealias Result = Swift.Result<(Data, HTTPURLResponse), Error>
    /// The completion handler can be invoked in any thread.
    /// Clients are responsible to dispatch to appropriate thread, if needed.
    func get(from url: URL, completion: @escaping (HTTPClient.Result) -> Void)
}
