//
//  CharactersViewBuilder.swift
//  HarryPotterUIKit
//
//  Created by Beyza Nur Tekerek on 20.12.2025.
//

import Foundation
import UIKit

final class CharactersViewBuilder {
    static func build(coordinator: CoordinatorProtocol) -> CharactersViewController {
        
        let viewController = CharactersViewController()
        let httpClient = HttpClient()
        let interactor = CharactersViewInteractor(httpClient: httpClient)
        let router = CharactersViewRouter(coordinator: coordinator)
        let presenter = CharactersViewPresenter(interactor: interactor,
                                                router: router,
                                                view: viewController)
        
        viewController.presenter = presenter
        interactor.presenter = presenter
        
        return viewController
    }
}
