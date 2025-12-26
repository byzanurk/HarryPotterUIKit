//
//  HomeViewBuilder.swift
//  HarryPotterUIKit
//
//  Created by Beyza Nur Tekerek on 20.12.2025.
//

import Foundation
import UIKit

final class HomeViewBuilder {
    static func build(coordinator: CoordinatorProtocol) -> HomeViewController {
        
        let viewController = HomeViewController()
        let httpClient = HttpClient()
        let interactor = HomeViewInteractor(httpClient: httpClient)
        let router = HomeViewRouter(coordinator: coordinator)
        let presenter = HomeViewPresenter(interactor: interactor,
                                          router: router,
                                          view: viewController)
        
        viewController.presenter = presenter
        interactor.presenter = presenter
        
        return viewController
    }
}
