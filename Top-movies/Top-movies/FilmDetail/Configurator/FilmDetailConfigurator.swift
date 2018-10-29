//
//  FilmDetailConfigurator.swift
//  Top-movies
//
//  Created by Ivan Mihailovskii on 29/10/2018.
//  Copyright © 2018 Ivan Mihailovskii. All rights reserved.
//

class FilmDetailConfigurator: FilmDetailConfiguratorProtocol {

    let film: FilmObject
    
    init(film: FilmObject) {
        self.film = film
    }
    
    func configure(filmDetailViewController: FilmDetailViewController) {
        
        let presenter = FilmDetailpresenter()
        presenter.view = filmDetailViewController
        presenter.film = self.film
        filmDetailViewController.presenter = presenter
    }
}
