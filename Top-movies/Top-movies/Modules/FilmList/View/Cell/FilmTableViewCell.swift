//
//  FilmTableViewCell.swift
//  Top-movies
//
//  Created by Ivan Mihailovskii on 29/10/2018.
//  Copyright © 2018 Ivan Mihailovskii. All rights reserved.
//

import UIKit

class FilmTableViewCell: UITableViewCell {

    @IBOutlet weak var localizedName: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var rating: UILabel!
    @IBOutlet weak var content: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.content.layer.borderWidth = 1
        self.content.layer.borderColor = UIColor.black.cgColor
    }

    func setupCell(film: FilmObject) {
        
        self.localizedName.text = film.localizedName
        self.name.text = film.name
        self.rating.text = String(film.rating ?? 0)
    }
}
