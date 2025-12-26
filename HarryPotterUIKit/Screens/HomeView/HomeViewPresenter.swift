//
//  HomeViewPresenter.swift
//  HarryPotterUIKit
//
//  Created by Beyza Nur Tekerek on 26.12.2025.
//

import Foundation

protocol HomeViewPresenterProtocol {
    //
}

final class HomeViewPresenter: HomeViewPresenterProtocol {
    
    let interactor: HomeViewInteractorProtocol
    let router: HomeViewRouterProtocol
    let view: HomeViewControllerProtocol
    
    init(interactor: HomeViewInteractorProtocol,
         router: HomeViewRouterProtocol,
         view: HomeViewControllerProtocol) {
        
        self.interactor = interactor
        self.router = router
        self.view = view
    }
    
}

extension HomeViewPresenter {
    //
}
