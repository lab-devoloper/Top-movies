//
//  FilmListPresenter.swift
//  Top-movies
//
//  Created by Ivan Mihailovskii on 29/10/2018.
//  Copyright © 2018 Ivan Mihailovskii. All rights reserved.
//

import Foundation

class FilmListPresenter: FilmListViewControllerOutputProtocol {

    weak var view: FilmListViewControllerInputProtocol?
    var service: FilmListServiceProtocol?
    var router: FilmListRouterProtocol?
    private var filmArray = [[FilmObject]]()
    
    var isLoading: Bool! = false {
        didSet {
            self.view?.loadingView()
        }
    }
    
    func updateFilm() {
        self.service?.updateFilmList { (response) in
            
            self.sortedFilm(array: response)
            self.view?.reloadTableView()
        }
    }
    
    func didSelect(indexPath: IndexPath) {
        self.router?.presentDetailView(for: self.filmArray[indexPath.section][indexPath.row])
    }
    
    func countFilmSections(sections: Int) -> Int {
        return self.filmArray[sections].count
    }
    
    func countSections() -> Int {
        return self.filmArray.count
    }
    
    func getFilm(indexPath: IndexPath) -> FilmObject {
        return self.filmArray[indexPath.section][indexPath.row]
    }
    
    func getYearSections(sections: Int) -> Int {
        return self.filmArray[sections].first?.year ?? 0
    }
    
    func sortedFilm(array: [FilmObject]) {
        
        let sortedArray = array.sorted(by: { $0.year ?? 0 < $1.year ?? 0 })
        var tempArray = [FilmObject]()
        var tempYear = sortedArray.first?.year ?? 0
        
        for object in sortedArray {
            if tempYear == object.year ?? 0 {
                tempArray.append(object)
            } else {
                tempArray = tempArray.sorted(by: { $0.rating ?? 0 > $1.rating ?? 0 })
                self.filmArray.append(tempArray)
                tempYear = object.year ?? 0
                tempArray = [FilmObject]()
                tempArray.append(object)
            }
        }
    }
}
