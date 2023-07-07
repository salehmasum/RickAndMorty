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
    
    enum ServiceError: Error {
        case failedToCreateReques
        case failedToGetData
    }
    
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
        guard let urlRequest = self.request(from: request) else {
            completion(.failure(ServiceError.failedToCreateReques))
            return
        }
        let task = URLSession.shared.dataTask(with: urlRequest) { data, _, error in
            guard let data = data, error == nil else {
                completion(.failure(error ?? ServiceError.failedToGetData))
                return
            }
            
            //Decode the response
            do {
                let result = try JSONDecoder().decode(type.self, from: data)
                completion(.success(result))
            }
            catch {
                completion(.failure(error))
            }
        }
        task.resume()
        
    }
    
    //MARK: - Private
    private func request(from networkRequest: NetworkRequest) -> URLRequest? {
        guard let url = networkRequest.url else {
            return nil
            
        }
        var request = URLRequest(url: url)
        request.httpMethod = networkRequest.httpMethod
        return request
    }
    
}
