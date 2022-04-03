//
//  Model.swift
//  MovieForYou
//
//  Created by MAC  on 02.04.2022.
//

import Foundation

struct Movies {
    
    let allComedyMovies = DataManager().allComedyMovies
    let allActionMovies = DataManager().allActionMovies
    let allThrillersMovies = DataManager().allThrillersMovies
    
    static func getComedyMoviesForTest() -> [String] {
        
        var comedyMovies: [String] = []
        
        for k in DataManager().allComedyMovies.keys.shuffled() {
            comedyMovies.append(k)
        }
        
        return comedyMovies
    }
    
    static func getActionMoviesForTest() -> [String] {
        
        var actionMovies: [String] = []
        
        for k in DataManager().allActionMovies.keys.shuffled() {
            actionMovies.append(k)
        }
        
        return actionMovies
    }
    
    static func getThrillerMoviesForTest() -> [String] {
        
        var thrillerMovies: [String] = []
        
        for k in DataManager().allThrillersMovies.keys.shuffled() {
            thrillerMovies.append(k)
        }
        
        return thrillerMovies
    }
}

//struct Genre {
//    let title: String
//    let image: String
//
//    static func getMovieList() -> [Genre] {
//        [
//            Genre(title: "Сomedy", image: "комедия"),
//            Genre(title: "Action", image: "боевик"),
//            Genre(title: "Thriller", image: "триллер")
//        ]
//    }
//}
