//
//  FilmListRouterProtocol.swift
//  Top-movies
//
//  Created by Ivan Mihailovskii on 29/10/2018.
//  Copyright © 2018 Ivan Mihailovskii. All rights reserved.
//

import UIKit

protocol FilmListRouterProtocol {
    
    func presentDetailView(for film: FilmObject)
    func prepare(for segue: UIStoryboardSegue, sender: Any?)
}
