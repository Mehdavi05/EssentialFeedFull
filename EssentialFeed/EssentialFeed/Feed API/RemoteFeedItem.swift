//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Shujaat-MacBook on 9/24/22.
//

import Foundation

internal struct RemoteFeedItem: Decodable {
    internal let id: UUID
    internal let description: String?
    internal let location: String?
    internal let image: URL
}
