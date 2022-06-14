//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Andrew Bogaevskyi on 14.06.2022.
//

import Foundation

internal struct RemoteFeedItem: Decodable {
    internal let id: UUID
    internal let description: String?
    internal let location: String?
    internal let image : URL
}
