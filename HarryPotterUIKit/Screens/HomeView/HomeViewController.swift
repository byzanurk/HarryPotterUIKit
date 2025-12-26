//
//  HomeViewController.swift
//  HarryPotterUIKit
//
//  Created by Beyza Nur Tekerek on 23.12.2025.
//

import UIKit

protocol HomeViewControllerProtocol {
    //
}

final class HomeViewController: UIViewController {
    
    var presenter: HomeViewPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    

}

extension HomeViewController: HomeViewControllerProtocol {
    //
}
