//
//  SpellServiceable.swift
//  HarryPotterUIKit
//
//  Created by Beyza Nur Tekerek on 22.12.2025.
//

import Foundation

protocol SpellServiceable {
    func fetchSpells() async -> Result<[Spell], RequestError>
}

struct SpellService: SpellServiceable {
    
    private let service: HttpClientProtocol
    
    init(service: HttpClientProtocol) {
        self.service = service
    }
    
    func fetchSpells() async -> Result<[Spell], RequestError> {
        return await service.sendRequest(endpoint: SpellEndpoint(), responseModel: [Spell].self)
    }
    
}
