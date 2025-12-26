//
//  CharactersViewInteractor.swift
//  HarryPotterUIKit
//
//  Created by Beyza Nur Tekerek on 26.12.2025.
//

import Foundation

protocol CharactersViewInteractorProtocol {
    var presenter: CharactersViewPresenterProtocol? { get set }
}

final class CharactersViewInteractor {
    
    var presenter: CharactersViewPresenterProtocol?
    private var characterService: CharacterServiceable
    
    init(httpClient: HttpClientProtocol) {
        self.characterService = CharacterService(service: httpClient)
    }
    
}

extension CharactersViewInteractor: CharactersViewInteractorProtocol {
    //
}
