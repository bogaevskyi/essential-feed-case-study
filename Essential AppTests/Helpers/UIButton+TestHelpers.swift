//
//  UIButton+TestHelpers.swift
//  Essential AppTests
//
//  Created by Andrew Bogaevskyi on 09.08.2022.
//

import UIKit

extension UIButton {
	func simulateTap() {
		simulate(event: .touchUpInside)
	}
}
