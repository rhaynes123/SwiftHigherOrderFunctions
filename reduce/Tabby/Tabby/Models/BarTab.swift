//
//  Tab.swift
//  Tabby
//
//  Created by richard Haynes on 6/3/25.
//

import Foundation
class BarTab {
    let id = UUID()
    let items : [Item]
    init (items : [Item]) {
        self.items = items
    }
    
    public func added(item: Item)  {
        var updatedItems = self.items
        updatedItems.append(item)
    }
    
}

struct Item {
    let id = UUID()
    let name: String
    let price: Decimal
}
