//
//  TabBarController.swift
//  HarryPotterUIKit
//
//  Created by Beyza Nur Tekerek on 20.12.2025.
//

import UIKit

final class TabBarController: UITabBarController {
    private let coordinator: CoordinatorProtocol
    
    init(coordinator: CoordinatorProtocol) {
        self.coordinator = coordinator
        super.init(nibName: nil, bundle: nil)
    }
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    private func setupTabBar() {
        view.backgroundColor  = .systemBackground
        
        
    }
}
