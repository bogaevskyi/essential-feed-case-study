//
//  RemoteImageCommentsLoader.swift
//  EssentialFeed
//
//  Created by Andrew Bogaevskyi on 28.01.2023.
//

import Foundation

public typealias RemoteImageCommentsLoader = RemoteLoader<[ImageComment]>

public extension RemoteImageCommentsLoader {
    convenience init(url: URL, client: HTTPClient) {
        self.init(url: url, client: client, mapper: ImageCommentsMapper.map)
    }
}
