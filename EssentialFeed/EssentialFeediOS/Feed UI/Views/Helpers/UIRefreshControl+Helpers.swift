//
//  UIRefreshControl.swift
//  EssentialFeediOS
//
//  Created by Andrew Bogaevskyi on 21.07.2022.
//

import UIKit

extension UIRefreshControl {
	func update(isRefreshing: Bool) {
		isRefreshing ? beginRefreshing() : endRefreshing()
	}
}
