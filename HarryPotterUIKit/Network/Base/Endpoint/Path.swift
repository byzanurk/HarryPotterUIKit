//
//  Path.swift
//  HarryPotterUIKit
//
//  Created by Beyza Nur Tekerek on 22.12.2025.
//

import Foundation

enum Path {
    case characters
    case students
    case staff
    case house
    case spells
    
    var path: String {
        switch self {
        case .characters:
            return "/api/characters"
        case .students:
            return "/api/characters/students"
        case .staff:
            return "/api/characters/staff"
        case .house:
            return "/api/characters/house"
        case .spells:
            return "/api/spells"
        }
    }
}
