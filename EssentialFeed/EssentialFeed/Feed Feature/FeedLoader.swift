//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Shujaat-MacBook on 9/24/22.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedItem])
    case failure(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
