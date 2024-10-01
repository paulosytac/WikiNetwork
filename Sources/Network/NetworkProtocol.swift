//
//  NetworkProtocol.swift
//  Network
//
//  Created by Paulo Correa on 30/09/2024.
//

public protocol NetworkResponse: Codable { }

@MainActor
public protocol NetworkProtocol {
    func request<ResponseType: NetworkResponse>(_ request: NetworkRequest<ResponseType>) async throws -> ResponseType
}
