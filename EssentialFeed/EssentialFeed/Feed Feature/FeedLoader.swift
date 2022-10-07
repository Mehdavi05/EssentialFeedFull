//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Shujaat-MacBook on 9/24/22.
//

import Foundation

public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>
    
    func load(completion: @escaping (Result) -> Void)
}
