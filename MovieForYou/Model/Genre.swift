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
            Genre(title: "Комедия", image: "комедия"),
            Genre(title: "Боевик", image: "боевик"),
            Genre(title: "Триллер", image: "триллер")
        ]
    }
}
