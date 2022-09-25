//
//  CoreDataFeedStore.swift
//  EssentialFeedTests
//
//  Created by Shujaat-MacBook on 9/25/22.
//

import Foundation
import EssentialFeed

public final class CoreDataFeedStore: FeedStore {
    public init() {}

    public func retrieve(completion: @escaping RetrievalCompletion) {
        completion(.empty)
    }

    public func insert(_ feed: [LocalFeedImage], timestamp: Date, completion: @escaping InsertionCompletion) {

    }

    public func deleteCachedFeed(completion: @escaping DeletionCompletion) {

    }

}
