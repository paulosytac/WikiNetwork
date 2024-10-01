//
//  NetworkRequest.swift
//  Network
//
//  Created by Paulo Correa on 29/09/2024.
//

import Foundation

public struct NetworkRequest<ResponseType: NetworkResponse> {
    let method: HTTPMethod
    let url: URL
    var headers: [String: String]?
    var body: Data?
    
    public init(
        method: HTTPMethod,
        url: URL,
        headers: [String: String]? = nil,
        body: Data? = nil
    ) {
        self.method = method
        self.url = url
    }
}

public extension NetworkRequest {
    enum HTTPMethod: String {
        case get = "GET"
        case post = "POST"
    }
}
