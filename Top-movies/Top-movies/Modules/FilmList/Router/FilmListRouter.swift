//
//  FilmListRouter.swift
//  Top-movies
//
//  Created by Ivan Mihailovskii on 29/10/2018.
//  Copyright © 2018 Ivan Mihailovskii. All rights reserved.
//

import Foundation
import UIKit

class FilmListRouter: FilmListRouterProtocol {
    
    func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
    }
    
    weak var filmListViewController: FilmListViewController?
    
    init(filmListViewController: FilmListViewController) {
        self.filmListViewController = filmListViewController
    }
    
    func presentDetailView(for film: FilmObject) {

        self.filmListViewController?.pushToController(viewController: FilmDetailViewController(), completion: { (vc) in
            vc.configurator = FilmDetailConfigurator(film: film)
        })
    }
}
