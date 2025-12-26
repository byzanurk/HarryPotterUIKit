//
//  FavoritesViewRouter.swift
//  HarryPotterUIKit
//
//  Created by Beyza Nur Tekerek on 26.12.2025.
//

import Foundation
import UIKit

protocol FavoritesViewRouterProtocol {
    func navigate(viewController: UIViewController)
    var coordinator: CoordinatorProtocol { get }
}

final class FavoritesViewRouter: FavoritesViewRouterProtocol {
    
    var coordinator: CoordinatorProtocol
    
    init(coordinator: CoordinatorProtocol) {
        self.coordinator = coordinator
    }
    
    func navigate(viewController: UIViewController) {
        coordinator.eventOccurred(with: viewController)
    }
    
}
