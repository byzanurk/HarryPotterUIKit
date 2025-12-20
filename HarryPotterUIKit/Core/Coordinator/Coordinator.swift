//
//  Coordinator.swift
//  HarryPotterUIKit
//
//  Created by Beyza Nur Tekerek on 19.12.2025.
//

import Foundation
import UIKit

final class Coordinator: CoordinatorProtocol {
    
    private(set) var tabBarController: UITabBarController?
    weak var parentCoordinator: CoordinatorProtocol?
    
    func eventOccurred(with viewController: UIViewController) {
        guard let tabBar = tabBarController,
              let nav = (tabBar.selectedViewController as? UINavigationController)
        else { return }
        
        nav.pushViewController(viewController, animated: true)
    }
    
    func start() -> UITabBarController {
//        let tabBar = TabBarBuilder.build(coordinator: self)
//        self.tabBarController = tabBar
//        return tabBar
    }
    
}
