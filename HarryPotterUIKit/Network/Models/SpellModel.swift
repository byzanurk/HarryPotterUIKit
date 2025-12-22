//
//  SpellModel.swift
//  HarryPotterUIKit
//
//  Created by Beyza Nur Tekerek on 22.12.2025.
//

import Foundation

nonisolated
struct Spell: Decodable {
    let id: String
    let name: String
    let description: String
}
