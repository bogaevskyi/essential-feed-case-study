//
//  ImageCommentsPresenter.swift
//  EssentialFeed
//
//  Created by Andrew Bogaevskyi on 04.02.2023.
//

import Foundation

public final class ImageCommentsPresenter {
    public static var title: String {
        NSLocalizedString("IMAGE_COMMENTS_VIEW_TITLE",
                          tableName: "ImageComments",
                          bundle: Bundle(for: Self.self),
                          comment: "Title for the image comments view")
    }
}
