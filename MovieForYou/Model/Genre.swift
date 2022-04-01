//
//  Movie.swift
//  MovieForYou
//
//  Created by EkaterinaP on 01.04.2022.
//

struct Genre {
    let title: String
    let image: String
    
    static func getMovieList() -> [Genre] {
        [
            Genre(title: "Сomedy", image: "комедия"),
            Genre(title: "Action", image: "боевик"),
            Genre(title: "Thriller", image: "триллер")
        ]
    }
}
