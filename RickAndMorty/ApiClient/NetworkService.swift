//
//  NetworkService.swift
//  RickAndMorty
//
//  Created by Saleh Masum on 6/7/2023.
//

import Foundation

/// Primary API service object to get Rick and Morty data
final class NetworkService {
    /// Shared singleton instance
    static let shared = NetworkService()
    /// privatized constructor
    private init() {}
    
    /// Send Rick and Morty API call
    /// - Parameters:
    ///   - request: Request instance
    ///   - type: Type of object we expect to get back
    ///   - completion: callback with data or error
    public func execute<T: Codable>(
        _ request: NetworkRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void
    ) {
        
    }
}
