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

    weak var filmListViewController: FilmListViewController?
    var film: FilmObject?
    
    init(filmListViewController: FilmListViewController) {
        self.filmListViewController = filmListViewController
    }
    
    func presentDetailView(for film: FilmObject) {
        
        self.film = film
        self.filmListViewController?.performSegue(withIdentifier: "FilmDetailControllerSeque", sender: nil)
    }
    
    func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
    
}
