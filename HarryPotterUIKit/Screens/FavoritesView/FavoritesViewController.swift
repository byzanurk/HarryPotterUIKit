//
//  FavoritesViewController.swift
//  HarryPotterUIKit
//
//  Created by Beyza Nur Tekerek on 23.12.2025.
//

import UIKit

protocol FavoritesViewProtocol {
    //
}

final class FavoritesViewController: UIViewController {

    var presenter: FavoritesViewPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}

extension FavoritesViewController: FavoritesViewProtocol {
    //
}
