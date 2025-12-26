//
//  CharactersViewPresenter.swift
//  HarryPotterUIKit
//
//  Created by Beyza Nur Tekerek on 26.12.2025.
//

import Foundation

protocol CharactersViewPresenterProtocol {
    //
}

final class CharactersViewPresenter: CharactersViewPresenterProtocol {
    
    let interactor: CharactersViewInteractorProtocol
    let router: CharactersViewRouterProtocol
    let view: CharactersViewProtocol
    
    init(interactor: CharactersViewInteractorProtocol,
         router: CharactersViewRouterProtocol,
         view: CharactersViewProtocol) {
        
        self.interactor = interactor
        self.router = router
        self.view = view
    }
    
}

extension CharactersViewPresenter {
    //
}
