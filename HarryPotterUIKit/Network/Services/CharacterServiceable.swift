//
//  CharacterServiceable.swift
//  HarryPotterUIKit
//
//  Created by Beyza Nur Tekerek on 22.12.2025.
//

import Foundation

protocol CharacterServiceable {
    func fetchCharacters() async -> Result<[Character], RequestError>
}

struct CharacterService: CharacterServiceable {
    
    private let service: HttpClientProtocol
    
    init(service: HttpClientProtocol) {
        self.service = service
    }
    
    func fetchCharacters() async -> Result<[Character], RequestError> {
        return await service.sendRequest(endpoint: CharacterEndpoint(), responseModel: [Character].self)
    }
    
}
