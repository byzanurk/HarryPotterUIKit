//
//  HttpClient.swift
//  HarryPotterUIKit
//
//  Created by Beyza Nur Tekerek on 22.12.2025.
//

import Foundation

protocol HttpClientProtocol {
    func sendRequest<T: Decodable & Sendable>(endpoint: Endpoint, responseModel: T.Type) async -> Result<T, RequestError>
}

final class HttpClient: HttpClientProtocol {
    
    private var urlSession: URLSession
    
    init(urlSession: URLSession = .shared) {
        self.urlSession = urlSession
    }
    
    func sendRequest<T: Decodable & Sendable>(endpoint: Endpoint, responseModel: T.Type) async -> Result<T, RequestError> {
        
        var urlComponents = URLComponents()
        urlComponents.scheme = endpoint.scheme
        urlComponents.host = endpoint.host.url
        urlComponents.path = endpoint.path.path
        urlComponents.queryItems = endpoint.queryItems

        guard let url = urlComponents.url else {
            return .failure(.invalidURL)
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = endpoint.method.rawValue
        request.allHTTPHeaderFields = endpoint.header.header

        if let body = endpoint.body.body {
            request.httpBody = try? JSONSerialization.data(withJSONObject: body, options: [])
        }

        do {
            let (data, urlResponse) = try await urlSession.data(for: request)
            
            guard let response = urlResponse as? HTTPURLResponse else {
                return .failure(.noResponse)
            }
            
            guard let decodedResponse = try? JSONDecoder().decode(responseModel, from: data) else {
                return .failure(.decode)
            }
            
            switch response.statusCode {
            case 200...299:
                #if DEBUG
                debugPrint("Response >>>>> \(String(describing: decodedResponse))")
                #endif
                return .success(decodedResponse)
            case 401:
                return .failure(.unauthorized(code: response.statusCode))
            default:
                #if DEBUG
                debugPrint("Error >>>>> \(String(describing: decodedResponse))")
                #endif
                return .failure(.unexpectedStatusCode)
            }
        } catch {
            return .failure(.unknow(description: "Unknown error", code: nil))
        }

    }
}
