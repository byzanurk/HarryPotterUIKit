//
//  FavoritesViewPresenter.swift
//  HarryPotterUIKit
//
//  Created by Beyza Nur Tekerek on 26.12.2025.
//

import Foundation

protocol FavoritesViewPresenterProtocol {
    //
}

final class FavoritesViewPresenter: FavoritesViewPresenterProtocol {
    
    let interactor: FavoritesViewInteractorProtocol
    let router: FavoritesViewRouterProtocol
    let view: FavoritesViewProtocol
    
    init(interactor: FavoritesViewInteractorProtocol,
         router: FavoritesViewRouterProtocol,
         view: FavoritesViewProtocol) {
        
        self.interactor = interactor
        self.router = router
        self.view = view
    }
    
}

extension FavoritesViewPresenter {
    //
}
