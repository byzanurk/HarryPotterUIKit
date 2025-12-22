//
//  Endpoint.swift
//  HarryPotterUIKit
//
//  Created by Beyza Nur Tekerek on 22.12.2025.
//

import Foundation

protocol Endpoint: Sendable {
    var scheme: String { get }
    var host: Host { get }
    var path: Path { get }
    var method: RequestMethod { get }
    var header: Header { get }
    var body: Body { get }
    var queryItems: [URLQueryItem]? { get }
}

extension Endpoint {
    var scheme: String {
        return "https"
    }
    
    var host: Host {
        return .defaultHost
    }
    
    var method: RequestMethod {
        return .get
    }
    
    var header: Header {
        return .defaultHeader
    }
    
    var body: Body {
        return .nilBody
    }
    
    var queryItems: [URLQueryItem]? {
        return nil
    }
}
