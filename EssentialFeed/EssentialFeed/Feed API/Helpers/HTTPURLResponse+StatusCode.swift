//
//  HTTPURLResponse.swift
//  EssentialFeediOS
//
//  Created by Andrew Bogaevskyi on 24.07.2022.
//


import Foundation

extension HTTPURLResponse {
	private static var OK_200: Int { return 200 }

	var isOK: Bool {
		return statusCode == HTTPURLResponse.OK_200
	}
}
