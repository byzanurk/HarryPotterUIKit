//
//  HomeViewInteractor.swift
//  HarryPotterUIKit
//
//  Created by Beyza Nur Tekerek on 26.12.2025.
//

import Foundation

protocol HomeViewInteractorProtocol {
    var presenter: HomeViewPresenterProtocol? { get set }
}

final class HomeViewInteractor: HomeViewInteractorProtocol {
    
    var presenter: HomeViewPresenterProtocol?
    private var characterService: CharacterServiceable
    
    init(httpClient: HttpClientProtocol) {
        self.characterService = CharacterService(service: httpClient)
    }
}
