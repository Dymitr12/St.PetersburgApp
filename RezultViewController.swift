//
//  RezultViewController.swift
//  MovieForYou
//
//  Created by Dymitr on 03.04.2022.
//
import UIKit

class RezultViewController: UIViewController {
    
    
    @IBOutlet weak var rezultImage: UIImageView!
    
    @IBOutlet weak var labelImage: UILabel!
    
    var winerPoster: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        rezultImage.image = UIImage(named: winerPoster)
        labelImage.text = "Судя по вашему выбору, рекомендуем посмотреть - \(String (winerPoster ?? "Error"))"
    }
}
