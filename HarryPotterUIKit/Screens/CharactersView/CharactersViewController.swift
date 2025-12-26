//
//  CharactersViewController.swift
//  HarryPotterUIKit
//
//  Created by Beyza Nur Tekerek on 23.12.2025.
//

import UIKit

protocol CharactersViewProtocol {
    //
}

final class CharactersViewController: UIViewController {
    
    var presenter: CharactersViewPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()

    }

}

extension CharactersViewController: CharactersViewProtocol {
    //
}
