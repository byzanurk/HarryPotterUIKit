//
//  CoordinatorProtocol.swift
//  HarryPotterUIKit
//
//  Created by Beyza Nur Tekerek on 19.12.2025.
//

import Foundation
import UIKit

protocol CoordinatorProtocol: AnyObject {
    var parentCoordinator: CoordinatorProtocol? { get set }
    func eventOccurred(with viewController: UIViewController)
    func start() -> UITabBarController
}
