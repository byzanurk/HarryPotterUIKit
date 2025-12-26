//
//  FavoritesViewInteractor.swift
//  HarryPotterUIKit
//
//  Created by Beyza Nur Tekerek on 26.12.2025.
//

import Foundation

protocol FavoritesViewInteractorProtocol {
    var presenter: FavoritesViewPresenterProtocol? { get set }
}

final class FavoritesViewInteractor {
    
    var presenter: FavoritesViewPresenterProtocol?
    private var characterService: CharacterServiceable
    
    init(httpClient: HttpClientProtocol) {
        self.characterService = CharacterService(service: httpClient)
    }
}

extension FavoritesViewInteractor: FavoritesViewInteractorProtocol {
    //
}
