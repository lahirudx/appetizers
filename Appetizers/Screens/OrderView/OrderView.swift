//
//  OrderView.swift
//  Appetizers
//
//  Created by Lahiru Amarasooriya on 2023-04-24.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItem)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print("Order Placed")
                    } label: {
                        Text("$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .modifier(StandardButtonStyle())
                    .padding(.bottom, 25)
                }
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in your order list.\nPlease add appetizers!")
                }
            }
            .navigationTitle(Text("🧾 Orders"))
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView().environmentObject(Order())
    }
}
