//
//  TestViewController.swift
//  MovieForYou
//
//  Created by Dymitr on 03.04.2022.
//

import UIKit

class PosterViewController: UIViewController {
    
    @IBOutlet weak var imageViewUp: UIImageView!
    
    @IBOutlet weak var imageViewDown: UIImageView!
    
    var indexPath: IndexPath!
    
    var movies: [String] = []
    
    var posters: [UIImage] = []
    
    var recommendationPosters: [String: String] = [:]
    
    var posterName: [String] = []
    
   
    var imageSelector = 2
    var currentImageViewUp = 0
    var currentImageViewDown = 1
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        if indexPath[1] == 0 {
            movies = Movies.getComedyMoviesForTest()
            recommendationPosters = DataManager().allComedyMovies
        } else if indexPath[1] == 1 {
            movies = Movies.getActionMoviesForTest()
            recommendationPosters = DataManager().allActionMovies
        } else if indexPath[1] == 2 {
            movies = Movies.getThrillerMoviesForTest()
            recommendationPosters = DataManager().allThrillersMovies
        }
        
        
        print(indexPath[1])
        
        
        for i in movies {
            let image = UIImage(named: i)
            posters.append(image ?? UIImage(named: "Error")!)
            posterName.append(i)
                
        }
        
        recommendationPosters = DataManager().allThrillersMovies
        
        
        imageViewUp.image = posters[0]
        imageViewDown.image = posters[1]
        
        let tapGestureUp = UITapGestureRecognizer(target: self, action: #selector(PosterViewController.imageTappedUp(gesture:)))
        let tapGestureDown = UITapGestureRecognizer(target: self, action: #selector(PosterViewController.imageTappedDown(gesture:)))
        
        imageViewUp.addGestureRecognizer(tapGestureUp)
        imageViewUp.isUserInteractionEnabled = true
        imageViewDown.addGestureRecognizer(tapGestureDown)
        imageViewDown.isUserInteractionEnabled = true
    }
    
    @objc func imageTappedUp(gesture: UIGestureRecognizer) {
        if (gesture.view as? UIImageView) != nil {
            if imageSelector <= posters.count - 1 {
                for _ in posters {
                    imageViewDown.image = posters[imageSelector]
                    currentImageViewDown = imageSelector
                    imageSelector += 1
                    break
                }
            } else {
                let test = posterName[currentImageViewUp]
                let winerPoster = recommendationPosters[test]
                performSegue(withIdentifier: "rezultView", sender: winerPoster)
            }
        }
    }
    
    @objc func imageTappedDown(gesture: UIGestureRecognizer) {
        if (gesture.view as? UIImageView) != nil {
            if imageSelector <= posters.count - 1 {
                for _ in posters {
                    imageViewUp.image = posters[imageSelector]
                    currentImageViewUp = imageSelector
                    imageSelector += 1
                    break
                }
            } else {
                let test = posterName[currentImageViewDown]
                let winerPoster = recommendationPosters[test]
               performSegue(withIdentifier: "rezultView", sender: winerPoster)
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let rezultView = segue.destination as? RezultViewController else { return }
        rezultView.winerPoster = sender as? String
        
    }
}


