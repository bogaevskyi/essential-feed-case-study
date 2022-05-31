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
    func get(from url: URL, completion: @escaping (HTTPCliendResult) -> Void)
}
