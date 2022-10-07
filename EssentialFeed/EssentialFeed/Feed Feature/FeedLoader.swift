//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Shujaat-MacBook on 9/24/22.
//

import Foundation

public typealias LoadFeedResult = Result<[FeedImage], Error>

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
