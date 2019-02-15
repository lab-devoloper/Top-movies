//
//  FilmListViewControllerConfigurator.swift
//  Top-movies
//
//  Created by Ivan Mihailovskii on 29/10/2018.
//  Copyright © 2018 Ivan Mihailovskii. All rights reserved.
//

import UIKit

class FilmListViewControllerConfigurator {
    
    func configureViewInput<UIViewController>(viewInput: UIViewController) {
        
        if let viewController = viewInput as? FilmListViewController {
            configure(viewController: viewController)
        }
    }
    
    private func configure(viewController: FilmListViewController) {
        
        let networkClient = NetworkClient()
        
        let service = FilmListService()
        service.networkClient = networkClient
        let router = FilmListRouter(filmListViewController: viewController)
        
        let presenter = FilmListPresenter()
        presenter.service = service
        presenter.view = viewController
        presenter.router = router
        viewController.presenter = presenter
    }
}
