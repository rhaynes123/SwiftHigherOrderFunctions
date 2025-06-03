//
//  ContentView.swift
//  MarvelTeams
//
//  Created by richard Haynes on 6/3/25.
//

import SwiftUI

struct ContentView: View {
    private var allCharacters: [Character] = teams.flatMap { $0.characters }
    var body: some View {
        VStack {
            
            Text("All Teams")
            
            List(teams, id: \.id) { team in
                Text(team.name)
            }
            
            Text("All Heroes")
            
            List(allCharacters, id: \.id) { character in
                Text(character.name)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
