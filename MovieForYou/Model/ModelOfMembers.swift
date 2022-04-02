//
//  File.swift
//  MovieForYou
//
//  Created by Яна Иноземцева on 02.04.2022.
//

import Foundation

struct Member {
    let name: String
    let surname: String
    let info: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getMemberList() -> [Member] {
        [
            Member(name: "Yana", surname: "Inozemtseva", info: "22 года. IT-рекрутер в прошлом. Хобби - танцы, растяжка, путешествия."),
            Member(name: "Mikhail", surname: "Svetlov", info: "Нейл-мастер, микроэлектронщик, организатор мероприятий, эпо-арт художник, чайный мастер, начинающий iOS разработчик, и просто скромный парень :3"),
            Member(name: "Marat", surname: "Khayrullin", info: "Не важно что говорят крысы за спиной у кисы"),
            Member(name: "Leo", surname: "Turko", info: "Бизнесмен, программис. Хобби - спорт"),
            Member(name: "Dmitry", surname: "Kulczycki", info: "Инженер по эксплуатации зданий и сооружений. Хобби - активный отдых, баскетбол, футбол"),
           
        ]
    }
}
