//
//  NetworkRequest.swift
//  RickAndMorty
//
//  Created by Saleh Masum on 6/7/2023.
//

import Foundation

/// object that represent single api call
final class NetworkRequest {
    
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    private let endpoint : Endpoint
    private let pathComponents: [String]
    private let queryParameters: [URLQueryItem]
    
    /// Constructed url for the api request in string format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach { path in
                string += "/\(path)"
            }
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    public var url: URL? {
        return URL(string: urlString)
    }
    
    public let httpMethod = "GET"
    
    // MARK: - Public
    /// Cosntruction of request
    /// - Parameters:
    ///   - endpoint: target endpoint
    ///   - pathComponents: Collection of path components
    ///   - queryParameters: Collection of query parameters
    public init(
        endpoint: Endpoint,
        pathComponents: [String] = [],
        queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
    
}
