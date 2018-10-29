//
//  FilmDetailViewController.swift
//  Top-movies
//
//  Created by Ivan Mihailovskii on 29/10/2018.
//  Copyright © 2018 Ivan Mihailovskii. All rights reserved.
//

import UIKit
import Kingfisher

class FilmDetailViewController: UIViewController, FilmDetailViewControllerInputProtocol {

    var presenter: FilmDetailViewControllerOutputProtocol?
    var configurator: FilmDetailConfiguratorProtocol?
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var year: UILabel!
    @IBOutlet weak var rating: UILabel!
    @IBOutlet weak var descriptionFilm: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configurator?.configure(filmDetailViewController: self)
        self.presenter?.viewDidLoad()
    }
    
    func displayDescription(text: String) {
        self.descriptionFilm.text = text
    }
    
    func displayYear(text: String) {
        self.year.text = text
    }
    
    func displayImage(url: URL) {
        self.imageView.kf.setImage(with: url)
    }
    
    func displayName(text: String) {
        self.name.text = text
    }
    
    func displayRating(text: String) {
        self.rating.text = text
    }
}
