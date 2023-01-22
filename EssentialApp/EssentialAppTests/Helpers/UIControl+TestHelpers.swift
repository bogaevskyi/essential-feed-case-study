//
//  UIControl+TestHelpers.swift
//  Essential AppTests
//
//  Created by Andrew Bogaevskyi on 09.08.2022.
//

import UIKit

extension UIControl {
	func simulate(event: UIControl.Event) {
		allTargets.forEach { target in
			actions(forTarget: target, forControlEvent: event)?.forEach {
				(target as NSObject).perform(Selector($0))
			}
		}
	}
}
