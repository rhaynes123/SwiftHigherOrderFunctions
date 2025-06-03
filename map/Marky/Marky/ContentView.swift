//
//  ContentView.swift
//  Marky
//
//  Created by richard Haynes on 6/3/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    let markDownStrings = ["# Hello, World!", "## This is a sub-title.", "### This is a sub-sub-title."]
    
    var attributedStrings: [NSAttributedString] {
        
        // Map is a method that will loop over an existing a array and then return an array
        // The return array will be made of values from that expression inside.
        markDownStrings.map{ markDown in
            try? AttributedString(markdown: markDown, options: AttributedString.MarkdownParsingOptions(interpretedSyntax: .inlineOnlyPreservingWhitespace ))
            
        }
        .compactMap{$0} // CompactMap is like map but make sures to remove nil.
        .map({NSAttributedString($0)})
    }
    
    var body: some View {
        Text("This App is a Markdown Previewer!")
            .font(.headline)
        Text("It is meant to demo the higher order function map!")
            .font(.subheadline)
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                ForEach(attributedStrings, id: \.self) { attributedString in
                    TextView(attributeText: attributedString)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(30)
                        .background(Color(NSColor.controlBackgroundColor))
                        .clipShape(.buttonBorder)
                }
            }.padding()
        }
        
    }

   
}

#Preview {
    ContentView()
}
