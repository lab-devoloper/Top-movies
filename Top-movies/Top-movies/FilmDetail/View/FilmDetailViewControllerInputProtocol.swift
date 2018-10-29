//
//  FilmDetailViewControllerInputProtocol.swift
//  Top-movies
//
//  Created by Ivan Mihailovskii on 29/10/2018.
//  Copyright © 2018 Ivan Mihailovskii. All rights reserved.
//
import Foundation

protocol FilmDetailViewControllerInputProtocol: class {
    
    func displayDescription(text:String)
    func displayYear(text: String)
    func displayImage(url: URL)
    func displayName(text: String)
    func displayRating(text: String)
}

