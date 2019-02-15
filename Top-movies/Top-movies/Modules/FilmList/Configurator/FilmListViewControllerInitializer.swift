//
//  FilmListViewControllerInitializer.swift
//  Top-movies
//
//  Created by Ivan Mihailovskii on 29/10/2018.
//  Copyright © 2018 Ivan Mihailovskii. All rights reserved.
//

import UIKit

class FilmListViewControllerInitializer: NSObject {
    
    @IBOutlet weak var FilmListViewController: FilmListViewController!
    
    override func awakeFromNib() {
        
        let configurator = FilmListViewControllerConfigurator()
        configurator.configureViewInput(viewInput: FilmListViewController)
    }
}
