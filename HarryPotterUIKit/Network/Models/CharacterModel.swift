//
//  CharacterModel.swift
//  HarryPotterUIKit
//
//  Created by Beyza Nur Tekerek on 22.12.2025.
//

import Foundation

nonisolated
struct Character: Codable, Sendable {
    let id: String
    let name: String
    let alternateNames: [String]
    let house: String
    let dateOfBirth: String?
    let yearOfBirth: Int?
    let actor: String
    let image: String

    enum CodingKeys: String, CodingKey {
        case id
        case name
        case alternateNames = "alternate_names"
        case house
        case dateOfBirth
        case yearOfBirth
        case actor
        case image
    }
}
