//
//  FilmListService.swift
//  Top-movies
//
//  Created by Ivan Mihailovskii on 29/10/2018.
//  Copyright © 2018 Ivan Mihailovskii. All rights reserved.
//

import Foundation
import SwiftyJSON

class FilmListService: FilmListServiceProtocol {
    
    var networkClient: NetworkProtocol!
    
    func updateFilmList(_ completion: @escaping ([FilmObject]) -> Void) {
        
        self.networkClient.loadData { (result) in
            
            let json = JSON(parseJSON: result.value!)
            var filmArray = [FilmObject]()
            
            for element in json["films"] {
                filmArray.append(FilmObject(json: element.1))
            }
            
            completion(filmArray)
        }
    }
}
