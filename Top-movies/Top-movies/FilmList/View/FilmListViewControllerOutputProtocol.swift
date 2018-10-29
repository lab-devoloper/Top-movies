//
//  FilmListViewControllerOutputProtocol.swift
//  Top-movies
//
//  Created by Ivan Mihailovskii on 29/10/2018.
//  Copyright © 2018 Ivan Mihailovskii. All rights reserved.
//
import Foundation

protocol FilmListViewControllerOutputProtocol {
    
    var isLoading: Bool! {get}
    func updateFilm()
    func didSelect(indexPath: IndexPath)
    func countFilmSections(sections: Int) -> Int
    func getFilm(indexPath: IndexPath) -> FilmObject
    func getYearSections(sections: Int) -> Int
    func countSections() -> Int
}

