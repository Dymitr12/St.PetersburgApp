//
//  ResultViewController.swift
//  MovieForYou
//
//  Created by EkaterinaP on 03.04.2022.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var rezultImage: UIImageView!
    
    @IBOutlet weak var labelImage: UILabel!
    
    var winerPoster: String!
    
    override func viewDidLoad() {
        navigationItem.hidesBackButton = true
        rezultImage.contentMode = .scaleAspectFit
        
        super.viewDidLoad()
        rezultImage.image = UIImage(named: winerPoster)
        labelImage.text = "Судя по вашему выбору, рекомендуем посмотреть - \(String (winerPoster ?? "Error"))"
    }
}
