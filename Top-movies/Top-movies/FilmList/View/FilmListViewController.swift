//
//  FilmListViewController.swift
//  Top-movies
//
//  Created by Ivan Mihailovskii on 29/10/2018.
//  Copyright © 2018 Ivan Mihailovskii. All rights reserved.
//

import UIKit

class FilmListViewController: UIViewController, FilmListViewControllerInputProtocol {

    @IBOutlet weak var tableView: UITableView!
    var presenter: FilmListViewControllerOutputProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let identifier = "FilmTableViewCell"
        self.tableView.register(UINib(nibName: identifier, bundle: nil), forCellReuseIdentifier: identifier)
        self.presenter.updateFilm()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        self.presenter.router?.prepare(for: segue, sender: sender)
    }
    
    func reloadTableView() {
        self.tableView.reloadData()
    }
    
    func loadingView() {
        //
    }
}

extension FilmListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.presenter.didSelect(indexPath: indexPath)
    }
}

extension FilmListViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.presenter.countSections()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.presenter.countFilmSections(sections: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let identifier = "FilmTableViewCell"
        if let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as? FilmTableViewCell {
            cell.setupCell(film: self.presenter.getFilm(indexPath: indexPath))
            return cell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return String(self.presenter.getYearSections(sections: section))
    }
}

