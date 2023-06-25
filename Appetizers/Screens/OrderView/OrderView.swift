//
//  OrderView.swift
//  Appetizers
//
//  Created by Lahiru Amarasooriya on 2023-04-24.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        NavigationView {
            Text("Order View")
                .navigationTitle(Text("🧾 Orders"))
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
