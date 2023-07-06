//
//  Order.swift
//  Appetizers
//
//  Created by Lahiru Amarasooriya on 2023-07-01.
//

import SwiftUI

final class Order: ObservableObject {
    @Published var items: [Appetizer] = []
    
    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price }
    }
    
    func add(_ appetizer: Appetizer) {
        items.append(appetizer)
    }
    
    func deleteItem(at offsetIndex: IndexSet) {
        items.remove(atOffsets: offsetIndex)
    }
}
