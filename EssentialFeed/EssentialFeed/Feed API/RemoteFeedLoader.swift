//
//  RemoteFeedLoader.swift
//  EssentialFeed
//
//  Created by Shujaat-MacBook on 9/22/22.
//

import Foundation

public final class RemoteFeedLoader: FeedLoader {
    let client: HTTPClient
    let url: URL
    
    public enum Error: Swift.Error {
        case connectivity
        case invalidData
    }
    
    public typealias Result = LoadFeedResult
    
    public init(url: URL, client: HTTPClient) {
        self.url = url
        self.client = client
    }
    
    public func load(completion: @escaping (Result) -> Void) {
        client.get(from: url) { [weak self] result  in
            guard self != nil else { return }
            switch result {
            case let .success(data, response):
                completion(FeedItemsMapper.map(data, from:response))
            case .failure:
                completion(.failure(Error.connectivity))
            }
        }
    }
}

