//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Andrew Bogaevskyi on 07.07.2022.
//

public struct FeedImageViewModel {
	public let description: String?
	public let location: String?
	
	public var hasLocation: Bool {
		return location != nil
	}
}
