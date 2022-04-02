//
//  RezultViewController.swift
//  ImageTest
//
//  Created by Михаил Светлов on 30.03.2022.
//

import UIKit

class RezultViewController: UIViewController {
    
    
    @IBOutlet weak var rezultImage: UIImageView!
    
    @IBOutlet weak var labelImage: UILabel!
    
    var winerPoster: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rezultImage.image = UIImage(named: winerPoster)
        labelImage.text = "Судя по вашему выбору, рекомендуем посмотреть - \(String (winerPoster ?? "Error"))"
    }
}
