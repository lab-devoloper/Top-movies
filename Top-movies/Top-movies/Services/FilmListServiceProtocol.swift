//
//  FilmListServiceProtocol.swift
//  Top-movies
//
//  Created by Ivan Mihailovskii on 29/10/2018.
//  Copyright © 2018 Ivan Mihailovskii. All rights reserved.
//

protocol FilmListServiceProtocol {
    func updateFilmList(_ completion:@escaping ([FilmObject]) -> Void)
}
