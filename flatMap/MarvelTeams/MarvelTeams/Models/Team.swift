//
//  Team.swift
//  MarvelTeams
//
//  Created by richard Haynes on 6/3/25.
//

import Foundation

struct Character: Identifiable {
    let id = UUID()
    let name: String
}

struct Team: Identifiable {
    let id = UUID()
    let name: String
    let characters: [Character]
}

var teams: [Team] = [
    .init(name: "Avengers", characters: [
        .init(name: "Iron Man"),
        .init(name: "Captain America"),
        .init(name: "Thor"),
        .init(name: "Hulk"),
        .init(name: "Black Panther"),
    ]),
    .init(name: "X-Men", characters: [
        .init(name: "Cyclops"),
        .init(name: "Wolverine"),
        .init(name: "Storm"),
        .init(name: "Nightcrawler"),
    ]),
    ]
