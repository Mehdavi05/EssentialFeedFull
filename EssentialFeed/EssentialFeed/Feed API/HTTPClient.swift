//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Shujaat-MacBook on 9/23/22.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
