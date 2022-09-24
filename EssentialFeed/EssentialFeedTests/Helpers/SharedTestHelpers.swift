//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Shujaat-MacBook on 9/25/22.
//

import Foundation

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0)
}

func anyURL() -> URL {
    return URL(string: "http://any-url.com")!
}
