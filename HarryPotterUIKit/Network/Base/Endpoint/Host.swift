//
//  Host.swift
//  HarryPotterUIKit
//
//  Created by Beyza Nur Tekerek on 22.12.2025.
//

import Foundation

enum Host {
    case defaultHost
    
    var url: String {
        switch self {
            case .defaultHost:
            return "hp-api.onrender.com"
        }
    }
}
