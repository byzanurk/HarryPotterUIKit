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
        
        return viewController
    }
}
