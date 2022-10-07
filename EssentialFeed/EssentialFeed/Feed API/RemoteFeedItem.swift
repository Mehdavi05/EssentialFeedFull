//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Shujaat-MacBook on 9/24/22.
//

import Foundation

 struct RemoteFeedItem: Decodable {
     let id: UUID
     let description: String?
     let location: String?
     let image: URL
}
