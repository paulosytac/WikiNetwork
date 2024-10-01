//
//  NetworkError.swift
//  Network
//
//  Created by Paulo Correa on 30/09/2024.
//

public enum NetworkError: Error {
    case httpError(statusCode: Int)
    case decodingError(Error)
}
