//
//  FilmDetailpresenter.swift
//  Top-movies
//
//  Created by Ivan Mihailovskii on 29/10/2018.
//  Copyright © 2018 Ivan Mihailovskii. All rights reserved.
//

import Foundation

class FilmDetailpresenter: FilmDetailViewControllerOutputProtocol {
    
    weak var view: FilmDetailViewControllerInputProtocol?
    var film: FilmObject?
    
    func viewDidLoad() {
        
        self.view?.displayDescription(text: self.film?.description ?? "")
        
        if let url = URL(string: self.film?.imageUrl ?? " ") {
            self.view?.displayImage(url: url)
        }
        
        self.view?.displayName(text: self.film?.name ?? "")
        self.view?.displayYear(text: String(self.film?.year ?? 0))
        self.view?.displayRating(text: String(self.film?.rating ?? 0))
    }

}
