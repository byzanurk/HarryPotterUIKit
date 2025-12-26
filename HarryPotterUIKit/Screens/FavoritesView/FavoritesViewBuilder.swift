//
//  FavoritesViewBuilder.swift
//  HarryPotterUIKit
//
//  Created by Beyza Nur Tekerek on 20.12.2025.
//

import Foundation
import UIKit

final class FavoritesViewBuilder {
    static func build(coordinator: CoordinatorProtocol) -> FavoritesViewController {
        
        let viewController = FavoritesViewController()
        let httpClient = HttpClient()
        let interactor = FavoritesViewInteractor(httpClient: httpClient)
        let router = FavoritesViewRouter(coordinator: coordinator)
        let presenter = FavoritesViewPresenter(interactor: interactor,
                                               router: router,
                                               view: viewController)
        
        viewController.presenter = presenter
        interactor.presenter = presenter
        
        return viewController
    }
}
