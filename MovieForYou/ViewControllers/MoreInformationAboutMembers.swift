//
//  MoreInformationAboutMembers.swift
//  MovieForYou
//
//  Created by Яна Иноземцева on 02.04.2022.
//

import UIKit

class MoreInformationAboutMembers: UIViewController {
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var descriptionLabel: UILabel!
    
    var member: Member!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = UIImage(named: member.fullName)
        
        descriptionLabel.text = member.info
    }
    

}

