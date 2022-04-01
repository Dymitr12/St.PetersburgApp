//
//  GenreViewController.swift
//  MovieForYou
//
//  Created by EkaterinaP on 01.04.2022.
//

import UIKit

class GenreViewController: UITableViewController {
    
    //MARK: -Private Methods
    private var genre = Genre.getMovieList()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 250
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        genre.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "genreCell", for: indexPath) as? GenreCell else { fatalError() }

        let genre = genre[indexPath.row]
        
        cell.genreImage.image = UIImage(named: genre.image)
        cell.genreImage.layer.cornerRadius = 16
        cell.genreImage.layer.borderWidth = 4
        cell.genreImage.layer.borderColor = UIColor.red.cgColor
        cell.genreLabel.text = genre.title

        return cell
    }
}
