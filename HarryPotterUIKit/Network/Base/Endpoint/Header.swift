//
//  Headerr.swift
//  HarryPotterUIKit
//
//  Created by Beyza Nur Tekerek on 22.12.2025.
//

import Foundation

enum Header {
    case defaultHeader
    
    var header: [String: String]? {
        switch self {
        case .defaultHeader:
            return nil
        }
    }
}
