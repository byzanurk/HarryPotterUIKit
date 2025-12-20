//
//  TabBarBuilder.swift
//  HarryPotterUIKit
//
//  Created by Beyza Nur Tekerek on 20.12.2025.
//

import Foundation
import UIKit

final class TabBarBuilder {
    static func build(coordinator: CoordinatorProtocol) -> UITabBarController {
        let tabBar = UITabBarController(coordinator: coordinator)
        return tabBar
    }
}
