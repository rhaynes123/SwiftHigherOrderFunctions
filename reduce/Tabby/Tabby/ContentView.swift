//
//  ContentView.swift
//  Tabby
//
//  Created by richard Haynes on 6/3/25.
//

import SwiftUI

struct ContentView: View {
    private var openTab = BarTab(items:
                                    [
                                        Item(name: "Whiskey", price: 12.00),
                                        Item(name: "Whiskey", price: 12.00),
                                        Item(name: "Whiskey", price: 12.00),
                                        Item(name: "Burger", price: 10.00),
                                        Item(name: "French Fries", price: 3.39),
                                        Item(name: "Wine", price: 8.00),
                                    ])
    
   
    var currentTotal : Decimal {
        // Reduce is given a starting value and attempts to reduce a collection of values into one.
        // How the reduction happens is determined by the expression.
        // First input is the starting value.
        openTab.items.reduce(0) { $0 + $1.price }
    }
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
           
            Text("Running Tab!")
                .font(.title)
            Text("Current Total: \(currentTotal)")
                .font(.headline)
            List {
                ForEach(openTab.items, id: \.id) { item in
                    Text("\(item.name): \(item.price)")
                }
            }
            
           
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
