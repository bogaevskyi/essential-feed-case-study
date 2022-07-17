//
//  FeedImageCell+Helpers.swift
//  EssentialFeediOSTests
//
//  Created by Andrew Bogaevskyi on 17.07.2022.
//

import Foundation
import EssentialFeediOS
import UIKit

// MARK: - FeedImageCell

extension FeedImageCell {
    func simulateRetryAction() {
        feedImageRetryButton.simulateTap()
    }
    
    var isShowingLocation: Bool {
        !locationContainer.isHidden
    }

    var isShowingImageLoadingIndicator: Bool {
        feedImageContainer.isShimmering
    }

    var isShowingRetryAction: Bool {
        !feedImageRetryButton.isHidden
    }
    
    var locationText: String? {
        locationLabel.text
    }

    var descriptionText: String? {
        descriptionLabel.text
    }

    var renderedImage: Data? {
        feedImageView.image?.pngData()
    }
}
