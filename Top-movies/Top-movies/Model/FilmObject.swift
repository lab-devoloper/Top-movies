//
//  FilmObject.swift
//  Top-movies
//
//  Created by Ivan Mihailovskii on 29/10/2018.
//  Copyright © 2018 Ivan Mihailovskii. All rights reserved.
//

import Foundation
import SwiftyJSON

class FilmObject {
    
    var id: Int?
    var localizedName: String?
    var name: String?
    var year: Int?
    var rating: Float?
    var imageUrl: String?
    var description: String?
    
    init(json: JSON) {
        
        self.id = json["id"].intValue
        self.localizedName = json["localized_name"].stringValue
        self.name = json["name"].stringValue
        self.year = json["year"].intValue
        self.rating = json["rating"].floatValue
        self.imageUrl = json["image_url"].stringValue
        self.description = json["description"].stringValue
    }
}
