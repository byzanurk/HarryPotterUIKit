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
        setupTabBar()
    }
    
    private func setupTabBar() {
        view.backgroundColor  = .systemBackground
        
        let homeVC = HomeViewBuilder.build(coordinator: coordinator)
        let characterVC = CharactersViewBuilder.build(coordinator: coordinator)
        let favoritesVC = FavoritesViewBuilder.build(coordinator: coordinator)
        
        let homeNav = UINavigationController(rootViewController: homeVC)
        let characterNav = UINavigationController(rootViewController: characterVC)
        let favoritesNav = UINavigationController(rootViewController: favoritesVC)
        
        homeNav.tabBarItem = UITabBarItem(
            title: "Home",
            image: UIImage(systemName: "house"),
            selectedImage: UIImage(systemName: "house.fill")
        )
        
        characterNav.tabBarItem = UITabBarItem(
            title: "Characters",
            image: UIImage(systemName: "person.3.sequence"),
            selectedImage: UIImage(systemName: "person.3.sequence.fill")
        )
        
        favoritesNav.tabBarItem = UITabBarItem(
            title: "Favorites",
            image: UIImage(systemName: "heart"),
            selectedImage: UIImage(systemName: "heart.fill")
        )
        
        tabBar.tintColor = .brown
        
        setViewControllers([homeNav, characterNav, favoritesNav], animated: true)
        
        selectedIndex = 0
    }
}
