//
//  Body.swift
//  HarryPotterUIKit
//
//  Created by Beyza Nur Tekerek on 22.12.2025.
//

import Foundation

enum Body {
    case nilBody
    
    var body: [String: Any]? {
        switch self {
        case .nilBody:
            return nil
        }
    }
}
