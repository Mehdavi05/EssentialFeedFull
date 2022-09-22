//
//  RemoteFeedLoader.swift
//  EssentialFeed
//
//  Created by Shujaat-MacBook on 9/22/22.
//

import Foundation

public protocol HTTPClient {
    func get(from url: URL)
}

public final class RemoteFeedLoader {
    let client: HTTPClient
    let url: URL
    
    public init(url: URL, client: HTTPClient) {
        self.url = url
        self.client = client
    }
    
    public func load() {
        client.get(from: url)
    }
}


